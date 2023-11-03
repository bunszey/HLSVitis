#include <iostream>
#include <cstdlib>
#include <ctime>

#define ARRAY_LENGTH 76800

void inverter(volatile int in_r[ARRAY_LENGTH], volatile int out_r[ARRAY_LENGTH]);

int main() {
    int a = 1 ;
    // Seed the random number generator
    std::srand(static_cast<unsigned int>(std::time(nullptr)));

    // Initialize input arrays and expected output array
    volatile int in[ARRAY_LENGTH];
    volatile int expected_out[ARRAY_LENGTH];
    volatile int actual_out[ARRAY_LENGTH];

    // Populate input arrays with random data
    for (int i = 0; i < ARRAY_LENGTH; ++i) {
    	int temp;
    	unsigned char* bytes = (unsigned char*)&temp;

    	for(int j=0; j < 4; ++j){
    		bytes[j] = std::rand() % 100;

    	}

        in[i] = temp;

        expected_out[i] = in[i];
        unsigned char* bytestemp = (unsigned char*)&expected_out[i];

        for(int j=0; j < 4; ++j){
        	bytestemp[j] = 255-bytestemp[j];

		}

    }

    // Call the arraySum function
    inverter(in, actual_out);

    // Check the results
    bool success = true;
    for (int i = 0; i < ARRAY_LENGTH; i++) {
    	unsigned char* bytesin = (unsigned char*)&in[i];
    	unsigned char* bytesout = (unsigned char*)&actual_out[i];

        std::cout << i << "actual in:" << int(bytesin[0]) << " actual out:" << int(bytesout[0])<< std::endl;
        std::cout << i << "actual in:" << int(bytesin[1]) << " actual out:" << int(bytesout[1])<< std::endl;
        std::cout << i << "actual in:" << int(bytesin[2]) << " actual out:" << int(bytesout[2])<< std::endl;
        std::cout << i << "actual in:" << int(bytesin[3]) << " actual out:" << int(bytesout[3])<< std::endl;
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
