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
FINAL_IMAGE=${DISTDIR}/new_my_project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/new_my_project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=ECU_Layer/7_Segment/ecu_seven_segment.c ECU_Layer/DC_Motor/ecu_dc_motor.c ECU_Layer/Keypad/ecu_keypad.c ECU_Layer/LED/ecu_led.c ECU_Layer/Push_button/ecu_push_button.c ECU_Layer/Relay/ecu_relay.c MCAL_Layer/GPIO/hel_gpio.c MCAL_Layer/device_config.c application.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1 ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1 ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1 ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1 ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1 ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1 ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1 ${OBJECTDIR}/MCAL_Layer/device_config.p1 ${OBJECTDIR}/application.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1.d ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1.d ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1.d ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1.d ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1.d ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1.d ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1.d ${OBJECTDIR}/MCAL_Layer/device_config.p1.d ${OBJECTDIR}/application.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1 ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1 ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1 ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1 ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1 ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1 ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1 ${OBJECTDIR}/MCAL_Layer/device_config.p1 ${OBJECTDIR}/application.p1

# Source Files
SOURCEFILES=ECU_Layer/7_Segment/ecu_seven_segment.c ECU_Layer/DC_Motor/ecu_dc_motor.c ECU_Layer/Keypad/ecu_keypad.c ECU_Layer/LED/ecu_led.c ECU_Layer/Push_button/ecu_push_button.c ECU_Layer/Relay/ecu_relay.c MCAL_Layer/GPIO/hel_gpio.c MCAL_Layer/device_config.c application.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/new_my_project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4620
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1: ECU_Layer/7_Segment/ecu_seven_segment.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/7_Segment" 
	@${RM} ${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1 ECU_Layer/7_Segment/ecu_seven_segment.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.d ${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1: ECU_Layer/DC_Motor/ecu_dc_motor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/DC_Motor" 
	@${RM} ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1 ECU_Layer/DC_Motor/ecu_dc_motor.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.d ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1: ECU_Layer/Keypad/ecu_keypad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Keypad" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1 ECU_Layer/Keypad/ecu_keypad.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.d ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1: ECU_Layer/LED/ecu_led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1 ECU_Layer/LED/ecu_led.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.d ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1: ECU_Layer/Push_button/ecu_push_button.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Push_button" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1 ECU_Layer/Push_button/ecu_push_button.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.d ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1: ECU_Layer/Relay/ecu_relay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Relay" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1 ECU_Layer/Relay/ecu_relay.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.d ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1: MCAL_Layer/GPIO/hel_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1 MCAL_Layer/GPIO/hel_gpio.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.d ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/device_config.p1: MCAL_Layer/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/device_config.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/device_config.p1 MCAL_Layer/device_config.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/device_config.d ${OBJECTDIR}/MCAL_Layer/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/application.p1: application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.p1.d 
	@${RM} ${OBJECTDIR}/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application.p1 application.c 
	@-${MV} ${OBJECTDIR}/application.d ${OBJECTDIR}/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1: ECU_Layer/7_Segment/ecu_seven_segment.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/7_Segment" 
	@${RM} ${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1 ECU_Layer/7_Segment/ecu_seven_segment.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.d ${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/7_Segment/ecu_seven_segment.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1: ECU_Layer/DC_Motor/ecu_dc_motor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/DC_Motor" 
	@${RM} ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1 ECU_Layer/DC_Motor/ecu_dc_motor.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.d ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/DC_Motor/ecu_dc_motor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1: ECU_Layer/Keypad/ecu_keypad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Keypad" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1 ECU_Layer/Keypad/ecu_keypad.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.d ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/Keypad/ecu_keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1: ECU_Layer/LED/ecu_led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1 ECU_Layer/LED/ecu_led.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.d ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1: ECU_Layer/Push_button/ecu_push_button.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Push_button" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1 ECU_Layer/Push_button/ecu_push_button.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.d ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/Push_button/ecu_push_button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1: ECU_Layer/Relay/ecu_relay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Relay" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1 ECU_Layer/Relay/ecu_relay.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.d ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/Relay/ecu_relay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1: MCAL_Layer/GPIO/hel_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1 MCAL_Layer/GPIO/hel_gpio.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.d ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/GPIO/hel_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/device_config.p1: MCAL_Layer/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/device_config.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/device_config.p1 MCAL_Layer/device_config.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/device_config.d ${OBJECTDIR}/MCAL_Layer/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/application.p1: application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.p1.d 
	@${RM} ${OBJECTDIR}/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application.p1 application.c 
	@-${MV} ${OBJECTDIR}/application.d ${OBJECTDIR}/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
${DISTDIR}/new_my_project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/new_my_project.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/new_my_project.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/new_my_project.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/new_my_project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/new_my_project.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/new_my_project.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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
