glabel func_800A9898
/* 14498 800A9898 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1449C 800A989C AFB00018 */  sw         $s0, 0x18($sp)
/* 144A0 800A98A0 00808021 */  addu       $s0, $a0, $zero
/* 144A4 800A98A4 3C04800D */  lui        $a0, %hi(D_800D4C50)
/* 144A8 800A98A8 8C844C50 */  lw         $a0, %lo(D_800D4C50)($a0)
/* 144AC 800A98AC AFBF0024 */  sw         $ra, 0x24($sp)
/* 144B0 800A98B0 AFB20020 */  sw         $s2, 0x20($sp)
/* 144B4 800A98B4 10800003 */  beqz       $a0, .L800A98C4
/* 144B8 800A98B8 AFB1001C */   sw        $s1, 0x1C($sp)
/* 144BC 800A98BC 0C02910B */  jal        func_800A442C
/* 144C0 800A98C0 00000000 */   nop
.L800A98C4:
/* 144C4 800A98C4 00101600 */  sll        $v0, $s0, 24
/* 144C8 800A98C8 000215C3 */  sra        $v0, $v0, 23
/* 144CC 800A98CC 3C01800D */  lui        $at, %hi(D_800D4C2C)
/* 144D0 800A98D0 00220821 */  addu       $at, $at, $v0
/* 144D4 800A98D4 94224C2C */  lhu        $v0, %lo(D_800D4C2C)($at)
/* 144D8 800A98D8 3C12803E */  lui        $s2, %hi(Images_VRAM)
/* 144DC 800A98DC 2652AA00 */  addiu      $s2, $s2, %lo(Images_VRAM)
/* 144E0 800A98E0 3C05001E */  lui        $a1, %hi(Image_ROM_START)
/* 144E4 800A98E4 24A59000 */  addiu      $a1, $a1, %lo(Image_ROM_START)
/* 144E8 800A98E8 00021080 */  sll        $v0, $v0, 2
/* 144EC 800A98EC 3C07800E */  lui        $a3, %hi(D_800E2080)
/* 144F0 800A98F0 00E23821 */  addu       $a3, $a3, $v0
/* 144F4 800A98F4 94E72080 */  lhu        $a3, %lo(D_800E2080)($a3)
/* 144F8 800A98F8 3C06800D */  lui        $a2, %hi(D_800D6AD0)
/* 144FC 800A98FC 24C66AD0 */  addiu      $a2, $a2, %lo(D_800D6AD0)
/* 14500 800A9900 3C11800E */  lui        $s1, %hi(D_800E2082)
/* 14504 800A9904 02228821 */  addu       $s1, $s1, $v0
/* 14508 800A9908 96312082 */  lhu        $s1, %lo(D_800E2082)($s1)
/* 1450C 800A990C 0C0264C3 */  jal        func_8009930C
/* 14510 800A9910 02402021 */   addu      $a0, $s2, $zero
/* 14514 800A9914 3C10803E */  lui        $s0, %hi(Palettes_VRAM)
/* 14518 800A9918 2610A800 */  addiu      $s0, $s0, %lo(Palettes_VRAM)
/* 1451C 800A991C 02002021 */  addu       $a0, $s0, $zero
/* 14520 800A9920 3C050061 */  lui        $a1, %hi(Palettes_ROM_START)
/* 14524 800A9924 24A5CB80 */  addiu      $a1, $a1, %lo(Palettes_ROM_START)
/* 14528 800A9928 3C06800E */  lui        $a2, %hi(D_800DD820)
/* 1452C 800A992C 24C6D820 */  addiu      $a2, $a2, %lo(D_800DD820)
/* 14530 800A9930 0C0264C3 */  jal        func_8009930C
/* 14534 800A9934 02203821 */   addu      $a3, $s1, $zero
/* 14538 800A9938 02402021 */  addu       $a0, $s2, $zero
/* 1453C 800A993C 02002821 */  addu       $a1, $s0, $zero
/* 14540 800A9940 24060002 */  addiu      $a2, $zero, 0x2
/* 14544 800A9944 0C028CEA */  jal        func_800A33A8
/* 14548 800A9948 00003821 */   addu      $a3, $zero, $zero
/* 1454C 800A994C 00402021 */  addu       $a0, $v0, $zero
/* 14550 800A9950 24050280 */  addiu      $a1, $zero, 0x280
/* 14554 800A9954 3C01800D */  lui        $at, %hi(D_800D4C50)
/* 14558 800A9958 AC244C50 */  sw         $a0, %lo(D_800D4C50)($at)
/* 1455C 800A995C 0C028D89 */  jal        func_800A3624
/* 14560 800A9960 240601E0 */   addiu     $a2, $zero, 0x1E0
/* 14564 800A9964 240500FF */  addiu      $a1, $zero, 0xFF
/* 14568 800A9968 240600FF */  addiu      $a2, $zero, 0xFF
/* 1456C 800A996C 3C04800D */  lui        $a0, %hi(D_800D4C50)
/* 14570 800A9970 8C844C50 */  lw         $a0, %lo(D_800D4C50)($a0)
/* 14574 800A9974 240700FF */  addiu      $a3, $zero, 0xFF
/* 14578 800A9978 240200D0 */  addiu      $v0, $zero, 0xD0
/* 1457C 800A997C 0C028E41 */  jal        func_800A3904
/* 14580 800A9980 AFA20010 */   sw        $v0, 0x10($sp)
/* 14584 800A9984 3C03800D */  lui        $v1, %hi(D_800D4C50)
/* 14588 800A9988 8C634C50 */  lw         $v1, %lo(D_800D4C50)($v1)
/* 1458C 800A998C 9462001E */  lhu        $v0, 0x1E($v1)
/* 14590 800A9990 34420200 */  ori        $v0, $v0, 0x200
/* 14594 800A9994 A462001E */  sh         $v0, 0x1E($v1)
/* 14598 800A9998 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1459C 800A999C 8FB20020 */  lw         $s2, 0x20($sp)
/* 145A0 800A99A0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 145A4 800A99A4 8FB00018 */  lw         $s0, 0x18($sp)
/* 145A8 800A99A8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 145AC 800A99AC 03E00008 */  jr         $ra
/* 145B0 800A99B0 00000000 */   nop
.size func_800A9898, . - func_800A9898
