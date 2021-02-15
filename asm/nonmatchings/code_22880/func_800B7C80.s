.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7C80
/* 22880 800B7C80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 22884 800B7C84 AFB00020 */  sw         $s0, 0x20($sp)
/* 22888 800B7C88 00808021 */  addu       $s0, $a0, $zero
/* 2288C 800B7C8C 24040301 */  addiu      $a0, $zero, 0x301
/* 22890 800B7C90 27A50010 */  addiu      $a1, $sp, 0x10
/* 22894 800B7C94 AFBF0024 */  sw         $ra, 0x24($sp)
/* 22898 800B7C98 0C02E01E */  jal        func_800B8078
/* 2289C 800B7C9C A3B00010 */   sb        $s0, 0x10($sp)
/* 228A0 800B7CA0 00402021 */  addu       $a0, $v0, $zero
/* 228A4 800B7CA4 14800009 */  bnez       $a0, .L800B7CCC
/* 228A8 800B7CA8 00101080 */   sll       $v0, $s0, 2
/* 228AC 800B7CAC 00501021 */  addu       $v0, $v0, $s0
/* 228B0 800B7CB0 00021040 */  sll        $v0, $v0, 1
/* 228B4 800B7CB4 24030002 */  addiu      $v1, $zero, 2
/* 228B8 800B7CB8 3C018015 */  lui        $at, %hi(D_8014A009)
/* 228BC 800B7CBC 00220821 */  addu       $at, $at, $v0
/* 228C0 800B7CC0 A023A009 */  sb         $v1, %lo(D_8014A009)($at)
/* 228C4 800B7CC4 0802DF39 */  j          .L800B7CE4
/* 228C8 800B7CC8 00801021 */   addu      $v0, $a0, $zero
.L800B7CCC:
/* 228CC 800B7CCC 00501021 */  addu       $v0, $v0, $s0
/* 228D0 800B7CD0 00021040 */  sll        $v0, $v0, 1
/* 228D4 800B7CD4 3C018015 */  lui        $at, %hi(D_8014A009)
/* 228D8 800B7CD8 00220821 */  addu       $at, $at, $v0
/* 228DC 800B7CDC A020A009 */  sb         $zero, %lo(D_8014A009)($at)
/* 228E0 800B7CE0 00801021 */  addu       $v0, $a0, $zero
.L800B7CE4:
/* 228E4 800B7CE4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 228E8 800B7CE8 8FB00020 */  lw         $s0, 0x20($sp)
/* 228EC 800B7CEC 03E00008 */  jr         $ra
/* 228F0 800B7CF0 27BD0028 */   addiu     $sp, $sp, 0x28
/* 228F4 800B7CF4 00000000 */  nop
/* 228F8 800B7CF8 00000000 */  nop
/* 228FC 800B7CFC 00000000 */  nop
