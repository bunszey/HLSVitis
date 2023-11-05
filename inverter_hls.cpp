#include <stdint.h>

//424x240=101760bytes
//101760bytes/4bytesprword = 25440
#define DATA_SIZE 25440

// Function to perform vector addition
void inverter(volatile int in_r[DATA_SIZE], volatile int out_r[DATA_SIZE]) {
	#pragma HLS INTERFACE s_axilite port=return bundle=AXI_CPU
	#pragma HLS INTERFACE bram port=in_r
	#pragma HLS INTERFACE bram port=out_r

    // Add the vectors
	int i, j;

    for (i = 0; i < DATA_SIZE; ++i) {
		#pragma HLS PIPELINE
    	int temp = in_r[i];

    	unsigned char* bytes = (unsigned char*)&temp;

    	for(j = 0; j < 4; ++j){
    		#pragma HLS UNROLL factor=4
    		bytes[j] = 255 - bytes[j];
    	}

        out_r[i] = temp;
    }
}
