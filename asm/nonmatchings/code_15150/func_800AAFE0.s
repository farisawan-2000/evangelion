.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AAFE0
/* 15BE0 800AAFE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 15BE4 800AAFE4 AFB00010 */  sw         $s0, 0x10($sp)
/* 15BE8 800AAFE8 3C108015 */  lui        $s0, %hi(D_80149E18)
/* 15BEC 800AAFEC 26109E18 */  addiu      $s0, $s0, %lo(D_80149E18)
/* 15BF0 800AAFF0 02002021 */  addu       $a0, $s0, $zero
/* 15BF4 800AAFF4 3C058010 */  lui        $a1, %hi(D_800FB26C)
/* 15BF8 800AAFF8 24A5B26C */  addiu      $a1, $a1, %lo(D_800FB26C)
/* 15BFC 800AAFFC 24060008 */  addiu      $a2, $zero, 8
/* 15C00 800AB000 AFBF0018 */  sw         $ra, 0x18($sp)
/* 15C04 800AB004 0C0327A8 */  jal        func_800C9EA0
/* 15C08 800AB008 AFB10014 */   sw        $s1, 0x14($sp)
/* 15C0C 800AB00C 00408821 */  addu       $s1, $v0, $zero
/* 15C10 800AB010 26040008 */  addiu      $a0, $s0, 8
/* 15C14 800AB014 3C058010 */  lui        $a1, %hi(D_800FB260)
/* 15C18 800AB018 24A5B260 */  addiu      $a1, $a1, %lo(D_800FB260)
/* 15C1C 800AB01C 0C0327A8 */  jal        func_800C9EA0
/* 15C20 800AB020 24060008 */   addiu     $a2, $zero, 8
/* 15C24 800AB024 02228825 */  or         $s1, $s1, $v0
/* 15C28 800AB028 02002021 */  addu       $a0, $s0, $zero
/* 15C2C 800AB02C 0C025C56 */  jal        func_80097158
/* 15C30 800AB030 24050038 */   addiu     $a1, $zero, 0x38
/* 15C34 800AB034 3C038015 */  lui        $v1, %hi(D_80149EE8)
/* 15C38 800AB038 8C639EE8 */  lw         $v1, %lo(D_80149EE8)($v1)
/* 15C3C 800AB03C 54620001 */  bnel       $v1, $v0, .L800AB044
/* 15C40 800AB040 36310001 */   ori       $s1, $s1, 1
.L800AB044:
/* 15C44 800AB044 12200005 */  beqz       $s1, .L800AB05C
/* 15C48 800AB048 00000000 */   nop
/* 15C4C 800AB04C 0C02AC1D */  jal        func_800AB074
/* 15C50 800AB050 00000000 */   nop
/* 15C54 800AB054 0C02AB72 */  jal        func_800AADC8
/* 15C58 800AB058 00000000 */   nop
.L800AB05C:
/* 15C5C 800AB05C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 15C60 800AB060 8FB10014 */  lw         $s1, 0x14($sp)
/* 15C64 800AB064 8FB00010 */  lw         $s0, 0x10($sp)
/* 15C68 800AB068 27BD0020 */  addiu      $sp, $sp, 0x20
/* 15C6C 800AB06C 03E00008 */  jr         $ra
/* 15C70 800AB070 00000000 */   nop
