#define EXTERN_OVERLAY(nm) \
        extern u8 *nm ## _VRAM; \
        extern u8 *nm ## _VRAM_END; \
        extern u8 *nm ## _ROM_START; \
        extern u8 *nm ## _ROM_END; \
        extern u8 *nm ## _BSS_START; \
        extern u8 *nm ## _BSS_END;

typedef struct _Overlay {
    u8 *romStart;
    u8 *romEnd;
    u8 *dramStart;
    u8 *dramEnd;
    u8 *textStart;
    u8 *textEnd;
    u8 *dataStart;
    u8 *dataEnd;
    u8 *bssStart;
    u8 *bssEnd;
} Overlay; // size: 0x28
extern Overlay gOverlayTable[]; // 800D4F50

EXTERN_OVERLAY(ovl8);
