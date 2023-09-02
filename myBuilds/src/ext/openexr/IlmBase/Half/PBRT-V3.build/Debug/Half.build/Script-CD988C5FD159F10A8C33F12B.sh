#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half
  /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/Debug/toFloat > /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/toFloat.h
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half
  /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/Release/toFloat > /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/toFloat.h
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half
  /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/MinSizeRel/toFloat > /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/toFloat.h
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half
  /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/RelWithDebInfo/toFloat > /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/toFloat.h
fi

