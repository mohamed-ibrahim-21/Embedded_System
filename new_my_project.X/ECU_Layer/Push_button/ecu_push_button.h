/* 
 * File:   ecu_push_button.h
 * Author: mohamed ibrahim
 *
 * Created on October 26, 2023, 5:27 PM
 */

#ifndef ECU_PUSH_BUTTON_H
#define	ECU_PUSH_BUTTON_H

/* Section : Includes */
#include "ecu_push_button_cfg.h"
#include "../../MCAL_Layer/GPIO/hal_gpio.h"

/* Section : Macro Declarations */

/* Section : Macro Functions Declarations*/

/* Section : Data Type Declarations*/
typedef enum{
    PUSH_BUTTON_PRESSED = 0,
    PUSH_BUTTON_RELEASED
}push_button_state_t;

typedef enum{
    PUSH_BUTTON_ACTIVE_HIGH,
    PUSH_BUTTON_ACTIVE_LOW
}push_button_active_t;

typedef struct{
    pin_config_t push_button_pin;
    push_button_state_t push_button_state;
    push_button_active_t push_button_connection;
}push_button_t;

/* Section : Functions Declarations*/
Std_ReturnType push_button_initialize (const push_button_t *btn);
Std_ReturnType push_button_read_status (const push_button_t *btn, push_button_state_t *btn_status);

#endif	/* ECU_PUSH_BUTTON_H */

