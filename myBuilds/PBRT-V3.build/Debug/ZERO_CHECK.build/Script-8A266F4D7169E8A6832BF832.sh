#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds
  make -f /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds
  make -f /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds
  make -f /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds
  make -f /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/CMakeScripts/ReRunCMake.make
fi

