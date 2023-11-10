glabel func_800C5090
/* 2FC90 800C5090 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 2FC94 800C5094 AFB40038 */  sw         $s4, 0x38($sp)
/* 2FC98 800C5098 0080A021 */  addu       $s4, $a0, $zero
/* 2FC9C 800C509C AFB30034 */  sw         $s3, 0x34($sp)
/* 2FCA0 800C50A0 00A09821 */  addu       $s3, $a1, $zero
/* 2FCA4 800C50A4 AFB5003C */  sw         $s5, 0x3C($sp)
/* 2FCA8 800C50A8 24150002 */  addiu      $s5, $zero, 0x2
/* 2FCAC 800C50AC AFB00028 */  sw         $s0, 0x28($sp)
/* 2FCB0 800C50B0 00C08021 */  addu       $s0, $a2, $zero
/* 2FCB4 800C50B4 AFBF004C */  sw         $ra, 0x4C($sp)
/* 2FCB8 800C50B8 AFBE0048 */  sw         $fp, 0x48($sp)
/* 2FCBC 800C50BC AFB70044 */  sw         $s7, 0x44($sp)
/* 2FCC0 800C50C0 AFB60040 */  sw         $s6, 0x40($sp)
/* 2FCC4 800C50C4 AFB20030 */  sw         $s2, 0x30($sp)
/* 2FCC8 800C50C8 AFB1002C */  sw         $s1, 0x2C($sp)
/* 2FCCC 800C50CC 0C030635 */  jal        func_800C18D4
/* 2FCD0 800C50D0 AFA70014 */   sw        $a3, 0x14($sp)
/* 2FCD4 800C50D4 24170002 */  addiu      $s7, $zero, 0x2
/* 2FCD8 800C50D8 3216FFFF */  andi       $s6, $s0, 0xFFFF
/* 2FCDC 800C50DC 00108140 */  sll        $s0, $s0, 5
/* 2FCE0 800C50E0 3C1E8017 */  lui        $fp, %hi(D_8016D830)
/* 2FCE4 800C50E4 27DED830 */  addiu      $fp, $fp, %lo(D_8016D830)
/* 2FCE8 800C50E8 AFB0001C */  sw         $s0, 0x1C($sp)
.L800C50EC:
/* 2FCEC 800C50EC 3C028017 */  lui        $v0, %hi(D_8016D064)
/* 2FCF0 800C50F0 9042D064 */  lbu        $v0, %lo(D_8016D064)($v0)
/* 2FCF4 800C50F4 3C108017 */  lui        $s0, %hi(D_8016D830)
/* 2FCF8 800C50F8 14570005 */  bne        $v0, $s7, .L800C5110
/* 2FCFC 800C50FC 2610D830 */   addiu     $s0, $s0, %lo(D_8016D830)
/* 2FD00 800C5100 3C02800F */  lui        $v0, %hi(D_800F7B90)
/* 2FD04 800C5104 8C427B90 */  lw         $v0, %lo(D_800F7B90)($v0)
/* 2FD08 800C5108 50530019 */  beql       $v0, $s3, .L800C5170
/* 2FD0C 800C510C 02708021 */   addu      $s0, $s3, $s0
.L800C5110:
/* 2FD10 800C5110 3C018017 */  lui        $at, %hi(D_8016D064)
/* 2FD14 800C5114 A037D064 */  sb         $s7, %lo(D_8016D064)($at)
/* 2FD18 800C5118 3C01800F */  lui        $at, %hi(D_800F7B90)
/* 2FD1C 800C511C AC337B90 */  sw         $s3, %lo(D_800F7B90)($at)
/* 2FD20 800C5120 1A600006 */  blez       $s3, .L800C513C
/* 2FD24 800C5124 00001821 */   addu      $v1, $zero, $zero
.L800C5128:
/* 2FD28 800C5128 A2000000 */  sb         $zero, 0x0($s0)
/* 2FD2C 800C512C 24630001 */  addiu      $v1, $v1, 0x1
/* 2FD30 800C5130 0073102A */  slt        $v0, $v1, $s3
/* 2FD34 800C5134 1440FFFC */  bnez       $v0, .L800C5128
/* 2FD38 800C5138 26100001 */   addiu     $s0, $s0, 0x1
.L800C513C:
/* 2FD3C 800C513C 24020001 */  addiu      $v0, $zero, 0x1
/* 2FD40 800C5140 3C018017 */  lui        $at, %hi(D_8016D86C)
/* 2FD44 800C5144 AC22D86C */  sw         $v0, %lo(D_8016D86C)($at)
/* 2FD48 800C5148 240800FF */  addiu      $t0, $zero, 0xFF
/* 2FD4C 800C514C 24020003 */  addiu      $v0, $zero, 0x3
/* 2FD50 800C5150 A2020001 */  sb         $v0, 0x1($s0)
/* 2FD54 800C5154 24020021 */  addiu      $v0, $zero, 0x21
/* 2FD58 800C5158 A2080000 */  sb         $t0, 0x0($s0)
/* 2FD5C 800C515C A2020002 */  sb         $v0, 0x2($s0)
/* 2FD60 800C5160 240200FE */  addiu      $v0, $zero, 0xFE
/* 2FD64 800C5164 A2170003 */  sb         $s7, 0x3($s0)
/* 2FD68 800C5168 A2080026 */  sb         $t0, 0x26($s0)
/* 2FD6C 800C516C A2020027 */  sb         $v0, 0x27($s0)
.L800C5170:
/* 2FD70 800C5170 02C02021 */  addu       $a0, $s6, $zero
/* 2FD74 800C5174 001610C2 */  srl        $v0, $s6, 3
/* 2FD78 800C5178 0C031EB8 */  jal        func_800C7AE0
/* 2FD7C 800C517C A2020004 */   sb        $v0, 0x4($s0)
/* 2FD80 800C5180 8FA8001C */  lw         $t0, 0x1C($sp)
/* 2FD84 800C5184 24040001 */  addiu      $a0, $zero, 0x1
/* 2FD88 800C5188 03C02821 */  addu       $a1, $fp, $zero
/* 2FD8C 800C518C 00481025 */  or         $v0, $v0, $t0
/* 2FD90 800C5190 0C0305F4 */  jal        func_800C17D0
/* 2FD94 800C5194 A2020005 */   sb        $v0, 0x5($s0)
/* 2FD98 800C5198 02802021 */  addu       $a0, $s4, $zero
/* 2FD9C 800C519C 00002821 */  addu       $a1, $zero, $zero
/* 2FDA0 800C51A0 0C030200 */  jal        func_800C0800
/* 2FDA4 800C51A4 24060001 */   addiu     $a2, $zero, 0x1
/* 2FDA8 800C51A8 00002021 */  addu       $a0, $zero, $zero
/* 2FDAC 800C51AC 0C0305F4 */  jal        func_800C17D0
/* 2FDB0 800C51B0 03C02821 */   addu      $a1, $fp, $zero
/* 2FDB4 800C51B4 02802021 */  addu       $a0, $s4, $zero
/* 2FDB8 800C51B8 00002821 */  addu       $a1, $zero, $zero
/* 2FDBC 800C51BC 0C030200 */  jal        func_800C0800
/* 2FDC0 800C51C0 24060001 */   addiu     $a2, $zero, 0x1
/* 2FDC4 800C51C4 92020002 */  lbu        $v0, 0x2($s0)
/* 2FDC8 800C51C8 304200C0 */  andi       $v0, $v0, 0xC0
/* 2FDCC 800C51CC 00028902 */  srl        $s1, $v0, 4
/* 2FDD0 800C51D0 56200015 */  bnel       $s1, $zero, .L800C5228
/* 2FDD4 800C51D4 24110001 */   addiu     $s1, $zero, 0x1
/* 2FDD8 800C51D8 26120006 */  addiu      $s2, $s0, 0x6
/* 2FDDC 800C51DC 0C031ED3 */  jal        func_800C7B4C
/* 2FDE0 800C51E0 02402021 */   addu      $a0, $s2, $zero
/* 2FDE4 800C51E4 92030026 */  lbu        $v1, 0x26($s0)
/* 2FDE8 800C51E8 304200FF */  andi       $v0, $v0, 0xFF
/* 2FDEC 800C51EC 10430008 */  beq        $v0, $v1, .L800C5210
/* 2FDF0 800C51F0 02802021 */   addu      $a0, $s4, $zero
/* 2FDF4 800C51F4 0C0310E0 */  jal        func_800C4380
/* 2FDF8 800C51F8 02602821 */   addu      $a1, $s3, $zero
/* 2FDFC 800C51FC 00408821 */  addu       $s1, $v0, $zero
/* 2FE00 800C5200 1620000E */  bnez       $s1, .L800C523C
/* 2FE04 800C5204 00000000 */   nop
/* 2FE08 800C5208 0803148A */  j          .L800C5228
/* 2FE0C 800C520C 24110004 */   addiu     $s1, $zero, 0x4
.L800C5210:
/* 2FE10 800C5210 8FA50014 */  lw         $a1, 0x14($sp)
/* 2FE14 800C5214 02402021 */  addu       $a0, $s2, $zero
/* 2FE18 800C5218 0C03006C */  jal        func_800C01B0
/* 2FE1C 800C521C 24060020 */   addiu     $a2, $zero, 0x20
/* 2FE20 800C5220 0803148B */  j          .L800C522C
/* 2FE24 800C5224 24020004 */   addiu     $v0, $zero, 0x4
.L800C5228:
/* 2FE28 800C5228 24020004 */  addiu      $v0, $zero, 0x4
.L800C522C:
/* 2FE2C 800C522C 16220003 */  bne        $s1, $v0, .L800C523C
/* 2FE30 800C5230 02A01021 */   addu      $v0, $s5, $zero
/* 2FE34 800C5234 0441FFAD */  bgez       $v0, .L800C50EC
/* 2FE38 800C5238 26B5FFFF */   addiu     $s5, $s5, -0x1
.L800C523C:
/* 2FE3C 800C523C 0C030650 */  jal        func_800C1940
/* 2FE40 800C5240 00000000 */   nop
/* 2FE44 800C5244 02201021 */  addu       $v0, $s1, $zero
/* 2FE48 800C5248 8FBF004C */  lw         $ra, 0x4C($sp)
/* 2FE4C 800C524C 8FBE0048 */  lw         $fp, 0x48($sp)
/* 2FE50 800C5250 8FB70044 */  lw         $s7, 0x44($sp)
/* 2FE54 800C5254 8FB60040 */  lw         $s6, 0x40($sp)
/* 2FE58 800C5258 8FB5003C */  lw         $s5, 0x3C($sp)
/* 2FE5C 800C525C 8FB40038 */  lw         $s4, 0x38($sp)
/* 2FE60 800C5260 8FB30034 */  lw         $s3, 0x34($sp)
/* 2FE64 800C5264 8FB20030 */  lw         $s2, 0x30($sp)
/* 2FE68 800C5268 8FB1002C */  lw         $s1, 0x2C($sp)
/* 2FE6C 800C526C 8FB00028 */  lw         $s0, 0x28($sp)
/* 2FE70 800C5270 03E00008 */  jr         $ra
/* 2FE74 800C5274 27BD0050 */   addiu     $sp, $sp, 0x50
/* 2FE78 800C5278 00000000 */  nop
/* 2FE7C 800C527C 00000000 */  nop
.size func_800C5090, . - func_800C5090
