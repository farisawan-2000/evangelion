.include "macro.inc"

.section .data

glabel D_8002EAA0_72D80
.word 0x8002FAE0, func_8009E040, func_80025D60_6A040, 0x8002FAD0, func_8009E040, func_80026570_6A850, 0x8002FAC0, func_8009E040, func_80026B60_6AE40, 0x8002FAB0, func_8009E040, func_80026DB0_6B090, 0x8002FAA0, func_8009E040, func_80026FE0_6B2C0, 0x8002FA90, func_8009E040, func_80029028_6D308, 0x8002FA80, func_8009E040, func_8002AB88_6EE68, 0x8002FA70, func_8009E040, func_800286A0_6C980, 0x8002FA60, func_8009E040, func_8002D250_71530, 0x8002FA50, func_8009E040, func_8002D800_71AE0

glabel D_8002EB18_72DF8
.word 0x8002FAF0, 0x0000000B, 0x0000000A, D_8002EAA0_72D80, 0x0000000A, 0x0000000A, 0x0000000F, 0x00000000, 0x00000000

glabel D_8002EB3C_72E1C
.byte 0x00, 0x00, 0x00, 0x00

glabel D_8002EB40_72E20
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_8002EB46_72E26
.short 0x0100, 0x0000

glabel D_8002EB4A_72E2A
.short 0x0064, 0x8002, 0xFC38, 0x8002, 0xEB40, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0003, 0x0000, 0x0000, 0x8002, 0xFC30, 0x8002, 0xEB44, 0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x0100, 0x0000, 0x0000, 0x8002, 0xFC28, 0x8002, 0xEB48, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x03E7, 0x0000, 0x0000

glabel D_8002EB94_72E74
.word 0x8002FC40, 0x0000000F, 0x00000006, 0x8002EB4C, 0x00000003, 0x00000003, 0x00000005, 0x00000003, 0x00000000, 0x00000000, 0x00000000

glabel D_8002EBC0_72EA0
.word 0x00000000

glabel D_8002EBC4_72EA4
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x02, 0xFE, 0x80, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x01, 0x80, 0x02, 0xFE, 0x78, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x02, 0x80, 0x02, 0xFE, 0x70, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x03, 0x80, 0x02, 0xFE, 0x68, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x04, 0x80, 0x02, 0xFE, 0x88, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x80, 0x02, 0xEB, 0xD0, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_8002EC24_72F04
.byte 0x00, 0x00, 0x00

glabel D_8002EC27_72F07
.byte 0x02, 0x00, 0x00, 0x00

glabel D_8002EC2B_72F0B
.byte 0x00

glabel D_8002EC2C_72F0C
.word 0x00000001

glabel D_8002EC30_72F10
.word 0x00000000

glabel D_8002EC34_72F14
.byte 0x00, 0x00

glabel D_8002EC36_72F16
.short 0x0000

glabel D_8002EC38_72F18
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_8002EC3E_72F1E
.short 0x0001, 0x0000

glabel D_8002EC42_72F22
.short 0x0001, 0x8002, 0xFEA4, 0x8002, 0xFEA0, 0x8002, 0xFE9C, 0x8002, 0xFE98, 0x8002, 0xFE94, 0x8002, 0xFE90, 0x8002, 0xFE8C, 0x8002, 0xFEFC, 0x8002, 0xEC24, 0x0300, 0x0000, 0x0000, 0x0000, 0x0000, 0x0007, 0x8002, 0xEC44, 0x8002, 0xFEF0, 0x8002, 0xEC28, 0x0100, 0x0000, 0x0000, 0x0000, 0x0000, 0x0003, 0x0000, 0x0000, 0x8002, 0xFEE4, 0x8002, 0xEC2C, 0x0200, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x800D, 0x3D60, 0x8002, 0xFED8, 0x8002, 0xEC30, 0x0200, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x800D, 0x3D60, 0x8002, 0xFECC, 0x8002, 0xEC34, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0607, 0x0000, 0x0000, 0x8002, 0xFEC0, 0x8002, 0xEC38, 0x0200, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x800D, 0x3D60, 0x8002, 0xFEB4, 0x8002, 0xEC3C, 0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x0010, 0x0000, 0x0000, 0x8002, 0xFEA8, 0x8002, 0xEC40, 0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x0010, 0x0000, 0x0000, 0x8002, 0xFE88, 0x0000, 0x0002, 0x0000, 0x0002, 0x8002, 0xEC60, 0x0000, 0x0008, 0x0000, 0x0008, 0x0000, 0x0009, 0x0000, 0x0003, 0x0000, 0x0000, 0x0000, 0x0000, 0x8002, 0xFF40, 0x8003, 0x08F0, 0x0200, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x800D, 0x3D60, 0x8002, 0xFF38, 0x8003, 0x08F4, 0x0200, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x800D, 0x3D60, 0x8002, 0xFF30, 0x8003, 0x08F8, 0x0200, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x800D, 0x3D60, 0x8002, 0xFF28, 0x8003, 0x08FC, 0x0200, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x800D, 0x3D60, 0x8002, 0xFF20, 0x8003, 0x0900, 0x0200, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x800D, 0x3D60, 0x8002, 0xFF18, 0x8003, 0x0904, 0x0200, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x800D, 0x3D60, 0x8002, 0xFF10, 0x8003, 0x0908, 0x0200, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x800D, 0x3D60, 0x8002, 0xFF08, 0x8003, 0x090C, 0x0200, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x800D, 0x3D60, 0x8002, 0xFE88, 0x0000, 0x0002, 0x0000, 0x0002, 0x8002, 0xED48, 0x0000, 0x0008, 0x0000, 0x0008, 0x0000, 0x0007, 0x0000, 0x0003, 0x0000, 0x0000, 0x0000, 0x0000, 0x8002, 0xFF60, 0x8003, 0x0920, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x00FF, 0x0000, 0x0000, 0x8002, 0xFF58, 0x8003, 0x0924, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x00FF, 0x0000, 0x0000, 0x8002, 0xFF50, 0x8003, 0x0928, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x00FF, 0x0000, 0x0000, 0x8002, 0xFF48, 0x8003, 0x092C, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x00FF, 0x0000, 0x0000, 0x8002, 0xFE88, 0x0000, 0x0002, 0x0000, 0x0002, 0x8002, 0xEE30, 0x0000, 0x0004, 0x0000, 0x0004, 0x0000, 0x0006, 0x0000, 0x0003, 0x0000, 0x0000, 0x0000, 0x0000, 0x8002, 0xFF74, 0x8003, 0x0930, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0140, 0x0000, 0x0000, 0x8002, 0xFF70, 0x8003, 0x0938, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0140, 0x0000, 0x0000, 0x8002, 0xFF6C, 0x8003, 0x0934, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x00F0, 0x0000, 0x0000, 0x8002, 0xFF68, 0x8003, 0x093C, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x00F0, 0x0000, 0x0000, 0x8002, 0xFE88, 0x0000, 0x0002, 0x0000, 0x0002, 0x8002, 0xEEB8, 0x0000, 0x0004, 0x0000, 0x0004, 0x0000, 0x0003, 0x0000, 0x0003, 0x0000, 0x0000, 0x0000, 0x0000

