# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/diego/pico/my_project/build/_deps/picotool-src"
  "/home/diego/pico/my_project/build/_deps/picotool-build"
  "/home/diego/pico/my_project/build/_deps"
  "/home/diego/pico/my_project/build/picotool/tmp"
  "/home/diego/pico/my_project/build/picotool/src/picotoolBuild-stamp"
  "/home/diego/pico/my_project/build/picotool/src"
  "/home/diego/pico/my_project/build/picotool/src/picotoolBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/diego/pico/my_project/build/picotool/src/picotoolBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/diego/pico/my_project/build/picotool/src/picotoolBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
