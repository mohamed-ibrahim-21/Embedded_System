/* 
 * File:   ecu_relay.c
 * Author: mohamed ibrahim
 *
 * Created on October 27, 2023, 11:38 PM
 */

#include "ecu_relay.h"

/**
 * @brief initialize pin to be output and turn relay on or off
 * @param _relay
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType relay_initialize (const relay_t *_relay){
    Std_ReturnType ret = E_OK;
    if(NULL == _relay){
        ret = E_NOT_OK;
    }
    else{
        pin_config_t pin_obj = {
            .port      = _relay->relay_port,
            .pin       = _relay->relay_pin,
            .direction = GPIO_DIRECTION_OUTPUT,
            .logic     = _relay->relay_status
        };
        gpio_pin_intialize(&pin_obj);
    }
    
    
    return ret;
}

/**
 * @brief turn on relay 
 * @param _relay
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType relay_turn_on    (const relay_t *_relay){
    Std_ReturnType ret = E_OK;
    if(NULL == _relay){
        ret = E_NOT_OK;
    }
    else{
        pin_config_t pin_obj = {
            .port      = _relay->relay_port,
            .pin       = _relay->relay_pin,
            .direction = GPIO_DIRECTION_OUTPUT,
            .logic     = _relay->relay_status
        };
        gpio_pin_write_logic(&pin_obj, GPIO_HIGH);
    }
    
    
    return ret;
}

/**
 * @brief turn off relay 
 * @param _relay
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType relay_turn_off   (const relay_t *_relay){
    Std_ReturnType ret = E_OK;
    if(NULL == _relay){
        ret = E_NOT_OK;
    }
    else{
        pin_config_t pin_obj = {
            .port      = _relay->relay_port,
            .pin       = _relay->relay_pin,
            .direction = GPIO_DIRECTION_OUTPUT,
            .logic     = _relay->relay_status
        };
        gpio_pin_write_logic(&pin_obj, GPIO_LOW);
    }
    
    
    return ret;
}