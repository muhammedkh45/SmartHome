#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/smartHome.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/smartHome.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.c AECUL_Modules/Keypad/KeyPad.c AECUL_Modules/LCD/ecu_chr_lcd.c AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.c AECUL_Modules/TemSensor_TC74/TemSensor_TC74.c AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.c MCAL/GPIO/hal_gpio.c mcc_generated_files/i2c_host/src/i2c_master_example.c mcc_generated_files/i2c_host/src/mssp.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/system.c mcc_generated_files/uart/src/eusart.c Application.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1 ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1 ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1 ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1 ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1 ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1 ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1 ${OBJECTDIR}/Application.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1.d ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1.d ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1.d ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1.d ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1.d ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1.d ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1.d ${OBJECTDIR}/Application.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1 ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1 ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1 ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1 ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1 ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1 ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1 ${OBJECTDIR}/Application.p1

# Source Files
SOURCEFILES=AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.c AECUL_Modules/Keypad/KeyPad.c AECUL_Modules/LCD/ecu_chr_lcd.c AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.c AECUL_Modules/TemSensor_TC74/TemSensor_TC74.c AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.c MCAL/GPIO/hal_gpio.c mcc_generated_files/i2c_host/src/i2c_master_example.c mcc_generated_files/i2c_host/src/mssp.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/system.c mcc_generated_files/uart/src/eusart.c Application.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/smartHome.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F46K20
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1: AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C" 
	@${RM} ${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1.d 
	@${RM} ${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1 AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.c 
	@-${MV} ${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.d ${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1: AECUL_Modules/Keypad/KeyPad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/AECUL_Modules/Keypad" 
	@${RM} ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1.d 
	@${RM} ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1 AECUL_Modules/Keypad/KeyPad.c 
	@-${MV} ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.d ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1: AECUL_Modules/LCD/ecu_chr_lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/AECUL_Modules/LCD" 
	@${RM} ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1.d 
	@${RM} ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1 AECUL_Modules/LCD/ecu_chr_lcd.c 
	@-${MV} ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.d ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1: AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307" 
	@${RM} ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1.d 
	@${RM} ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1 AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.c 
	@-${MV} ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.d ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1: AECUL_Modules/TemSensor_TC74/TemSensor_TC74.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/AECUL_Modules/TemSensor_TC74" 
	@${RM} ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1.d 
	@${RM} ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1 AECUL_Modules/TemSensor_TC74/TemSensor_TC74.c 
	@-${MV} ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.d ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1: AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData" 
	@${RM} ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1.d 
	@${RM} ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1 AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.c 
	@-${MV} ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.d ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1: MCAL/GPIO/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1.d 
	@${RM} ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1 MCAL/GPIO/hal_gpio.c 
	@-${MV} ${OBJECTDIR}/MCAL/GPIO/hal_gpio.d ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1: mcc_generated_files/i2c_host/src/i2c_master_example.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/i2c_host/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1 mcc_generated_files/i2c_host/src/i2c_master_example.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1: mcc_generated_files/i2c_host/src/mssp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/i2c_host/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1 mcc_generated_files/i2c_host/src/mssp.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1: mcc_generated_files/nvm/src/nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 mcc_generated_files/nvm/src/nvm.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1: mcc_generated_files/system/src/interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 mcc_generated_files/system/src/interrupt.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.p1: mcc_generated_files/system/src/pins.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 mcc_generated_files/system/src/pins.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/pins.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.p1: mcc_generated_files/system/src/clock.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 mcc_generated_files/system/src/clock.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/clock.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1: mcc_generated_files/system/src/config_bits.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 mcc_generated_files/system/src/config_bits.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/system.p1: mcc_generated_files/system/src/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 mcc_generated_files/system/src/system.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/system.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1: mcc_generated_files/uart/src/eusart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1 mcc_generated_files/uart/src/eusart.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.d ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Application.p1: Application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Application.p1.d 
	@${RM} ${OBJECTDIR}/Application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Application.p1 Application.c 
	@-${MV} ${OBJECTDIR}/Application.d ${OBJECTDIR}/Application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1: AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C" 
	@${RM} ${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1.d 
	@${RM} ${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1 AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.c 
	@-${MV} ${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.d ${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AECUL_Modules/EEPROM_24C02C/EPROM_24C02C.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1: AECUL_Modules/Keypad/KeyPad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/AECUL_Modules/Keypad" 
	@${RM} ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1.d 
	@${RM} ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1 AECUL_Modules/Keypad/KeyPad.c 
	@-${MV} ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.d ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AECUL_Modules/Keypad/KeyPad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1: AECUL_Modules/LCD/ecu_chr_lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/AECUL_Modules/LCD" 
	@${RM} ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1.d 
	@${RM} ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1 AECUL_Modules/LCD/ecu_chr_lcd.c 
	@-${MV} ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.d ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AECUL_Modules/LCD/ecu_chr_lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1: AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307" 
	@${RM} ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1.d 
	@${RM} ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1 AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.c 
	@-${MV} ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.d ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AECUL_Modules/RealTimeClockDs1307/RealTimeClockDs1307.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1: AECUL_Modules/TemSensor_TC74/TemSensor_TC74.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/AECUL_Modules/TemSensor_TC74" 
	@${RM} ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1.d 
	@${RM} ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1 AECUL_Modules/TemSensor_TC74/TemSensor_TC74.c 
	@-${MV} ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.d ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AECUL_Modules/TemSensor_TC74/TemSensor_TC74.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1: AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData" 
	@${RM} ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1.d 
	@${RM} ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1 AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.c 
	@-${MV} ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.d ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AECUL_Modules/USART_LoggingDebuggingData/UART_LoggingDebugData.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1: MCAL/GPIO/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1.d 
	@${RM} ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1 MCAL/GPIO/hal_gpio.c 
	@-${MV} ${OBJECTDIR}/MCAL/GPIO/hal_gpio.d ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL/GPIO/hal_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1: mcc_generated_files/i2c_host/src/i2c_master_example.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/i2c_host/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1 mcc_generated_files/i2c_host/src/i2c_master_example.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c_master_example.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1: mcc_generated_files/i2c_host/src/mssp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/i2c_host/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1 mcc_generated_files/i2c_host/src/mssp.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/mssp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1: mcc_generated_files/nvm/src/nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 mcc_generated_files/nvm/src/nvm.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1: mcc_generated_files/system/src/interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 mcc_generated_files/system/src/interrupt.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.p1: mcc_generated_files/system/src/pins.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 mcc_generated_files/system/src/pins.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/pins.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.p1: mcc_generated_files/system/src/clock.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 mcc_generated_files/system/src/clock.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/clock.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1: mcc_generated_files/system/src/config_bits.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 mcc_generated_files/system/src/config_bits.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/system.p1: mcc_generated_files/system/src/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 mcc_generated_files/system/src/system.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/system.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1: mcc_generated_files/uart/src/eusart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1 mcc_generated_files/uart/src/eusart.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.d ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart/src/eusart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Application.p1: Application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Application.p1.d 
	@${RM} ${OBJECTDIR}/Application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Application.p1 Application.c 
	@-${MV} ${OBJECTDIR}/Application.d ${OBJECTDIR}/Application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/smartHome.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/smartHome.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib -std=c99 -gcoff -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/smartHome.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/smartHome.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/smartHome.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/smartHome.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -mc90lib -std=c99 -gcoff -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/smartHome.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
