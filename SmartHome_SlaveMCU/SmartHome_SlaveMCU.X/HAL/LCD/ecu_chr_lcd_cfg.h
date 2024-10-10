/* 
 * File:   ecu_chr_lcd_cfg.h
 * Author: Ahmed.Elghafar
 * https://www.linkedin.com/in/ahmedabdelghafarmohammed/
 * Created on February 9, 2021, 9:48 PM
 */

#ifndef ECU_CHR_LCD_CFG_H
#define	ECU_CHR_LCD_CFG_H
#include "ecu_chr_lcd.h"
/*---------------------------------------------------*/
chr_lcd_8bit_t LCD_1 = {
/*------------REGISTER SELECT---------------------*/
.lcd_rs.port = PORTA_INDEX,
.lcd_rs.pin = GPIO_PIN0,
.lcd_rs.direction = GPIO_DIRECTION_OUTPUT,
.lcd_rs.logic = GPIO_LOW,
/*--------------------ENABLE-------------------------*/
.lcd_en.port = PORTA_INDEX,
.lcd_en.pin = GPIO_PIN1,
.lcd_en.direction = GPIO_DIRECTION_OUTPUT,
.lcd_en.logic = GPIO_LOW,
/*---------------DATA BIT[0]---------------------------*/
.lcd_data[0].port = PORTC_INDEX,
.lcd_data[0].pin = GPIO_PIN0,
.lcd_data[0].direction = GPIO_DIRECTION_OUTPUT,
.lcd_data[0].logic = GPIO_LOW,
/*---------------DATA BIT[1]---------------------------*/
.lcd_data[1].port = PORTC_INDEX,
.lcd_data[1].pin = GPIO_PIN1,
.lcd_data[1].direction = GPIO_DIRECTION_OUTPUT,
.lcd_data[1].logic = GPIO_LOW,
/*---------------DATA BIT[2]---------------------------*/
.lcd_data[2].port = PORTC_INDEX,
.lcd_data[2].pin = GPIO_PIN2,
.lcd_data[2].direction = GPIO_DIRECTION_OUTPUT,
.lcd_data[2].logic = GPIO_LOW,
/*---------------DATA BIT[3]---------------------------*/
.lcd_data[3].port = PORTC_INDEX,
.lcd_data[3].pin = GPIO_PIN3,
.lcd_data[3].direction = GPIO_DIRECTION_OUTPUT,
.lcd_data[3].logic = GPIO_LOW,
/*---------------DATA BIT[4]---------------------------*/
.lcd_data[4].port = PORTC_INDEX,
.lcd_data[4].pin = GPIO_PIN4,
.lcd_data[4].direction = GPIO_DIRECTION_OUTPUT,
.lcd_data[4].logic = GPIO_LOW,
/*---------------DATA BIT[5]---------------------------*/
.lcd_data[5].port = PORTC_INDEX,
.lcd_data[5].pin = GPIO_PIN5,
.lcd_data[5].direction = GPIO_DIRECTION_OUTPUT,
.lcd_data[5].logic = GPIO_LOW,
/*---------------DATA BIT[6]---------------------------*/
.lcd_data[6].port = PORTC_INDEX,
.lcd_data[6].pin = GPIO_PIN6,
.lcd_data[6].direction = GPIO_DIRECTION_OUTPUT,
.lcd_data[6].logic = GPIO_LOW,    
/*---------------DATA BIT[7]---------------------------*/
.lcd_data[7].port = PORTC_INDEX,
.lcd_data[7].pin = GPIO_PIN7,
.lcd_data[7].direction = GPIO_DIRECTION_OUTPUT,
.lcd_data[7].logic = GPIO_LOW,
};
#endif	/* ECU_CHR_LCD_CFG_H */

