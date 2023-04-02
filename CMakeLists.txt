cmake_minimum_required(VERSION 3.0.0)#最低支持版本
project(finallywork)#项目名称

include(CTest)
enable_testing()

add_executable(finallywork main.cpp)#构建程序

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
