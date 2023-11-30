glabel func_8002A1C0_ovl7
/* 179C00 8002A1C0 3C028005 */  lui        $v0, %hi(D_80052000_ovl7)
/* 179C04 8002A1C4 8C422000 */  lw         $v0, %lo(D_80052000_ovl7)($v0)
/* 179C08 8002A1C8 3C038005 */  lui        $v1, %hi(D_80052038_ovl7)
/* 179C0C 8002A1CC 94632038 */  lhu        $v1, %lo(D_80052038_ovl7)($v1)
/* 179C10 8002A1D0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 179C14 8002A1D4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 179C18 8002A1D8 AFB1002C */  sw         $s1, 0x2C($sp)
/* 179C1C 8002A1DC AFB00028 */  sw         $s0, 0x28($sp)
/* 179C20 8002A1E0 8C50002C */  lw         $s0, 0x2C($v0)
/* 179C24 8002A1E4 3C068005 */  lui        $a2, %hi(D_8005076C_ovl7)
/* 179C28 8002A1E8 24C6076C */  addiu      $a2, $a2, %lo(D_8005076C_ovl7)
/* 179C2C 8002A1EC 88C20000 */  lwl        $v0, 0x0($a2)
/* 179C30 8002A1F0 98C20003 */  lwr        $v0, 0x3($a2)
/* 179C34 8002A1F4 88C40004 */  lwl        $a0, 0x4($a2)
/* 179C38 8002A1F8 98C40007 */  lwr        $a0, 0x7($a2)
/* 179C3C 8002A1FC 80C50008 */  lb         $a1, 0x8($a2)
/* 179C40 8002A200 ABA20018 */  swl        $v0, 0x18($sp)
/* 179C44 8002A204 BBA2001B */  swr        $v0, 0x1B($sp)
/* 179C48 8002A208 ABA4001C */  swl        $a0, 0x1C($sp)
/* 179C4C 8002A20C BBA4001F */  swr        $a0, 0x1F($sp)
/* 179C50 8002A210 A3A50020 */  sb         $a1, 0x20($sp)
/* 179C54 8002A214 1460000F */  bnez       $v1, .L8002A254_ovl7
/* 179C58 8002A218 00002021 */   addu      $a0, $zero, $zero
/* 179C5C 8002A21C 308300FF */  andi       $v1, $a0, 0xFF
.L8002A220_ovl7:
/* 179C60 8002A220 00031040 */  sll        $v0, $v1, 1
/* 179C64 8002A224 00431021 */  addu       $v0, $v0, $v1
/* 179C68 8002A228 00021080 */  sll        $v0, $v0, 2
/* 179C6C 8002A22C 00501021 */  addu       $v0, $v0, $s0
/* 179C70 8002A230 8C430000 */  lw         $v1, 0x0($v0)
/* 179C74 8002A234 9462001E */  lhu        $v0, 0x1E($v1)
/* 179C78 8002A238 24840001 */  addiu      $a0, $a0, 0x1
/* 179C7C 8002A23C 3042FFBF */  andi       $v0, $v0, 0xFFBF
/* 179C80 8002A240 A462001E */  sh         $v0, 0x1E($v1)
/* 179C84 8002A244 308200FF */  andi       $v0, $a0, 0xFF
/* 179C88 8002A248 2C420003 */  sltiu      $v0, $v0, 0x3
/* 179C8C 8002A24C 1440FFF4 */  bnez       $v0, .L8002A220_ovl7
/* 179C90 8002A250 308300FF */   andi      $v1, $a0, 0xFF
.L8002A254_ovl7:
/* 179C94 8002A254 3C038005 */  lui        $v1, %hi(D_80052038_ovl7)
/* 179C98 8002A258 94632038 */  lhu        $v1, %lo(D_80052038_ovl7)($v1)
/* 179C9C 8002A25C 3064FFFF */  andi       $a0, $v1, 0xFFFF
/* 179CA0 8002A260 2C82003C */  sltiu      $v0, $a0, 0x3C
/* 179CA4 8002A264 5440001C */  bnel       $v0, $zero, .L8002A2D8_ovl7
/* 179CA8 8002A268 240400B4 */   addiu     $a0, $zero, 0xB4
/* 179CAC 8002A26C 2402003C */  addiu      $v0, $zero, 0x3C
/* 179CB0 8002A270 1482000B */  bne        $a0, $v0, .L8002A2A0_ovl7
/* 179CB4 8002A274 2471FFC4 */   addiu     $s1, $v1, -0x3C
/* 179CB8 8002A278 240400E4 */  addiu      $a0, $zero, 0xE4
/* 179CBC 8002A27C 240500C0 */  addiu      $a1, $zero, 0xC0
/* 179CC0 8002A280 24060080 */  addiu      $a2, $zero, 0x80
/* 179CC4 8002A284 24020064 */  addiu      $v0, $zero, 0x64
/* 179CC8 8002A288 24070001 */  addiu      $a3, $zero, 0x1
/* 179CCC 8002A28C 0C026E0C */  jal        func_8009B830
/* 179CD0 8002A290 AFA20010 */   sw        $v0, 0x10($sp)
/* 179CD4 8002A294 3C038005 */  lui        $v1, %hi(D_80052244_ovl7)
/* 179CD8 8002A298 8C632244 */  lw         $v1, %lo(D_80052244_ovl7)($v1)
/* 179CDC 8002A29C AC620000 */  sw         $v0, 0x0($v1)
.L8002A2A0_ovl7:
/* 179CE0 8002A2A0 3223FFFF */  andi       $v1, $s1, 0xFFFF
/* 179CE4 8002A2A4 2C620024 */  sltiu      $v0, $v1, 0x24
/* 179CE8 8002A2A8 1040000A */  beqz       $v0, .L8002A2D4_ovl7
/* 179CEC 8002A2AC 00031082 */   srl       $v0, $v1, 2
/* 179CF0 8002A2B0 03A21021 */  addu       $v0, $sp, $v0
/* 179CF4 8002A2B4 90430018 */  lbu        $v1, 0x18($v0)
/* 179CF8 8002A2B8 10600006 */  beqz       $v1, .L8002A2D4_ovl7
/* 179CFC 8002A2BC 00031040 */   sll       $v0, $v1, 1
/* 179D00 8002A2C0 00431021 */  addu       $v0, $v0, $v1
/* 179D04 8002A2C4 00021080 */  sll        $v0, $v0, 2
/* 179D08 8002A2C8 00501021 */  addu       $v0, $v0, $s0
/* 179D0C 8002A2CC 0C028A40 */  jal        func_800A2900
/* 179D10 8002A2D0 8C440000 */   lw        $a0, 0x0($v0)
.L8002A2D4_ovl7:
/* 179D14 8002A2D4 240400B4 */  addiu      $a0, $zero, 0xB4
.L8002A2D8_ovl7:
/* 179D18 8002A2D8 24050003 */  addiu      $a1, $zero, 0x3
/* 179D1C 8002A2DC 0C009EE4 */  jal        func_80027B90_ovl7
/* 179D20 8002A2E0 24060001 */   addiu     $a2, $zero, 0x1
/* 179D24 8002A2E4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 179D28 8002A2E8 8FB1002C */  lw         $s1, 0x2C($sp)
/* 179D2C 8002A2EC 8FB00028 */  lw         $s0, 0x28($sp)
/* 179D30 8002A2F0 03E00008 */  jr         $ra
/* 179D34 8002A2F4 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_8002A1C0_ovl7, . - func_8002A1C0_ovl7
