/* 
 * File:   TemSensor_TC74.c
 * Author: Muhammed khalid muhammed
 * https://www.linkedin.com/in/muhammedkhallid
 * Created on August 4, 2024, 4:07 PM
 */
#include "TemSensor_TC74.h"

uint8_t TemSensor_TC74_Read_Temp (i2c_address_t Temp_Address){
    uint8_t Received_Temp = 0;
    Received_Temp = I2C_Read1ByteRegister(Temp_Address,0x00);
    return Received_Temp;

}