#include <stdio.h>
#include "asm.h"

int main(){
	char input[] = "\\sensor_id:8#type:atmospheric_temperature#value:21.60#unit:celsius#time:2470030";
	char token[] = "value";
	int output;
	
	int status = extract_token(input, token, &output);
	
	if(status == 0){
		printf("\nThe token %s was not found or the returned value is not a valid integer!", token);
	}else{
		printf("\nThe token %s was succefully founded \nExtracted value: %d\n", token, output);
	}
	return 0;
}
