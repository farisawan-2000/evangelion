
typedef struct {
    u16 *str;
    s8 wdSpacing;
    s8 htSpacing;
    u8 p3;
    u8 p4;
} FontParams;

typedef struct {
    u32 _000;
    u32 _004;
    u32 _008;
    u32 _00C;
    u32 _010;
    u32 _014;
    u32 _018;
    u32 _01C;
    u32 _020;
    u32 _024;
    u32 _028;
    u8 _02C;
    u8 _02D;
    u8 _02E;
    u8 unk2F;
} UnkStruct80036494_0C_00;

typedef struct {
    UnkStruct80036494_0C_00 *unk0;
    u32 _004;
    u32 _008;
    u32 _00C;
    u32 _010;
    u32 unk14;
    u32 _018;
    u16 unk1C;
} UnkStruct80036494_0C;

typedef struct {
    u32 _000;
    u32 _004;
    u32 _008;
    UnkStruct80036494_0C *unkC;
} UnkStruct80036494;

typedef struct {
    s16 *angelName;
    s16 *machineType;
    s16 *description;
} MissionText;
