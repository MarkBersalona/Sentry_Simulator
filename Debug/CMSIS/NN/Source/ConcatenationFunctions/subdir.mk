################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c \
../CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c \
../CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c \
../CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c 

C_DEPS += \
./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.d \
./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.d \
./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.d \
./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.d 

OBJS += \
./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o \
./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o \
./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o \
./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/NN/Source/ConcatenationFunctions/%.o: ../CMSIS/NN/Source/ConcatenationFunctions/%.c CMSIS/NN/Source/ConcatenationFunctions/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MIMXRT1021DAG5A -DSDK_DEBUGCONSOLE=1 -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DMCUXPRESSO_SDK -DSERIAL_PORT_TYPE_UART=1 -DSDK_OS_FREE_RTOS -DCPU_MIMXRT1021DAG5A_cm7 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DDISABLEFLOAT16 -I"F:\NXP_Projects\Sentry_Simulator\component\lists" -I"F:\NXP_Projects\Sentry_Simulator\component\uart" -I"F:\NXP_Projects\Sentry_Simulator\component\serial_manager" -I"F:\NXP_Projects\Sentry_Simulator\device" -I"F:\NXP_Projects\Sentry_Simulator\drivers" -I"F:\NXP_Projects\Sentry_Simulator\xip" -I"F:\NXP_Projects\Sentry_Simulator\utilities" -I"F:\NXP_Projects\Sentry_Simulator\freertos\freertos-kernel\include" -I"F:\NXP_Projects\Sentry_Simulator\freertos\freertos-kernel\portable\GCC\ARM_CM4F" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS\DSP\Include" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS\DSP\PrivateInclude" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS\DSP\Source\DistanceFunctions" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS\NN\Include" -I"F:\NXP_Projects\Sentry_Simulator\source" -I"F:\NXP_Projects\Sentry_Simulator\board" -O3 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-CMSIS-2f-NN-2f-Source-2f-ConcatenationFunctions

clean-CMSIS-2f-NN-2f-Source-2f-ConcatenationFunctions:
	-$(RM) ./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.d ./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o ./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.d ./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o ./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.d ./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o ./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.d ./CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o

.PHONY: clean-CMSIS-2f-NN-2f-Source-2f-ConcatenationFunctions

