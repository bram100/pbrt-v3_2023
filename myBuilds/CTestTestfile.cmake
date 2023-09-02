# CMake generated Testfile for 
# Source directory: /Users/brendanmulcahey/Documents/pbrt-v3_2023
# Build directory: /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(pbrt_unit_test "pbrt_test")
set_tests_properties(pbrt_unit_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/brendanmulcahey/Documents/pbrt-v3_2023/CMakeLists.txt;559;ADD_TEST;/Users/brendanmulcahey/Documents/pbrt-v3_2023/CMakeLists.txt;0;")
subdirs("src/ext/openexr")
subdirs("src/ext/glog")
subdirs("src/ext/ptex")
