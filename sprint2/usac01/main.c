# include <stdio.h>
# include "asm.h"

int main(){
	
	char input[] = "sensor_id:8#type:atmospheric_temperature#value:21.60#unit:celsius#time:2470030";
	
	char token[] = "value";
	
	int output;
	
	extract_token(input, token, &output);
	
	printf("Extracted value: %02d.%02d\n", (output/100)%100, output%100);
	
	return 0;
}
