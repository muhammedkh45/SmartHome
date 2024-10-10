/* 
 * File:   RealTimeClockDs1307.c
 * Author: Muhammed Khalid muhammed
 * https://www.linkedin.com/in/muhammedkhallid
 * Created on August 3, 2024, 3:23 PM
 */

#ifndef REALTIMECLOCKDS1307_H
#define	REALTIMECLOCKDS1307_H

#include "../../mcc_generated_files/system/system.h"
#include"../../mcc_generated_files/i2c_host/i2c_master_example.h" 
#include "../USART_LoggingDebuggingData/UART_LoggingDebugData.h"

typedef struct{
    uint8_t Hours;
    uint8_t Minuts;
    uint8_t Seconds;
    uint8_t Year;
    uint8_t Month;
    uint8_t Day;            
}RealTimeClockDs1307_t;

RealTimeClockDs1307_t RealTimeClockDs1307_Get_Date_Time (void);
void Print_RealTimeClockDS1307(void);

#endif	/* REALTIMECLOCKDS1307_H */

