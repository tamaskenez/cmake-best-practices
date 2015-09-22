# HELLOWORLD
# ==========
#
# Creates, installs and tests a simple executable
#

cmake_minimum_required(VERSION 2.8.7)
project(helloworld)

add_executable(helloworld main.c)

install(TARGETS helloworld DESTINATION bin)

if(ENABLE_TESTING)
    enable_testing()
    add_test(helloworld helloworld)
endif()
