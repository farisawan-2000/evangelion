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

GLOBAL_ASM_C_FILES != grep -rl 'GLOBAL_ASM(' $(wildcard src/*/*.c)
GLOBAL_ASM_O_FILES = $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file:.c=.o))

YAY0_FILES = $(foreach dir,$(YAY0_DIR),$(wildcard $(dir)/*.bin))
SZP_FILES = $(foreach file,$(YAY0_FILES),$(BUILD_DIR)/$(file:.bin=.szp))

ALL_DIRS = $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(ASM_DIRS) $(SRC_DIRS) $(YAY0_DIR))
DUMMY != mkdir -p $(ALL_DIRS)

N64AS = tools/n64_gcc2/mips-nintendo-nu64-as
AS = mips-linux-gnu-as
ASFLAGS := -march=vr4300 -mtune=vr4300 -mips3 -Iinclude -I. -I$(BUILD_DIR)
N64ASFLAGS := -EB -mcpu=vr4300 -mips3 -Ibuild/ -I.

CC = tools/n64_gcc2/cc1
OPT_FLAGS := -O2
TARGET_CFLAGS := -nostdinc -I include/libc -DTARGET_N64 -DF3DEX_GBI_2
CFLAGS = $(OPT_FLAGS) -quiet -G 0 -mcpu=vr4300 -mfix4300 -mips3 -mfp32 -Wuninitialized -Wshadow 
IDO_CFLAGS = $(TARGET_CFLAGS) -Wab,-r4300_mul -non_shared -G0 -Xcpluscomm -Xfullwarn -signed -O2 -Iinclude -I. -Isrc/

LD = mips-linux-gnu-ld
LD_SCRIPT = eva.ld
LDFLAGS := --no-check-sections -m elf32btsmip -mips3 --accept-unknown-input-arch -T $(BUILD_DIR)/$(LD_SCRIPT) -T undefined_syms_auto.txt -T undefined_funcs_auto.txt

CPP := mips-linux-gnu-cpp -P -Wno-trigraphs
CPPFLAGS := -Iinclude/ -Iinclude/libc -I. -DTARGET_N64 -ffreestanding -D _LANGUAGE_C -D_FINALROM -DF3DEX_GBI_2 -D_MIPS_SZLONG=32

CC_CHECK := gcc -fsyntax-only -fsigned-char -m32 $(CPPFLAGS) -std=gnu90 -Wall -Wextra -Wno-format-security -Wno-main -DNON_MATCHING -DAVOID_UB

N64CRC := tools/n64crc

OBJCOPY := mips-linux-gnu-objcopy
OBJCOPY_FLAGS = --pad-to=0x2000000 --gap-fill=0xFF

DUMMY != make -C tools

default: all


$(BUILD_DIR)/%.o: %.s $(SZP_FILES)
	$(N64AS) $(N64ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.c
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CPP) $(CPPFLAGS) -nostdinc $< -o $(BUILD_DIR)/$*.tmp.c
	$(CC) $(CFLAGS) -o $(BUILD_DIR)/$*.tmp.s $(BUILD_DIR)/$*.tmp.c
	$(N64AS) $(N64ASFLAGS) -o $@ $(BUILD_DIR)/$*.tmp.s
# 	$(N64AS) $(ASFLAGS) -o $@ $(BUILD_DIR)/$*.tmp.s


$(BUILD_DIR)/%.ido.o: %.ido.c
	$(info Compiling IDO file)
	$(CC_CHECK) -nostdinc -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	python3 tools/asm_processor/build.py tools/ido7/cc -- mips-linux-gnu-as -mtune=vr4300 -march=vr4300 -mabi=32 -mips3 -Ibuild/us -- -c -Wab,-r4300_mul -non_shared -G0 -Xcpluscomm -Xfullwarn -signed -O2 -nostdinc -I include/libc -DTARGET_N64 -DF3DEX_GBI_2 -I include -I build/us -I build/us/include -I src -I . -mips2 -32 -o $@ $<
# 	$(CC) $(IDO_CFLAGS) -o $@ $<


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

IRIX_ROOT := tools/qemu_ido7/
# GLOBAL_ASM_COMPILER := qemu-irix -L $(IRIX_ROOT) $(IRIX_ROOT)usr/bin/cc
# GLOBAL_ASM_COMPILER := ./tools/n64_gcc2/cc1
GLOBAL_ASM_COMPILER := ./tools/ido7/cc
$(GLOBAL_ASM_O_FILES): CC := $(PYTHON) tools/asm_processor/build.py $(GLOBAL_ASM_COMPILER) -- $(AS) $(ASFLAGS) --

.PHONY: all clean default diff test distclean

# Remove built-in rules, to improve performance
MAKEFLAGS += --no-builtin-rules

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true

