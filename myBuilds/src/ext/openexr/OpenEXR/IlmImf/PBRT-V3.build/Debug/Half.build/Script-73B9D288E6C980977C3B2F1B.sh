#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half
  /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/Debug/eLut > /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/eLut.h
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half
  /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/Release/eLut > /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/eLut.h
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half
  /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/MinSizeRel/eLut > /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/eLut.h
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half
  /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/RelWithDebInfo/eLut > /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/eLut.h
fi

