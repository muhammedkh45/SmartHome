/**
 * EUSART Generated Driver API Header File
 * 
 * @file eusart.c
 * 
 * @ingroup eusart
 * 
 * @brief This is the generated driver implementation file for the EUSART driver using the Enhanced Universal Synchronous and Asynchronous Receiver Transceiver (EUSART) module.
 *
 * @version EUSART Driver Version 3.0.1
*/

/*
� [2024] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
*/

/**
  Section: Included Files
*/
#include "../eusart.h"

/**
  Section: Macro Declarations
*/

/**
  Section: Driver Interface
 */

//const uart_drv_interface_t UART = {
//    .Initialize = &EUSART_Initialize,
//    .Deinitialize = &EUSART_Deinitialize,
//    .Read = &EUSART_Read,
//    .Write = &EUSART_Write,
//    .IsRxReady = &EUSART_IsRxReady,
//    .IsTxReady = &EUSART_IsTxReady,
//    .IsTxDone = &EUSART_IsTxDone,
//    .TransmitEnable = &EUSART_TransmitEnable,
//    .TransmitDisable = &EUSART_TransmitDisable,
//    .AutoBaudSet = &EUSART_AutoBaudSet,
//    .AutoBaudQuery = &EUSART_AutoBaudQuery,
//    .BRGCountSet = NULL,
//    .BRGCountGet = NULL,
//    .BaudRateSet = NULL,
//    .BaudRateGet = NULL,
//    .AutoBaudEventEnableGet = NULL,
//    .ErrorGet = &EUSART_ErrorGet,
//    .TxCompleteCallbackRegister = NULL,
//    .RxCompleteCallbackRegister = NULL,
//    .TxCollisionCallbackRegister = NULL,
//    .FramingErrorCallbackRegister = &EUSART_FramingErrorCallbackRegister,
//    .OverrunErrorCallbackRegister = &EUSART_OverrunErrorCallbackRegister,
//    .ParityErrorCallbackRegister = NULL,
//    .EventCallbackRegister = NULL,
//};

/**
  Section: EUSART variables
*/
static volatile eusart_status_t eusartRxLastError;

/**
  Section: EUSART APIs
*/

static void (*EUSART_FramingErrorHandler)(void) = NULL;
static void (*EUSART_OverrunErrorHandler)(void) = NULL;

static void EUSART_DefaultFramingErrorCallback(void);
static void EUSART_DefaultOverrunErrorCallback(void);


/**
  Section: EUSART  APIs
*/

void EUSART_Initialize(void)
{
    // Set the EUSART module to the options selected in the user interface.

    //ABDEN disabled; WUE disabled; BRG16 16bit_generator; ABDOVF no_overflow; CKTXP async_noninverted_sync_fallingedge; RXDTP not_inverted; 
    BAUDCON = 0x48; 
    //ADDEN disabled; CREN enabled; SREN disabled; RX9 8-bit; SPEN enabled; 
    RCSTA = 0x90; 
    //TX9D 0x0; BRGH hi_speed; SENDB sync_break_complete; SYNC asynchronous; TXEN enabled; TX9 8-bit; CSRC client_mode; 
    TXSTA = 0x26; 
    //SPBRG 160; 
    SPBRG = 0xA0; 
    //SPBRGH 1; 
    SPBRGH = 0x1; 


    EUSART_FramingErrorCallbackRegister(EUSART_DefaultFramingErrorCallback);
    EUSART_OverrunErrorCallbackRegister(EUSART_DefaultOverrunErrorCallback);
    eusartRxLastError.status = 0;  

}

void EUSART_Deinitialize(void)
{
    BAUDCON = 0x00;
    RCSTA = 0x00;
    TXSTA = 0x00;
    SPBRG = 0x00;
    SPBRGH = 0x00;
}

void EUSART_Enable(void)
{
    RCSTAbits.SPEN = 1;

}

void EUSART_Disable(void)
{
    RCSTAbits.SPEN = 0;
}


void EUSART_TransmitEnable(void)
{
    TXSTAbits.TXEN = 1;
}

void EUSART_TransmitDisable(void)
{
    TXSTAbits.TXEN = 0;
}

void EUSART_ReceiveEnable(void)
{
    RCSTAbits.CREN = 1;
}

void EUSART_ReceiveDisable(void)
{
    RCSTAbits.CREN = 0;
}

void EUSART_SendBreakControlEnable(void)
{
    TXSTAbits.SENDB = 1;
}

void EUSART_SendBreakControlDisable(void)
{
    TXSTAbits.SENDB = 0;
}

void EUSART_AutoBaudSet(bool enable)
{
    if(enable)
    {
        BAUDCONbits.ABDEN = 1;
    }
    else
    {
       BAUDCONbits.ABDEN = 0; 
    }
}

bool EUSART_AutoBaudQuery(void)
{
return (bool)(!BAUDCONbits.ABDEN);
}

bool EUSART_IsAutoBaudDetectOverflow(void)
{
    return (bool)BAUDCONbits.ABDOVF; 
}

void EUSART_AutoBaudDetectOverflowReset(void)
{
    BAUDCONbits.ABDOVF = 0; 
}

bool EUSART_IsRxReady(void)
{
    return (bool)(PIR1bits.RC1IF);
}

bool EUSART_IsTxReady(void)
{
    return (bool)(PIR1bits.TX1IF && TXSTAbits.TXEN);
}

bool EUSART_IsTxDone(void)
{
    return TXSTAbits.TRMT;
}

size_t EUSART_ErrorGet(void)
{
    return eusartRxLastError.status;
}

uint8_t EUSART_Read(void)
{
    while(!PIR1bits.RC1IF)
    {
    }

    eusartRxLastError.status = 0;
    
    if(1 == RCSTAbits.OERR)
    {
        // EUSART error - restart

        RCSTAbits.CREN = 0; 
        RCSTAbits.CREN = 1; 
    }

    return RCREG;
}

void EUSART_Write(uint8_t txData)
{   
    while(0 == PIR1bits.TX1IF){}
    TXREG = txData;
}

static void EUSART_DefaultFramingErrorCallback(void)
{
    
}

static void EUSART_DefaultOverrunErrorCallback(void)
{
    //Continuous Receive must be cleared to clear Overrun Error else Rx will not receive upcoming bytes
    RCSTAbits.CREN = 0;
    RCSTAbits.CREN = 1;
}

void EUSART_FramingErrorCallbackRegister(void (* callbackHandler)(void))
{
    if(NULL != callbackHandler)
    {
        EUSART_FramingErrorHandler = callbackHandler;
    }
}

void EUSART_OverrunErrorCallbackRegister(void (* callbackHandler)(void))
{
    if(NULL != callbackHandler)
    {
        EUSART_OverrunErrorHandler = callbackHandler;
    }    
}

