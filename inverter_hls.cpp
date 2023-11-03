#include <stdint.h>

#define DATA_SIZE 307200

// Function to perform vector addition
void inverter(volatile unsigned char in_r[DATA_SIZE], volatile unsigned char out_r[DATA_SIZE]) {
    #pragma HLS INTERFACE s_axilite port=return bundle=AXI_CPU
	#pragma HLS INTERFACE bram port=in_r
	#pragma HLS INTERFACE bram port=out_r
    //#pragma HLS INTERFACE s_axilite port=in_r bundle=AXI_CPU
    //#pragma HLS INTERFACE s_axilite port=out_r bundle=AXI_CPU

    // Add the vectors
    for (int i = 0; i < DATA_SIZE; i++) {
		//#pragma HLS UNROLL factor=500
        out_r[i] = 255 - in_r[i];
    }

}
