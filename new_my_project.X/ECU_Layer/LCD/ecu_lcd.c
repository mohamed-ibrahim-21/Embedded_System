/* 
 * File:   ecu_lcd.c
 * Author: mohamed ibrahim
 *
 * Created on November 14, 2023, 3:14 PM
 */

/********************* Section : Includes *************************************/
#include "ecu_lcd.h"


/************************************LCD_4BIT*********************************/

/**
 * @brief
 * @param _lcd_
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue 
 */
Std_ReturnType lcd_4bit_initialize               (const lcd_4bit_t *_lcd_){
    
}

/**
 * @brief
 * @param _lcd_
 * @param command
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType lcd_4bit_send_command             (const lcd_4bit_t *_lcd_ ,uint8 command){
    
}

/**
 * @brief
 * @param _lcd_
 * @param data
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType lcd_4bit_send_char_data           (const lcd_4bit_t *_lcd_ ,uint8 data){
    
}

/**
 * @brief
 * @param _lcd_
 * @param row
 * @param column
 * @param data
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType lcd_4bit_send_char_data_position  (const lcd_4bit_t *_lcd_ ,uint8 row ,uint8 column , uint8 data){
    
}

/**
 * @brief
 * @param _lcd_
 * @param str
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType lcd_4bit_send_string              (const lcd_4bit_t *_lcd_ ,uint8 *str){
    
}

/**
 * @brief
 * @param _lcd_
 * @param row
 * @param column
 * @param str
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue 
 */
Std_ReturnType lcd_4bit_send_string_position     (const lcd_4bit_t *_lcd_ ,uint8 row ,uint8 column , uint8 *str){
    
}

/**
 * @brief
 * @param _lcd_
 * @param row
 * @param column
 * @param _chr
 * @param mem_pos
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue 
 */
Std_ReturnType lcd_4bit_send_custome_chr         (const lcd_4bit_t *_lcd_ ,uint8 row ,uint8 column , const uint8 _chr[], uint8 mem_pos){
    
}

/*********************************LCD_8bit**************************************/

/**
 * @brief
 * @param _lcd_
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType lcd_8bit_initialize               (const lcd_8bit_t *_lcd_){
    
}

/**
 * @brief
 * @param _lcd_
 * @param command
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType lcd_8bit_send_command             (const lcd_8bit_t *_lcd_ ,uint8 command){
    
}

/**
 * @brief
 * @param _lcd_
 * @param data
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType lcd_8bit_send_char_data           (const lcd_8bit_t *_lcd_ ,uint8 data){
    
}

/**
 * @brief
 * @param _lcd_
 * @param row
 * @param column
 * @param data
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue 
 */
Std_ReturnType lcd_8bit_send_char_data_position  (const lcd_8bit_t *_lcd_ ,uint8 row ,uint8 column , uint8 data){
    
}

/**
 * @brief
 * @param _lcd_
 * @param str
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue 
 */
Std_ReturnType lcd_8bit_send_string              (const lcd_8bit_t *_lcd_ ,uint8 *str){
    
}

/**
 * @brief
 * @param _lcd_
 * @param row
 * @param column
 * @param str
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue
 */
Std_ReturnType lcd_8bit_send_string_position     (const lcd_8bit_t *_lcd_ ,uint8 row ,uint8 column , uint8 *str){
    
}

/**
 * @brief
 * @param _lcd_
 * @param row
 * @param column
 * @param _chr
 * @param mem_pos
 * @return status of the function
 *          (E_OK)      : the function done successfully
 *          (E_NOT_OK)  : the function has issue 
 */
Std_ReturnType lcd_8bit_send_custome_chr         (const lcd_8bit_t *_lcd_ ,uint8 row ,uint8 column , const uint8 _chr[], uint8 mem_pos){
    
}

/*******************************************CONVERT_TO_STRING*******************************************/

void convert_byte_to_string  (uint8 value, uint8 *str){
    
}

void convert_short_to_string (uint16 value, uint8 *str){
    
}

void convert_int_to_string   (uint32 value, uint8 *str){
    
}


