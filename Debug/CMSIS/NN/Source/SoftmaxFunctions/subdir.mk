################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c \
../CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c \
../CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c \
../CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c \
../CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c 

C_DEPS += \
./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.d \
./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.d \
./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.d \
./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.d \
./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.d 

OBJS += \
./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o \
./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o \
./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o \
./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o \
./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.o 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/NN/Source/SoftmaxFunctions/%.o: ../CMSIS/NN/Source/SoftmaxFunctions/%.c CMSIS/NN/Source/SoftmaxFunctions/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MIMXRT1021DAG5A -DSDK_DEBUGCONSOLE=1 -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DMCUXPRESSO_SDK -DSERIAL_PORT_TYPE_UART=1 -DSDK_OS_FREE_RTOS -DCPU_MIMXRT1021DAG5A_cm7 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DDISABLEFLOAT16 -I"F:\NXP_Projects\Sentry_Simulator\component\lists" -I"F:\NXP_Projects\Sentry_Simulator\component\uart" -I"F:\NXP_Projects\Sentry_Simulator\component\serial_manager" -I"F:\NXP_Projects\Sentry_Simulator\device" -I"F:\NXP_Projects\Sentry_Simulator\drivers" -I"F:\NXP_Projects\Sentry_Simulator\xip" -I"F:\NXP_Projects\Sentry_Simulator\utilities" -I"F:\NXP_Projects\Sentry_Simulator\freertos\freertos-kernel\include" -I"F:\NXP_Projects\Sentry_Simulator\freertos\freertos-kernel\portable\GCC\ARM_CM4F" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS\DSP\Include" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS\DSP\PrivateInclude" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS\DSP\Source\DistanceFunctions" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS\NN\Include" -I"F:\NXP_Projects\Sentry_Simulator\source" -I"F:\NXP_Projects\Sentry_Simulator\board" -O3 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-CMSIS-2f-NN-2f-Source-2f-SoftmaxFunctions

clean-CMSIS-2f-NN-2f-Source-2f-SoftmaxFunctions:
	-$(RM) ./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.d ./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o ./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.d ./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o ./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.d ./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o ./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.d ./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o ./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.d ./CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.o

.PHONY: clean-CMSIS-2f-NN-2f-Source-2f-SoftmaxFunctions

