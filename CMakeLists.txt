cmake_minimum_required(VERSION 3.0.0)
project(sfml-example VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()

include_directories(SFML)

find_package(SFML 2.5 COMPONENTS graphics audio REQUIRED)


add_executable(sfml-example 
                            main.cpp
                            windowControl.cpp
                            )

target_link_libraries(sfml-example sfml-graphics sfml-audio)


set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
