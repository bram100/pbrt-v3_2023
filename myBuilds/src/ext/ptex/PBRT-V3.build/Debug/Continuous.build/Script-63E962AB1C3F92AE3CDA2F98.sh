#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex
  /opt/homebrew/Cellar/cmake/3.24.2/bin/ctest -C $CONFIGURATION$EFFECTIVE_PLATFORM_NAME -D Continuous
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex
  /opt/homebrew/Cellar/cmake/3.24.2/bin/ctest -C $CONFIGURATION$EFFECTIVE_PLATFORM_NAME -D Continuous
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex
  /opt/homebrew/Cellar/cmake/3.24.2/bin/ctest -C $CONFIGURATION$EFFECTIVE_PLATFORM_NAME -D Continuous
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex
  /opt/homebrew/Cellar/cmake/3.24.2/bin/ctest -C $CONFIGURATION$EFFECTIVE_PLATFORM_NAME -D Continuous
fi

