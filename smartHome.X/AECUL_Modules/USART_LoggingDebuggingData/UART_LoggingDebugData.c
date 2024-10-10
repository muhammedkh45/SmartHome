/* 
 * File:   UART_LoggingDebugData.c
 * Author: Muhammed khalid muhammed
 * https://www.linkedin.com/in/muhammedkhallid
 * Created on August 4, 2024, 11:07 AM
 */

#include "UART_LoggingDebugData.h"

void UART_Send_String(uint8_t *String, uint16_t String_Length){
    uint16_t str_len_counter ;
    for(str_len_counter = 0; str_len_counter < String_Length; ++str_len_counter){
        EUSART_Write(String[str_len_counter]);
      
    }
    
}