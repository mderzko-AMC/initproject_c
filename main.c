#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>
#include "lib/bul.h"

#define MAC_LEN 6

#define BUFF_LEN 100


uint8_t mac_addr[MAC_LEN] = {
	0xa6,
	0xba,
	0x3a,
	0xf5,
	0x01,
	0x22,
};
uint8_t bu[MAC_LEN] = {
	0xff,
	0xff,
	0xff,
	0xff,
	0xff,
	0xff,
};


uint8_t mac_buff[BUFF_LEN][MAC_LEN]; 

int mac_exist_in(uint8_t *pattern, uint8_t ptr2d[][6], uint8_t bufflen){
	int exist = 0;

	for (uint16_t i = 0; i < bufflen; i++){
		exist = !memcmp(ptr2d+i, pattern, 6);

		if (exist)
			break;
	}

	return exist;
}



int main(){
	printf("======== hello test! ======== \n");

	printf("copying table...\r\n");


	bul_print_lala();

	for (uint16_t i = 0; i < BUFF_LEN; i++){
		memcpy(mac_buff+i, bu, sizeof(uint8_t)*6);

		// calculating random mac addr
		for (uint8_t bubu = 0; bubu < 6; bubu++) {
			bu[bubu] = (uint8_t)(bu[bubu]*423%31*bubu+4); 
		}
		
	}
	
	// memcpy(mac_buff+15, mac_addr, sizeof(uint8_t)*6);


	for (uint16_t row = 0; row < BUFF_LEN; row++){
		printf("%d.\t", row);

		for (uint16_t col = 0; col < (MAC_LEN); col++){
		
			printf("%d\t", mac_buff[row][col]);	
		}

		printf("\n");



	}

	int a = mac_exist_in(mac_addr, mac_buff, 100);
	printf("\'a\' rowne %d", a);

}

