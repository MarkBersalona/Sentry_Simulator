################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freertos/freertos-plus-tcp/source/FreeRTOS_ARP.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_DHCP.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_DNS.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Cache.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Callback.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Networking.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Parser.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_ICMP.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_IP.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_IP_Timers.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_IP_Utils.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_Sockets.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_Stream_Buffer.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_TCP_IP.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Reception.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_TCP_State_Handling.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Transmission.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Utils.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_TCP_WIN.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_Tiny_TCP.c \
../freertos/freertos-plus-tcp/source/FreeRTOS_UDP_IP.c 

C_DEPS += \
./freertos/freertos-plus-tcp/source/FreeRTOS_ARP.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_DHCP.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_DNS.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Cache.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Callback.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Networking.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Parser.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_ICMP.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_IP.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_IP_Timers.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_IP_Utils.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_Sockets.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_Stream_Buffer.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_IP.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Reception.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_State_Handling.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Transmission.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Utils.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_WIN.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_Tiny_TCP.d \
./freertos/freertos-plus-tcp/source/FreeRTOS_UDP_IP.d 

OBJS += \
./freertos/freertos-plus-tcp/source/FreeRTOS_ARP.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_DHCP.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_DNS.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Cache.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Callback.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Networking.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Parser.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_ICMP.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_IP.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_IP_Timers.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_IP_Utils.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_Sockets.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_Stream_Buffer.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_IP.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Reception.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_State_Handling.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Transmission.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Utils.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_WIN.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_Tiny_TCP.o \
./freertos/freertos-plus-tcp/source/FreeRTOS_UDP_IP.o 


# Each subdirectory must supply rules for building sources it contributes
freertos/freertos-plus-tcp/source/%.o: ../freertos/freertos-plus-tcp/source/%.c freertos/freertos-plus-tcp/source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MIMXRT1021DAG5A -DSDK_DEBUGCONSOLE=1 -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DMCUXPRESSO_SDK -DSERIAL_PORT_TYPE_UART=1 -DSDK_OS_FREE_RTOS -DCPU_MIMXRT1021DAG5A_cm7 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"F:\NXP_Projects\Sentry_Simulator\component\lists" -I"F:\NXP_Projects\Sentry_Simulator\component\uart" -I"F:\NXP_Projects\Sentry_Simulator\component\serial_manager" -I"F:\NXP_Projects\Sentry_Simulator\device" -I"F:\NXP_Projects\Sentry_Simulator\drivers" -I"F:\NXP_Projects\Sentry_Simulator\xip" -I"F:\NXP_Projects\Sentry_Simulator\utilities" -I"F:\NXP_Projects\Sentry_Simulator\freertos\freertos-kernel\include" -I"F:\NXP_Projects\Sentry_Simulator\freertos\freertos-kernel\portable\GCC\ARM_CM4F" -I"F:\NXP_Projects\Sentry_Simulator\CMSIS" -I"F:\NXP_Projects\Sentry_Simulator\freertos\freertos-plus-tcp\source\include" -I"F:\NXP_Projects\Sentry_Simulator\source" -I"F:\NXP_Projects\Sentry_Simulator\board" -O3 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-freertos-2f-freertos-2d-plus-2d-tcp-2f-source

clean-freertos-2f-freertos-2d-plus-2d-tcp-2f-source:
	-$(RM) ./freertos/freertos-plus-tcp/source/FreeRTOS_ARP.d ./freertos/freertos-plus-tcp/source/FreeRTOS_ARP.o ./freertos/freertos-plus-tcp/source/FreeRTOS_DHCP.d ./freertos/freertos-plus-tcp/source/FreeRTOS_DHCP.o ./freertos/freertos-plus-tcp/source/FreeRTOS_DNS.d ./freertos/freertos-plus-tcp/source/FreeRTOS_DNS.o ./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Cache.d ./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Cache.o ./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Callback.d ./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Callback.o ./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Networking.d ./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Networking.o ./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Parser.d ./freertos/freertos-plus-tcp/source/FreeRTOS_DNS_Parser.o ./freertos/freertos-plus-tcp/source/FreeRTOS_ICMP.d ./freertos/freertos-plus-tcp/source/FreeRTOS_ICMP.o ./freertos/freertos-plus-tcp/source/FreeRTOS_IP.d ./freertos/freertos-plus-tcp/source/FreeRTOS_IP.o ./freertos/freertos-plus-tcp/source/FreeRTOS_IP_Timers.d ./freertos/freertos-plus-tcp/source/FreeRTOS_IP_Timers.o ./freertos/freertos-plus-tcp/source/FreeRTOS_IP_Utils.d ./freertos/freertos-plus-tcp/source/FreeRTOS_IP_Utils.o ./freertos/freertos-plus-tcp/source/FreeRTOS_Sockets.d ./freertos/freertos-plus-tcp/source/FreeRTOS_Sockets.o ./freertos/freertos-plus-tcp/source/FreeRTOS_Stream_Buffer.d ./freertos/freertos-plus-tcp/source/FreeRTOS_Stream_Buffer.o ./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_IP.d ./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_IP.o ./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Reception.d ./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Reception.o ./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_State_Handling.d ./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_State_Handling.o ./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Transmission.d ./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Transmission.o ./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Utils.d ./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_Utils.o ./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_WIN.d ./freertos/freertos-plus-tcp/source/FreeRTOS_TCP_WIN.o ./freertos/freertos-plus-tcp/source/FreeRTOS_Tiny_TCP.d ./freertos/freertos-plus-tcp/source/FreeRTOS_Tiny_TCP.o ./freertos/freertos-plus-tcp/source/FreeRTOS_UDP_IP.d ./freertos/freertos-plus-tcp/source/FreeRTOS_UDP_IP.o

.PHONY: clean-freertos-2f-freertos-2d-plus-2d-tcp-2f-source

