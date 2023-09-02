#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf
  /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/b44ExpLogTable > /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/b44ExpLogTable.h
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf
  /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/b44ExpLogTable > /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/b44ExpLogTable.h
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf
  /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/b44ExpLogTable > /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/b44ExpLogTable.h
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf
  /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/b44ExpLogTable > /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/b44ExpLogTable.h
fi

