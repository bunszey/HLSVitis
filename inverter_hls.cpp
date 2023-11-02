#include <stdint.h>

#define DATA_SIZE 307200

// Function to perform vector addition
void inverter(volatile unsigned char in[DATA_SIZE], volatile unsigned char out[DATA_SIZE]) {
    #pragma HLS INTERFACE s_axilite port=return bundle=AXI_CPU
    #pragma HLS INTERFACE s_axilite port=in bundle=AXI_CPU
    #pragma HLS INTERFACE s_axilite port=out bundle=AXI_CPU

    // Add the vectors
    for (int i = 0; i < DATA_SIZE; i++) {
		#pragma HLS UNROLL factor=500
        out[i] = 255 - in[i];
    }

}
