################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c \
../CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c 

C_DEPS += \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_nntables.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.d \
./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.d 

OBJS += \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o \
./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/NN/Source/NNSupportFunctions/%.o: ../CMSIS/NN/Source/NNSupportFunctions/%.c CMSIS/NN/Source/NNSupportFunctions/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MIMXRT1021DAG5A -DSDK_DEBUGCONSOLE=1 -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DMCUXPRESSO_SDK -DSERIAL_PORT_TYPE_UART=1 -DSDK_OS_FREE_RTOS -DCPU_MIMXRT1021DAG5A_cm7 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DDISABLEFLOAT16 -I"F:\NXP_Projects\Sentry_Simulator\component\lists" -I"F:\NXP_Projects\Sentry_Simulator\component\uart" -I"F:\NXP_Projects\Sentry_Simulator\component\serial_manager" -I"F:\NXP_Projects\Sentry_Simulator\device" -I"F:\NXP_Projects\Sentry_Simulator\drivers" -I"F:\NXP_Projects\Sentry_Simulator\xip" -I"F:\NXP_Projects\Sentry_Simulator\utilities" -I"F:\NXP_Projects\Sentry_Simulator\freertos\freertos-kernel\include" -I"F:\NXP_Projects\Sentry_Simulator\freertos\freertos-kernel\portable\GCC\ARM_CM4F" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS\DSP\Include" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS\DSP\PrivateInclude" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS\DSP\Source\DistanceFunctions" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS\NN\Include" -I"F:\NXP_Projects\Sentry_Simulator\source" -I"F:\NXP_Projects\Sentry_Simulator\board" -O3 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-CMSIS-2f-NN-2f-Source-2f-NNSupportFunctions

clean-CMSIS-2f-NN-2f-Source-2f-NNSupportFunctions:
	-$(RM) ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.d ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.d ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.d ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.d ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.d ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.d ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.d ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.d ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.d ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.d ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.d ./CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.o ./CMSIS/NN/Source/NNSupportFunctions/arm_nntables.d ./CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o ./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.d ./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o ./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.d ./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o ./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.d ./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o ./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.d ./CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o

.PHONY: clean-CMSIS-2f-NN-2f-Source-2f-NNSupportFunctions