glabel D_8002EF40_73220
.word 0x00000000

glabel D_8002EF44_73224
.word 0xFFFFFFFF, 0x00000000, 0x00000000, 0x8002EC00, 0x00000001, 0x8002ED20, 0x00000001, 0x8002EE08, 0x00000001, 0x8002EE90, 0x00000001, 0x8002EF18

glabel D_8002EF74_73254
.word 0x8002EF4C, D_8002EF40_73220, 0x00000000

glabel D_8002EF80_73260
.word 0x800300D8, 0x800300D0, 0x800300C8, 0x800300C0, 0x800300B8, 0x800300EC, func_8009E040, 0x00000001, 0x800300E8, func_8009E040, 0x00000002, 0x800300E4, func_8009E040, 0x00000003, 0x800300E0, func_8009E040, 0x00000004, 0x800300F0, 0x00000002, 0x00000004, 0x8002EF94, 0x00000004, 0x00000004, 0x00000003, 0x00000000, 0x00000000

glabel D_8002EFE8_732C8
.word 0x00000000

glabel D_8002EFEC_732CC
.word 0x00000001

glabel D_8002EFF0_732D0
.word 0x00000000

glabel D_8002EFF4_732D4
.word 0x00000000

glabel D_8002EFF8_732D8
.word 0xFFFFFFFF

glabel D_8002EFFC_732DC
.word 0x00000001

glabel D_8002F000_732E0
.word 0x00000000

glabel D_8002F004_732E4
.word 0x00000001

glabel D_8002F008_732E8
.word 0x00000000

glabel D_8002F00C_732EC
.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x80, 0x03, 0x00, 0xFC, 0x80, 0x03, 0x00, 0xF8, 0x80, 0x03, 0x00, 0xF4, 0x80, 0x03, 0x01, 0x04, 0x80, 0x03, 0x01, 0x00, 0x80, 0x03, 0x01, 0x80, 0x80, 0x02, 0xEF, 0xE8, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x01, 0x74, 0x80, 0x02, 0xEF, 0xEC, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x01, 0x68, 0x80, 0x02, 0xEF, 0xF0, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x80, 0x02, 0xF0, 0x10, 0x80, 0x03, 0x01, 0x5C, 0x80, 0x02, 0xEF, 0xF4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x01, 0x50, 0x80, 0x02, 0xEF, 0xF8, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x03, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x01, 0x44, 0x80, 0x02, 0xEF, 0xFC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x01, 0x38, 0x80, 0x02, 0xF0, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x01, 0x2C, 0x80, 0x02, 0xF0, 0x04, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x01, 0x20, 0x80, 0x14, 0x9B, 0xA8, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x63, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x01, 0x14, 0x80, 0x02, 0xF0, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x02, 0xF0, 0x1C, 0x80, 0x03, 0x01, 0x08, 0x80, 0x02, 0xF0, 0x0C, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x01, 0x8C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x80, 0x02, 0xF0, 0x24, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x01, 0xDC, 0x80, 0x03, 0x09, 0x48, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x01, 0xD0, 0x80, 0x03, 0x09, 0x4C, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x01, 0xC4, 0x80, 0x03, 0x09, 0x50, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x01, 0xB8, 0x80, 0x03, 0x09, 0x54, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x01, 0xAC, 0x80, 0x03, 0x09, 0x58, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x01, 0xA0, 0x80, 0x03, 0x09, 0x5C, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x01, 0x94, 0x80, 0x03, 0x09, 0x60, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x01, 0xE8, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x80, 0x02, 0xF1, 0x54, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x02, 0x08, 0x80, 0x03, 0x09, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x02, 0x00, 0x80, 0x03, 0x09, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x01, 0xF8, 0x80, 0x03, 0x09, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x01, 0xF0, 0x80, 0x03, 0x09, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x02, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x80, 0x02, 0xF2, 0x24, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_8002F2AF_7358F
.byte 0x80, 0x00, 0x00, 0x00

