/* 
 * File:   Applicatoin.c
 * Author: Muhammed Khalid muhammed
 * https://www.linkedin.com/in/muhammedkhallid
 * Created on August 1, 2024, 3:20 PM
 */

/*********************************INCLUDES************************/
#include "Application.h"
/*******************************MACROS DEFINITION**************************/
#define SensorAddress 0x9E 
#define EEPROM_A2_Address 0xA2
#define EEPROM_A6_Address 0xA6
/***************************************************************************/


/***************************************************************************/
RealTimeClockDs1307_t RealTimeClockDs1307 ;
uint8_t Temp_A7_Val;
uint8_t NVM_A2_Received ;
uint8_t NVM_A6_Received ;
uint8_t KeyPad_Value = 10 ;
std_ReturnType ret =E_OK;
extern chr_lcd_8bit_t LCD_1;
uint8_t dummy[3];
int main(void)
{
    SYSTEM_Initialize();
    /* Enable the Global High Interrupts */
    INTERRUPT_GlobalInterruptHighEnable(); 
    /* Enable the Global Low Interrupts */
    INTERRUPT_GlobalInterruptLowEnable(); 
    /* Enable the Peripheral Interrupts */
    INTERRUPT_PeripheralInterruptEnable(); 
    
    ret = lcd_8bit_intialize(&LCD_1);
    ret = lcd_8bit_send_command(&LCD_1,_LCD_DISPLAY_ON_UNDERLINE_OFF_CURSOR_OFF);
    keyPad_Init();
//    NVM_A2_Received = EEPROM_24c02c_Read_Byte(EEPROM_A2_Address, 0x00);

  
    while(1)
    {
        Temp_A7_Val = TemSensor_TC74_Read_Temp(SensorAddress);
        ret = convert_uint8_to_string(Temp_A7_Val,&dummy);
        if(Temp_A7_Val<36)
            ret = lcd_8bit_send_string_pos(&LCD_1,1,8,"Fan is OFF");
        else 
            ret = lcd_8bit_send_string_pos(&LCD_1,1,8,"Fan is ON ");
        ret = lcd_8bit_send_string_pos(&LCD_1,2,8,"Temp= ");
        ret = lcd_8bit_send_string_pos(&LCD_1,2,14,&dummy);
        RealTimeClockDs1307  = RealTimeClockDs1307_Get_Date_Time();
        Print_RealTimeClockDS1307();
        I2C_Write1ByteRegister(0x8,0x00,Temp_A7_Val);
        Keypad_Get_Value(&KeyPad_Value);
        
    }    
}