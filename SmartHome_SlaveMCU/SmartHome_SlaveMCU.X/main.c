
#include "mcc_generated_files/mcc.h"
#include "std_Types.h"
#include "HAL/LCD/ecu_chr_lcd.h"

uint8_t RecTC74_A7_TempValue = 0;
std_ReturnType ret = E_NOT_OK;

static void Custom_I2C_SlaveDefRdInterruptHandler() {
    RecTC74_A7_TempValue = SSPBUF;
}
extern chr_lcd_8bit_t LCD_1 ;
void main(void)
{
    
    // Initialize the device
    SYSTEM_Initialize();
    // Enable high priority global interrupts
    INTERRUPT_GlobalInterruptHighEnable();
    // Enable low priority global interrupts.
    INTERRUPT_GlobalInterruptLowEnable();
    // Enable the Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();
   // ret = lcd_8bit_intialize(&LCD_1);
    I2C_Open();
    I2C_SlaveSetReadIntHandler(Custom_I2C_SlaveDefRdInterruptHandler);
    
    while (1)
    {
       // ret = lcd_8bit_send_string(&LCD_1,"Slave MCU");
        if(RecTC74_A7_TempValue > 35){
            DC_MotorPin0_SetHigh();
            DC_MotorPin1_SetLow();
        }
        else{
            DC_MotorPin0_SetLow();
            DC_MotorPin1_SetLow();
        }
    }
}