glabel D_8002F2B3_73593
.byte 0x80, 0x00, 0x00, 0x00

glabel D_8002F2B7_73597
.byte 0x80, 0x00, 0x00, 0x00

glabel D_8002F2BB_7359B
.byte 0xFF, 0x00, 0x00, 0x00

glabel D_8002F2BF_7359F
.byte 0xFF, 0x00, 0x00, 0x00

glabel D_8002F2C3_735A3
.byte 0xFF, 0x80, 0x03, 0x02, 0x40, 0x80, 0x02, 0xF2, 0xAC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x02, 0x38, 0x80, 0x02, 0xF2, 0xB0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x02, 0x30, 0x80, 0x02, 0xF2, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x02, 0x28, 0x80, 0x02, 0xF2, 0xB8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x02, 0x20, 0x80, 0x02, 0xF2, 0xBC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x02, 0x18, 0x80, 0x02, 0xF2, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x00, 0xC8, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x80, 0x02, 0xF2, 0xC4, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_8002F37C_7365C
.word 0x00000000

glabel D_8002F380_73660
.word 0xFFFFFFFF, 0x00000000, 0x00000000, 0x8002EFC4, 0x00000001, 0x8002F12C, 0x00000001, 0x8002F1FC, 0x00000001, 0x8002F284, 0x00000001, 0x8002F354

glabel D_8002F3B0_73690
.word 0x8002F388, D_8002F37C_7365C

glabel D_8002F3B8_73698
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_8002F3C0_736A0
.float 0.0

glabel D_8002F3C4_736A4
.float 0.0, 0.0, 0.0

glabel D_8002F3D0_736B0
.float 0.0

glabel D_8002F3D4_736B4
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_8002F3DA_736BA
.short 0x0000, 0x0000, 0x0000, 0x8003, 0x0360, 0x8003, 0x035C, 0x8003, 0x0358, 0x8003, 0x0354, 0x8003, 0x0350, 0x8003, 0x034C, 0x8003, 0x0348, 0x8003, 0x0344, 0x8003, 0x0340

glabel D_8002F404_736E4
.word 0x00000000

glabel D_8002F408_736E8
.byte 0x00, 0x00

glabel D_8002F40A_736EA
.short 0x0000, 0x8003, 0x036C, 0x8002, 0xF404, 0x0200, 0x0000, 0x0000, 0x0000, 0x0000, 0x0008, 0x8002, 0xF3E0, 0x8003, 0x0364, 0x8002, 0xF408, 0x0000, 0x0000, 0xFFFF, 0xFF9C, 0x0000, 0x03E7, 0x0000, 0x0000

glabel D_8002F43C_7371C
.word 0x80030374, 0x00000002, 0x00000007, 0x8002F40C, 0x00000002, 0x00000002, 0x00000004, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x80030418, 0x80030410, 0x80030408, 0x80030400, 0x800303F8, 0x800303F0, 0x800303E8, 0x800303E0, 0x800303D8, 0x800303D0, 0x800303C8, 0x800303C0, 0x800303B8, 0x800303B0, 0x80030480, D_803B3E28, 0x02000000, 0x00000000, 0x0000000D, 0x8002F470, 0x80030478, D_803B3E34, 0x00000000, 0x00000001, 0x000003E7, 0x00000000, 0x80030470, D_803B3EA8, 0x00000000, 0x00000001, 0x00000064, 0x00000000, 0x80030468, D_803B3E20, 0x00000000, 0x00000001, 0x0000012C, 0x00000000, 0x80030460, D_803B3E5C, 0x00000000, 0x00000001, 0x00000064, 0x00000000, 0x80030458, 0x803B3E24, 0x00000000, 0xFFFFFFCE, 0x00000032, 0x00000000, 0x80030450, 0x803B3EB8, 0x00000000, 0xFFFFFFCE, 0x00000032, 0x00000000, 0x80030448, 0x803B3E60, 0x00000000, 0x00000000, 0x00000168, 0x00000000, 0x80030440, 0x803B3E4C, 0x00000000, 0x00000000, 0x00000014, 0x00000000, 0x80030438, 0x803B3EAC, 0x00000000, 0x00000000, 0x00000014, 0x00000000, 0x80030430, 0x803B3EB4, 0x00000000, 0x00000000, 0x00000168, 0x00000000, 0x80030428, 0x803B3E50, 0x00000000, 0x00000000, 0x00000168, 0x00000000, 0x80030420, 0x803B3E54, 0x00000000, 0x00000000, 0x00000168, 0x00000000

