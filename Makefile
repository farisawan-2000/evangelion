TARGET = eva

ASM_DIRS = asm asm/asm
SRC_DIRS = src
BUILD_DIR = build

YAY0_DIR = bin/Yay0

ASM_FILES = $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
SRC_FILES = $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
O_FILES = $(foreach file,$(ASM_FILES),$(BUILD_DIR)/$(file:.s=.o)) \
		  $(foreach file,$(SRC_FILES),$(BUILD_DIR)/$(file:.c=.o))

YAY0_FILES = $(foreach dir,$(YAY0_DIR),$(wildcard $(dir)/*.bin))
SZP_FILES = $(foreach file,$(YAY0_FILES),$(BUILD_DIR)/$(file:.bin=.szp))

ALL_DIRS = $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(ASM_DIRS) $(SRC_DIRS) $(YAY0_DIR))
DUMMY != mkdir -p $(ALL_DIRS)

AS = mips-linux-gnu-as
ASFLAGS := -march=vr4300 -mtune=vr4300 -mabi=32 -mips3 -Ibuild/ -I.

CC = tools/n64_gcc2/cc1
CFLAGS = -O2

LD = mips-linux-gnu-ld
LD_SCRIPT = eva.ld
LDFLAGS := --no-check-sections -T $(BUILD_DIR)/$(LD_SCRIPT) -T undefined_syms_auto.txt -T undefined_funcs_auto.txt

CPP := cpp -P -Wno-trigraphs

N64CRC := tools/n64crc

OBJCOPY := mips-linux-gnu-objcopy
OBJCOPY_FLAGS = --pad-to=0x2000000 --gap-fill=0xFF

DUMMY != make -C tools

default: all

build/src/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) -- $(CFLAGS)

$(BUILD_DIR)/%.o: %.s $(SZP_FILES)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.c
	$(CC) $(C_FLAGS) -o $@ $<

$(BUILD_DIR)/%.szp: %.bin
	tools/slienc $< $@

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT)
	$(CPP) $(VERSION_CFLAGS) -MMD -MP -MT $@ -MF $@.d -o $@ $< \
	-DBUILD_DIR=$(BUILD_DIR)

$(BUILD_DIR)/$(TARGET).elf: $(BUILD_DIR)/$(LD_SCRIPT) $(O_FILES)
	$(LD) $(LDFLAGS) -o $@ -Map $(BUILD_DIR)/$(TARGET).map

# final z64 updates checksum
$(BUILD_DIR)/$(TARGET).z64: $(BUILD_DIR)/$(TARGET).elf $(SZP_FILES)
	$(OBJCOPY) $< $@ -O binary $(OBJCOPY_FLAGS)
	$(N64CRC) $@
	sha1sum -c evangelion.sha1

all: $(BUILD_DIR)/$(TARGET).z64

clean:
	rm -rf $(BUILD_DIR)


.PHONY: all clean default diff test distclean

# Remove built-in rules, to improve performance
MAKEFLAGS += --no-builtin-rules

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true

