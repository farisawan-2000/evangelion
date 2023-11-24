#define EXTERN_OVERLAY(nm) \
        extern u8 *nm ## _VRAM; \
        extern u8 *nm ## _VRAM_END; \
        extern u8 *nm ## _ROM_START; \
        extern u8 *nm ## _ROM_END; \
        extern u8 *nm ## _BSS_START; \
        extern u8 *nm ## _BSS_END;


EXTERN_OVERLAY(ovl8);
