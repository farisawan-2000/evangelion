CC := gcc
CFLAGS := -I . -Wall -Wextra -Wno-unused-parameter -pedantic -O3 -s
PROGRAMS := n64crc slienc rgb2c

n64crc_SOURCES := n64crc.c
n64crc_CFLAGS := -O2 # faster compile time

slienc_SOURCES := slienc.c
slienc_CFLAGS := -O2 # faster compile time

rgb2c_SOURCES := rgb2c/rgb2c.c rgb2c/readtex2.c rgb2c/loadblock_widthpad.c rgb2c/ci_texconv.c rgb2c/lodepng.c
rgb2c_CFLAGS := -g -Wall -Wextra -pedantic -frounding-math -fsignaling-nans -fsingle-precision-constant

default: all

all: $(PROGRAMS) $(CXX_PROGRAMS)

clean:
	$(RM) $(PROGRAMS) $(CXXPROGRAMS)

define COMPILE
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) $$^ -lm -o $$@ $($1_CFLAGS)
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))
