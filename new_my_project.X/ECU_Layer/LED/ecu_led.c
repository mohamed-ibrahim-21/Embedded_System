/* 
 * File:   ecu_led.c
 * Author: mohamed ibrahim
 *
 * Created on October 4, 2023, 10:15 PM
 */

#include "ecu_led.h"

/**
 * @brief Initialize the pin to be output and turn led off
 * @param led
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType led_initialize   (const led_t *led){
    Std_ReturnType ret = E_OK;
    if(NULL == led){
        ret = E_NOT_OK;
    }
    else{
        pin_config_t pin_obj = {
            .port      = led->port_name,
            .pin       = led->pin,
            .direction = GPIO_DIRECTION_OUTPUT,
            .logic     = led->led_status
        };
        gpio_pin_intialize(&pin_obj);
    }
    
    
    return ret;
}

/**
 * @brief Turn led on 
 * @param led
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType led_turn_on      (const led_t *led){
    Std_ReturnType ret = E_OK;
    if(NULL == led){
        ret = E_NOT_OK;
    }
    else{
        pin_config_t pin_obj = {
            .port      = led->port_name,
            .pin       = led->pin,
            .direction = GPIO_DIRECTION_OUTPUT,
            .logic     = led->led_status
        };
        gpio_pin_write_logic(&pin_obj, GPIO_HIGH);
    }
    
    
    return ret;
}

/**
 * @brief Turn led off
 * @param led
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType led_turn_off     (const led_t *led){
    Std_ReturnType ret = E_OK;
    if(NULL == led){
        ret = E_NOT_OK;
    }
    else{
        pin_config_t pin_obj = {
            .port      = led->port_name,
            .pin       = led->pin,
            .direction = GPIO_DIRECTION_OUTPUT,
            .logic     = led->led_status
        };
        gpio_pin_write_logic(&pin_obj, GPIO_LOW);
    }
    
    
    return ret;
}

/**
 * @brief Turn led toggle 
 * @param led
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType led_turn_toggle  (const led_t *led){
    Std_ReturnType ret = E_OK;
    if(NULL == led){
        ret = E_NOT_OK;
    }
    else{
        pin_config_t pin_obj = {
            .port      = led->port_name,
            .pin       = led->pin,
            .direction = GPIO_DIRECTION_OUTPUT,
            .logic     = led->led_status
        };
        gpio_pin_toggle_logic(&pin_obj);
    }
    
    
    return ret;
}
