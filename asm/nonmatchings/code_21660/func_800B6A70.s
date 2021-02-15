.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B6A70
/* 21670 800B6A70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 21674 800B6A74 AFB00010 */  sw         $s0, 0x10($sp)
/* 21678 800B6A78 00A08021 */  addu       $s0, $a1, $zero
/* 2167C 800B6A7C 92050000 */  lbu        $a1, ($s0)
/* 21680 800B6A80 AFB10014 */  sw         $s1, 0x14($sp)
/* 21684 800B6A84 00808821 */  addu       $s1, $a0, $zero
/* 21688 800B6A88 10A00007 */  beqz       $a1, .L800B6AA8
/* 2168C 800B6A8C AFBF0018 */   sw        $ra, 0x18($sp)
.L800B6A90:
/* 21690 800B6A90 0C02DFD0 */  jal        func_800B7F40
/* 21694 800B6A94 02202021 */   addu      $a0, $s1, $zero
/* 21698 800B6A98 26100001 */  addiu      $s0, $s0, 1
/* 2169C 800B6A9C 92050000 */  lbu        $a1, ($s0)
/* 216A0 800B6AA0 14A0FFFB */  bnez       $a1, .L800B6A90
/* 216A4 800B6AA4 00000000 */   nop
.L800B6AA8:
/* 216A8 800B6AA8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 216AC 800B6AAC 8FB10014 */  lw         $s1, 0x14($sp)
/* 216B0 800B6AB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 216B4 800B6AB4 03E00008 */  jr         $ra
/* 216B8 800B6AB8 27BD0020 */   addiu     $sp, $sp, 0x20
/* 216BC 800B6ABC 00000000 */  nop
