glabel func_800B8C10
/* 23810 800B8C10 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 23814 800B8C14 AFB00018 */  sw         $s0, 0x18($sp)
/* 23818 800B8C18 00808021 */  addu       $s0, $a0, $zero
/* 2381C 800B8C1C AFB5002C */  sw         $s5, 0x2C($sp)
/* 23820 800B8C20 00A0A821 */  addu       $s5, $a1, $zero
/* 23824 800B8C24 AFB40028 */  sw         $s4, 0x28($sp)
/* 23828 800B8C28 3C14800F */  lui        $s4, %hi(D_800F5E20)
/* 2382C 800B8C2C 26945E20 */  addiu      $s4, $s4, %lo(D_800F5E20)
/* 23830 800B8C30 AFBF0030 */  sw         $ra, 0x30($sp)
/* 23834 800B8C34 AFB30024 */  sw         $s3, 0x24($sp)
/* 23838 800B8C38 AFB20020 */  sw         $s2, 0x20($sp)
/* 2383C 800B8C3C AFB1001C */  sw         $s1, 0x1C($sp)
/* 23840 800B8C40 8E820000 */  lw         $v0, 0x0($s4)
/* 23844 800B8C44 00C02821 */  addu       $a1, $a2, $zero
/* 23848 800B8C48 1440004C */  bnez       $v0, .L800B8D7C
/* 2384C 800B8C4C 00E03021 */   addu      $a2, $a3, $zero
/* 23850 800B8C50 0C0301A4 */  jal        func_800C0690
/* 23854 800B8C54 02A02021 */   addu      $a0, $s5, $zero
/* 23858 800B8C58 3C138015 */  lui        $s3, %hi(D_801487F0)
/* 2385C 800B8C5C 267387F0 */  addiu      $s3, $s3, %lo(D_801487F0)
/* 23860 800B8C60 02602021 */  addu       $a0, $s3, $zero
/* 23864 800B8C64 3C058015 */  lui        $a1, %hi(D_80148808)
/* 23868 800B8C68 24A58808 */  addiu      $a1, $a1, %lo(D_80148808)
/* 2386C 800B8C6C 0C0301A4 */  jal        func_800C0690
/* 23870 800B8C70 24060001 */   addiu     $a2, $zero, 0x1
/* 23874 800B8C74 3C02800F */  lui        $v0, %hi(D_800F5E60)
/* 23878 800B8C78 8C425E60 */  lw         $v0, %lo(D_800F5E60)($v0)
/* 2387C 800B8C7C 54400004 */  bnel       $v0, $zero, .L800B8C90
/* 23880 800B8C80 24040008 */   addiu     $a0, $zero, 0x8
/* 23884 800B8C84 0C02E55C */  jal        func_800B9570
/* 23888 800B8C88 00000000 */   nop
/* 2388C 800B8C8C 24040008 */  addiu      $a0, $zero, 0x8
.L800B8C90:
/* 23890 800B8C90 02602821 */  addu       $a1, $s3, $zero
/* 23894 800B8C94 3C062222 */  lui        $a2, (0x22222222 >> 16)
/* 23898 800B8C98 0C030298 */  jal        func_800C0A60
/* 2389C 800B8C9C 34C62222 */   ori       $a2, $a2, (0x22222222 & 0xFFFF)
/* 238A0 800B8CA0 2412FFFF */  addiu      $s2, $zero, -0x1
/* 238A4 800B8CA4 0C030690 */  jal        func_800C1A40
/* 238A8 800B8CA8 00002021 */   addu      $a0, $zero, $zero
/* 238AC 800B8CAC 00401821 */  addu       $v1, $v0, $zero
/* 238B0 800B8CB0 0070102A */  slt        $v0, $v1, $s0
/* 238B4 800B8CB4 10400005 */  beqz       $v0, .L800B8CCC
/* 238B8 800B8CB8 00000000 */   nop
/* 238BC 800B8CBC 00609021 */  addu       $s2, $v1, $zero
/* 238C0 800B8CC0 00002021 */  addu       $a0, $zero, $zero
/* 238C4 800B8CC4 0C030698 */  jal        func_800C1A60
/* 238C8 800B8CC8 02002821 */   addu      $a1, $s0, $zero
.L800B8CCC:
/* 238CC 800B8CCC 0C0319D0 */  jal        __osDisableInt
/* 238D0 800B8CD0 00000000 */   nop
/* 238D4 800B8CD4 3C118014 */  lui        $s1, %hi(D_80147640)
/* 238D8 800B8CD8 26317640 */  addiu      $s1, $s1, %lo(D_80147640)
/* 238DC 800B8CDC 02202021 */  addu       $a0, $s1, $zero
/* 238E0 800B8CE0 00002821 */  addu       $a1, $zero, $zero
/* 238E4 800B8CE4 3C06800C */  lui        $a2, %hi(func_800B91B0)
/* 238E8 800B8CE8 24C691B0 */  addiu      $a2, $a2, %lo(func_800B91B0)
/* 238EC 800B8CEC 24030001 */  addiu      $v1, $zero, 0x1
/* 238F0 800B8CF0 AE830000 */  sw         $v1, 0x0($s4)
/* 238F4 800B8CF4 3C038015 */  lui        $v1, %hi(D_8014A2A8)
/* 238F8 800B8CF8 2463A2A8 */  addiu      $v1, $v1, %lo(D_8014A2A8)
/* 238FC 800B8CFC 3C01800F */  lui        $at, %hi(D_800F5E30)
/* 23900 800B8D00 AC235E30 */  sw         $v1, %lo(D_800F5E30)($at)
/* 23904 800B8D04 3C03800C */  lui        $v1, %hi(func_800C6860)
/* 23908 800B8D08 24636860 */  addiu      $v1, $v1, %lo(func_800C6860)
/* 2390C 800B8D0C 3C01800F */  lui        $at, %hi(D_800F5E34)
/* 23910 800B8D10 AC235E34 */  sw         $v1, %lo(D_800F5E34)($at)
/* 23914 800B8D14 3C03800C */  lui        $v1, %hi(func_800B8DA0)
/* 23918 800B8D18 24638DA0 */  addiu      $v1, $v1, %lo(func_800B8DA0)
/* 2391C 800B8D1C 3C01800F */  lui        $at, %hi(D_800F5E38)
/* 23920 800B8D20 AC235E38 */  sw         $v1, %lo(D_800F5E38)($at)
/* 23924 800B8D24 3C038015 */  lui        $v1, %hi(D_801487F0)
/* 23928 800B8D28 246387F0 */  addiu      $v1, $v1, %lo(D_801487F0)
/* 2392C 800B8D2C AFB00014 */  sw         $s0, 0x14($sp)
/* 23930 800B8D30 00408021 */  addu       $s0, $v0, $zero
/* 23934 800B8D34 02803821 */  addu       $a3, $s4, $zero
/* 23938 800B8D38 3C01800F */  lui        $at, %hi(D_800F5E24)
/* 2393C 800B8D3C AC315E24 */  sw         $s1, %lo(D_800F5E24)($at)
/* 23940 800B8D40 3C01800F */  lui        $at, %hi(D_800F5E28)
/* 23944 800B8D44 AC355E28 */  sw         $s5, %lo(D_800F5E28)($at)
/* 23948 800B8D48 3C01800F */  lui        $at, %hi(D_800F5E2C)
/* 2394C 800B8D4C AC335E2C */  sw         $s3, %lo(D_800F5E2C)($at)
/* 23950 800B8D50 0C03065C */  jal        osCreateThread
/* 23954 800B8D54 AFA30010 */   sw        $v1, 0x10($sp)
/* 23958 800B8D58 0C0306CC */  jal        osStartThread
/* 2395C 800B8D5C 02202021 */   addu      $a0, $s1, $zero
/* 23960 800B8D60 0C0319EC */  jal        __osRestoreInt
/* 23964 800B8D64 02002021 */   addu      $a0, $s0, $zero
/* 23968 800B8D68 2402FFFF */  addiu      $v0, $zero, -0x1
/* 2396C 800B8D6C 12420003 */  beq        $s2, $v0, .L800B8D7C
/* 23970 800B8D70 00002021 */   addu      $a0, $zero, $zero
/* 23974 800B8D74 0C030698 */  jal        func_800C1A60
/* 23978 800B8D78 02402821 */   addu      $a1, $s2, $zero
.L800B8D7C:
/* 2397C 800B8D7C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 23980 800B8D80 8FB5002C */  lw         $s5, 0x2C($sp)
/* 23984 800B8D84 8FB40028 */  lw         $s4, 0x28($sp)
/* 23988 800B8D88 8FB30024 */  lw         $s3, 0x24($sp)
/* 2398C 800B8D8C 8FB20020 */  lw         $s2, 0x20($sp)
/* 23990 800B8D90 8FB1001C */  lw         $s1, 0x1C($sp)
/* 23994 800B8D94 8FB00018 */  lw         $s0, 0x18($sp)
/* 23998 800B8D98 03E00008 */  jr         $ra
/* 2399C 800B8D9C 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_800B8C10, . - func_800B8C10
