#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/IlmThread/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Iex/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Imath/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/IlmThread/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Iex/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Imath/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/IlmThread/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Iex/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Imath/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Half/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/IlmThread/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Iex/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
  /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E copy_directory /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/IlmBase/Imath/ /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/openexr/OpenEXR/IlmImf/
fi

