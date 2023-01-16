
#include <stdio.h>
#include <inttypes.h>
#include "testlib1.h"


void testlib1_print_hello_world(){
	printf("hello world");
	
}

uint16_t testlib1_len_of_string(char* input){
	for(uint16_t idx = 0; idx<UINT16_MAX; idx++){
		if(*(input+idx) == 0) {
			return idx;
		}
	}
}

