
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
        BUILD_DIR/asm/header.o(.data);
        BUILD_DIR/asm/boot_40.o(.text);
    }

    BEGIN_SEG(main, 0x80096400) {
        BUILD_DIR/asm/main_1000.o(.text);
    }
}