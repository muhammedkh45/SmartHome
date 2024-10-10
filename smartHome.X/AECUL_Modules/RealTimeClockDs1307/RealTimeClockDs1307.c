/* 
 * File:   RealTimeClockDs1307.c
 * Author: Muhammed Khalid muhammed
 * https://www.linkedin.com/in/muhammedkhallid
 * Created on August 3, 2024, 3:23 PM
 */
#include "RealTimeClockDs1307.h"
static RealTimeClockDs1307_t RealTimeClockDs1307 ;
static uint8_t RealTimeClockDS1307_Pack_Time[9];
static uint8_t RealTimeClockDS1307_Pack_Date[9];
RealTimeClockDs1307_t RealTimeClockDs1307_Get_Date_Time(void){

    RealTimeClockDs1307.Seconds = I2C_Read1ByteRegister (0xD0,0x00);
    RealTimeClockDs1307.Minuts = I2C_Read1ByteRegister (0xD0,0x01);
    RealTimeClockDs1307.Hours =I2C_Read1ByteRegister (0xD0,0x02);
    RealTimeClockDs1307.Day = I2C_Read1ByteRegister (0xD0,0x04);
    RealTimeClockDs1307.Month = I2C_Read1ByteRegister (0xD0,0x05);
    RealTimeClockDs1307.Year = I2C_Read1ByteRegister (0xD0,0x06);
     

    return RealTimeClockDs1307;
}
/**
 * @breif : Data are received in BCD format so we try to extract each 4-Bit number and convert it to char there's why we us (+ '0') 
 * 
 */
void Print_RealTimeClockDS1307(void){

  RealTimeClockDS1307_Pack_Date[0] = ((RealTimeClockDs1307.Day >> 4) + '0');
  RealTimeClockDS1307_Pack_Date[1] = ((RealTimeClockDs1307.Day & 0x0F) + '0');
  RealTimeClockDS1307_Pack_Date[2] = '-';
  RealTimeClockDS1307_Pack_Date[3] = ((RealTimeClockDs1307.Month >> 4) + '0');
  RealTimeClockDS1307_Pack_Date[4] = ((RealTimeClockDs1307.Month & 0x0F) + '0');
  RealTimeClockDS1307_Pack_Date[5] = '-';
  RealTimeClockDS1307_Pack_Date[6] = ((RealTimeClockDs1307.Year >> 4) + '0');
  RealTimeClockDS1307_Pack_Date[7] = ((RealTimeClockDs1307.Year & 0x0F) + '0');
  RealTimeClockDS1307_Pack_Date[8] = '\r';
  
  RealTimeClockDS1307_Pack_Time[0] = ((RealTimeClockDs1307.Hours >> 4) + '0');
  RealTimeClockDS1307_Pack_Time[1] = ((RealTimeClockDs1307.Hours &0x0F) + '0');
  RealTimeClockDS1307_Pack_Time[2] = '-';
  RealTimeClockDS1307_Pack_Time[3] = ((RealTimeClockDs1307.Minuts >> 4) + '0');
  RealTimeClockDS1307_Pack_Time[4] = ((RealTimeClockDs1307.Minuts &0x0F) + '0');
  RealTimeClockDS1307_Pack_Time[5] = '-';
  RealTimeClockDS1307_Pack_Time[6] = ((RealTimeClockDs1307.Seconds >> 4) + '0');
  RealTimeClockDS1307_Pack_Time[7] = ((RealTimeClockDs1307.Seconds &0x0F) + '0');
  RealTimeClockDS1307_Pack_Time[8] = '\r';
  UART_Send_String("TIME: ",6);
  UART_Send_String(RealTimeClockDS1307_Pack_Time,9);
  UART_Send_String("DATE: ",6);
  UART_Send_String(RealTimeClockDS1307_Pack_Date,9);

  UART_Send_String("------------------------\r",25);
}