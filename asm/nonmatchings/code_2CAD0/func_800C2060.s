.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C2060
/* 2CC60 800C2060 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2CC64 800C2064 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2CC68 800C2068 AFB00018 */  sw         $s0, 0x18($sp)
/* 2CC6C 800C206C 00808021 */  addu       $s0, $a0, $zero
/* 2CC70 800C2070 00A08821 */  addu       $s1, $a1, $zero
/* 2CC74 800C2074 AFBF0024 */  sw         $ra, 0x24($sp)
/* 2CC78 800C2078 0C0319D0 */  jal        func_800C6740
/* 2CC7C 800C207C AFB20020 */   sw        $s2, 0x20($sp)
/* 2CC80 800C2080 0C031E38 */  jal        func_800C78E0
/* 2CC84 800C2084 00409021 */   addu      $s2, $v0, $zero
/* 2CC88 800C2088 00402821 */  addu       $a1, $v0, $zero
/* 2CC8C 800C208C 00002021 */  addu       $a0, $zero, $zero
/* 2CC90 800C2090 3C018017 */  lui        $at, %hi(D_8016D0D8)
/* 2CC94 800C2094 AC22D0D8 */  sw         $v0, %lo(D_8016D0D8)($at)
/* 2CC98 800C2098 0C031E40 */  jal        func_800C7900
/* 2CC9C 800C209C 02252021 */   addu      $a0, $s1, $a1
/* 2CCA0 800C20A0 0C0319EC */  jal        func_800C67B0
/* 2CCA4 800C20A4 02402021 */   addu      $a0, $s2, $zero
/* 2CCA8 800C20A8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 2CCAC 800C20AC 8FB20020 */  lw         $s2, 0x20($sp)
/* 2CCB0 800C20B0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2CCB4 800C20B4 8FB00018 */  lw         $s0, 0x18($sp)
/* 2CCB8 800C20B8 03E00008 */  jr         $ra
/* 2CCBC 800C20BC 27BD0028 */   addiu     $sp, $sp, 0x28
