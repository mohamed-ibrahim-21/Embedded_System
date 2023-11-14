/* 
 * File:   application.c
 * Author: mohamed ibrahim
 *
 * Created on October 4, 2023, 10:15 PM
 */


#include "application.h"

lcd_4bit_t lcd_1 = {
    .lcd_rs.port = PORTC_INDEX,
    .lcd_rs.pin  = GPIO_PIN0,
    .lcd_rs.direction = GPIO_DIRECTION_OUTPUT,
    .lcd_rs.logic = GPIO_LOW,
    
    .lcd_en.port = PORTC_INDEX,
    .lcd_en.pin  = GPIO_PIN1,
    .lcd_en.direction = GPIO_DIRECTION_OUTPUT,
    .lcd_en.logic = GPIO_LOW,
    
    .lcd_data[0].port = PORTC_INDEX,
    .lcd_data[0].pin  = GPIO_PIN2,
    .lcd_data[0].direction = GPIO_DIRECTION_OUTPUT,
    .lcd_data[0].logic = GPIO_LOW,
    
    .lcd_data[1].port = PORTC_INDEX,
    .lcd_data[1].pin  = GPIO_PIN3,
    .lcd_data[1].direction = GPIO_DIRECTION_OUTPUT,
    .lcd_data[1].logic = GPIO_LOW,
    
    .lcd_data[2].port = PORTC_INDEX,
    .lcd_data[2].pin  = GPIO_PIN4,
    .lcd_data[2].direction = GPIO_DIRECTION_OUTPUT,
    .lcd_data[2].logic = GPIO_LOW,
    
    .lcd_data[3].port = PORTC_INDEX,
    .lcd_data[3].pin  = GPIO_PIN5,
    .lcd_data[3].direction = GPIO_DIRECTION_OUTPUT,
    .lcd_data[3].logic = GPIO_LOW,
};

lcd_8bit_t lcd_2 = {
    .lcd_rs.port = PORTC_INDEX,
    .lcd_rs.pin  = GPIO_PIN6,
    .lcd_rs.direction = GPIO_DIRECTION_OUTPUT,
    .lcd_rs.logic = GPIO_LOW,
    
    .lcd_en.port = PORTC_INDEX,
    .lcd_en.pin  = GPIO_PIN7,
    .lcd_en.direction = GPIO_DIRECTION_OUTPUT,
    .lcd_en.logic = GPIO_LOW,
    
    .lcd_data[0].port = PORTD_INDEX,
    .lcd_data[0].pin  = GPIO_PIN0,
    .lcd_data[0].direction = GPIO_DIRECTION_OUTPUT,
    .lcd_data[0].logic = GPIO_LOW,
    
    .lcd_data[1].port = PORTD_INDEX,
    .lcd_data[1].pin  = GPIO_PIN1,
    .lcd_data[1].direction = GPIO_DIRECTION_OUTPUT,
    .lcd_data[1].logic = GPIO_LOW,
    
    .lcd_data[2].port = PORTD_INDEX,
    .lcd_data[2].pin  = GPIO_PIN2,
    .lcd_data[2].direction = GPIO_DIRECTION_OUTPUT,
    .lcd_data[2].logic = GPIO_LOW,
    
    .lcd_data[3].port = PORTD_INDEX,
    .lcd_data[3].pin  = GPIO_PIN3,
    .lcd_data[3].direction = GPIO_DIRECTION_OUTPUT,
    .lcd_data[3].logic = GPIO_LOW,
    
    .lcd_data[4].port = PORTD_INDEX,
    .lcd_data[4].pin  = GPIO_PIN4,
    .lcd_data[4].direction = GPIO_DIRECTION_OUTPUT,
    .lcd_data[4].logic = GPIO_LOW,
    
    .lcd_data[5].port = PORTD_INDEX,
    .lcd_data[5].pin  = GPIO_PIN5,
    .lcd_data[5].direction = GPIO_DIRECTION_OUTPUT,
    .lcd_data[5].logic = GPIO_LOW,
    
    .lcd_data[6].port = PORTD_INDEX,
    .lcd_data[6].pin  = GPIO_PIN6,
    .lcd_data[6].direction = GPIO_DIRECTION_OUTPUT,
    .lcd_data[6].logic = GPIO_LOW,
    
    .lcd_data[7].port = PORTD_INDEX,
    .lcd_data[7].pin  = GPIO_PIN7,
    .lcd_data[7].direction = GPIO_DIRECTION_OUTPUT,
    .lcd_data[7].logic = GPIO_LOW,
    
    
};


int main() { 
    Std_ReturnType ret = E_NOT_OK;
    application_intialize();
    ret = lcd_8bit_send_char_data(&lcd_2 , 'A');
    while(1){
        
        
    }
    
    return (EXIT_SUCCESS);
}


void application_intialize(void){
    Std_ReturnType ret = E_NOT_OK;
    ret = lcd_4bit_initialize(&lcd_1);
    ret = lcd_8bit_initialize(&lcd_2);
}