# 1 "AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.c" 2






# 1 "AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.h" 1






# 1 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/i2c_master_example.h" 1
# 50 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/i2c_master_example.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 1 3
# 13 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef signed char int8_t;






typedef signed int int16_t;







typedef __int24 int24_t;







typedef signed long int int32_t;







typedef signed long long int int64_t;







typedef unsigned char uint8_t;





typedef unsigned int uint16_t;






typedef __uint24 uint24_t;






typedef unsigned long int uint32_t;






typedef unsigned long long int uint64_t;
# 88 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_least8_t;







typedef signed int int_least16_t;
# 109 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_least24_t;
# 118 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef signed long int int_least32_t;
# 127 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef signed long long int int_least64_t;
# 136 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_least8_t;






typedef unsigned int uint_least16_t;
# 154 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_least24_t;







typedef unsigned long int uint_least32_t;







typedef unsigned long long int uint_least64_t;
# 181 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_fast8_t;






typedef signed int int_fast16_t;
# 200 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_fast24_t;







typedef signed long int int_fast32_t;







typedef signed long long int int_fast64_t;







typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
# 240 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_fast24_t;






typedef unsigned long int uint_fast32_t;






typedef unsigned long long int uint_fast64_t;
# 263 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef int64_t intmax_t;
# 278 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef uint64_t uintmax_t;
# 289 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 3
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 50 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/i2c_master_example.h" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdio.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\__size_t.h" 1 3



typedef unsigned size_t;
# 5 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdio.h" 2 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\__null.h" 1 3
# 6 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdio.h" 2 3





# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdarg.h" 1 3






typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);
# 12 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdio.h" 2 3
# 43 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdio.h" 3
struct __prbuf
{
 char * ptr;
 void (* func)(char);
};
# 85 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdio.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\conio.h" 1 3







# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\errno.h" 1 3
# 29 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\errno.h" 3
extern int errno;
# 9 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\conio.h" 2 3



extern void init_uart(void);

extern char getch(void);
extern char getche(void) __attribute__((__deprecated__));
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);



extern char * cgets(char *) __attribute__((__deprecated__));
extern void cputs(const char *) __attribute__((__deprecated__));
# 86 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdio.h" 2 3


extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);
# 180 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdio.h" 3
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);
# 51 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/i2c_master_example.h" 2

# 1 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h" 1
# 55 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdint.h" 1 3
# 55 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c90\\stdbool.h" 1 3
# 56 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h" 2


typedef enum {
    I2C_NOERR,
    I2C_BUSY,
    I2C_FAIL


} i2c_error_t;

typedef enum
{
    I2C_STOP=1,
    I2C_RESTART_READ,
    I2C_RESTART_WRITE,
    I2C_CONTINUE,
    I2C_RESET_LINK
} i2c_operations_t;

typedef uint8_t i2c_address_t;
typedef i2c_operations_t (*i2c_callback_t)(void *funPtr);


i2c_operations_t I2C_CallbackReturnStop(void *funPtr);
i2c_operations_t I2C_CallbackReturnReset(void *funPtr);
i2c_operations_t I2C_CallbackRestartWrite(void *funPtr);
i2c_operations_t I2C_CallbackRestartRead(void *funPtr);






void I2C_Initialize(void);
# 101 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
i2c_error_t I2C_Open(i2c_address_t address);
# 111 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
i2c_error_t I2C_Close(void);
# 123 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
i2c_error_t I2C_MasterOperation(_Bool read);




i2c_error_t I2C_MasterWrite(void);




i2c_error_t I2C_MasterRead(void);
# 142 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
void I2C_SetTimeout(uint8_t timeOut);
# 152 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
void I2C_SetBuffer(void *buffer, size_t bufferSize);
# 164 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
void I2C_SetDataCompleteCallback(i2c_callback_t cb, void *ptr);
# 174 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
void I2C_SetWriteCollisionCallback(i2c_callback_t cb, void *ptr);
# 184 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
void I2C_SetAddressNackCallback(i2c_callback_t cb, void *ptr);
# 194 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
void I2C_SetDataNackCallback(i2c_callback_t cb, void *ptr);
# 204 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
void I2C_SetTimeoutCallback(i2c_callback_t cb, void *ptr);
# 213 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
void (*MSSP_InterruptHandler)(void);
# 222 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/mssp.h"
void I2C_SetInterruptHandler(void (* InterruptHandler)(void));
# 52 "AECUL_Modules/EEPROM_24C02C/../../mcc_generated_files/i2c_host/i2c_master_example.h" 2


uint8_t I2C_Read1ByteRegister(i2c_address_t address, uint8_t reg);
uint16_t I2C_Read2ByteRegister(i2c_address_t address, uint8_t reg);
void I2C_Write1ByteRegister(i2c_address_t address, uint8_t reg, uint8_t data);
void I2C_Write2ByteRegister(i2c_address_t address, uint8_t reg, uint16_t data);
void I2C_WriteNBytes(i2c_address_t address, uint8_t *data, size_t len);
void I2C_ReadNBytes(i2c_address_t address, uint8_t *data, size_t len);
void I2C_ReadDataBlock(i2c_address_t address, uint8_t reg, uint8_t *data, size_t len);
# 7 "AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.h" 2



void EEPROM_24c02c_write_Byte (i2c_address_t EEPROM_ADDRESS ,i2c_address_t BYTE_ADDRESS , uint8_t DATA);
uint8_t EEPROM_24c02c_Read_Byte (i2c_address_t EEPROM_ADDRESS ,i2c_address_t BYTE_ADDRESS);
# 7 "AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.c" 2

void EEPROM_24c02c_write_Byte (i2c_address_t EEPROM_ADDRESS ,i2c_address_t BYTE_ADDRESS , uint8_t DATA){
    I2C_Write1ByteRegister(EEPROM_ADDRESS,BYTE_ADDRESS,DATA);
}
uint8_t EEPROM_24c02c_Read_Byte (i2c_address_t EEPROM_ADDRESS ,i2c_address_t BYTE_ADDRESS ){
    uint8_t Received_val = 0;
    Received_val = I2C_Read1ByteRegister(EEPROM_ADDRESS,BYTE_ADDRESS);
    return Received_val;
}
