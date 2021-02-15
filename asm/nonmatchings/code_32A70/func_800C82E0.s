.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C82E0
/* 32EE0 800C82E0 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 32EE4 800C82E4 AFB20118 */  sw         $s2, 0x118($sp)
/* 32EE8 800C82E8 00809021 */  addu       $s2, $a0, $zero
/* 32EEC 800C82EC AFB40120 */  sw         $s4, 0x120($sp)
/* 32EF0 800C82F0 00A0A021 */  addu       $s4, $a1, $zero
/* 32EF4 800C82F4 240500FF */  addiu      $a1, $zero, 0xff
/* 32EF8 800C82F8 268200FF */  addiu      $v0, $s4, 0xff
/* 32EFC 800C82FC AFBF012C */  sw         $ra, 0x12c($sp)
/* 32F00 800C8300 AFB60128 */  sw         $s6, 0x128($sp)
/* 32F04 800C8304 AFB50124 */  sw         $s5, 0x124($sp)
/* 32F08 800C8308 AFB3011C */  sw         $s3, 0x11c($sp)
/* 32F0C 800C830C AFB10114 */  sw         $s1, 0x114($sp)
/* 32F10 800C8310 AFB00110 */  sw         $s0, 0x110($sp)
.L800C8314:
/* 32F14 800C8314 A0400101 */  sb         $zero, 0x101($v0)
/* 32F18 800C8318 24A5FFFF */  addiu      $a1, $a1, -1
/* 32F1C 800C831C 04A1FFFD */  bgez       $a1, .L800C8314
/* 32F20 800C8320 2442FFFF */   addiu     $v0, $v0, -1
/* 32F24 800C8324 240200FF */  addiu      $v0, $zero, 0xff
/* 32F28 800C8328 A2820100 */  sb         $v0, 0x100($s4)
/* 32F2C 800C832C 92420064 */  lbu        $v0, 0x64($s2)
/* 32F30 800C8330 10400036 */  beqz       $v0, .L800C840C
/* 32F34 800C8334 00009821 */   addu      $s3, $zero, $zero
/* 32F38 800C8338 27B50010 */  addiu      $s5, $sp, 0x10
/* 32F3C 800C833C 24160001 */  addiu      $s6, $zero, 1
/* 32F40 800C8340 327000FF */  andi       $s0, $s3, 0xff
.L800C8344:
/* 32F44 800C8344 16000002 */  bnez       $s0, .L800C8350
/* 32F48 800C8348 24110001 */   addiu     $s1, $zero, 1
/* 32F4C 800C834C 8E510060 */  lw         $s1, 0x60($s2)
.L800C8350:
/* 32F50 800C8350 02402021 */  addu       $a0, $s2, $zero
/* 32F54 800C8354 27A50010 */  addiu      $a1, $sp, 0x10
/* 32F58 800C8358 00003021 */  addu       $a2, $zero, $zero
/* 32F5C 800C835C 0C031353 */  jal        func_800C4D4C
/* 32F60 800C8360 02003821 */   addu      $a3, $s0, $zero
/* 32F64 800C8364 00402021 */  addu       $a0, $v0, $zero
/* 32F68 800C8368 0004182B */  sltu       $v1, $zero, $a0
/* 32F6C 800C836C 38820003 */  xori       $v0, $a0, 3
/* 32F70 800C8370 0002102B */  sltu       $v0, $zero, $v0
/* 32F74 800C8374 00621824 */  and        $v1, $v1, $v0
/* 32F78 800C8378 14600025 */  bnez       $v1, .L800C8410
/* 32F7C 800C837C 00801021 */   addu      $v0, $a0, $zero
/* 32F80 800C8380 02202821 */  addu       $a1, $s1, $zero
/* 32F84 800C8384 28A20080 */  slti       $v0, $a1, 0x80
/* 32F88 800C8388 1040001A */  beqz       $v0, .L800C83F4
/* 32F8C 800C838C 32020007 */   andi      $v0, $s0, 7
/* 32F90 800C8390 02003821 */  addu       $a3, $s0, $zero
/* 32F94 800C8394 00564004 */  sllv       $t0, $s6, $v0
/* 32F98 800C8398 00051040 */  sll        $v0, $a1, 1
/* 32F9C 800C839C 00553021 */  addu       $a2, $v0, $s5
.L800C83A0:
/* 32FA0 800C83A0 94C40000 */  lhu        $a0, ($a2)
/* 32FA4 800C83A4 8E420060 */  lw         $v0, 0x60($s2)
/* 32FA8 800C83A8 3083FFFF */  andi       $v1, $a0, 0xffff
/* 32FAC 800C83AC 0062102A */  slt        $v0, $v1, $v0
/* 32FB0 800C83B0 1440000D */  bnez       $v0, .L800C83E8
/* 32FB4 800C83B4 24A50001 */   addiu     $a1, $a1, 1
/* 32FB8 800C83B8 00031A02 */  srl        $v1, $v1, 8
/* 32FBC 800C83BC 1067000A */  beq        $v1, $a3, .L800C83E8
/* 32FC0 800C83C0 00000000 */   nop
/* 32FC4 800C83C4 3082007F */  andi       $v0, $a0, 0x7f
/* 32FC8 800C83C8 00021082 */  srl        $v0, $v0, 2
/* 32FCC 800C83CC 30630007 */  andi       $v1, $v1, 7
/* 32FD0 800C83D0 00031940 */  sll        $v1, $v1, 5
/* 32FD4 800C83D4 00431021 */  addu       $v0, $v0, $v1
/* 32FD8 800C83D8 02821021 */  addu       $v0, $s4, $v0
/* 32FDC 800C83DC 90430101 */  lbu        $v1, 0x101($v0)
/* 32FE0 800C83E0 00681825 */  or         $v1, $v1, $t0
/* 32FE4 800C83E4 A0430101 */  sb         $v1, 0x101($v0)
.L800C83E8:
/* 32FE8 800C83E8 28A20080 */  slti       $v0, $a1, 0x80
/* 32FEC 800C83EC 1440FFEC */  bnez       $v0, .L800C83A0
/* 32FF0 800C83F0 24C60002 */   addiu     $a2, $a2, 2
.L800C83F4:
/* 32FF4 800C83F4 92430064 */  lbu        $v1, 0x64($s2)
/* 32FF8 800C83F8 26730001 */  addiu      $s3, $s3, 1
/* 32FFC 800C83FC 326200FF */  andi       $v0, $s3, 0xff
/* 33000 800C8400 0043102B */  sltu       $v0, $v0, $v1
/* 33004 800C8404 1440FFCF */  bnez       $v0, .L800C8344
/* 33008 800C8408 327000FF */   andi      $s0, $s3, 0xff
.L800C840C:
/* 3300C 800C840C 00001021 */  addu       $v0, $zero, $zero
.L800C8410:
/* 33010 800C8410 8FBF012C */  lw         $ra, 0x12c($sp)
/* 33014 800C8414 8FB60128 */  lw         $s6, 0x128($sp)
/* 33018 800C8418 8FB50124 */  lw         $s5, 0x124($sp)
/* 3301C 800C841C 8FB40120 */  lw         $s4, 0x120($sp)
/* 33020 800C8420 8FB3011C */  lw         $s3, 0x11c($sp)
/* 33024 800C8424 8FB20118 */  lw         $s2, 0x118($sp)
/* 33028 800C8428 8FB10114 */  lw         $s1, 0x114($sp)
/* 3302C 800C842C 8FB00110 */  lw         $s0, 0x110($sp)
/* 33030 800C8430 03E00008 */  jr         $ra
/* 33034 800C8434 27BD0130 */   addiu     $sp, $sp, 0x130
