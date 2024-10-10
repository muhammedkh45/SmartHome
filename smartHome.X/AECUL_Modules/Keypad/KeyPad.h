/* 
 * File:   KeyPad.h
 * Author: Muhammed Khalid muhammed
 * https://www.linkedin.com/in/muhammedkhallid
 * Created on October 6, 2024, 3:20 PM
 */
#define KeyPad_Number_Of_Rows 4
#define KeyPad_Number_Of_Columns 4 
#define LOGIC_LOW 0
#define LOGIC_HIGH 1
#include "stdio.h"
#include "stdint.h"
#include <builtins.h>
#include "../../mcc_generated_files/system/clock.h"
void keyPad_Init();
void Keypad_Get_Value(uint8_t* Value);