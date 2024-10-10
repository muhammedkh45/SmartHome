/* 
 * File:   KeyPad.c
 * Author: Muhammed Khalid muhammed
 * https://www.linkedin.com/in/muhammedkhallid
 * Created on October 6, 2024, 3:20 PM
 */
#include <pic18f4620.h>
#include <builtins.h>
#include "KeyPad.h"
static const uint8_t btn_values[KeyPad_Number_Of_Rows][KeyPad_Number_Of_Columns] = {
                                                            {'7','8','9','/'},
                                                            {'4','5','6','*'},
                                                            {'1','2','3','-'},
                                                            {'#','0','=','+'},
                                                           };
void keyPad_Init(){
    TRISD=0XF0;
    LATD=0X00;
}
void Keypad_Get_Value(uint8_t* Value){
    uint8_t L_rows_counter ;
    uint8_t val=1;
    for(L_rows_counter=0;L_rows_counter<KeyPad_Number_Of_Rows;L_rows_counter++){
        LATD=0X00;
        LATD=0x0F & val;
        uint8_t  mask = PORTD & 0xF0;
        switch(mask){
            case 0x10:
                *Value = btn_values[L_rows_counter][0];
                break;
            case 0x20: 
                *Value = btn_values[L_rows_counter][1];
                break;
             case 0x40:
                *Value = btn_values[L_rows_counter][2];
                break;
            case 0x80: 
                *Value = btn_values[L_rows_counter][3];
                break;
            default:
                break;
        }
        val=val<<1;
        __delay_ms(10);
    }
}