#define EXTERN_OVERLAY(nm) \
        extern u8 *nm ## _VRAM; \
        extern u8 *nm ## _VRAM_END; \
        extern u8 *nm ## _ROM_START; \
        extern u8 *nm ## _ROM_END; \
        extern u8 *nm ## _TEXT_START; \
        extern u8 *nm ## _TEXT_END; \
        extern u8 *nm ## _DATA_START; \
        extern u8 *nm ## _DATA_END; \
        extern u8 *nm ## _BSS_START; \
        extern u8 *nm ## _BSS_END;

typedef struct _Overlay {
    /* 0x000 */ u8 *romStart;
    /* 0x004 */ u8 *romEnd;
    /* 0x008 */ u8 *dramStart;
    /* 0x00C */ u8 *dramEnd;
    /* 0x010 */ u8 *textStart;
    /* 0x014 */ u8 *textEnd;
    /* 0x018 */ u8 *dataStart;
    /* 0x01C */ u8 *dataEnd;
    /* 0x020 */ u8 *bssStart;
    /* 0x024 */ u8 *bssEnd;
} Overlay; // size: 0x28
extern Overlay gOverlayTable[]; // 800D4F50

EXTERN_OVERLAY(ovl1);
EXTERN_OVERLAY(ovl2);
EXTERN_OVERLAY(ovl3);
EXTERN_OVERLAY(ovl4);
EXTERN_OVERLAY(ovl5);
EXTERN_OVERLAY(ovl6);
EXTERN_OVERLAY(ovl7);
EXTERN_OVERLAY(ovl8);
