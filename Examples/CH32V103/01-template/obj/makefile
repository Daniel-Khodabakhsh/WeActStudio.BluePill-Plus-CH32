################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/subdir.mk
-include Startup/subdir.mk
-include Peripheral/src/subdir.mk
-include Debug/subdir.mk
-include Core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
template.hex \

SECONDARY_LIST += \
template.lst \

SECONDARY_SIZE += \
template.siz \


# All Target
all: template.elf secondary-outputs

# Tool invocations
template.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -T "F:\WeActStudio1\Products\WeAct-BluePill-Plus\Example\CH32V103\01-template\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"template.map" --specs=nano.specs --specs=nosys.specs -o "template.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@	@
template.hex: template.elf
	@	riscv-none-embed-objcopy -O ihex "template.elf"  "template.hex"
	@	@
template.lst: template.elf
	@	riscv-none-embed-objdump --all-headers --demangle --disassemble "template.elf" > "template.lst"
	@	@
template.siz: template.elf
	@	riscv-none-embed-size --format=berkeley "template.elf"
	@	@
# Other Targets
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) template.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
