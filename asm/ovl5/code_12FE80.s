.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003E080_12FE80
/* 12FE80 8003E080 3C028005 */  lui        $v0, %hi(D_80051EE0)
/* 12FE84 8003E084 90421EE0 */  lbu        $v0, %lo(D_80051EE0)($v0)
/* 12FE88 8003E088 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12FE8C 8003E08C AFB00018 */  sw         $s0, 0x18($sp)
/* 12FE90 8003E090 00808021 */  addu       $s0, $a0, $zero
/* 12FE94 8003E094 1040004B */  beqz       $v0, .L8003E1C4
/* 12FE98 8003E098 AFBF001C */   sw        $ra, 0x1c($sp)
/* 12FE9C 8003E09C 0C02A5D2 */  jal        func_800A9748
/* 12FEA0 8003E0A0 24040001 */   addiu     $a0, $zero, 1
/* 12FEA4 8003E0A4 0C02725C */  jal        func_8009C970
/* 12FEA8 8003E0A8 00000000 */   nop
/* 12FEAC 8003E0AC 3C014000 */  lui        $at, 0x4000
/* 12FEB0 8003E0B0 44810000 */  mtc1       $at, $f0
/* 12FEB4 8003E0B4 3C014120 */  lui        $at, 0x4120
/* 12FEB8 8003E0B8 44811000 */  mtc1       $at, $f2
/* 12FEBC 8003E0BC 3C01C0C0 */  lui        $at, 0xc0c0
/* 12FEC0 8003E0C0 44812000 */  mtc1       $at, $f4
/* 12FEC4 8003E0C4 3C0143B3 */  lui        $at, 0x43b3
/* 12FEC8 8003E0C8 44813000 */  mtc1       $at, $f6
/* 12FECC 8003E0CC 3C01C260 */  lui        $at, 0xc260
/* 12FED0 8003E0D0 44814000 */  mtc1       $at, $f8
/* 12FED4 8003E0D4 24040053 */  addiu      $a0, $zero, 0x53
/* 12FED8 8003E0D8 24050048 */  addiu      $a1, $zero, 0x48
/* 12FEDC 8003E0DC 240200E6 */  addiu      $v0, $zero, 0xe6
/* 12FEE0 8003E0E0 AFA20010 */  sw         $v0, 0x10($sp)
/* 12FEE4 8003E0E4 240200DC */  addiu      $v0, $zero, 0xdc
/* 12FEE8 8003E0E8 24060053 */  addiu      $a2, $zero, 0x53
/* 12FEEC 8003E0EC 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12FEF0 8003E0F0 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 12FEF4 8003E0F4 3C018015 */  lui        $at, %hi(D_8014A084)
/* 12FEF8 8003E0F8 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 12FEFC 8003E0FC AFA20014 */  sw         $v0, 0x14($sp)
/* 12FF00 8003E100 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12FF04 8003E104 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 12FF08 8003E108 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12FF0C 8003E10C E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 12FF10 8003E110 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12FF14 8003E114 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* 12FF18 8003E118 3C018015 */  lui        $at, %hi(D_8014A080)
/* 12FF1C 8003E11C E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* 12FF20 8003E120 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12FF24 8003E124 E428A088 */  swc1       $f8, %lo(D_8014A088)($at)
/* 12FF28 8003E128 0C027101 */  jal        func_8009C404
/* 12FF2C 8003E12C 240700FF */   addiu     $a3, $zero, 0xff
/* 12FF30 8003E130 3C014170 */  lui        $at, 0x4170
/* 12FF34 8003E134 44810000 */  mtc1       $at, $f0
/* 12FF38 8003E138 3C014180 */  lui        $at, 0x4180
/* 12FF3C 8003E13C 44811000 */  mtc1       $at, $f2
/* 12FF40 8003E140 3C01C1C0 */  lui        $at, 0xc1c0
/* 12FF44 8003E144 44812000 */  mtc1       $at, $f4
/* 12FF48 8003E148 3C014130 */  lui        $at, 0x4130
/* 12FF4C 8003E14C 44813000 */  mtc1       $at, $f6
/* 12FF50 8003E150 3C0140A0 */  lui        $at, 0x40a0
/* 12FF54 8003E154 44814000 */  mtc1       $at, $f8
/* 12FF58 8003E158 3C01C190 */  lui        $at, 0xc190
/* 12FF5C 8003E15C 44815000 */  mtc1       $at, $f10
/* 12FF60 8003E160 3C018017 */  lui        $at, %hi(D_8016E568)
/* 12FF64 8003E164 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 12FF68 8003E168 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 12FF6C 8003E16C E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 12FF70 8003E170 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 12FF74 8003E174 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 12FF78 8003E178 3C018015 */  lui        $at, %hi(D_8014A054)
/* 12FF7C 8003E17C E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 12FF80 8003E180 3C018015 */  lui        $at, %hi(D_8014A050)
/* 12FF84 8003E184 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 12FF88 8003E188 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 12FF8C 8003E18C 0C00F894 */  jal        func_8003E250_130050
/* 12FF90 8003E190 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 12FF94 8003E194 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12FF98 8003E198 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 12FF9C 8003E19C 3C018006 */  lui        $at, %hi(D_8005DE60)
/* 12FFA0 8003E1A0 AC22DE60 */  sw         $v0, %lo(D_8005DE60)($at)
/* 12FFA4 8003E1A4 0C00A157 */  jal        func_8002855C_11A35C
/* 12FFA8 8003E1A8 24050007 */   addiu     $a1, $zero, 7
/* 12FFAC 8003E1AC 3C014200 */  lui        $at, 0x4200
/* 12FFB0 8003E1B0 44810000 */  mtc1       $at, $f0
/* 12FFB4 8003E1B4 3C018005 */  lui        $at, %hi(D_80051EE0)
/* 12FFB8 8003E1B8 A0201EE0 */  sb         $zero, %lo(D_80051EE0)($at)
/* 12FFBC 8003E1BC 3C018008 */  lui        $at, %hi(D_80080758)
/* 12FFC0 8003E1C0 E4200758 */  swc1       $f0, %lo(D_80080758)($at)
.L8003E1C4:
/* 12FFC4 8003E1C4 16000003 */  bnez       $s0, .L8003E1D4
/* 12FFC8 8003E1C8 24020001 */   addiu     $v0, $zero, 1
/* 12FFCC 8003E1CC 3C018005 */  lui        $at, %hi(D_80051EE4)
/* 12FFD0 8003E1D0 AC221EE4 */  sw         $v0, %lo(D_80051EE4)($at)
.L8003E1D4:
/* 12FFD4 8003E1D4 3C028005 */  lui        $v0, %hi(D_80051EE4)
/* 12FFD8 8003E1D8 8C421EE4 */  lw         $v0, %lo(D_80051EE4)($v0)
/* 12FFDC 8003E1DC 1440000C */  bnez       $v0, .L8003E210
/* 12FFE0 8003E1E0 00000000 */   nop
/* 12FFE4 8003E1E4 3C048006 */  lui        $a0, %hi(D_8005DE60)
/* 12FFE8 8003E1E8 0C00F8B3 */  jal        func_8003E2CC_1300CC
/* 12FFEC 8003E1EC 8C84DE60 */   lw        $a0, %lo(D_8005DE60)($a0)
/* 12FFF0 8003E1F0 3C018005 */  lui        $at, %hi(D_80051EE4)
/* 12FFF4 8003E1F4 0C009767 */  jal        func_80025D9C_117B9C
/* 12FFF8 8003E1F8 AC221EE4 */   sw        $v0, %lo(D_80051EE4)($at)
/* 12FFFC 8003E1FC 3C048008 */  lui        $a0, %hi(D_80080750)
/* 130000 8003E200 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 130004 8003E204 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 130008 8003E208 0800F890 */  j          .L8003E240
/* 13000C 8003E20C 00001021 */   addu      $v0, $zero, $zero
.L8003E210:
/* 130010 8003E210 3C048008 */  lui        $a0, %hi(D_80080750)
/* 130014 8003E214 0C00A16B */  jal        func_800285AC_11A3AC
/* 130018 8003E218 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 13001C 8003E21C 3C048006 */  lui        $a0, %hi(D_8005DE60)
/* 130020 8003E220 0C00F8C0 */  jal        func_8003E300_130100
/* 130024 8003E224 2484DE60 */   addiu     $a0, $a0, %lo(D_8005DE60)
/* 130028 8003E228 24020001 */  addiu      $v0, $zero, 1
/* 13002C 8003E22C 24030001 */  addiu      $v1, $zero, 1
/* 130030 8003E230 3C018005 */  lui        $at, %hi(D_80051EE4)
/* 130034 8003E234 AC201EE4 */  sw         $zero, %lo(D_80051EE4)($at)
/* 130038 8003E238 3C018005 */  lui        $at, %hi(D_80051EE0)
/* 13003C 8003E23C A0231EE0 */  sb         $v1, %lo(D_80051EE0)($at)
.L8003E240:
/* 130040 8003E240 8FBF001C */  lw         $ra, 0x1c($sp)
/* 130044 8003E244 8FB00018 */  lw         $s0, 0x18($sp)
/* 130048 8003E248 03E00008 */  jr         $ra
/* 13004C 8003E24C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003E250_130050
/* 130050 8003E250 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 130054 8003E254 24040004 */  addiu      $a0, $zero, 4
/* 130058 8003E258 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13005C 8003E25C 0C032663 */  jal        func_800C998C
/* 130060 8003E260 AFB00010 */   sw        $s0, 0x10($sp)
/* 130064 8003E264 00408021 */  addu       $s0, $v0, $zero
/* 130068 8003E268 02002021 */  addu       $a0, $s0, $zero
/* 13006C 8003E26C 0C030134 */  jal        bzero
/* 130070 8003E270 24050004 */   addiu     $a1, $zero, 4
/* 130074 8003E274 0C00AEC4 */  jal        func_8002BB10_11D910
/* 130078 8003E278 00000000 */   nop
/* 13007C 8003E27C 3C058006 */  lui        $a1, %hi(D_8005E1DA)
/* 130080 8003E280 94A5E1DA */  lhu        $a1, %lo(D_8005E1DA)($a1)
/* 130084 8003E284 3C01C2B4 */  lui        $at, 0xc2b4
/* 130088 8003E288 44810000 */  mtc1       $at, $f0
/* 13008C 8003E28C 00401821 */  addu       $v1, $v0, $zero
/* 130090 8003E290 02001021 */  addu       $v0, $s0, $zero
/* 130094 8003E294 24040007 */  addiu      $a0, $zero, 7
/* 130098 8003E298 AC430000 */  sw         $v1, ($v0)
/* 13009C 8003E29C AC64001C */  sw         $a0, 0x1c($v1)
/* 1300A0 8003E2A0 24040052 */  addiu      $a0, $zero, 0x52
/* 1300A4 8003E2A4 AC640008 */  sw         $a0, 8($v1)
/* 1300A8 8003E2A8 24040001 */  addiu      $a0, $zero, 1
/* 1300AC 8003E2AC AC600044 */  sw         $zero, 0x44($v1)
/* 1300B0 8003E2B0 AC64000C */  sw         $a0, 0xc($v1)
/* 1300B4 8003E2B4 AC650004 */  sw         $a1, 4($v1)
/* 1300B8 8003E2B8 E4600054 */  swc1       $f0, 0x54($v1)
/* 1300BC 8003E2BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1300C0 8003E2C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1300C4 8003E2C4 03E00008 */  jr         $ra
/* 1300C8 8003E2C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003E2CC_1300CC
/* 1300CC 8003E2CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1300D0 8003E2D0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1300D4 8003E2D4 00808021 */  addu       $s0, $a0, $zero
/* 1300D8 8003E2D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1300DC 8003E2DC 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 1300E0 8003E2E0 8E040000 */   lw        $a0, ($s0)
/* 1300E4 8003E2E4 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 1300E8 8003E2E8 8E040000 */   lw        $a0, ($s0)
/* 1300EC 8003E2EC 00001021 */  addu       $v0, $zero, $zero
/* 1300F0 8003E2F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1300F4 8003E2F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1300F8 8003E2F8 03E00008 */  jr         $ra
/* 1300FC 8003E2FC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003E300_130100
/* 130100 8003E300 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 130104 8003E304 AFB00010 */  sw         $s0, 0x10($sp)
/* 130108 8003E308 00808021 */  addu       $s0, $a0, $zero
/* 13010C 8003E30C 12000009 */  beqz       $s0, .L8003E334
/* 130110 8003E310 AFBF0014 */   sw        $ra, 0x14($sp)
/* 130114 8003E314 8E040000 */  lw         $a0, ($s0)
/* 130118 8003E318 10800006 */  beqz       $a0, .L8003E334
/* 13011C 8003E31C 00000000 */   nop
/* 130120 8003E320 0C00AF04 */  jal        func_8002BC10_11DA10
/* 130124 8003E324 00000000 */   nop
/* 130128 8003E328 0C0326A1 */  jal        func_800C9A84
/* 13012C 8003E32C 8E040000 */   lw        $a0, ($s0)
/* 130130 8003E330 AE000000 */  sw         $zero, ($s0)
.L8003E334:
/* 130134 8003E334 8FBF0014 */  lw         $ra, 0x14($sp)
/* 130138 8003E338 8FB00010 */  lw         $s0, 0x10($sp)
/* 13013C 8003E33C 03E00008 */  jr         $ra
/* 130140 8003E340 27BD0018 */   addiu     $sp, $sp, 0x18
/* 130144 8003E344 00000000 */  nop
/* 130148 8003E348 00000000 */  nop
/* 13014C 8003E34C 00000000 */  nop