glabel D_8002F5E0_738C0
.word 0x80030488, 0x00000002, 0x00000004, 0x8002F4A8, 0x0000000D, 0x0000000D, 0x00000004, 0x00000005, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x80030540, func_8009E040, 0x00000007, 0x80030534, func_8009E040, 0x00000008, 0x80030528, func_8009E040, 0x00000009, 0x8003051C, func_8009E040, 0x0000000A, 0x80030510, func_8009E040, 0x0000000B, 0x80030504, func_8009E040, 0x0000000C, 0x800304F8, func_8009E040, 0x0000000D, 0x800304EC, func_8009E040, 0x0000000D, 0x800304E0, func_8009E040, 0x0000000E, 0x800304D4, func_8009E040, 0x0000000F, 0x800304C8, func_8009E040, 0x00000010

glabel D_8002F694_73974
.word 0x8003054C, 0x0000000E, 0x00000009, 0x8002F610, 0x0000000B, 0x0000000B, 0x0000000A, 0x00000000, 0x00000000

glabel D_8002F6B8_73998
.byte 0x01

glabel D_8002F6B9_73999
.byte 0x01

glabel D_8002F6BA_7399A
.byte 0x01

glabel D_8002F6BB_7399B
.byte 0x01, 0x00, 0x00, 0x00, 0x00

glabel D_8002F6C0_739A0
.byte 0x01

glabel D_8002F6C1_739A1
.byte 0x01

glabel D_8002F6C2_739A2
.byte 0x01

glabel D_8002F6C3_739A3
.byte 0x01

glabel D_8002F6C4_739A4
.byte 0x01

glabel D_8002F6C5_739A5
.byte 0x01

glabel D_8002F6C6_739A6
.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x05, 0xDC, 0x80, 0x03, 0x05, 0xD4, 0x80, 0x03, 0x05, 0xCC, 0x80, 0x03, 0x06, 0x54, 0x80, 0x03, 0x09, 0xF4, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x80, 0x02, 0xF6, 0xD0, 0x80, 0x03, 0x06, 0x44, 0x80, 0x03, 0x09, 0xF8, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x06, 0x34, 0x80, 0x03, 0x09, 0xFC, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x06, 0x24, 0x80, 0x03, 0x0A, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x06, 0x14, 0x80, 0x03, 0x0A, 0x04, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x06, 0x04, 0x80, 0x03, 0x0A, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x05, 0xF4, 0x80, 0x03, 0x0A, 0x0C, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60, 0x80, 0x03, 0x05, 0xE4, 0x80, 0x03, 0x0A, 0x10, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x0D, 0x3D, 0x60

glabel D_8002F79C_73A7C
.word 0x80030664, 0x0000000B, 0x0000000C, 0x8002F6DC, 0x00000008, 0x00000008, 0x0000000C, 0x00000006, 0x00000000, 0x00000000

glabel D_8002F7C4_73AA4
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x08, 0xAC, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x21, 0x80, 0x03, 0x08, 0x94, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x22, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x23, 0x80, 0x03, 0x08, 0x64, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x24, 0x80, 0x03, 0x08, 0x4C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x25, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x26, 0x80, 0x03, 0x08, 0x94, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x27, 0x80, 0x03, 0x08, 0x64, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x28, 0x80, 0x03, 0x08, 0x34, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x29, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x2A, 0x80, 0x03, 0x08, 0x94, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x2B, 0x80, 0x03, 0x08, 0x64, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x2C, 0x80, 0x03, 0x08, 0x1C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x2D, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x2E, 0x80, 0x03, 0x08, 0x94, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x2F, 0x80, 0x03, 0x08, 0x04, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x30, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x31, 0x80, 0x03, 0x08, 0x94, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x32, 0x80, 0x03, 0x07, 0xEC, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x33, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x34, 0x80, 0x03, 0x08, 0x94, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x35, 0x80, 0x03, 0x07, 0xD4, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x36, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x37, 0x80, 0x03, 0x08, 0x94, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x38, 0x80, 0x03, 0x07, 0xBC, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x39, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x3A, 0x80, 0x03, 0x08, 0x94, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x3B, 0x80, 0x03, 0x07, 0xA4, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x3C, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x3D, 0x80, 0x03, 0x08, 0x94, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x3E, 0x80, 0x03, 0x07, 0x8C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x40, 0x80, 0x03, 0x08, 0x94, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x41, 0x80, 0x03, 0x07, 0x74, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x42, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x43, 0x80, 0x03, 0x08, 0x94, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x44, 0x80, 0x03, 0x07, 0x5C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x45, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x46, 0x80, 0x03, 0x07, 0x44, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x47, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x48, 0x80, 0x03, 0x07, 0x2C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x49, 0x80, 0x03, 0x08, 0x7C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x4A, 0x80, 0x03, 0x07, 0x14, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x4B, 0x80, 0x03, 0x06, 0xFC, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x15, 0x80, 0x03, 0x06, 0xE4, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x16, 0x80, 0x03, 0x06, 0xCC, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x17, 0x80, 0x03, 0x06, 0xB4, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x05, 0x80, 0x03, 0x06, 0x9C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x10, 0x80, 0x03, 0x06, 0x84, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x4C, 0x80, 0x03, 0x06, 0x6C, 0x80, 0x09, 0xE0, 0x40, 0x00, 0x00, 0x00, 0x4D

glabel D_8002FA28_73D08
.word 0x800308C4, 0x00000009, 0x00000005, 0x8002F7D0, 0x00000032, 0x00000014, 0x00000015, 0x00000000, 0x00000000

