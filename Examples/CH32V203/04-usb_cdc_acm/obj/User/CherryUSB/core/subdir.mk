################################################################################
# MRS Version: {"version":"1.8.4","date":"2023/02/15"}
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/CherryUSB/core/usbd_core.c 

OBJS += \
./User/CherryUSB/core/usbd_core.o 

C_DEPS += \
./User/CherryUSB/core/usbd_core.d 


# Each subdirectory must supply rules for building sources it contributes
User/CherryUSB/core/%.o: ../User/CherryUSB/core/%.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"F:\WeActStudio1\Products\WeAct-BluePill-Plus\Example\CH32V203\04-usb_cdc_acm\Debug" -I"F:\WeActStudio1\Products\WeAct-BluePill-Plus\Example\CH32V203\04-usb_cdc_acm\Core" -I"F:\WeActStudio1\Products\WeAct-BluePill-Plus\Example\CH32V203\04-usb_cdc_acm\User" -I"F:\WeActStudio1\Products\WeAct-BluePill-Plus\Example\CH32V203\04-usb_cdc_acm\Peripheral\inc" -I"F:\WeActStudio1\Products\WeAct-BluePill-Plus\Example\CH32V203\04-usb_cdc_acm\User\CherryUSB\app" -I"F:\WeActStudio1\Products\WeAct-BluePill-Plus\Example\CH32V203\04-usb_cdc_acm\User\CherryUSB\class\cdc" -I"F:\WeActStudio1\Products\WeAct-BluePill-Plus\Example\CH32V203\04-usb_cdc_acm\User\CherryUSB\common" -I"F:\WeActStudio1\Products\WeAct-BluePill-Plus\Example\CH32V203\04-usb_cdc_acm\User\CherryUSB\core" -I"F:\WeActStudio1\Products\WeAct-BluePill-Plus\Example\CH32V203\04-usb_cdc_acm\User\CherryUSB\port\fsdev" -I"F:\WeActStudio1\Products\WeAct-BluePill-Plus\Example\CH32V203\04-usb_cdc_acm\User\CherryUSB\osal" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

