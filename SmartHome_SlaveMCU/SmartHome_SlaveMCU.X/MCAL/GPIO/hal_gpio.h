/* 
 * File:   hal_gpio.h
 * Author: Ahmed.Elghafar
 * https://www.linkedin.com/in/ahmedabdelghafarmohammed/
 * Created on November 28, 2020, 9:32 PM
 */

#ifndef HAL_GPIO_H
#define	HAL_GPIO_H

/* Section : Includes */

#include <xc.h>
#include "../../std_Types.h"
#include "stdint.h"
#include "stdio.h"
#include "hal_gpio_cfg.h"




/* Section: Macro Declarations */
#define BIT_MASK  (uint8_t)1

#define PORT_PIN_MAX_NUMBER  8
#define PORT_MAX_NUMBER      5

#define PORTC_MASK           0xFF

/* Section: Macro Functions Declarations */

#define SET_BIT(REG, BIT_POSN)     (REG |= (BIT_MASK << BIT_POSN))
#define CLEAR_BIT(REG, BIT_POSN)   (REG &= ~(BIT_MASK << BIT_POSN))
#define TOGGLE_BIT(REG, BIT_POSN)  (REG ^= (BIT_MASK << BIT_POSN))
#define READ_BIT(REG, BIT_POSN)    ((REG >> BIT_POSN) & BIT_MASK)

/* Section: Data Type Declarations */

typedef enum{
    GPIO_LOW = 0,
    GPIO_HIGH
}logic_t;

typedef enum{
    GPIO_DIRECTION_OUTPUT = 0,
    GPIO_DIRECTION_INPUT
}direction_t;

typedef enum{
    GPIO_PIN0 = 0,
    GPIO_PIN1,
    GPIO_PIN2,
    GPIO_PIN3,
    GPIO_PIN4,
    GPIO_PIN5,
    GPIO_PIN6,
    GPIO_PIN7
}pin_index_t;

typedef enum{
    PORTA_INDEX = 0,
    PORTB_INDEX,
    PORTC_INDEX,
    PORTD_INDEX,
    PORTE_INDEX
}port_index_t;

typedef struct{
    uint8_t port : 3;      /* @ref port_index_t */
    uint8_t pin : 3;       /* @ref pin_index_t */
    uint8_t direction : 1; /* @ref direction_t */
    uint8_t logic : 1;     /* @ref logic_t */
}pin_config_t;

/* Section: Function Declarations */
std_ReturnType gpio_pin_direction_intialize(const pin_config_t *_pin_config);
std_ReturnType gpio_pin_get_direction_status(const pin_config_t *_pin_config, direction_t *direction_status);
std_ReturnType gpio_pin_write_logic(const pin_config_t *_pin_config, logic_t logic);
std_ReturnType gpio_pin_read_logic(const pin_config_t *_pin_config, logic_t *logic);
std_ReturnType gpio_pin_toggle_logic(const pin_config_t *_pin_config);
std_ReturnType gpio_pin_intialize(const pin_config_t *_pin_config);

std_ReturnType gpio_port_direction_intialize(port_index_t port, uint8_t direction);
std_ReturnType gpio_port_get_direction_status(port_index_t port, uint8_t *direction_status);
std_ReturnType gpio_port_write_logic(port_index_t port, uint8_t logic);
std_ReturnType gpio_port_read_logic(port_index_t port, uint8_t *logic);
std_ReturnType gpio_port_toggle_logic(port_index_t port);

#endif	/* HAL_GPIO_H */