glabel D_8002FA4C_73D2C
.byte 0x00, 0x00, 0x00, 0x00, 0x45, 0x46, 0x46, 0x45, 0x43, 0x54, 0x20, 0x20, 0x20, 0x20, 0x20, 0x54, 0x45, 0x53, 0x54, 0x00, 0x57, 0x49, 0x4E, 0x44, 0x4F, 0x57, 0x20, 0x20, 0x20, 0x20, 0x20, 0x54, 0x45, 0x53, 0x54, 0x00, 0x46, 0x4F, 0x4E, 0x54, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x43, 0x48, 0x45, 0x43, 0x4B, 0x00, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x54, 0x45, 0x53, 0x54, 0x00, 0x4F, 0x42, 0x4A, 0x45, 0x43, 0x54, 0x20, 0x20, 0x20, 0x20, 0x20, 0x54, 0x45, 0x53, 0x54, 0x00, 0x41, 0x55, 0x44, 0x49, 0x4F, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x54, 0x45, 0x53, 0x54, 0x00, 0x4D, 0x4F, 0x4E, 0x49, 0x54, 0x4F, 0x52, 0x20, 0x20, 0x20, 0x20, 0x54, 0x45, 0x53, 0x54, 0x00, 0x52, 0x4D, 0x42, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x54, 0x45, 0x53, 0x54, 0x00, 0x45, 0x45, 0x50, 0x2D, 0x52, 0x4F, 0x4D, 0x20, 0x20, 0x20, 0x20, 0x54, 0x45, 0x53, 0x54, 0x00, 0x43, 0x4F, 0x4E, 0x54, 0x52, 0x4F, 0x4C, 0x4C, 0x45, 0x52, 0x20, 0x54, 0x45, 0x53, 0x54, 0x00, 0x55, 0x54, 0x49, 0x4C, 0x49, 0x54, 0x59, 0x00

glabel jtbl_8002FAF8_73DD8
.word L80025C30_69F10, L80025C64_69F44, L80025C98_69F78, L80025D14_69FF4, L80025D34_6A014, 0

glabel D_8002FB10_73DF0
.ascii "-CONTROLLER  TEST-\0\0"

glabel D_8002FB24_73E04
.ascii "%dP CNT\0"

glabel D_8002FB2C_73E0C
.word 0x55503A25, 0x73000000

glabel D_8002FB34_73E14
.word 0x4F4E2000

glabel D_8002FB38_73E18
.word 0x4F464600

glabel D_8002FB3C_73E1C
.word 0x44573A25, 0x73000000

glabel D_8002FB44_73E24
.word 0x4C463A25, 0x73000000

glabel D_8002FB4C_73E2C
.word 0x52543A25, 0x73000000

glabel D_8002FB54_73E34
.word 0x41203A25, 0x73000000

glabel D_8002FB5C_73E3C
.word 0x42203A25, 0x73000000

glabel D_8002FB64_73E44
.word 0x43553A25, 0x73000000

glabel D_8002FB6C_73E4C
.word 0x43443A25, 0x73000000

glabel D_8002FB74_73E54
.word 0x434C3A25, 0x73000000

glabel D_8002FB7C_73E5C
.word 0x43523A25, 0x73000000

glabel D_8002FB84_73E64
.word 0x4C203A25, 0x73000000

glabel D_8002FB8C_73E6C
.word 0x52203A25, 0x73000000

glabel D_8002FB94_73E74
.word 0x5A203A25, 0x73000000

glabel D_8002FB9C_73E7C
.word 0x53543A25, 0x73000000

glabel D_8002FBA4_73E84
.word 0x53583A25, 0x33640000

glabel D_8002FBAC_73E8C
.word 0x53593A25, 0x33640000

glabel D_8002FBB4_73E94
.word 0x504B3A2D, 0x2D2D0000

glabel D_8002FBBC_73E9C
.ascii "-------\0"

glabel D_8002FBC4_73EA4
.ascii "EXIT TO [Z+B]\0\0\0"

glabel D_8002FBD4_73EB4
.ascii "-EEPROM TEST-\0\0\0"

glabel D_8002FBE4_73EC4
.ascii "ST:ZERO/L:LOAD/R:SAVE\0\0\0"

glabel D_8002FBFC_73EDC
.ascii "%04X:                |        |\0"

glabel D_8002FC1C_73EFC
.word 0x25303258, 0x00000000

glabel D_8002FC24_73F04
.word 0x25630000, 0x4652414D, 0x3A000000, 0x46524551, 0x3A000000, 0x434E5420, 0x3A000000, 0x00000000

glabel D_8002FC44_73F24
.ascii "-RMB TEST-\0\0"

glabel D_8002FC50_73F30
.word 0x41203A53, 0x54415254, 0x00000000

glabel D_8002FC5C_73F3C
.word 0x43443A53, 0x544F5020, 0x00000000

glabel D_8002FC68_73F48
.word 0x4F464600

glabel D_8002FC6C_73F4C
.word 0x4F4E2000

glabel D_8002FC70_73F50
.ascii "-MONITOR TEST-\0\0"

glabel D_8002FC80_73F60
.word 0x2D415544, 0x494F2054, 0x4553542D, 0x00000000

glabel D_8002FC90_73F70
.ascii "SNG_CH:%2d(%02d:%02d)\0\0\0"

glabel D_8002FCA8_73F88
.ascii "EFC_CH:%2d(%5d)\0"

