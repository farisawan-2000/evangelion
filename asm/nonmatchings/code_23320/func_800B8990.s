glabel func_800B8990
/* 23590 800B8990 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 23594 800B8994 AFB00018 */  sw         $s0, 0x18($sp)
/* 23598 800B8998 AFBF001C */  sw         $ra, 0x1C($sp)
/* 2359C 800B899C 0C030635 */  jal        func_800C18D4
/* 235A0 800B89A0 00808021 */   addu      $s0, $a0, $zero
/* 235A4 800B89A4 02002021 */  addu       $a0, $s0, $zero
/* 235A8 800B89A8 0C03170C */  jal        func_800C5C30
/* 235AC 800B89AC 27A50010 */   addiu     $a1, $sp, 0x10
/* 235B0 800B89B0 97A30010 */  lhu        $v1, 0x10($sp)
/* 235B4 800B89B4 1440000B */  bnez       $v0, .L800B89E4
/* 235B8 800B89B8 3063C000 */   andi      $v1, $v1, 0xC000
/* 235BC 800B89BC 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 235C0 800B89C0 34028000 */  ori        $v0, $zero, 0x8000
/* 235C4 800B89C4 10620005 */  beq        $v1, $v0, .L800B89DC
/* 235C8 800B89C8 3402C000 */   ori       $v0, $zero, 0xC000
/* 235CC 800B89CC 10620006 */  beq        $v1, $v0, .L800B89E8
/* 235D0 800B89D0 24100002 */   addiu     $s0, $zero, 0x2
/* 235D4 800B89D4 0802E27A */  j          .L800B89E8
/* 235D8 800B89D8 00008021 */   addu      $s0, $zero, $zero
.L800B89DC:
/* 235DC 800B89DC 0802E27A */  j          .L800B89E8
/* 235E0 800B89E0 24100001 */   addiu     $s0, $zero, 0x1
.L800B89E4:
/* 235E4 800B89E4 00008021 */  addu       $s0, $zero, $zero
.L800B89E8:
/* 235E8 800B89E8 0C030650 */  jal        func_800C1940
/* 235EC 800B89EC 00000000 */   nop
/* 235F0 800B89F0 02001021 */  addu       $v0, $s0, $zero
/* 235F4 800B89F4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 235F8 800B89F8 8FB00018 */  lw         $s0, 0x18($sp)
/* 235FC 800B89FC 03E00008 */  jr         $ra
/* 23600 800B8A00 27BD0020 */   addiu     $sp, $sp, 0x20
/* 23604 800B8A04 00000000 */  nop
/* 23608 800B8A08 00000000 */  nop
/* 2360C 800B8A0C 00000000 */  nop
.size func_800B8990, . - func_800B8990
