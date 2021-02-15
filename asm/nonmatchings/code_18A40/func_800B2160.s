.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B2160
/* 1CD60 800B2160 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CD64 800B2164 AFB00010 */  sw         $s0, 0x10($sp)
/* 1CD68 800B2168 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CD6C 800B216C 0C02C873 */  jal        func_800B21CC
/* 1CD70 800B2170 00808021 */   addu      $s0, $a0, $zero
/* 1CD74 800B2174 00402821 */  addu       $a1, $v0, $zero
/* 1CD78 800B2178 14A00003 */  bnez       $a1, .L800B2188
/* 1CD7C 800B217C 3C03FF00 */   lui       $v1, 0xff00
/* 1CD80 800B2180 0802C86D */  j          .L800B21B4
/* 1CD84 800B2184 02002021 */   addu      $a0, $s0, $zero
.L800B2188:
/* 1CD88 800B2188 02031024 */  and        $v0, $s0, $v1
/* 1CD8C 800B218C 14430005 */  bne        $v0, $v1, .L800B21A4
/* 1CD90 800B2190 3C0200FF */   lui       $v0, 0xff
/* 1CD94 800B2194 3442FFFF */  ori        $v0, $v0, 0xffff
/* 1CD98 800B2198 02028024 */  and        $s0, $s0, $v0
/* 1CD9C 800B219C 3C020014 */  lui        $v0, 0x14
/* 1CDA0 800B21A0 02028021 */  addu       $s0, $s0, $v0
.L800B21A4:
/* 1CDA4 800B21A4 8CA40010 */  lw         $a0, 0x10($a1)
/* 1CDA8 800B21A8 8CA2000C */  lw         $v0, 0xc($a1)
/* 1CDAC 800B21AC 00902021 */  addu       $a0, $a0, $s0
/* 1CDB0 800B21B0 00822023 */  subu       $a0, $a0, $v0
.L800B21B4:
/* 1CDB4 800B21B4 0C02F680 */  jal        func_800BDA00
/* 1CDB8 800B21B8 00000000 */   nop
/* 1CDBC 800B21BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1CDC0 800B21C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1CDC4 800B21C4 03E00008 */  jr         $ra
/* 1CDC8 800B21C8 27BD0018 */   addiu     $sp, $sp, 0x18