glabel D_8002FCB8_73F98
.word 0x57414954, 0x20203A25, 0x73000000

glabel D_8002FCC4_73FA4
.word 0x4F4E2000

glabel D_8002FCC8_73FA8
.word 0x4F464600

glabel D_8002FCCC_73FAC
.ascii "SEQ CODE:%-3d[%-12s]\0\0\0\0"

glabel D_8002FCE4_73FC4
.ascii "    VOL :%-3X\0\0\0"

glabel D_8002FCF4_73FD4
.ascii "    PAN :%-3X\0\0\0"

glabel D_8002FD04_73FE4
.word 0x4C202020, 0x20202052, 0x00000000

glabel D_8002FD10_73FF0
.ascii "    TMP :%-3X\0\0\0"

glabel D_8002FD20_74000
.word 0x44202020, 0x20202055, 0x00000000

glabel D_8002FD2C_7400C
.word 0x20202020, 0x4D41524B, 0x3A253264, 0x00000000

glabel D_8002FD3C_7401C
.word 0x20202020, 0x46582020, 0x3A253264, 0x00000000

glabel D_8002FD4C_7402C
.word 0x20202020, 0x52455620, 0x3A253264, 0x00000000

glabel D_8002FD5C_7403C
.ascii "SND CODE:%-3d [%-8s]\0\0\0\0"

glabel D_8002FD74_74054
.ascii "SE  VOL :%-3X\0\0\0"

glabel D_8002FD84_74064
.ascii "VOI VOL :%-3X\0\0\0"

glabel D_8002FD94_74074
.word 0x534E4420, 0x4D564F4C, 0x3A252D34, 0x58000000, 0x00000000

glabel jtbl_8002FDA8_74088
.word L8002750C_6B7EC, L8002759C_6B87C, L800275F8_6B8D8, L80027650_6B930, L800276A8_6B988, L800276F0_6B9D0, L80027750_6BA30, L80027904_6BBE4, L800278B8_6BB98, L800277F8_6BAD8, L80027858_6BB38, L800277B4_6BA94

glabel D_8002FDD8_740B8
.ascii "-FONT CHECKER-\0\0"

glabel D_8002FDE8_740C8
.word 0x544F503A, 0x252D3364, 0x00000000

glabel D_8002FDF4_740D4
.word 0x414C503A, 0x252D3364, 0x00000000

glabel D_8002FE00_740E0
.word 0x4750583A, 0x252D3364, 0x00000000

glabel D_8002FE0C_740EC
.word 0x4750593A, 0x252D3364, 0x00000000

glabel D_8002FE18_740F8
.word 0x4D49583A, 0x25640000

glabel D_8002FE20_74100
.word 0x46524D3A, 0x25640000

glabel D_8002FE28_74108
.word 0x5744203A, 0x252D3264, 0x00000000

glabel D_8002FE34_74114
.word 0x2D48454C, 0x502D0000

glabel D_8002FE3C_7411C
.word 0x43553A41, 0x4C500000

glabel D_8002FE44_74124
.word 0x43523A47, 0x41500000

glabel D_8002FE4C_7412C
.word 0x43443A57, 0x44200000

glabel D_8002FE54_74134
.word 0x434C3A46, 0x524D0000

glabel D_8002FE5C_7413C
.word 0x52203A4D, 0x49580000, 0x00000000, 0x53434920, 0x00000000, 0x50434F4C, 0x00000000, 0x41545452, 0x00000000, 0x54595045, 0x00000000, 0x00000000, 0x42474200, 0x42474100, 0x53503200, 0x53503100, 0x53505200, 0x52434200, 0x52434100, 0x52454954, 0x5F592020, 0x3A000000, 0x52454954, 0x5F582020, 0x3A000000, 0x52454954, 0x20202020, 0x3A000000, 0x50414C20, 0x4E4F2020, 0x3A000000, 0x4A4F494E, 0x20202020, 0x3A000000, 0x43454E54, 0x52202020, 0x3A000000, 0x43555420, 0x4C494E45, 0x3A000000, 0x4F424A20, 0x54595045, 0x3A000000, 0x5A204255, 0x46203A00, 0x20584C55, 0x20203A00, 0x57494445, 0x4E203A00, 0x53485220, 0x32203A00, 0x53485220, 0x31203A00, 0x42494C45, 0x52503A00, 0x414E5449, 0x414C3A00, 0x434C414D, 0x50203A00, 0x414C5048, 0x413A0000, 0x424C5545, 0x203A0000, 0x47524545, 0x4E3A0000, 0x52454420, 0x203A0000, 0x45593A00, 0x53593A00, 0x45583A00, 0x53583A00

glabel D_8002FF78_74258
.word 0x4A4F494E, 0x00000000

glabel D_8002FF80_74260
.ascii "NAME :%-8s\0\0"

glabel D_8002FF8C_7426C
.ascii "DSP X:%6.2f\0"

glabel D_8002FF98_74278
.ascii "DSP Y:%6.2f\0"

glabel D_8002FFA4_74284
.ascii "ZOM X:%6.2f\0"

glabel D_8002FFB0_74290
.ascii "ZOM Y:%6.2f\0"

glabel D_8002FFBC_7429C
.ascii "W:%-3d H:%-3d C:%d\0\0"

