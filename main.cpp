#include <stdint.h>
#include <iostream>
#include <cstring> 

#define DEFAULT_DST_MAC ((uint8_t[6]) { 0xFC, 0xFC, 0x48, 0, 0, 0})

class foo{
	public:
		foo(const uint8_t new_mac[6]){
			std::cout << new_mac << std::endl;	
			memcpy(&this->mac, new_mac, 6);
		}
	private:
		uint8_t mac[6];
};

int main(){
	foo f((uint8_t*)DEFAULT_DST_MAC);
	return 0;
}
