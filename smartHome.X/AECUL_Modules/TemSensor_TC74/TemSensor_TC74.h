/* 
 * File:   TemSensor_TC74.h
 * Author: Muhammed khalid muhammed
 * https://www.linkedin.com/in/muhammedkhallid
 * Created on August 4, 2024, 4:07 PM
 */

#ifndef TEMSENSOR_TC74_H
#define	TEMSENSOR_TC74_H
#include "../../mcc_generated_files/system/system.h"
#include"../../mcc_generated_files/i2c_host/i2c_master_example.h" 



uint8_t TemSensor_TC74_Read_Temp (i2c_address_t Temp_Address);

#endif	/* TEMSENSOR_TC74_H */

