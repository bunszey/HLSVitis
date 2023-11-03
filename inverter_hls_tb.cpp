#include <iostream>
#include <cstdlib>
#include <ctime>

#define ARRAY_LENGTH 307200

void inverter(volatile unsigned char in_r[ARRAY_LENGTH], volatile unsigned char out_r[ARRAY_LENGTH]);

int main() {
    int a = 1 ;
    // Seed the random number generator
    std::srand(static_cast<unsigned int>(std::time(nullptr)));

    // Initialize input arrays and expected output array
    volatile unsigned char in[ARRAY_LENGTH];
    volatile unsigned char expected_out[ARRAY_LENGTH];
    volatile unsigned char actual_out[ARRAY_LENGTH];

    // Populate input arrays with random data
    for (int i = 0; i < ARRAY_LENGTH; i++) {
        in[i] = std::rand() % 100;
        expected_out[i] = 255 - in[i];
    }

    // Call the arraySum function
    inverter(in, actual_out);

    // Check the results
    bool success = true;
    for (int i = 0; i < ARRAY_LENGTH; i++) {
//        std::cout << "actual out:" << actual_out[i] << std::endl;
        if (actual_out[i] != expected_out[i]) {
            std::cout << "Mismatch at index " << i << ": Expected " << expected_out[i] << ", Actual " << actual_out[i] << std::endl;
            success = false;
        }
    }

    if (success) {
        std::cout << "Test passed!" << std::endl;
    } else {
        std::cout << "Test failed!" << std::endl;
    }

    while(1)
        ;
    return 0;
}
