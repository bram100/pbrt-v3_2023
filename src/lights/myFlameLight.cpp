//
//  myFlameLight.cpp
//  Half
//
//  Created by Brendan Mulcahey on 8/29/23.
//


//based on infinite light class

#include "myFlameLight.hpp"


#include "lights/myFlameLight.hpp"
#include "imageio.h"
#include "paramset.h"
#include "sampling.h"
#include "stats.h"

namespace pbrt {

// MyFlameLight Method Definitions
MyFlameLight::MyFlameLight(const Transform &LightToWorld,
                                     const Spectrum &L, int nSamples,
                                     const std::string &texmap)
    : Light((int)LightFlags::Infinite, LightToWorld, MediumInterface(),
            nSamples) {
    // Read texel data from _texmap_ and initialize _Lmap_
    Point2i resolution;
    std::unique_ptr<RGBSpectrum[]> texels(nullptr);
    if (texmap != "") {
        texels = ReadImage(texmap, &resolution);
        if (texels)
            for (int i = 0; i < resolution.x * resolution.y; ++i)
                texels[i] *= L.ToRGBSpectrum();
    }
    if (!texels) {
        resolution.x = resolution.y = 1;
        texels = std::unique_ptr<RGBSpectrum[]>(new RGBSpectrum[1]);
        texels[0] = L.ToRGBSpectrum();
    }
    Lmap.reset(new MIPMap<RGBSpectrum>(resolution, texels.get()));

    // Initialize sampling PDFs for infinite area light

    // Compute scalar-valued image _img_ from environment map
    int width = 2 * Lmap->Width(), height = 2 * Lmap->Height();
    std::unique_ptr<Float[]> img(new Float[width * height]);
    float fwidth = 0.5f / std::min(width, height);
    ParallelFor(
        [&](int64_t v) {
            Float vp = (v + .5f) / (Float)height;
            Float sinTheta = std::sin(Pi * (v + .5f) / height);
            for (int u = 0; u < width; ++u) {
                Float up = (u + .5f) / (Float)width;
                img[u + v * width] = Lmap->Lookup(Point2f(up, vp), fwidth).y();
                img[u + v * width] *= sinTheta;
            }
        },
        height, 32);

    // Compute sampling distributions for rows and columns of image
    distribution.reset(new Distribution2D(img.get(), width, height));
}

Spectrum MyFlameLight::Power() const {
    return Pi * worldRadius * worldRadius *
           Spectrum(Lmap->Lookup(Point2f(.5f, .5f), .5f),
                    SpectrumType::Illuminant);
}

Spectrum MyFlameLight::Le(const RayDifferential &ray) const {
    Vector3f w = Normalize(WorldToLight(ray.d));
    Point2f st(SphericalPhi(w) * Inv2Pi, SphericalTheta(w) * InvPi);
    return Spectrum(Lmap->Lookup(st), SpectrumType::Illuminant);
}

Spectrum MyFlameLight::Sample_Li(const Interaction &ref, const Point2f &u,
                                      Vector3f *wi, Float *pdf,
                                      VisibilityTester *vis) const {
    ProfilePhase _(Prof::LightSample);
    // Find $(u,v)$ sample coordinates in infinite light texture
    Float mapPdf;
    Point2f uv = distribution->SampleContinuous(u, &mapPdf);
    if (mapPdf == 0) return Spectrum(0.f);

    // Convert infinite light sample point to direction
    Float theta = uv[1] * Pi, phi = uv[0] * 2 * Pi;
    Float cosTheta = std::cos(theta), sinTheta = std::sin(theta);
    Float sinPhi = std::sin(phi), cosPhi = std::cos(phi);
    *wi =
        LightToWorld(Vector3f(sinTheta * cosPhi, sinTheta * sinPhi, cosTheta));

    // Compute PDF for sampled infinite light direction
    *pdf = mapPdf / (2 * Pi * Pi * sinTheta);
    if (sinTheta == 0) *pdf = 0;

    // Return radiance value for infinite light direction
    *vis = VisibilityTester(ref, Interaction(ref.p + *wi * (2 * worldRadius),
                                             ref.time, mediumInterface));
    return Spectrum(Lmap->Lookup(uv), SpectrumType::Illuminant);
}

Float MyFlameLight::Pdf_Li(const Interaction &, const Vector3f &w) const {
    ProfilePhase _(Prof::LightPdf);
    Vector3f wi = WorldToLight(w);
    Float theta = SphericalTheta(wi), phi = SphericalPhi(wi);
    Float sinTheta = std::sin(theta);
    if (sinTheta == 0) return 0;
    return distribution->Pdf(Point2f(phi * Inv2Pi, theta * InvPi)) /
           (2 * Pi * Pi * sinTheta);
}

Spectrum MyFlameLight::Sample_Le(const Point2f &u1, const Point2f &u2,
                                      Float time, Ray *ray, Normal3f *nLight,
                                      Float *pdfPos, Float *pdfDir) const {
    ProfilePhase _(Prof::LightSample);
    // Compute direction for infinite light sample ray
    Point2f u = u1;

    // Find $(u,v)$ sample coordinates in infinite light texture
    Float mapPdf;
    Point2f uv = distribution->SampleContinuous(u, &mapPdf);
    if (mapPdf == 0) return Spectrum(0.f);
    Float theta = uv[1] * Pi, phi = uv[0] * 2.f * Pi;
    Float cosTheta = std::cos(theta), sinTheta = std::sin(theta);
    Float sinPhi = std::sin(phi), cosPhi = std::cos(phi);
    Vector3f d =
        -LightToWorld(Vector3f(sinTheta * cosPhi, sinTheta * sinPhi, cosTheta));
    *nLight = (Normal3f)d;

    // Compute origin for infinite light sample ray
    Vector3f v1, v2;
    CoordinateSystem(-d, &v1, &v2);
    Point2f cd = ConcentricSampleDisk(u2);
    Point3f pDisk = worldCenter + worldRadius * (cd.x * v1 + cd.y * v2);
    *ray = Ray(pDisk + worldRadius * -d, d, Infinity, time);

    // Compute _InfiniteAreaLight_ ray PDFs
    *pdfDir = sinTheta == 0 ? 0 : mapPdf / (2 * Pi * Pi * sinTheta);
    *pdfPos = 1 / (Pi * worldRadius * worldRadius);
    return Spectrum(Lmap->Lookup(uv), SpectrumType::Illuminant);
}

void MyFlameLight::Pdf_Le(const Ray &ray, const Normal3f &, Float *pdfPos,
                               Float *pdfDir) const {
    ProfilePhase _(Prof::LightPdf);
    Vector3f d = -WorldToLight(ray.d);
    Float theta = SphericalTheta(d), phi = SphericalPhi(d);
    Point2f uv(phi * Inv2Pi, theta * InvPi);
    Float mapPdf = distribution->Pdf(uv);
    *pdfDir = mapPdf / (2 * Pi * Pi * std::sin(theta));
    *pdfPos = 1 / (Pi * worldRadius * worldRadius);
}

std::shared_ptr<MyFlameLight> CreateMyFlameLight(
    const Transform &light2world, const ParamSet &paramSet) {
    Spectrum L = paramSet.FindOneSpectrum("L", Spectrum(1.0));
    Spectrum sc = paramSet.FindOneSpectrum("scale", Spectrum(1.0));
    std::string texmap = paramSet.FindOneFilename("mapname", "");
    int nSamples = paramSet.FindOneInt("samples",
                                       paramSet.FindOneInt("nsamples", 1));
    if (PbrtOptions.quickRender) nSamples = std::max(1, nSamples / 4);
    return std::make_shared<MyFlameLight>(light2world, L * sc, nSamples,
                                               texmap);
}

}  // namespace pbrt
