#include "calculator.h"
#include <iostream>

int main() {
    Calculator calc;
    int result = calc.Add(5, 4);
    std::cout << "Result: " << result << std::endl;
    return 0;
}