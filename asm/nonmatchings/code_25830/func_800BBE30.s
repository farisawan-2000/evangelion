.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BBE30
/* 26A30 800BBE30 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 26A34 800BBE34 8FAB0078 */  lw         $t3, 0x78($sp)
/* 26A38 800BBE38 AFB20048 */  sw         $s2, 0x48($sp)
/* 26A3C 800BBE3C 00809021 */  addu       $s2, $a0, $zero
/* 26A40 800BBE40 AFBF0064 */  sw         $ra, 0x64($sp)
/* 26A44 800BBE44 AFBE0060 */  sw         $fp, 0x60($sp)
/* 26A48 800BBE48 AFB7005C */  sw         $s7, 0x5c($sp)
/* 26A4C 800BBE4C AFB60058 */  sw         $s6, 0x58($sp)
/* 26A50 800BBE50 AFB50054 */  sw         $s5, 0x54($sp)
/* 26A54 800BBE54 AFB40050 */  sw         $s4, 0x50($sp)
/* 26A58 800BBE58 AFB3004C */  sw         $s3, 0x4c($sp)
/* 26A5C 800BBE5C AFB10044 */  sw         $s1, 0x44($sp)
/* 26A60 800BBE60 AFB00040 */  sw         $s0, 0x40($sp)
/* 26A64 800BBE64 8E440000 */  lw         $a0, ($s2)
/* 26A68 800BBE68 00C0A021 */  addu       $s4, $a2, $zero
/* 26A6C 800BBE6C A7A0001E */  sh         $zero, 0x1e($sp)
/* 26A70 800BBE70 AFAB0010 */  sw         $t3, 0x10($sp)
/* 26A74 800BBE74 8C820004 */  lw         $v0, 4($a0)
/* 26A78 800BBE78 0000B021 */  addu       $s6, $zero, $zero
/* 26A7C 800BBE7C 0040F809 */  jalr       $v0
/* 26A80 800BBE80 24150140 */   addiu     $s5, $zero, 0x140
/* 26A84 800BBE84 00405821 */  addu       $t3, $v0, $zero
/* 26A88 800BBE88 01603821 */  addu       $a3, $t3, $zero
/* 26A8C 800BBE8C 256B0008 */  addiu      $t3, $t3, 8
/* 26A90 800BBE90 01604021 */  addu       $t0, $t3, $zero
/* 26A94 800BBE94 256B0008 */  addiu      $t3, $t3, 8
/* 26A98 800BBE98 3C0A0C00 */  lui        $t2, 0xc00
/* 26A9C 800BBE9C 354ADA83 */  ori        $t2, $t2, 0xda83
/* 26AA0 800BBEA0 3C0906C0 */  lui        $t1, 0x6c0
/* 26AA4 800BBEA4 352906C0 */  ori        $t1, $t1, 0x6c0
/* 26AA8 800BBEA8 01601821 */  addu       $v1, $t3, $zero
/* 26AAC 800BBEAC 256B0008 */  addiu      $t3, $t3, 8
/* 26AB0 800BBEB0 3C060C00 */  lui        $a2, 0xc00
/* 26AB4 800BBEB4 34C65A82 */  ori        $a2, $a2, 0x5a82
/* 26AB8 800BBEB8 3C050800 */  lui        $a1, 0x800
/* 26ABC 800BBEBC 34A506C0 */  ori        $a1, $a1, 0x6c0
/* 26AC0 800BBEC0 02402021 */  addu       $a0, $s2, $zero
/* 26AC4 800BBEC4 3C020800 */  lui        $v0, 0x800
/* 26AC8 800BBEC8 00148040 */  sll        $s0, $s4, 1
/* 26ACC 800BBECC ACE20000 */  sw         $v0, ($a3)
/* 26AD0 800BBED0 3202FFFF */  andi       $v0, $s0, 0xffff
/* 26AD4 800BBED4 ACE20004 */  sw         $v0, 4($a3)
/* 26AD8 800BBED8 AD0A0000 */  sw         $t2, ($t0)
/* 26ADC 800BBEDC AD090004 */  sw         $t1, 4($t0)
/* 26AE0 800BBEE0 AC660000 */  sw         $a2, ($v1)
/* 26AE4 800BBEE4 AC650004 */  sw         $a1, 4($v1)
/* 26AE8 800BBEE8 AFAB0010 */  sw         $t3, 0x10($sp)
/* 26AEC 800BBEEC 8E450018 */  lw         $a1, 0x18($s2)
/* 26AF0 800BBEF0 240606C0 */  addiu      $a2, $zero, 0x6c0
/* 26AF4 800BBEF4 0C02F1CC */  jal        func_800BC730
/* 26AF8 800BBEF8 02803821 */   addu      $a3, $s4, $zero
/* 26AFC 800BBEFC 00405821 */  addu       $t3, $v0, $zero
/* 26B00 800BBF00 3C030200 */  lui        $v1, 0x200
/* 26B04 800BBF04 34630800 */  ori        $v1, $v1, 0x800
/* 26B08 800BBF08 AC430000 */  sw         $v1, ($v0)
/* 26B0C 800BBF0C AC500004 */  sw         $s0, 4($v0)
/* 26B10 800BBF10 92420024 */  lbu        $v0, 0x24($s2)
/* 26B14 800BBF14 0000B821 */  addu       $s7, $zero, $zero
/* 26B18 800BBF18 1840007E */  blez       $v0, .L800BC114
/* 26B1C 800BBF1C 256B0008 */   addiu     $t3, $t3, 8
.L800BBF20:
/* 26B20 800BBF20 97AC001E */  lhu        $t4, 0x1e($sp)
/* 26B24 800BBF24 8E440020 */  lw         $a0, 0x20($s2)
/* 26B28 800BBF28 000C1C00 */  sll        $v1, $t4, 0x10
/* 26B2C 800BBF2C 00031C03 */  sra        $v1, $v1, 0x10
/* 26B30 800BBF30 00031080 */  sll        $v0, $v1, 2
/* 26B34 800BBF34 00431021 */  addu       $v0, $v0, $v1
/* 26B38 800BBF38 000210C0 */  sll        $v0, $v0, 3
/* 26B3C 800BBF3C 00828821 */  addu       $s1, $a0, $v0
/* 26B40 800BBF40 8E220000 */  lw         $v0, ($s1)
/* 26B44 800BBF44 8E440018 */  lw         $a0, 0x18($s2)
/* 26B48 800BBF48 8E230004 */  lw         $v1, 4($s1)
/* 26B4C 800BBF4C 00021040 */  sll        $v0, $v0, 1
/* 26B50 800BBF50 00829823 */  subu       $s3, $a0, $v0
/* 26B54 800BBF54 00031840 */  sll        $v1, $v1, 1
/* 26B58 800BBF58 16770005 */  bne        $s3, $s7, .L800BBF70
/* 26B5C 800BBF5C 0083F023 */   subu      $fp, $a0, $v1
/* 26B60 800BBF60 02A01021 */  addu       $v0, $s5, $zero
/* 26B64 800BBF64 02C0A821 */  addu       $s5, $s6, $zero
/* 26B68 800BBF68 0802EFE4 */  j          .L800BBF90
/* 26B6C 800BBF6C 0040B021 */   addu      $s6, $v0, $zero
.L800BBF70:
/* 26B70 800BBF70 AFAB0010 */  sw         $t3, 0x10($sp)
/* 26B74 800BBF74 02402021 */  addu       $a0, $s2, $zero
/* 26B78 800BBF78 02602821 */  addu       $a1, $s3, $zero
/* 26B7C 800BBF7C 00163400 */  sll        $a2, $s6, 0x10
/* 26B80 800BBF80 00063403 */  sra        $a2, $a2, 0x10
/* 26B84 800BBF84 0C02F170 */  jal        func_800BC5C0
/* 26B88 800BBF88 02803821 */   addu      $a3, $s4, $zero
/* 26B8C 800BBF8C 00405821 */  addu       $t3, $v0, $zero
.L800BBF90:
/* 26B90 800BBF90 02402021 */  addu       $a0, $s2, $zero
/* 26B94 800BBF94 02202821 */  addu       $a1, $s1, $zero
/* 26B98 800BBF98 00151400 */  sll        $v0, $s5, 0x10
/* 26B9C 800BBF9C 00028403 */  sra        $s0, $v0, 0x10
/* 26BA0 800BBFA0 02003021 */  addu       $a2, $s0, $zero
/* 26BA4 800BBFA4 02803821 */  addu       $a3, $s4, $zero
/* 26BA8 800BBFA8 0C02F0EA */  jal        func_800BC3A8
/* 26BAC 800BBFAC AFAB0010 */   sw        $t3, 0x10($sp)
/* 26BB0 800BBFB0 86230008 */  lh         $v1, 8($s1)
/* 26BB4 800BBFB4 00405821 */  addu       $t3, $v0, $zero
/* 26BB8 800BBFB8 10600016 */  beqz       $v1, .L800BC014
/* 26BBC 800BBFBC 00601021 */   addu      $v0, $v1, $zero
/* 26BC0 800BBFC0 01602021 */  addu       $a0, $t3, $zero
/* 26BC4 800BBFC4 3042FFFF */  andi       $v0, $v0, 0xffff
/* 26BC8 800BBFC8 3C0C0C00 */  lui        $t4, 0xc00
/* 26BCC 800BBFCC 004C1025 */  or         $v0, $v0, $t4
/* 26BD0 800BBFD0 AC820000 */  sw         $v0, ($a0)
/* 26BD4 800BBFD4 00161400 */  sll        $v0, $s6, 0x10
/* 26BD8 800BBFD8 3203FFFF */  andi       $v1, $s0, 0xffff
/* 26BDC 800BBFDC 00431025 */  or         $v0, $v0, $v1
/* 26BE0 800BBFE0 AC820004 */  sw         $v0, 4($a0)
/* 26BE4 800BBFE4 8E220024 */  lw         $v0, 0x24($s1)
/* 26BE8 800BBFE8 1440000A */  bnez       $v0, .L800BC014
/* 26BEC 800BBFEC 256B0008 */   addiu     $t3, $t3, 8
/* 26BF0 800BBFF0 8E220020 */  lw         $v0, 0x20($s1)
/* 26BF4 800BBFF4 14400007 */  bnez       $v0, .L800BC014
/* 26BF8 800BBFF8 02402021 */   addu      $a0, $s2, $zero
/* 26BFC 800BBFFC AFAB0010 */  sw         $t3, 0x10($sp)
/* 26C00 800BC000 03C02821 */  addu       $a1, $fp, $zero
/* 26C04 800BC004 02003021 */  addu       $a2, $s0, $zero
/* 26C08 800BC008 0C02F1CC */  jal        func_800BC730
/* 26C0C 800BC00C 02803821 */   addu      $a3, $s4, $zero
/* 26C10 800BC010 00405821 */  addu       $t3, $v0, $zero
.L800BC014:
/* 26C14 800BC014 8622000A */  lh         $v0, 0xa($s1)
/* 26C18 800BC018 10400013 */  beqz       $v0, .L800BC068
/* 26C1C 800BC01C 00401821 */   addu      $v1, $v0, $zero
/* 26C20 800BC020 01604021 */  addu       $t0, $t3, $zero
/* 26C24 800BC024 256B0008 */  addiu      $t3, $t3, 8
/* 26C28 800BC028 02402021 */  addu       $a0, $s2, $zero
/* 26C2C 800BC02C 02602821 */  addu       $a1, $s3, $zero
/* 26C30 800BC030 00163400 */  sll        $a2, $s6, 0x10
/* 26C34 800BC034 00063403 */  sra        $a2, $a2, 0x10
/* 26C38 800BC038 02803821 */  addu       $a3, $s4, $zero
/* 26C3C 800BC03C 3062FFFF */  andi       $v0, $v1, 0xffff
/* 26C40 800BC040 3C0C0C00 */  lui        $t4, 0xc00
/* 26C44 800BC044 004C1025 */  or         $v0, $v0, $t4
/* 26C48 800BC048 AD020000 */  sw         $v0, ($t0)
/* 26C4C 800BC04C 00151400 */  sll        $v0, $s5, 0x10
/* 26C50 800BC050 30C3FFFF */  andi       $v1, $a2, 0xffff
/* 26C54 800BC054 00431025 */  or         $v0, $v0, $v1
/* 26C58 800BC058 AD020004 */  sw         $v0, 4($t0)
/* 26C5C 800BC05C 0C02F1CC */  jal        func_800BC730
/* 26C60 800BC060 AFAB0010 */   sw        $t3, 0x10($sp)
/* 26C64 800BC064 00405821 */  addu       $t3, $v0, $zero
.L800BC068:
/* 26C68 800BC068 8E240020 */  lw         $a0, 0x20($s1)
/* 26C6C 800BC06C 10800006 */  beqz       $a0, .L800BC088
/* 26C70 800BC070 00152C00 */   sll       $a1, $s5, 0x10
/* 26C74 800BC074 00052C03 */  sra        $a1, $a1, 0x10
/* 26C78 800BC078 02803021 */  addu       $a2, $s4, $zero
/* 26C7C 800BC07C 0C02F228 */  jal        func_800BC8A0
/* 26C80 800BC080 01603821 */   addu      $a3, $t3, $zero
/* 26C84 800BC084 00405821 */  addu       $t3, $v0, $zero
.L800BC088:
/* 26C88 800BC088 8E220024 */  lw         $v0, 0x24($s1)
/* 26C8C 800BC08C 14400008 */  bnez       $v0, .L800BC0B0
/* 26C90 800BC090 02402021 */   addu      $a0, $s2, $zero
/* 26C94 800BC094 AFAB0010 */  sw         $t3, 0x10($sp)
/* 26C98 800BC098 03C02821 */  addu       $a1, $fp, $zero
/* 26C9C 800BC09C 00153400 */  sll        $a2, $s5, 0x10
/* 26CA0 800BC0A0 00063403 */  sra        $a2, $a2, 0x10
/* 26CA4 800BC0A4 0C02F1CC */  jal        func_800BC730
/* 26CA8 800BC0A8 02803821 */   addu      $a3, $s4, $zero
/* 26CAC 800BC0AC 00405821 */  addu       $t3, $v0, $zero
.L800BC0B0:
/* 26CB0 800BC0B0 8622000C */  lh         $v0, 0xc($s1)
/* 26CB4 800BC0B4 1040000A */  beqz       $v0, .L800BC0E0
/* 26CB8 800BC0B8 00401821 */   addu      $v1, $v0, $zero
/* 26CBC 800BC0BC 01601021 */  addu       $v0, $t3, $zero
/* 26CC0 800BC0C0 256B0008 */  addiu      $t3, $t3, 8
/* 26CC4 800BC0C4 3063FFFF */  andi       $v1, $v1, 0xffff
/* 26CC8 800BC0C8 3C0C0C00 */  lui        $t4, 0xc00
/* 26CCC 800BC0CC 006C1825 */  or         $v1, $v1, $t4
/* 26CD0 800BC0D0 AC430000 */  sw         $v1, ($v0)
/* 26CD4 800BC0D4 00151C00 */  sll        $v1, $s5, 0x10
/* 26CD8 800BC0D8 34630800 */  ori        $v1, $v1, 0x800
/* 26CDC 800BC0DC AC430004 */  sw         $v1, 4($v0)
.L800BC0E0:
/* 26CE0 800BC0E0 97AC001E */  lhu        $t4, 0x1e($sp)
/* 26CE4 800BC0E4 8E230004 */  lw         $v1, 4($s1)
/* 26CE8 800BC0E8 8E440018 */  lw         $a0, 0x18($s2)
/* 26CEC 800BC0EC 25820001 */  addiu      $v0, $t4, 1
/* 26CF0 800BC0F0 00031840 */  sll        $v1, $v1, 1
/* 26CF4 800BC0F4 0083B821 */  addu       $s7, $a0, $v1
/* 26CF8 800BC0F8 A7A2001E */  sh         $v0, 0x1e($sp)
/* 26CFC 800BC0FC 92430024 */  lbu        $v1, 0x24($s2)
/* 26D00 800BC100 00021400 */  sll        $v0, $v0, 0x10
/* 26D04 800BC104 00021403 */  sra        $v0, $v0, 0x10
/* 26D08 800BC108 0043102A */  slt        $v0, $v0, $v1
/* 26D0C 800BC10C 1440FF84 */  bnez       $v0, .L800BBF20
/* 26D10 800BC110 00000000 */   nop
.L800BC114:
/* 26D14 800BC114 8E420018 */  lw         $v0, 0x18($s2)
/* 26D18 800BC118 8E44001C */  lw         $a0, 0x1c($s2)
/* 26D1C 800BC11C 8E430014 */  lw         $v1, 0x14($s2)
/* 26D20 800BC120 00143040 */  sll        $a2, $s4, 1
/* 26D24 800BC124 00461021 */  addu       $v0, $v0, $a2
/* 26D28 800BC128 00042040 */  sll        $a0, $a0, 1
/* 26D2C 800BC12C 00641821 */  addu       $v1, $v1, $a0
/* 26D30 800BC130 0062182B */  sltu       $v1, $v1, $v0
/* 26D34 800BC134 10600003 */  beqz       $v1, .L800BC144
/* 26D38 800BC138 AE420018 */   sw        $v0, 0x18($s2)
/* 26D3C 800BC13C 00441023 */  subu       $v0, $v0, $a0
/* 26D40 800BC140 AE420018 */  sw         $v0, 0x18($s2)
.L800BC144:
/* 26D44 800BC144 25620008 */  addiu      $v0, $t3, 8
/* 26D48 800BC148 01602821 */  addu       $a1, $t3, $zero
/* 26D4C 800BC14C 240C0800 */  addiu      $t4, $zero, 0x800
/* 26D50 800BC150 000C1C00 */  sll        $v1, $t4, 0x10
/* 26D54 800BC154 00031C02 */  srl        $v1, $v1, 0x10
/* 26D58 800BC158 3C040A00 */  lui        $a0, 0xa00
/* 26D5C 800BC15C 00641825 */  or         $v1, $v1, $a0
/* 26D60 800BC160 ACA30000 */  sw         $v1, ($a1)
/* 26D64 800BC164 30C3FFFF */  andi       $v1, $a2, 0xffff
/* 26D68 800BC168 3C0406C0 */  lui        $a0, 0x6c0
/* 26D6C 800BC16C 00641825 */  or         $v1, $v1, $a0
/* 26D70 800BC170 ACA30004 */  sw         $v1, 4($a1)
/* 26D74 800BC174 8FBF0064 */  lw         $ra, 0x64($sp)
/* 26D78 800BC178 8FBE0060 */  lw         $fp, 0x60($sp)
/* 26D7C 800BC17C 8FB7005C */  lw         $s7, 0x5c($sp)
/* 26D80 800BC180 8FB60058 */  lw         $s6, 0x58($sp)
/* 26D84 800BC184 8FB50054 */  lw         $s5, 0x54($sp)
/* 26D88 800BC188 8FB40050 */  lw         $s4, 0x50($sp)
/* 26D8C 800BC18C 8FB3004C */  lw         $s3, 0x4c($sp)
/* 26D90 800BC190 8FB20048 */  lw         $s2, 0x48($sp)
/* 26D94 800BC194 8FB10044 */  lw         $s1, 0x44($sp)
/* 26D98 800BC198 8FB00040 */  lw         $s0, 0x40($sp)
/* 26D9C 800BC19C 03E00008 */  jr         $ra
/* 26DA0 800BC1A0 27BD0068 */   addiu     $sp, $sp, 0x68
