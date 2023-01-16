#include <stdio.h>
#include <inttypes.h>
#include "lib/testlib1.h"


int main(){
	printf("hello test\n");

	char * test_string = "one two tree...";

	uint16_t string_len = testlib1_len_of_string(test_string);
	printf("Len of string \"%s\" is %d", test_string, string_len);

}

