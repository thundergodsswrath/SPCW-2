cmake_minimum_required(VERSION 3.10)
project(CalculatorProj)

include_directories(${PROJECT_SOURCE_DIR}/include)
add_library(calculator STATIC src/calculator.cpp)
add_executable(calculatorApp src/main.cpp)
target_include_directories(calculatorApp PUBLIC include)
target_link_libraries(calculatorApp calculator)
set(CMAKE_GENERATOR "Ninja")