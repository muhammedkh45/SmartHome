/* 
 * File:   EPROM_24C02C.c
 * Author: Muhammed Khalid muhammed
 * https://www.linkedin.com/in/muhammedkhallid
 * Created on August 4, 2024, 3:20 PM
 */
#include "EPROM_24C02C.h"
void EEPROM_24c02c_write_Byte (i2c_address_t EEPROM_ADDRESS ,i2c_address_t BYTE_ADDRESS , uint8_t DATA){
    I2C_Write1ByteRegister(EEPROM_ADDRESS,BYTE_ADDRESS,DATA);
}
uint8_t EEPROM_24c02c_Read_Byte (i2c_address_t EEPROM_ADDRESS ,i2c_address_t BYTE_ADDRESS ){
    uint8_t Received_val = 0;
    Received_val = I2C_Read1ByteRegister(EEPROM_ADDRESS,BYTE_ADDRESS);
    return Received_val;
}

