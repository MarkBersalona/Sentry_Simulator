################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freertos/freertos-kernel/portable/GCC/ARM_CM4F/port.c 

C_DEPS += \
./freertos/freertos-kernel/portable/GCC/ARM_CM4F/port.d 

OBJS += \
./freertos/freertos-kernel/portable/GCC/ARM_CM4F/port.o 


# Each subdirectory must supply rules for building sources it contributes
freertos/freertos-kernel/portable/GCC/ARM_CM4F/%.o: ../freertos/freertos-kernel/portable/GCC/ARM_CM4F/%.c freertos/freertos-kernel/portable/GCC/ARM_CM4F/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DPRODUCT_TYPE_SENSAPHONE_400_CELLULAR -DCPU_MIMXRT1021DAG5A -DSDK_DEBUGCONSOLE=1 -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DMCUXPRESSO_SDK -DSERIAL_PORT_TYPE_UART=1 -DSDK_OS_FREE_RTOS -DCPU_MIMXRT1021DAG5A_cm7 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"F:\NXP_Projects\Sentry_Simulator\component\lists" -I"F:\NXP_Projects\Sentry_Simulator\component\uart" -I"F:\NXP_Projects\Sentry_Simulator\component\serial_manager" -I"F:\NXP_Projects\Sentry_Simulator\device" -I"F:\NXP_Projects\Sentry_Simulator\drivers" -I"F:\NXP_Projects\Sentry_Simulator\xip" -I"F:\NXP_Projects\Sentry_Simulator\utilities" -I"F:\NXP_Projects\Sentry_Simulator\freertos\freertos-kernel\include" -I"F:\NXP_Projects\Sentry_Simulator\freertos\freertos-kernel\portable\GCC\ARM_CM4F" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS" -I"F:\NXP_Projects\Sentry_Simulator\source" -I"F:\NXP_Projects\Sentry_Simulator\board" -O3 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-freertos-2f-freertos-2d-kernel-2f-portable-2f-GCC-2f-ARM_CM4F

clean-freertos-2f-freertos-2d-kernel-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./freertos/freertos-kernel/portable/GCC/ARM_CM4F/port.d ./freertos/freertos-kernel/portable/GCC/ARM_CM4F/port.o

.PHONY: clean-freertos-2f-freertos-2d-kernel-2f-portable-2f-GCC-2f-ARM_CM4F

