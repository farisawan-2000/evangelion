.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C5C30
/* 30830 800C5C30 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 30834 800C5C34 AFB30024 */  sw         $s3, 0x24($sp)
/* 30838 800C5C38 00809821 */  addu       $s3, $a0, $zero
/* 3083C 800C5C3C AFB20020 */  sw         $s2, 0x20($sp)
/* 30840 800C5C40 00A09021 */  addu       $s2, $a1, $zero
/* 30844 800C5C44 2402000F */  addiu      $v0, $zero, 0xf
/* 30848 800C5C48 3C038015 */  lui        $v1, %hi(D_8014A29C)
/* 3084C 800C5C4C 2463A29C */  addiu      $v1, $v1, %lo(D_8014A29C)
/* 30850 800C5C50 AFBF0028 */  sw         $ra, 0x28($sp)
/* 30854 800C5C54 AFB1001C */  sw         $s1, 0x1c($sp)
/* 30858 800C5C58 AFB00018 */  sw         $s0, 0x18($sp)
.L800C5C5C:
/* 3085C 800C5C5C AC600000 */  sw         $zero, ($v1)
/* 30860 800C5C60 2442FFFF */  addiu      $v0, $v0, -1
/* 30864 800C5C64 0441FFFD */  bgez       $v0, .L800C5C5C
/* 30868 800C5C68 2463FFFC */   addiu     $v1, $v1, -4
/* 3086C 800C5C6C 3C038015 */  lui        $v1, %hi(D_8014A29C)
/* 30870 800C5C70 2463A29C */  addiu      $v1, $v1, %lo(D_8014A29C)
/* 30874 800C5C74 24020001 */  addiu      $v0, $zero, 1
/* 30878 800C5C78 AC620000 */  sw         $v0, ($v1)
/* 3087C 800C5C7C 2466FFC4 */  addiu      $a2, $v1, -0x3c
/* 30880 800C5C80 24020003 */  addiu      $v0, $zero, 3
.L800C5C84:
/* 30884 800C5C84 A0C00000 */  sb         $zero, ($a2)
/* 30888 800C5C88 2442FFFF */  addiu      $v0, $v0, -1
/* 3088C 800C5C8C 0441FFFD */  bgez       $v0, .L800C5C84
/* 30890 800C5C90 24C60001 */   addiu     $a2, $a2, 1
/* 30894 800C5C94 240300FF */  addiu      $v1, $zero, 0xff
/* 30898 800C5C98 24020001 */  addiu      $v0, $zero, 1
/* 3089C 800C5C9C A3A20011 */  sb         $v0, 0x11($sp)
/* 308A0 800C5CA0 24020003 */  addiu      $v0, $zero, 3
/* 308A4 800C5CA4 A3A30010 */  sb         $v1, 0x10($sp)
/* 308A8 800C5CA8 A3A20012 */  sb         $v0, 0x12($sp)
/* 308AC 800C5CAC A3A00013 */  sb         $zero, 0x13($sp)
/* 308B0 800C5CB0 A3A30014 */  sb         $v1, 0x14($sp)
/* 308B4 800C5CB4 A3A30015 */  sb         $v1, 0x15($sp)
/* 308B8 800C5CB8 A3A30016 */  sb         $v1, 0x16($sp)
/* 308BC 800C5CBC A3A30017 */  sb         $v1, 0x17($sp)
/* 308C0 800C5CC0 8BA20010 */  lwl        $v0, 0x10($sp)
/* 308C4 800C5CC4 9BA20013 */  lwr        $v0, 0x13($sp)
/* 308C8 800C5CC8 8BA30014 */  lwl        $v1, 0x14($sp)
/* 308CC 800C5CCC 9BA30017 */  lwr        $v1, 0x17($sp)
/* 308D0 800C5CD0 A8C20000 */  swl        $v0, ($a2)
/* 308D4 800C5CD4 B8C20003 */  swr        $v0, 3($a2)
/* 308D8 800C5CD8 A8C30004 */  swl        $v1, 4($a2)
/* 308DC 800C5CDC B8C30007 */  swr        $v1, 7($a2)
/* 308E0 800C5CE0 24040001 */  addiu      $a0, $zero, 1
/* 308E4 800C5CE4 3C118015 */  lui        $s1, %hi(D_8014A260)
/* 308E8 800C5CE8 2631A260 */  addiu      $s1, $s1, %lo(D_8014A260)
/* 308EC 800C5CEC 02202821 */  addu       $a1, $s1, $zero
/* 308F0 800C5CF0 241000FE */  addiu      $s0, $zero, 0xfe
/* 308F4 800C5CF4 0C0305F4 */  jal        func_800C17D0
/* 308F8 800C5CF8 A0D00008 */   sb        $s0, 8($a2)
/* 308FC 800C5CFC 02602021 */  addu       $a0, $s3, $zero
/* 30900 800C5D00 00002821 */  addu       $a1, $zero, $zero
/* 30904 800C5D04 0C030200 */  jal        func_800C0800
/* 30908 800C5D08 24060001 */   addiu     $a2, $zero, 1
/* 3090C 800C5D0C 00002021 */  addu       $a0, $zero, $zero
/* 30910 800C5D10 3C018017 */  lui        $at, %hi(D_8016D064)
/* 30914 800C5D14 A030D064 */  sb         $s0, %lo(D_8016D064)($at)
/* 30918 800C5D18 0C0305F4 */  jal        func_800C17D0
/* 3091C 800C5D1C 02202821 */   addu      $a1, $s1, $zero
/* 30920 800C5D20 02602021 */  addu       $a0, $s3, $zero
/* 30924 800C5D24 00002821 */  addu       $a1, $zero, $zero
/* 30928 800C5D28 24060001 */  addiu      $a2, $zero, 1
/* 3092C 800C5D2C 0C030200 */  jal        func_800C0800
/* 30930 800C5D30 00408021 */   addu      $s0, $v0, $zero
/* 30934 800C5D34 1600001E */  bnez       $s0, .L800C5DB0
/* 30938 800C5D38 02001021 */   addu      $v0, $s0, $zero
/* 3093C 800C5D3C 02203021 */  addu       $a2, $s1, $zero
/* 30940 800C5D40 24020003 */  addiu      $v0, $zero, 3
.L800C5D44:
/* 30944 800C5D44 A0C00000 */  sb         $zero, ($a2)
/* 30948 800C5D48 2442FFFF */  addiu      $v0, $v0, -1
/* 3094C 800C5D4C 0441FFFD */  bgez       $v0, .L800C5D44
/* 30950 800C5D50 24C60001 */   addiu     $a2, $a2, 1
/* 30954 800C5D54 88C20000 */  lwl        $v0, ($a2)
/* 30958 800C5D58 98C20003 */  lwr        $v0, 3($a2)
/* 3095C 800C5D5C 88C30004 */  lwl        $v1, 4($a2)
/* 30960 800C5D60 98C30007 */  lwr        $v1, 7($a2)
/* 30964 800C5D64 ABA20010 */  swl        $v0, 0x10($sp)
/* 30968 800C5D68 BBA20013 */  swr        $v0, 0x13($sp)
/* 3096C 800C5D6C ABA30014 */  swl        $v1, 0x14($sp)
/* 30970 800C5D70 BBA30017 */  swr        $v1, 0x17($sp)
/* 30974 800C5D74 93A20012 */  lbu        $v0, 0x12($sp)
/* 30978 800C5D78 304200C0 */  andi       $v0, $v0, 0xc0
/* 3097C 800C5D7C 00021102 */  srl        $v0, $v0, 4
/* 30980 800C5D80 A2420003 */  sb         $v0, 3($s2)
/* 30984 800C5D84 93A20015 */  lbu        $v0, 0x15($sp)
/* 30988 800C5D88 93A30014 */  lbu        $v1, 0x14($sp)
/* 3098C 800C5D8C 92440003 */  lbu        $a0, 3($s2)
/* 30990 800C5D90 00021200 */  sll        $v0, $v0, 8
/* 30994 800C5D94 00621825 */  or         $v1, $v1, $v0
/* 30998 800C5D98 A6430000 */  sh         $v1, ($s2)
/* 3099C 800C5D9C 93A30016 */  lbu        $v1, 0x16($sp)
/* 309A0 800C5DA0 0004102B */  sltu       $v0, $zero, $a0
/* 309A4 800C5DA4 00021023 */  negu       $v0, $v0
/* 309A8 800C5DA8 00821024 */  and        $v0, $a0, $v0
/* 309AC 800C5DAC A2430002 */  sb         $v1, 2($s2)
.L800C5DB0:
/* 309B0 800C5DB0 8FBF0028 */  lw         $ra, 0x28($sp)
/* 309B4 800C5DB4 8FB30024 */  lw         $s3, 0x24($sp)
/* 309B8 800C5DB8 8FB20020 */  lw         $s2, 0x20($sp)
/* 309BC 800C5DBC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 309C0 800C5DC0 8FB00018 */  lw         $s0, 0x18($sp)
/* 309C4 800C5DC4 03E00008 */  jr         $ra
/* 309C8 800C5DC8 27BD0030 */   addiu     $sp, $sp, 0x30
/* 309CC 800C5DCC 00000000 */  nop
