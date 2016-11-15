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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/c-bowler.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/c-bowler.X.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../BowlerStack/src/BCS/BowlerPacketParser.c ../BowlerStack/src/BCS/Namespace_bcs_rpc.c ../BowlerStack/src/BCS/Namespace_bcs_core.c ../BowlerStack/src/BCS/Bowler_Server.c ../BowlerStack/src/Helper/Debug.c ../BowlerStack/src/Helper/FIFO.c ../BowlerStack/src/Helper/Bowler_Helper.c ../BowlerStack/src/Helper/Scheduler.c ../BowlerStack/src/PID/PidVelocity.c ../BowlerStack/src/PID/PidRpc.c ../BowlerStack/src/PID/PidHysteresis.c ../BowlerStack/src/PID/PidAsync.c ../BowlerStack/src/PID/Namespace_bcs_pid.c ../BowlerStack/src/PID/AbstractPID.c ../Platform/src/pic32/bootloader/AVRInterface.c ../Platform/src/pic32/bootloader/Namespace_bcs_bootloader.c ../Platform/src/pic32/bootloader/flash.c ../Platform/src/pic32/usb/usb_interrupt.c ../Platform/src/pic32/usb/usb_callback.c ../Platform/src/pic32/usb/usb_function_cdc.c ../Platform/src/pic32/usb/usb_descriptors.c ../Platform/src/pic32/usb/usb_fifo.c ../Platform/src/pic32/usb/usb_device.c ../Platform/src/pic32/LED.c ../Platform/src/pic32/ADC.c ../Platform/src/pic32/HAL_P32.c ../Platform/src/pic32/Delay.c ../Platform/src/pic32/Bowler_USB_HAL.c ../Platform/src/pic32/FlashStorage.c ../Platform/src/pic32/Bowler_UART_HAL.c ../Platform/src/pic32/Tick.c ../Platform/src/pic32/UART.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o ${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o ${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o ${OBJECTDIR}/_ext/850752066/Bowler_Server.o ${OBJECTDIR}/_ext/356814782/Debug.o ${OBJECTDIR}/_ext/356814782/FIFO.o ${OBJECTDIR}/_ext/356814782/Bowler_Helper.o ${OBJECTDIR}/_ext/356814782/Scheduler.o ${OBJECTDIR}/_ext/850765691/PidVelocity.o ${OBJECTDIR}/_ext/850765691/PidRpc.o ${OBJECTDIR}/_ext/850765691/PidHysteresis.o ${OBJECTDIR}/_ext/850765691/PidAsync.o ${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o ${OBJECTDIR}/_ext/850765691/AbstractPID.o ${OBJECTDIR}/_ext/1064363683/AVRInterface.o ${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o ${OBJECTDIR}/_ext/1064363683/flash.o ${OBJECTDIR}/_ext/1193168346/usb_interrupt.o ${OBJECTDIR}/_ext/1193168346/usb_callback.o ${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o ${OBJECTDIR}/_ext/1193168346/usb_descriptors.o ${OBJECTDIR}/_ext/1193168346/usb_fifo.o ${OBJECTDIR}/_ext/1193168346/usb_device.o ${OBJECTDIR}/_ext/126603185/LED.o ${OBJECTDIR}/_ext/126603185/ADC.o ${OBJECTDIR}/_ext/126603185/HAL_P32.o ${OBJECTDIR}/_ext/126603185/Delay.o ${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o ${OBJECTDIR}/_ext/126603185/FlashStorage.o ${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o ${OBJECTDIR}/_ext/126603185/Tick.o ${OBJECTDIR}/_ext/126603185/UART.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o.d ${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o.d ${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o.d ${OBJECTDIR}/_ext/850752066/Bowler_Server.o.d ${OBJECTDIR}/_ext/356814782/Debug.o.d ${OBJECTDIR}/_ext/356814782/FIFO.o.d ${OBJECTDIR}/_ext/356814782/Bowler_Helper.o.d ${OBJECTDIR}/_ext/356814782/Scheduler.o.d ${OBJECTDIR}/_ext/850765691/PidVelocity.o.d ${OBJECTDIR}/_ext/850765691/PidRpc.o.d ${OBJECTDIR}/_ext/850765691/PidHysteresis.o.d ${OBJECTDIR}/_ext/850765691/PidAsync.o.d ${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o.d ${OBJECTDIR}/_ext/850765691/AbstractPID.o.d ${OBJECTDIR}/_ext/1064363683/AVRInterface.o.d ${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o.d ${OBJECTDIR}/_ext/1064363683/flash.o.d ${OBJECTDIR}/_ext/1193168346/usb_interrupt.o.d ${OBJECTDIR}/_ext/1193168346/usb_callback.o.d ${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o.d ${OBJECTDIR}/_ext/1193168346/usb_descriptors.o.d ${OBJECTDIR}/_ext/1193168346/usb_fifo.o.d ${OBJECTDIR}/_ext/1193168346/usb_device.o.d ${OBJECTDIR}/_ext/126603185/LED.o.d ${OBJECTDIR}/_ext/126603185/ADC.o.d ${OBJECTDIR}/_ext/126603185/HAL_P32.o.d ${OBJECTDIR}/_ext/126603185/Delay.o.d ${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o.d ${OBJECTDIR}/_ext/126603185/FlashStorage.o.d ${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o.d ${OBJECTDIR}/_ext/126603185/Tick.o.d ${OBJECTDIR}/_ext/126603185/UART.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o ${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o ${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o ${OBJECTDIR}/_ext/850752066/Bowler_Server.o ${OBJECTDIR}/_ext/356814782/Debug.o ${OBJECTDIR}/_ext/356814782/FIFO.o ${OBJECTDIR}/_ext/356814782/Bowler_Helper.o ${OBJECTDIR}/_ext/356814782/Scheduler.o ${OBJECTDIR}/_ext/850765691/PidVelocity.o ${OBJECTDIR}/_ext/850765691/PidRpc.o ${OBJECTDIR}/_ext/850765691/PidHysteresis.o ${OBJECTDIR}/_ext/850765691/PidAsync.o ${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o ${OBJECTDIR}/_ext/850765691/AbstractPID.o ${OBJECTDIR}/_ext/1064363683/AVRInterface.o ${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o ${OBJECTDIR}/_ext/1064363683/flash.o ${OBJECTDIR}/_ext/1193168346/usb_interrupt.o ${OBJECTDIR}/_ext/1193168346/usb_callback.o ${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o ${OBJECTDIR}/_ext/1193168346/usb_descriptors.o ${OBJECTDIR}/_ext/1193168346/usb_fifo.o ${OBJECTDIR}/_ext/1193168346/usb_device.o ${OBJECTDIR}/_ext/126603185/LED.o ${OBJECTDIR}/_ext/126603185/ADC.o ${OBJECTDIR}/_ext/126603185/HAL_P32.o ${OBJECTDIR}/_ext/126603185/Delay.o ${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o ${OBJECTDIR}/_ext/126603185/FlashStorage.o ${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o ${OBJECTDIR}/_ext/126603185/Tick.o ${OBJECTDIR}/_ext/126603185/UART.o

# Source Files
SOURCEFILES=../BowlerStack/src/BCS/BowlerPacketParser.c ../BowlerStack/src/BCS/Namespace_bcs_rpc.c ../BowlerStack/src/BCS/Namespace_bcs_core.c ../BowlerStack/src/BCS/Bowler_Server.c ../BowlerStack/src/Helper/Debug.c ../BowlerStack/src/Helper/FIFO.c ../BowlerStack/src/Helper/Bowler_Helper.c ../BowlerStack/src/Helper/Scheduler.c ../BowlerStack/src/PID/PidVelocity.c ../BowlerStack/src/PID/PidRpc.c ../BowlerStack/src/PID/PidHysteresis.c ../BowlerStack/src/PID/PidAsync.c ../BowlerStack/src/PID/Namespace_bcs_pid.c ../BowlerStack/src/PID/AbstractPID.c ../Platform/src/pic32/bootloader/AVRInterface.c ../Platform/src/pic32/bootloader/Namespace_bcs_bootloader.c ../Platform/src/pic32/bootloader/flash.c ../Platform/src/pic32/usb/usb_interrupt.c ../Platform/src/pic32/usb/usb_callback.c ../Platform/src/pic32/usb/usb_function_cdc.c ../Platform/src/pic32/usb/usb_descriptors.c ../Platform/src/pic32/usb/usb_fifo.c ../Platform/src/pic32/usb/usb_device.c ../Platform/src/pic32/LED.c ../Platform/src/pic32/ADC.c ../Platform/src/pic32/HAL_P32.c ../Platform/src/pic32/Delay.c ../Platform/src/pic32/Bowler_USB_HAL.c ../Platform/src/pic32/FlashStorage.c ../Platform/src/pic32/Bowler_UART_HAL.c ../Platform/src/pic32/Tick.c ../Platform/src/pic32/UART.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/c-bowler.X.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX440F128H
MP_LINKER_FILE_OPTION=
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o: ../BowlerStack/src/BCS/BowlerPacketParser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850752066" 
	@${RM} ${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o.d 
	@${RM} ${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o.d" -o ${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o ../BowlerStack/src/BCS/BowlerPacketParser.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o: ../BowlerStack/src/BCS/Namespace_bcs_rpc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850752066" 
	@${RM} ${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o.d 
	@${RM} ${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o.d" -o ${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o ../BowlerStack/src/BCS/Namespace_bcs_rpc.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o: ../BowlerStack/src/BCS/Namespace_bcs_core.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850752066" 
	@${RM} ${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o.d 
	@${RM} ${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o.d" -o ${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o ../BowlerStack/src/BCS/Namespace_bcs_core.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850752066/Bowler_Server.o: ../BowlerStack/src/BCS/Bowler_Server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850752066" 
	@${RM} ${OBJECTDIR}/_ext/850752066/Bowler_Server.o.d 
	@${RM} ${OBJECTDIR}/_ext/850752066/Bowler_Server.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850752066/Bowler_Server.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850752066/Bowler_Server.o.d" -o ${OBJECTDIR}/_ext/850752066/Bowler_Server.o ../BowlerStack/src/BCS/Bowler_Server.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/356814782/Debug.o: ../BowlerStack/src/Helper/Debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/356814782" 
	@${RM} ${OBJECTDIR}/_ext/356814782/Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/356814782/Debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/356814782/Debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/356814782/Debug.o.d" -o ${OBJECTDIR}/_ext/356814782/Debug.o ../BowlerStack/src/Helper/Debug.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/356814782/FIFO.o: ../BowlerStack/src/Helper/FIFO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/356814782" 
	@${RM} ${OBJECTDIR}/_ext/356814782/FIFO.o.d 
	@${RM} ${OBJECTDIR}/_ext/356814782/FIFO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/356814782/FIFO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/356814782/FIFO.o.d" -o ${OBJECTDIR}/_ext/356814782/FIFO.o ../BowlerStack/src/Helper/FIFO.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/356814782/Bowler_Helper.o: ../BowlerStack/src/Helper/Bowler_Helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/356814782" 
	@${RM} ${OBJECTDIR}/_ext/356814782/Bowler_Helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/356814782/Bowler_Helper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/356814782/Bowler_Helper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/356814782/Bowler_Helper.o.d" -o ${OBJECTDIR}/_ext/356814782/Bowler_Helper.o ../BowlerStack/src/Helper/Bowler_Helper.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/356814782/Scheduler.o: ../BowlerStack/src/Helper/Scheduler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/356814782" 
	@${RM} ${OBJECTDIR}/_ext/356814782/Scheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/356814782/Scheduler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/356814782/Scheduler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/356814782/Scheduler.o.d" -o ${OBJECTDIR}/_ext/356814782/Scheduler.o ../BowlerStack/src/Helper/Scheduler.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850765691/PidVelocity.o: ../BowlerStack/src/PID/PidVelocity.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850765691" 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidVelocity.o.d 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidVelocity.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850765691/PidVelocity.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850765691/PidVelocity.o.d" -o ${OBJECTDIR}/_ext/850765691/PidVelocity.o ../BowlerStack/src/PID/PidVelocity.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850765691/PidRpc.o: ../BowlerStack/src/PID/PidRpc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850765691" 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidRpc.o.d 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidRpc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850765691/PidRpc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850765691/PidRpc.o.d" -o ${OBJECTDIR}/_ext/850765691/PidRpc.o ../BowlerStack/src/PID/PidRpc.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850765691/PidHysteresis.o: ../BowlerStack/src/PID/PidHysteresis.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850765691" 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidHysteresis.o.d 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidHysteresis.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850765691/PidHysteresis.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850765691/PidHysteresis.o.d" -o ${OBJECTDIR}/_ext/850765691/PidHysteresis.o ../BowlerStack/src/PID/PidHysteresis.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850765691/PidAsync.o: ../BowlerStack/src/PID/PidAsync.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850765691" 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidAsync.o.d 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidAsync.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850765691/PidAsync.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850765691/PidAsync.o.d" -o ${OBJECTDIR}/_ext/850765691/PidAsync.o ../BowlerStack/src/PID/PidAsync.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o: ../BowlerStack/src/PID/Namespace_bcs_pid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850765691" 
	@${RM} ${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o.d 
	@${RM} ${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o.d" -o ${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o ../BowlerStack/src/PID/Namespace_bcs_pid.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850765691/AbstractPID.o: ../BowlerStack/src/PID/AbstractPID.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850765691" 
	@${RM} ${OBJECTDIR}/_ext/850765691/AbstractPID.o.d 
	@${RM} ${OBJECTDIR}/_ext/850765691/AbstractPID.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850765691/AbstractPID.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850765691/AbstractPID.o.d" -o ${OBJECTDIR}/_ext/850765691/AbstractPID.o ../BowlerStack/src/PID/AbstractPID.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1064363683/AVRInterface.o: ../Platform/src/pic32/bootloader/AVRInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1064363683" 
	@${RM} ${OBJECTDIR}/_ext/1064363683/AVRInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064363683/AVRInterface.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1064363683/AVRInterface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1064363683/AVRInterface.o.d" -o ${OBJECTDIR}/_ext/1064363683/AVRInterface.o ../Platform/src/pic32/bootloader/AVRInterface.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o: ../Platform/src/pic32/bootloader/Namespace_bcs_bootloader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1064363683" 
	@${RM} ${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o.d" -o ${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o ../Platform/src/pic32/bootloader/Namespace_bcs_bootloader.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1064363683/flash.o: ../Platform/src/pic32/bootloader/flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1064363683" 
	@${RM} ${OBJECTDIR}/_ext/1064363683/flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064363683/flash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1064363683/flash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1064363683/flash.o.d" -o ${OBJECTDIR}/_ext/1064363683/flash.o ../Platform/src/pic32/bootloader/flash.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1193168346/usb_interrupt.o: ../Platform/src/pic32/usb/usb_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1193168346" 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1193168346/usb_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1193168346/usb_interrupt.o.d" -o ${OBJECTDIR}/_ext/1193168346/usb_interrupt.o ../Platform/src/pic32/usb/usb_interrupt.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1193168346/usb_callback.o: ../Platform/src/pic32/usb/usb_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1193168346" 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_callback.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1193168346/usb_callback.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1193168346/usb_callback.o.d" -o ${OBJECTDIR}/_ext/1193168346/usb_callback.o ../Platform/src/pic32/usb/usb_callback.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o: ../Platform/src/pic32/usb/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1193168346" 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o.d" -o ${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o ../Platform/src/pic32/usb/usb_function_cdc.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1193168346/usb_descriptors.o: ../Platform/src/pic32/usb/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1193168346" 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_descriptors.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1193168346/usb_descriptors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1193168346/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/1193168346/usb_descriptors.o ../Platform/src/pic32/usb/usb_descriptors.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1193168346/usb_fifo.o: ../Platform/src/pic32/usb/usb_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1193168346" 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1193168346/usb_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1193168346/usb_fifo.o.d" -o ${OBJECTDIR}/_ext/1193168346/usb_fifo.o ../Platform/src/pic32/usb/usb_fifo.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1193168346/usb_device.o: ../Platform/src/pic32/usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1193168346" 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1193168346/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1193168346/usb_device.o.d" -o ${OBJECTDIR}/_ext/1193168346/usb_device.o ../Platform/src/pic32/usb/usb_device.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/LED.o: ../Platform/src/pic32/LED.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/LED.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/LED.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/LED.o.d" -o ${OBJECTDIR}/_ext/126603185/LED.o ../Platform/src/pic32/LED.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/ADC.o: ../Platform/src/pic32/ADC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/ADC.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/ADC.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/ADC.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/ADC.o.d" -o ${OBJECTDIR}/_ext/126603185/ADC.o ../Platform/src/pic32/ADC.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/HAL_P32.o: ../Platform/src/pic32/HAL_P32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/HAL_P32.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/HAL_P32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/HAL_P32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/HAL_P32.o.d" -o ${OBJECTDIR}/_ext/126603185/HAL_P32.o ../Platform/src/pic32/HAL_P32.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/Delay.o: ../Platform/src/pic32/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/Delay.o.d" -o ${OBJECTDIR}/_ext/126603185/Delay.o ../Platform/src/pic32/Delay.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o: ../Platform/src/pic32/Bowler_USB_HAL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o.d" -o ${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o ../Platform/src/pic32/Bowler_USB_HAL.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/FlashStorage.o: ../Platform/src/pic32/FlashStorage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/FlashStorage.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/FlashStorage.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/FlashStorage.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/FlashStorage.o.d" -o ${OBJECTDIR}/_ext/126603185/FlashStorage.o ../Platform/src/pic32/FlashStorage.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o: ../Platform/src/pic32/Bowler_UART_HAL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o.d" -o ${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o ../Platform/src/pic32/Bowler_UART_HAL.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/Tick.o: ../Platform/src/pic32/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/Tick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/Tick.o.d" -o ${OBJECTDIR}/_ext/126603185/Tick.o ../Platform/src/pic32/Tick.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/UART.o: ../Platform/src/pic32/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/UART.o.d" -o ${OBJECTDIR}/_ext/126603185/UART.o ../Platform/src/pic32/UART.c    -D_SUPPRESS_PLIB_WARNING
	
else
${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o: ../BowlerStack/src/BCS/BowlerPacketParser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850752066" 
	@${RM} ${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o.d 
	@${RM} ${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o.d" -o ${OBJECTDIR}/_ext/850752066/BowlerPacketParser.o ../BowlerStack/src/BCS/BowlerPacketParser.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o: ../BowlerStack/src/BCS/Namespace_bcs_rpc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850752066" 
	@${RM} ${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o.d 
	@${RM} ${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o.d" -o ${OBJECTDIR}/_ext/850752066/Namespace_bcs_rpc.o ../BowlerStack/src/BCS/Namespace_bcs_rpc.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o: ../BowlerStack/src/BCS/Namespace_bcs_core.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850752066" 
	@${RM} ${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o.d 
	@${RM} ${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o.d" -o ${OBJECTDIR}/_ext/850752066/Namespace_bcs_core.o ../BowlerStack/src/BCS/Namespace_bcs_core.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850752066/Bowler_Server.o: ../BowlerStack/src/BCS/Bowler_Server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850752066" 
	@${RM} ${OBJECTDIR}/_ext/850752066/Bowler_Server.o.d 
	@${RM} ${OBJECTDIR}/_ext/850752066/Bowler_Server.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850752066/Bowler_Server.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850752066/Bowler_Server.o.d" -o ${OBJECTDIR}/_ext/850752066/Bowler_Server.o ../BowlerStack/src/BCS/Bowler_Server.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/356814782/Debug.o: ../BowlerStack/src/Helper/Debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/356814782" 
	@${RM} ${OBJECTDIR}/_ext/356814782/Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/356814782/Debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/356814782/Debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/356814782/Debug.o.d" -o ${OBJECTDIR}/_ext/356814782/Debug.o ../BowlerStack/src/Helper/Debug.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/356814782/FIFO.o: ../BowlerStack/src/Helper/FIFO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/356814782" 
	@${RM} ${OBJECTDIR}/_ext/356814782/FIFO.o.d 
	@${RM} ${OBJECTDIR}/_ext/356814782/FIFO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/356814782/FIFO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/356814782/FIFO.o.d" -o ${OBJECTDIR}/_ext/356814782/FIFO.o ../BowlerStack/src/Helper/FIFO.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/356814782/Bowler_Helper.o: ../BowlerStack/src/Helper/Bowler_Helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/356814782" 
	@${RM} ${OBJECTDIR}/_ext/356814782/Bowler_Helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/356814782/Bowler_Helper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/356814782/Bowler_Helper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/356814782/Bowler_Helper.o.d" -o ${OBJECTDIR}/_ext/356814782/Bowler_Helper.o ../BowlerStack/src/Helper/Bowler_Helper.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/356814782/Scheduler.o: ../BowlerStack/src/Helper/Scheduler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/356814782" 
	@${RM} ${OBJECTDIR}/_ext/356814782/Scheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/356814782/Scheduler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/356814782/Scheduler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/356814782/Scheduler.o.d" -o ${OBJECTDIR}/_ext/356814782/Scheduler.o ../BowlerStack/src/Helper/Scheduler.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850765691/PidVelocity.o: ../BowlerStack/src/PID/PidVelocity.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850765691" 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidVelocity.o.d 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidVelocity.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850765691/PidVelocity.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850765691/PidVelocity.o.d" -o ${OBJECTDIR}/_ext/850765691/PidVelocity.o ../BowlerStack/src/PID/PidVelocity.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850765691/PidRpc.o: ../BowlerStack/src/PID/PidRpc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850765691" 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidRpc.o.d 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidRpc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850765691/PidRpc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850765691/PidRpc.o.d" -o ${OBJECTDIR}/_ext/850765691/PidRpc.o ../BowlerStack/src/PID/PidRpc.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850765691/PidHysteresis.o: ../BowlerStack/src/PID/PidHysteresis.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850765691" 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidHysteresis.o.d 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidHysteresis.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850765691/PidHysteresis.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850765691/PidHysteresis.o.d" -o ${OBJECTDIR}/_ext/850765691/PidHysteresis.o ../BowlerStack/src/PID/PidHysteresis.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850765691/PidAsync.o: ../BowlerStack/src/PID/PidAsync.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850765691" 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidAsync.o.d 
	@${RM} ${OBJECTDIR}/_ext/850765691/PidAsync.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850765691/PidAsync.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850765691/PidAsync.o.d" -o ${OBJECTDIR}/_ext/850765691/PidAsync.o ../BowlerStack/src/PID/PidAsync.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o: ../BowlerStack/src/PID/Namespace_bcs_pid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850765691" 
	@${RM} ${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o.d 
	@${RM} ${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o.d" -o ${OBJECTDIR}/_ext/850765691/Namespace_bcs_pid.o ../BowlerStack/src/PID/Namespace_bcs_pid.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/850765691/AbstractPID.o: ../BowlerStack/src/PID/AbstractPID.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850765691" 
	@${RM} ${OBJECTDIR}/_ext/850765691/AbstractPID.o.d 
	@${RM} ${OBJECTDIR}/_ext/850765691/AbstractPID.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850765691/AbstractPID.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850765691/AbstractPID.o.d" -o ${OBJECTDIR}/_ext/850765691/AbstractPID.o ../BowlerStack/src/PID/AbstractPID.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1064363683/AVRInterface.o: ../Platform/src/pic32/bootloader/AVRInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1064363683" 
	@${RM} ${OBJECTDIR}/_ext/1064363683/AVRInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064363683/AVRInterface.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1064363683/AVRInterface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1064363683/AVRInterface.o.d" -o ${OBJECTDIR}/_ext/1064363683/AVRInterface.o ../Platform/src/pic32/bootloader/AVRInterface.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o: ../Platform/src/pic32/bootloader/Namespace_bcs_bootloader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1064363683" 
	@${RM} ${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o.d" -o ${OBJECTDIR}/_ext/1064363683/Namespace_bcs_bootloader.o ../Platform/src/pic32/bootloader/Namespace_bcs_bootloader.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1064363683/flash.o: ../Platform/src/pic32/bootloader/flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1064363683" 
	@${RM} ${OBJECTDIR}/_ext/1064363683/flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064363683/flash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1064363683/flash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1064363683/flash.o.d" -o ${OBJECTDIR}/_ext/1064363683/flash.o ../Platform/src/pic32/bootloader/flash.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1193168346/usb_interrupt.o: ../Platform/src/pic32/usb/usb_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1193168346" 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1193168346/usb_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1193168346/usb_interrupt.o.d" -o ${OBJECTDIR}/_ext/1193168346/usb_interrupt.o ../Platform/src/pic32/usb/usb_interrupt.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1193168346/usb_callback.o: ../Platform/src/pic32/usb/usb_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1193168346" 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_callback.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1193168346/usb_callback.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1193168346/usb_callback.o.d" -o ${OBJECTDIR}/_ext/1193168346/usb_callback.o ../Platform/src/pic32/usb/usb_callback.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o: ../Platform/src/pic32/usb/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1193168346" 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o.d" -o ${OBJECTDIR}/_ext/1193168346/usb_function_cdc.o ../Platform/src/pic32/usb/usb_function_cdc.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1193168346/usb_descriptors.o: ../Platform/src/pic32/usb/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1193168346" 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_descriptors.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1193168346/usb_descriptors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1193168346/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/1193168346/usb_descriptors.o ../Platform/src/pic32/usb/usb_descriptors.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1193168346/usb_fifo.o: ../Platform/src/pic32/usb/usb_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1193168346" 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1193168346/usb_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1193168346/usb_fifo.o.d" -o ${OBJECTDIR}/_ext/1193168346/usb_fifo.o ../Platform/src/pic32/usb/usb_fifo.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/1193168346/usb_device.o: ../Platform/src/pic32/usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1193168346" 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193168346/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1193168346/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1193168346/usb_device.o.d" -o ${OBJECTDIR}/_ext/1193168346/usb_device.o ../Platform/src/pic32/usb/usb_device.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/LED.o: ../Platform/src/pic32/LED.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/LED.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/LED.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/LED.o.d" -o ${OBJECTDIR}/_ext/126603185/LED.o ../Platform/src/pic32/LED.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/ADC.o: ../Platform/src/pic32/ADC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/ADC.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/ADC.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/ADC.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/ADC.o.d" -o ${OBJECTDIR}/_ext/126603185/ADC.o ../Platform/src/pic32/ADC.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/HAL_P32.o: ../Platform/src/pic32/HAL_P32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/HAL_P32.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/HAL_P32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/HAL_P32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/HAL_P32.o.d" -o ${OBJECTDIR}/_ext/126603185/HAL_P32.o ../Platform/src/pic32/HAL_P32.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/Delay.o: ../Platform/src/pic32/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/Delay.o.d" -o ${OBJECTDIR}/_ext/126603185/Delay.o ../Platform/src/pic32/Delay.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o: ../Platform/src/pic32/Bowler_USB_HAL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o.d" -o ${OBJECTDIR}/_ext/126603185/Bowler_USB_HAL.o ../Platform/src/pic32/Bowler_USB_HAL.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/FlashStorage.o: ../Platform/src/pic32/FlashStorage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/FlashStorage.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/FlashStorage.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/FlashStorage.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/FlashStorage.o.d" -o ${OBJECTDIR}/_ext/126603185/FlashStorage.o ../Platform/src/pic32/FlashStorage.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o: ../Platform/src/pic32/Bowler_UART_HAL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o.d" -o ${OBJECTDIR}/_ext/126603185/Bowler_UART_HAL.o ../Platform/src/pic32/Bowler_UART_HAL.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/Tick.o: ../Platform/src/pic32/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/Tick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/Tick.o.d" -o ${OBJECTDIR}/_ext/126603185/Tick.o ../Platform/src/pic32/Tick.c    -D_SUPPRESS_PLIB_WARNING
	
${OBJECTDIR}/_ext/126603185/UART.o: ../Platform/src/pic32/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/126603185" 
	@${RM} ${OBJECTDIR}/_ext/126603185/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/126603185/UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/126603185/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -O1 -I"../BowlerStack/include" -I"../Platform/include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/126603185/UART.o.d" -o ${OBJECTDIR}/_ext/126603185/UART.o ../Platform/src/pic32/UART.c    -D_SUPPRESS_PLIB_WARNING
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/c-bowler.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) r dist/${CND_CONF}/${IMAGE_TYPE}/c-bowler.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
else
dist/${CND_CONF}/${IMAGE_TYPE}/c-bowler.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) r dist/${CND_CONF}/${IMAGE_TYPE}/c-bowler.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
