TARGET = eva

ASM_DIRS = asm asm/asm
BUILD_DIR = build

YAY0_DIR = asm/bin/Yay0

ASM_FILES = $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
O_FILES = $(foreach file,$(ASM_FILES),$(BUILD_DIR)/$(file:.s=.o))

ALL_DIRS = $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(ASM_DIRS))
DUMMY != mkdir -p $(ALL_DIRS)

AS = mips-linux-gnu-as
ASFLAGS := -march=vr4300 -mtune=vr4300 -mabi=32 -mips3

LD = mips-linux-gnu-ld
LD_SCRIPT = $(TARGET).ld
LDFLAGS := --no-check-sections -T $(BUILD_DIR)/$(LD_SCRIPT) -T undefined_syms_auto.txt -T undefined_funcs_auto.txt

CPP := cpp -P -Wno-trigraphs

N64CRC := tools/n64crc

OBJCOPY := mips-linux-gnu-objcopy

DUMMY != make -C tools

$(BUILD_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT) $(O_FILES) 
	$(CPP) $(VERSION_CFLAGS) -MMD -MP -MT $@ -MF $@.d -o $@ $< \
	-DBUILD_DIR=$(BUILD_DIR)

$(BUILD_DIR)/$(TARGET).elf: $(BUILD_DIR)/$(LD_SCRIPT)
	$(LD) $(LDFLAGS) -o $@

# final z64 updates checksum
$(BUILD_DIR)/$(TARGET).z64: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(LD_SCRIPT)
	$(OBJCOPY) $< $@ -O binary $(OBJCOPY_FLAGS)
	$(N64CRC) $@
	@python3 tools/progress2.py -m

all: $(BUILD_DIR)/$(TARGET).z64

clean:
	rm -rf $(BUILD_DIR)

default: all

.PHONY: all clean default diff test distclean

# Remove built-in rules, to improve performance
MAKEFLAGS += --no-builtin-rules

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
