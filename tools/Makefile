CC := gcc
CFLAGS := -I . -Wall -Wextra -Wno-unused-parameter -pedantic -O3 -s
PROGRAMS := n64crc slienc

n64crc_SOURCES := n64crc.c
n64crc_CFLAGS := -O2 # faster compile time

slienc_SOURCES := slienc.c
slienc_CFLAGS := -O2 # faster compile time

default: all

all: $(PROGRAMS) $(CXX_PROGRAMS)

clean:
	$(RM) $(PROGRAMS) $(CXXPROGRAMS)

define COMPILE
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) $$^ -lm -o $$@ $($1_CFLAGS)
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))
