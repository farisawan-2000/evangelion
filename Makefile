default: all

TARGET = eva

CROSS=mips-n64-

ASM_DIRS = asm asm/data asm/asm asm/os $(wildcard asm/ovl*) $(wildcard src/ovl*) $(wildcard asm/data/ovl*)
SRC_DIRS = src src/os
BUILD_DIR = build

YAY0_DIR = assets/yay0
BIN_DIR = assets
ASSETS_DIRS = assets/Font assets/Images assets/Palettes assets/BLOCK04 assets/BLOCK05 assets/Objects assets/BLOCK07 assets/BLOCK08 assets/Sound
dummy != mkdir -p $(ASSETS_DIRS)

GLOBAL_ASM_C_FILES != grep -rl 'INCLUDE_ASM(' $(wildcard src/*/*.c)
GLOBAL_ASM_O_FILES = $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file:.c=.o))

ASM_FILES = $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
SRC_FILES = $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
TMP_SRC_FILES = $(foreach dir,$(SRC_DIRS),$(wildcard $(BUILD_DIR)/*.tmp.c))
O_FILES = $(foreach file,$(ASM_FILES),$(BUILD_DIR)/$(file:.s=.o)) \
		  $(foreach file,$(SRC_FILES),$(BUILD_DIR)/$(file:.c=.o))

I_FILES = $(foreach file,$(SRC_FILES),$(BUILD_DIR)/$(file:.c=.i))

GLOBAL_ASM_C_FILES != grep -rl 'INCLUDE_ASM(' $(wildcard src/*.c) $(wildcard src/*/*.c)
GLOBAL_ASM_O_FILES = $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file:.c=.o))

YAY0_FILES = $(foreach dir,$(YAY0_DIR),$(wildcard $(dir)/*.bin))
BIN_FILES = $(foreach dir,$(BIN_DIR),$(wildcard $(dir)/*.bin))
SZP_FILES = $(foreach file,$(YAY0_FILES),$(BUILD_DIR)/$(file:.bin=.o)) \
			$(foreach file,$(BIN_FILES),$(BUILD_DIR)/$(file:.bin=.o))

ALL_DIRS = $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(ASM_DIRS) $(SRC_DIRS) $(ASSETS_DIRS))
DUMMY != mkdir -p $(ALL_DIRS)

N64AS = tools/n64_gcc2/mips-nintendo-nu64-as
N64ASFLAGS := -EB -mcpu=vr4300 -mips3 -Ibuild/ -I.
AS = $(CROSS)as
ASFLAGS := -march=vr4300 -mtune=vr4300 -mabi=32 -mips3 -Iinclude -I. -I$(BUILD_DIR)

STRIP := $(CROSS)strip
CC = VR4300MUL=OFF COMPILER_PATH=tools/gcc_kmc/linux/2.7.2/ tools/gcc_kmc/linux/2.7.2/gcc
KMC_AS := tools/gcc_kmc/linux/2.7.2/as
OPT_FLAGS := -O2
# -mno-split-addresses
KMC_CFLAGS = $(OPT_FLAGS) -c -G0 -mgp32 -mfp32 -mips3 -mno-abicalls -Wa,--vr4300mul-off

TARGET_CFLAGS := -nostdinc -I include/libc -DTARGET_N64 -DF3DEX_GBI_2
KMC_ASFLAGS := -c -mips3 -O2
CFLAGS = $(KMC_CFLAGS)
IDO_CFLAGS = $(TARGET_CFLAGS) -Wab,-r4300_mul -non_shared -G0 -Xcpluscomm -Xfullwarn -signed -O2 -Iinclude -I. -Isrc/

LD = $(CROSS)ld
LD_SCRIPT = evangelion.ld
LDFLAGS := --no-check-sections -mips3 --accept-unknown-input-arch -T $(BUILD_DIR)/symbol_addrs.txt -T $(LD_SCRIPT) -T undefined_syms_auto.txt -T undefined_funcs_auto.txt
# -m elf32btsmip

CPP := $(CROSS)cpp -P -Wno-trigraphs
CPPFLAGS := -Iinclude/ -nostdinc -Iinclude/libc -I. -DTARGET_N64 -ffreestanding -D _LANGUAGE_C -D_FINALROM -DF3DEX_GBI_2 -D_MIPS_SZLONG=32

CC_CHECK := gcc -fsyntax-only -fsigned-char -m32 $(CPPFLAGS) -std=gnu90 -Wall -Wextra -Wno-unknown-pragmas -Wno-format-security -Wno-main -DNON_MATCHING -DAVOID_UB

N64CRC := tools/n64crc

OBJCOPY := $(CROSS)objcopy
OBJCOPY_FLAGS = --pad-to=0x2000000 --gap-fill=0xFF

DUMMY != make -C tools

PYTHON := python3
POSTPROCESS = $(PYTHON) tools/postprocess_asm.py

# $(GLOBAL_ASM_O_FILES): CC = $(PYTHON) asm-processor/build.py tools/kmc_wrapper/gcc -- $(AS) $(ASFLAGS) --

$(BUILD_DIR)/src/main.o: OPT_FLAGS = -O0
$(BUILD_DIR)/src/code_2C570.o: OPT_FLAGS = -O1
$(BUILD_DIR)/src/code_17E80.o: OPT_FLAGS = -O1
$(BUILD_DIR)/src/code_13610.o: OPT_FLAGS = -O2

$(BUILD_DIR)/%.o: %.s $(SZP_FILES)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.i : %.c | $(SRC_BUILD_DIRS)
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CPP) $(CPPFLAGS) $< -o $@

#$(STRIP) $@ -N $(<:.i=.c)
$(BUILD_DIR)/%.o : $(BUILD_DIR)/%.i | $(SRC_BUILD_DIRS)
	$(CC) $(KMC_CFLAGS) -I asm/nonmatchings/ -o $@ $<

$(BUILD_DIR)/%.o: %.bin
	$(LD) -r -b binary -o $@ $<

$(BUILD_DIR)/assets/yay0/%.o: assets/yay0/%.bin # override
	tools/slienc $< $@.i
	$(LD) -r -b binary -o $@ $@.i


$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT)
	$(CPP) $(VERSION_CFLAGS) -Umips -MMD -MP -MT $@ -MF $@.d -o $@ $< \
	-DBUILD_DIR=$(BUILD_DIR)

$(BUILD_DIR)/$(TARGET).elf: $(BUILD_DIR)/$(LD_SCRIPT) $(O_FILES) $(I_FILES)
	cpp -P tools/symbol_addrs.txt > $(BUILD_DIR)/symbol_addrs.txt
	$(LD) $(LDFLAGS) -o $@ -Map $(BUILD_DIR)/$(TARGET).map

# final z64 updates checksum
$(BUILD_DIR)/$(TARGET).z64: $(BUILD_DIR)/$(TARGET).elf $(SZP_FILES)
	$(OBJCOPY) $< $@ -O binary $(OBJCOPY_FLAGS)
	$(N64CRC) $@

all: $(BUILD_DIR)/$(TARGET).z64
	@sha1sum -c evangelion.sha1

clean:
	rm -rf $(BUILD_DIR)

test:
	~/Downloads/mupen64plus/mupen64plus-gui $(BUILD_DIR)/$(TARGET).z64

hexedit:
	wine ~/.wine/drive_c/Program\ Files/HxD/HxD.exe baserom.eva.z64

setup:
	./splat/split.py evangelion.yaml
	+make -C tools -f kmc.mk

.PHONY: all clean default diff test distclean

# Remove built-in rules, to improve performance
MAKEFLAGS += --no-builtin-rules

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true

