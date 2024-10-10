/* 
 * File:   EPROM_24C02C.h
 * Author: Muhammed Khalid muhammed
 * https://www.linkedin.com/in/muhammedkhallid
 * Created on August 4, 2024, 3:20 PM
 */
#include "../../mcc_generated_files/i2c_host/i2c_master_example.h"
#ifndef EPROM_24C02C_H
#define	EPROM_24C02C_H
void EEPROM_24c02c_write_Byte (i2c_address_t EEPROM_ADDRESS ,i2c_address_t BYTE_ADDRESS , uint8_t DATA);
uint8_t EEPROM_24c02c_Read_Byte (i2c_address_t EEPROM_ADDRESS ,i2c_address_t BYTE_ADDRESS);

#endif	/* EPROM_24C02C_H */