glabel D_8002FFD0_742B0
.word 0x52434120, 0x48454C50, 0x00000000

glabel D_8002FFDC_742BC
.ascii "CU:    \0"

glabel D_8002FFE4_742C4
.ascii "CR:    \0"

glabel D_8002FFEC_742CC
.ascii "CD:    \0"

glabel D_8002FFF4_742D4
.ascii "CL:INV \0"

glabel D_8002FFFC_742DC
.word 0x52434220, 0x48454C50, 0x00000000

glabel D_80030008_742E8
.ascii "CU:ZOOM\0"

glabel D_80030010_742F0
.word 0x53505220, 0x48454C50, 0x00000000

glabel D_8003001C_742FC
.ascii "CD:ROTA\0"

glabel D_80030024_74304
.ascii "CL:    \0"

glabel D_8003002C_7430C
.word 0x53503120, 0x48454C50, 0x00000000

glabel D_80030038_74318
.word 0x53503220, 0x48454C50, 0x00000000

glabel D_80030044_74324
.word 0x42474120, 0x48454C50, 0x00000000

glabel D_80030050_74330
.ascii "CR:SCRL\0"

glabel D_80030058_74338
.word 0x42474220, 0x48454C50, 0x00000000, 0x00000000

glabel jtbl_80030068_74348
.word L80029E38_6E118, L80029ED8_6E1B8, L8002A0A4_6E384, L8002A0A4_6E384, L8002A0A4_6E384, L8002A170_6E450, L8002A224_6E504, 0

glabel jtbl_80030088_74368
.word L8002A5DC_6E8BC, L8002A63C_6E91C, L8002A69C_6E97C, L8002A73C_6EA1C, L8002A7DC_6EABC, L8002A87C_6EB5C, L8002A89C_6EB7C

glabel D_800300A4_74384
.word 0x2D4F424A, 0x45435420, 0x54455354, 0x2D000000, 0x00000000, 0x4D5F524F, 0x54000000, 0x4D5F504F, 0x53000000, 0x4C494748, 0x54000000, 0x4C4F4B41, 0x54000000, 0x43414D45, 0x52000000, 0x4C495400, 0x434F4C00, 0x41545200, 0x4D444C00, 0x4D000000, 0x434C5000, 0x4D525200, 0x52415000, 0x56434C00, 0x50414C00, 0x56434C20, 0x4E4F203A, 0x00000000, 0x45444954, 0x2020203A, 0x00000000, 0x4E4F4445, 0x2020203A, 0x00000000, 0x43454E54, 0x4552203A, 0x00000000, 0x414E4D20, 0x5354503A, 0x00000000, 0x414E4D20, 0x5350443A, 0x00000000, 0x414E4D20, 0x4E4F203A, 0x00000000, 0x43432020, 0x4D4F443A, 0x00000000, 0x54455820, 0x4D4F443A, 0x00000000, 0x54455820, 0x4453503A, 0x00000000, 0x47414D4D, 0x4120203A, 0x00000000, 0x4D4F4445, 0x4C000000, 0x43554C4C, 0x4F464620, 0x203A0000, 0x584C5520, 0x20202020, 0x203A0000, 0x42494C42, 0x4F415244, 0x203A0000, 0x56545843, 0x4F4C2020, 0x203A0000, 0x4C494748, 0x54202020, 0x203A0000, 0x414E5449, 0x414C4941, 0x533A0000, 0x42494C45, 0x52502020, 0x203A0000, 0x41545452, 0x00000000, 0x414C5048, 0x413A0000, 0x424C5545, 0x203A0000, 0x47524545, 0x4E3A0000, 0x52454420, 0x203A0000, 0x434F4C4F, 0x52000000, 0x44454620, 0x423A0000, 0x44454620, 0x473A0000, 0x44454620, 0x523A0000, 0x414E4220, 0x423A0000, 0x414E4220, 0x473A0000, 0x414E4220, 0x523A0000

glabel D_80030248_74528
.word 0x2D4D4F44, 0x454C2054, 0x4553542D, 0x00000000

glabel D_80030258_74538
.ascii "NAM:%-8s.%-8s\0\0\0"

glabel D_80030268_74548
.word 0x4D4F443A, 0x00000000

glabel D_80030270_74550
.ascii "P_X:%-3d P_Y:%-3d P_Z:%-3d          \0\0\0\0"

glabel D_80030298_74578
.ascii "R_X:%-3d R_Y:%-3d R_Z:%-3d SCL:%4.3f\0\0\0\0"

glabel jtbl_800302C0_745A0
.word L8002B0C4_6F3A4, L8002B0F0_6F3D0, L8002B10C_6F3EC, L8002B140_6F420, L8002B158_6F438, 0

glabel jtbl_800302D8_745B8
.word L8002B5B0_6F890, L8002B5C0_6F8A0, L8002B5D0_6F8B0, L8002B5E0_6F8C0, L8002B6AC_6F98C

glabel D_800302EC_745CC
.word 0x4D544E3A, 0x25730000

glabel D_800302F4_745D4
.ascii "KEY:%d.%d(%d)    \0\0\0"

glabel D_80030308_745E8
.ascii "-PALETTE EDIT-\0\0"

glabel D_80030318_745F8
.ascii "-VTXCOL EDIT-\0\0\0"

glabel D_80030328_74608
.word 0x4350593A, 0x00000000

