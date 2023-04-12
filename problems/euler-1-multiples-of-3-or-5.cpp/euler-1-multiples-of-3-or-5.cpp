#include <iostream>
#include <string>
#include <cstdlib>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << " <upper_limit>" << std::endl;
        return 1;
    }

    int upper_limit = std::stoi(argv[1]);
    int sum = 0;

    for (int i = 1; i < upper_limit; ++i) {
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
        }
    }

    std::cout << sum;

    return 0;
}