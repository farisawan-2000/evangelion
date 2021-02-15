.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B5030
/* 1FC30 800B5030 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1FC34 800B5034 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FC38 800B5038 00808021 */  addu       $s0, $a0, $zero
/* 1FC3C 800B503C AFBF0018 */  sw         $ra, 0x18($sp)
/* 1FC40 800B5040 AFB10014 */  sw         $s1, 0x14($sp)
/* 1FC44 800B5044 8E020008 */  lw         $v0, 8($s0)
/* 1FC48 800B5048 10400015 */  beqz       $v0, .L800B50A0
/* 1FC4C 800B504C 00A08821 */   addu      $s1, $a1, $zero
/* 1FC50 800B5050 0C02D5BA */  jal        func_800B56E8
/* 1FC54 800B5054 00000000 */   nop
/* 1FC58 800B5058 00403021 */  addu       $a2, $v0, $zero
/* 1FC5C 800B505C 10C00010 */  beqz       $a2, .L800B50A0
/* 1FC60 800B5060 00000000 */   nop
/* 1FC64 800B5064 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1FC68 800B5068 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1FC6C 800B506C 8E030008 */  lw         $v1, 8($s0)
/* 1FC70 800B5070 8C44001C */  lw         $a0, 0x1c($v0)
/* 1FC74 800B5074 8C630088 */  lw         $v1, 0x88($v1)
/* 1FC78 800B5078 2402000C */  addiu      $v0, $zero, 0xc
/* 1FC7C 800B507C A4C20008 */  sh         $v0, 8($a2)
/* 1FC80 800B5080 322200FF */  andi       $v0, $s1, 0xff
/* 1FC84 800B5084 ACC2000C */  sw         $v0, 0xc($a2)
/* 1FC88 800B5088 ACC00000 */  sw         $zero, ($a2)
/* 1FC8C 800B508C 00832021 */  addu       $a0, $a0, $v1
/* 1FC90 800B5090 ACC40004 */  sw         $a0, 4($a2)
/* 1FC94 800B5094 8E040008 */  lw         $a0, 8($s0)
/* 1FC98 800B5098 0C02CD62 */  jal        func_800B3588
/* 1FC9C 800B509C 24050003 */   addiu     $a1, $zero, 3
.L800B50A0:
/* 1FCA0 800B50A0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1FCA4 800B50A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1FCA8 800B50A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FCAC 800B50AC 03E00008 */  jr         $ra
/* 1FCB0 800B50B0 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1FCB4 800B50B4 00000000 */  nop
/* 1FCB8 800B50B8 00000000 */  nop
/* 1FCBC 800B50BC 00000000 */  nop