glabel D_80030330_74610
.word 0x2D2D2D3A, 0x00000000

glabel D_80030338_74618
.word 0x2533643A, 0x00000000, 0x52594F00, 0x53594E00, 0x52415400, 0x504F5700, 0x4C494600, 0x434F4D00, 0x434D4400, 0x41544600, 0x41525700, 0x4E554D3A, 0x00000000, 0x57494E3A, 0x00000000, 0x00000000

glabel D_80030378_74658
.word 0x4E4F575F, 0x4C49463A, 0x252D3364, 0x00000000

glabel jtbl_80030388_74668
.word L8002D3F8_716D8, L8002D42C_7170C, L8002D4A0_71780, L8002D72C_71A0C, L8002D524_71804, L8002D5B8_71898, L8002D5E0_718C0, L8002D608_718E8, L8002D67C_7195C, 0, 0x41544620, 0x20000000, 0x53414320, 0x20000000, 0x424C4420, 0x20000000, 0x424C5420, 0x20000000, 0x53544E20, 0x20000000, 0x424D4220, 0x20000000, 0x534D4B30, 0x31000000, 0x534D4B30, 0x30000000, 0x53484B30, 0x31000000, 0x53484B30, 0x30000000, 0x53504C30, 0x33000000, 0x53504C30, 0x32000000, 0x53504C30, 0x31000000, 0x53504C30, 0x30000000, 0x5941573A, 0, 0x5049543A, 0, 0x524F4C3A, 0, 0x4554433A, 0, 0x444C593A, 0, 0x524E473A, 0, 0x5941433A, 0, 0x5841433A, 0, 0x5350443A, 0, 0x53434C3A, 0, 0x54494D3A, 0, 0x4E554D3A, 0, 0x4546433A, 0, 0, 0

glabel jtbl_80030490_74770
.word L8002DA58_71D38, L8002DA58_71D38, L8002DA58_71D38, L8002DA58_71D38, L8002DAA4_71D84, L8002DAA4_71D84, L8002DAB4_71D94, L8002DAB4_71D94, L8002DAC4_71DA4, L8002DAD4_71DB4, L8002DAE4_71DC4, L8002DAF4_71DD4, L8002DB50_71E30, L8002DB60_71E40, 0x20202055, 0x54494C20, 0x20200000, 0x20204D41, 0x53544552, 0x20200000, 0x2020434F, 0x4E464947, 0x20200000, 0x4C4F4144, 0x20204741, 0x4D450000, 0x204E4557, 0x20204741, 0x4D450000, 0x20534149, 0x20205445, 0x53540000, 0x20535547, 0x20205445, 0x53540000, 0x20484153, 0x20205445, 0x53540000, 0x204E4133, 0x20205445, 0x53540000, 0x204E4132, 0x20205445, 0x53540000, 0x204E4147, 0x20205445, 0x53540000, 0x4D41494E, 0

glabel D_80030554_74834
.word 0x42414E44, 0x41490000

glabel D_8003055C_7483C
.word 0x44454D4F, 0x204C4F4F, 0x50000000

glabel D_80030568_74848
.ascii "EVANGELION\0\0"

glabel D_80030574_74854
.ascii "MISSION START DEMO\0\0"

glabel D_80030588_74868
.ascii "MISSION CLEAR DEMO\0\0"

glabel D_8003059C_7487C
.word 0x47414D45, 0x00000000

glabel D_800305A4_74884
.word 0x4D494E49, 0x2047414D, 0x45000000

glabel D_800305B0_74890
.word 0x41545441, 0x434B0000

glabel D_800305B8_74898
.word 0x47414D45, 0x204F5645, 0x52000000

glabel D_800305C4_748A4
.ascii "ENDING\0\0HARD  \0\0NORMAL\0\0EASY  \0\0SE  USE NO :\0\0\0\0BGM USE NO :\0\0\0\0CLR MSN NO :\0\0\0\0HV COMP FG :\0\0\0\0HRD CLR FG :\0\0\0\0NRM CLR FG :\0\0\0\0ESY CLR FG :\0\0\0\0GAME LEVEL :\0\0\0\0CONFIG\0\0     BACKUP EDIT     \0\0\0  HIGHTLIGHT VIEWER  \0\0\0      UTILITY        \0\0\0      GAME OVER      \0\0\0   ENDING(HARD)      \0\0\0   ENDING(NORMAL)    \0\0\0   ENDING(EASY)      \0\0\0 VS            GAME  \0\0\0M14(RYOUSAN B) DEMO A\0\0\0M13(RYOUSAN A) DEMO A\0\0\0M12(UNA)       DEMO A\0\0\0M11(TABLIS)    DEMO A\0\0\0M10(ARAEL)     DEMO A\0\0\0M09(ZERUEL)    DEMO A\0\0\0M08(BARDIEL)   DEMO A\0\0\0M07(SAHAQUIEL) DEMO A\0\0\0M06(SANDALPHON)DEMO A\0\0\0M05(ISRAFEL)   DEMO A\0\0\0M04(JETALONE)  DEMO A\0\0\0M03(RAMIEL)    DEMO A\0\0\0M02(SHAMSHEL)  DEMO A\0\0\0               DEMO C\0\0\0               GAME  \0\0\0               DEMO B\0\0\0M01(SACHIEL)   DEMO A\0\0\0DEBUG MENU\0\0"