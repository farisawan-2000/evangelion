glabel func_800AB6C0
/* 162C0 800AB6C0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 162C4 800AB6C4 00042400 */  sll        $a0, $a0, 16
/* 162C8 800AB6C8 00042403 */  sra        $a0, $a0, 16
/* 162CC 800AB6CC 00041080 */  sll        $v0, $a0, 2
/* 162D0 800AB6D0 00441021 */  addu       $v0, $v0, $a0
/* 162D4 800AB6D4 000210C0 */  sll        $v0, $v0, 3
/* 162D8 800AB6D8 AFBF002C */  sw         $ra, 0x2C($sp)
/* 162DC 800AB6DC AFB60028 */  sw         $s6, 0x28($sp)
/* 162E0 800AB6E0 AFB50024 */  sw         $s5, 0x24($sp)
/* 162E4 800AB6E4 AFB40020 */  sw         $s4, 0x20($sp)
/* 162E8 800AB6E8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 162EC 800AB6EC AFB20018 */  sw         $s2, 0x18($sp)
/* 162F0 800AB6F0 AFB10014 */  sw         $s1, 0x14($sp)
/* 162F4 800AB6F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 162F8 800AB6F8 3C16800D */  lui        $s6, %hi(gOverlayTable)
/* 162FC 800AB6FC 02C2B021 */  addu       $s6, $s6, $v0
/* 16300 800AB700 8ED64F50 */  lw         $s6, %lo(gOverlayTable)($s6)
/* 16304 800AB704 3C04800D */  lui        $a0, %hi(D_800D4F60)
/* 16308 800AB708 00822021 */  addu       $a0, $a0, $v0
/* 1630C 800AB70C 8C844F60 */  lw         $a0, %lo(D_800D4F60)($a0)
/* 16310 800AB710 3C05800D */  lui        $a1, %hi(D_800D4F64)
/* 16314 800AB714 00A22821 */  addu       $a1, $a1, $v0
/* 16318 800AB718 8CA54F64 */  lw         $a1, %lo(D_800D4F64)($a1)
/* 1631C 800AB71C 3C12800D */  lui        $s2, %hi(D_800D4F54)
/* 16320 800AB720 02429021 */  addu       $s2, $s2, $v0
/* 16324 800AB724 8E524F54 */  lw         $s2, %lo(D_800D4F54)($s2)
/* 16328 800AB728 3C13800D */  lui        $s3, %hi(D_800D4F68)
/* 1632C 800AB72C 02629821 */  addu       $s3, $s3, $v0
/* 16330 800AB730 8E734F68 */  lw         $s3, %lo(D_800D4F68)($s3)
/* 16334 800AB734 3C10800D */  lui        $s0, %hi(D_800D4F6C)
/* 16338 800AB738 02028021 */  addu       $s0, $s0, $v0
/* 1633C 800AB73C 8E104F6C */  lw         $s0, %lo(D_800D4F6C)($s0)
/* 16340 800AB740 3C15800D */  lui        $s5, %hi(D_800D4F70)
/* 16344 800AB744 02A2A821 */  addu       $s5, $s5, $v0
/* 16348 800AB748 8EB54F70 */  lw         $s5, %lo(D_800D4F70)($s5)
/* 1634C 800AB74C 3C11800D */  lui        $s1, %hi(D_800D4F74)
/* 16350 800AB750 02228821 */  addu       $s1, $s1, $v0
/* 16354 800AB754 8E314F74 */  lw         $s1, %lo(D_800D4F74)($s1)
/* 16358 800AB758 3C14800D */  lui        $s4, %hi(D_800D4F58)
/* 1635C 800AB75C 0282A021 */  addu       $s4, $s4, $v0
/* 16360 800AB760 8E944F58 */  lw         $s4, %lo(D_800D4F58)($s4)
/* 16364 800AB764 00A42823 */  subu       $a1, $a1, $a0
/* 16368 800AB768 02569023 */  subu       $s2, $s2, $s6
/* 1636C 800AB76C 02138023 */  subu       $s0, $s0, $s3
/* 16370 800AB770 0C02F4F0 */  jal        func_800BD3C0
/* 16374 800AB774 02358823 */   subu      $s1, $s1, $s5
/* 16378 800AB778 02602021 */  addu       $a0, $s3, $zero
/* 1637C 800AB77C 0C02F4C4 */  jal        osInvalDCache
/* 16380 800AB780 02002821 */   addu      $a1, $s0, $zero
/* 16384 800AB784 02C02021 */  addu       $a0, $s6, $zero
/* 16388 800AB788 02802821 */  addu       $a1, $s4, $zero
/* 1638C 800AB78C 0C02645D */  jal        func_80099174
/* 16390 800AB790 02403021 */   addu      $a2, $s2, $zero
/* 16394 800AB794 02A02021 */  addu       $a0, $s5, $zero
/* 16398 800AB798 0C030134 */  jal        bzero
/* 1639C 800AB79C 02202821 */   addu      $a1, $s1, $zero
/* 163A0 800AB7A0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 163A4 800AB7A4 8FB60028 */  lw         $s6, 0x28($sp)
/* 163A8 800AB7A8 8FB50024 */  lw         $s5, 0x24($sp)
/* 163AC 800AB7AC 8FB40020 */  lw         $s4, 0x20($sp)
/* 163B0 800AB7B0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 163B4 800AB7B4 8FB20018 */  lw         $s2, 0x18($sp)
/* 163B8 800AB7B8 8FB10014 */  lw         $s1, 0x14($sp)
/* 163BC 800AB7BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 163C0 800AB7C0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 163C4 800AB7C4 03E00008 */  jr         $ra
/* 163C8 800AB7C8 00000000 */   nop
.size func_800AB6C0, . - func_800AB6C0
