
OUTPUT_ARCH (mips)

#define BEGIN_SEG(name, addr) \
    _##name##SegmentStart = ADDR(.name); \
    _##name##SegmentRomStart = __romPos; \
    .name addr : AT(__romPos)

#define END_SEG(name) \
    _##name##SegmentEnd = ADDR(.name) + SIZEOF(.name); \
    _##name##SegmentRomEnd = __romPos + SIZEOF(.name); \
    __romPos += SIZEOF(.name);

#define BEGIN_NOLOAD(name) \
    _##name##SegNoloadStart = ADDR(.name.noload); \
    .name.noload (NOLOAD) :

#define END_NOLOAD(name) \
    _##name##SegNoloadEnd = ADDR(.name.noload) + SIZEOF(.name.noload);


SECTIONS
{
    __romPos = 0x0;
    BEGIN_SEG(boot, 0xA4000000) {
        BUILD_DIR/asm/header.o(.header);
        BUILD_DIR/asm/boot.o(.text);
        BUILD_DIR/asm/ipl3font.o(.data);
    }
    END_SEG(boot)

    BEGIN_SEG(main, 0x80096400) {
        BUILD_DIR/asm/main_1000.o(.text);
    }
    END_SEG(main)

    BEGIN_SEG(data, __romPos) {
        BUILD_DIR/asm/bin_354B0.o(.data);
        BUILD_DIR/asm/yay0.o(.data);
    }
    END_SEG(data)
    /DISCARD/ :
    {
        *(*);
    }
}