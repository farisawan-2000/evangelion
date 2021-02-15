.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80098350
/* 2F50 80098350 2CA20020 */  sltiu      $v0, $a1, 0x20
/* 2F54 80098354 1440000B */  bnez       $v0, .L80098384
/* 2F58 80098358 2402FFFF */   addiu     $v0, $zero, -1
/* 2F5C 8009835C 2482000F */  addiu      $v0, $a0, 0xf
/* 2F60 80098360 2403FFF0 */  addiu      $v1, $zero, -0x10
/* 2F64 80098364 00431024 */  and        $v0, $v0, $v1
/* 2F68 80098368 00441823 */  subu       $v1, $v0, $a0
/* 2F6C 8009836C 00A32823 */  subu       $a1, $a1, $v1
/* 2F70 80098370 24A3FFF0 */  addiu      $v1, $a1, -0x10
/* 2F74 80098374 AC400000 */  sw         $zero, ($v0)
/* 2F78 80098378 AC430004 */  sw         $v1, 4($v0)
/* 2F7C 8009837C AC400008 */  sw         $zero, 8($v0)
/* 2F80 80098380 AC45000C */  sw         $a1, 0xc($v0)
.L80098384:
/* 2F84 80098384 03E00008 */  jr         $ra
/* 2F88 80098388 00000000 */   nop
