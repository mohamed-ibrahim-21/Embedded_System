/* 
 * File:   ecu_push_button.c
 * Author: mohamed ibrahim
 *
 * Created on October 26, 2023, 5:27 PM
 */

#include "ecu_push_button.h"

/**
 * @brief Initialize the assigned pin to be Input
 * @param btn pinter to the button configurations
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType push_button_initialize (const push_button_t *btn){
    Std_ReturnType ret = E_NOT_OK;
    if(NULL == btn){
        ret = E_NOT_OK;
    }
    else{
        ret = gpio_pin_direction_intialize(&(btn->push_button_pin));
    }
    
    return ret;
}

/**
 * @brief Read the state of the button  
 * @param btn
 * @param btn_state
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType push_button_read_status (const push_button_t *btn, push_button_state_t *btn_status){
    Std_ReturnType ret = E_NOT_OK;
    logic_t pin_logic_status = GPIO_LOW;
    if((NULL == btn) || (NULL == btn_status)){
        ret = E_NOT_OK;
    }
    else{
        ret = gpio_pin_read_logic(&(btn->push_button_pin) , &(pin_logic_status));
        
        if(btn->push_button_connection == PUSH_BUTTON_ACTIVE_HIGH){
            if(pin_logic_status == GPIO_HIGH){
                *btn_status = PUSH_BUTTON_PRESSED;
            }
            else{
                *btn_status = PUSH_BUTTON_RELEASED;
            }
        }
        else if(btn->push_button_connection == PUSH_BUTTON_ACTIVE_LOW){
            if(pin_logic_status == GPIO_HIGH){
                *btn_status = PUSH_BUTTON_RELEASED;
            }
            else{
                *btn_status = PUSH_BUTTON_PRESSED;
            }
        }
        ret = E_OK;
    }
    
    return ret;
}