TARGET = eva

ASM_DIRS = asm asm/asm
SRC_DIRS = src
BUILD_DIR = build

YAY0_DIR = bin/Yay0

ASM_FILES = $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
SRC_FILES = $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
TMP_SRC_FILES = $(foreach dir,$(SRC_DIRS),$(wildcard $(BUILD_DIR)/*.tmp.c))
O_FILES = $(foreach file,$(ASM_FILES),$(BUILD_DIR)/$(file:.s=.o)) \
		  $(foreach file,$(SRC_FILES),$(BUILD_DIR)/$(file:.c=.o))

YAY0_FILES = $(foreach dir,$(YAY0_DIR),$(wildcard $(dir)/*.bin))
SZP_FILES = $(foreach file,$(YAY0_FILES),$(BUILD_DIR)/$(file:.bin=.szp))

ALL_DIRS = $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(ASM_DIRS) $(SRC_DIRS) $(YAY0_DIR))
DUMMY != mkdir -p $(ALL_DIRS)

N64AS = tools/n64_gcc2/mips-nintendo-nu64-as
AS = mips-linux-gnu-as
ASFLAGS := -march=vr4300 -mtune=vr4300 -mabi=32 -mips3 -Ibuild/ -I.

CC = tools/n64_gcc2/cc1
CFLAGS = -O2 -quiet -G 0 -mcpu=vr4300 -mfix4300 -mips3 -mfp32 -Wuninitialized -Wshadow 

LD = mips-linux-gnu-ld
LD_SCRIPT = eva.ld
LDFLAGS := --no-check-sections -m elf32btsmip -mips3 --accept-unknown-input-arch -T $(BUILD_DIR)/$(LD_SCRIPT) -T undefined_syms_auto.txt -T undefined_funcs_auto.txt

CPP := mips-linux-gnu-cpp -P -Wno-trigraphs
CPPFLAGS := -Iinclude/ -I. -D__sgi -ffreestanding -D _LANGUAGE_C -D _FINALROM -DF3DEX_GBI_2 -D_MIPS_SZLONG=32

N64CRC := tools/n64crc

OBJCOPY := mips-linux-gnu-objcopy
OBJCOPY_FLAGS = --pad-to=0x2000000 --gap-fill=0xFF

DUMMY != make -C tools

default: all

# build/src/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) -- $(CFLAGS)

$(BUILD_DIR)/%.o: %.s $(SZP_FILES)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.c
	$(print $(BUILD_DIR)/$*.tmp.c)
	$(CPP) $(CPPFLAGS) $< -o $(BUILD_DIR)/$*.tmp.c
	$(CC) $(CFLAGS) -o $(BUILD_DIR)/$*.tmp.s $(BUILD_DIR)/$*.tmp.c
	$(AS) $(ASFLAGS) -o $@ $(BUILD_DIR)/$*.tmp.s
# 	$(N64AS) -EB -mips3 -mcpu=r4000 -I. -Iasm/ -o $@ $(BUILD_DIR)/$*.tmp.s

$(BUILD_DIR)/%.szp: %.bin
	tools/slienc $< $@

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT)
	$(CPP) $(VERSION_CFLAGS) -Umips -MMD -MP -MT $@ -MF $@.d -o $@ $< \
	-DBUILD_DIR=$(BUILD_DIR)

$(BUILD_DIR)/$(TARGET).elf: $(BUILD_DIR)/$(LD_SCRIPT) $(O_FILES)
	$(LD) $(LDFLAGS) -o $@ -Map $(BUILD_DIR)/$(TARGET).map

# final z64 updates checksum
$(BUILD_DIR)/$(TARGET).z64: $(BUILD_DIR)/$(TARGET).elf $(SZP_FILES)
	$(OBJCOPY) $< $@ -O binary $(OBJCOPY_FLAGS)
	$(N64CRC) $@

all: $(BUILD_DIR)/$(TARGET).z64
	@sha1sum -c evangelion.sha1

clean:
	rm -rf $(BUILD_DIR)


.PHONY: all clean default diff test distclean

# Remove built-in rules, to improve performance
MAKEFLAGS += --no-builtin-rules

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true

