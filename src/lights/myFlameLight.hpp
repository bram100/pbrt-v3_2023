//
//  myFlameLight.hpp
//  Half
//
//  Created by Brendan Mulcahey on 8/29/23.
//


#include <stdio.h>

#if defined(_MSC_VER)
#define NOMINMAX
#pragma once
#endif

#ifndef myFlameLight_hpp
#define myFlameLight_hpp

// lights/infinite.h*
#include "pbrt.h"
#include "light.h"
#include "texture.h"
#include "shape.h"
#include "scene.h"
#include "mipmap.h"

namespace pbrt {

// MyFlameLight Declarations
class MyFlameLight : public Light {
  public:
    // MyFlameLight Public Methods
    MyFlameLight(const Transform &LightToWorld, const Spectrum &power,
                      int nSamples, const std::string &texmap);
    void Preprocess(const Scene &scene) {
        scene.WorldBound().BoundingSphere(&worldCenter, &worldRadius);
    }
    Spectrum Power() const;
    Spectrum Le(const RayDifferential &ray) const;
    Spectrum Sample_Li(const Interaction &ref, const Point2f &u, Vector3f *wi,
                       Float *pdf, VisibilityTester *vis) const;
    Float Pdf_Li(const Interaction &, const Vector3f &) const;
    Spectrum Sample_Le(const Point2f &u1, const Point2f &u2, Float time,
                       Ray *ray, Normal3f *nLight, Float *pdfPos,
                       Float *pdfDir) const;
    void Pdf_Le(const Ray &, const Normal3f &, Float *pdfPos,
                Float *pdfDir) const;

  private:
    // InfiniteAreaLight Private Data
    std::unique_ptr<MIPMap<RGBSpectrum>> Lmap;
    Point3f worldCenter;
    Float worldRadius;
    std::unique_ptr<Distribution2D> distribution;
};

std::shared_ptr<MyFlameLight> CreateMyFlameLight(
    const Transform &light2world, const ParamSet &paramSet);

}  // namespace pbrt


#endif /* myFlameLight_hpp */
