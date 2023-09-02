# CMake generated Testfile for 
# Source directory: /Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests
# Build directory: /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(wtest "/Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests/wtest")
set_tests_properties(wtest PROPERTIES  _BACKTRACE_TRIPLES "/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/CMakeLists.txt;32;add_test;/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/CMakeLists.txt;0;")
add_test(rtest "/opt/homebrew/Cellar/cmake/3.24.2/bin/cmake" "-DOUT=/Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests/rtest.out" "-DDATA=/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/rtestok.dat" "-DCMD=/Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests/rtest" "-P" "/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/compare_test.cmake")
set_tests_properties(rtest PROPERTIES  _BACKTRACE_TRIPLES "/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/CMakeLists.txt;23;add_test;/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/CMakeLists.txt;33;add_compare_test;/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/CMakeLists.txt;0;")
add_test(ftest "/opt/homebrew/Cellar/cmake/3.24.2/bin/cmake" "-DOUT=/Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests/ftest.out" "-DDATA=/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/ftestok.dat" "-DCMD=/Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests/ftest" "-P" "/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/compare_test.cmake")
set_tests_properties(ftest PROPERTIES  _BACKTRACE_TRIPLES "/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/CMakeLists.txt;23;add_test;/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/CMakeLists.txt;34;add_compare_test;/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/CMakeLists.txt;0;")
add_test(halftest "/Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests/halftest")
set_tests_properties(halftest PROPERTIES  _BACKTRACE_TRIPLES "/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/CMakeLists.txt;35;add_test;/Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/CMakeLists.txt;0;")
