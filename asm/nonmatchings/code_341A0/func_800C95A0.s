.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C95A0
/* 341A0 800C95A0 00A6001A */  div        $zero, $a1, $a2
/* 341A4 800C95A4 14C00002 */  bnez       $a2, .L800C95B0
/* 341A8 800C95A8 00000000 */   nop
/* 341AC 800C95AC 0007000D */  break      7
.L800C95B0:
/* 341B0 800C95B0 2401FFFF */   addiu     $at, $zero, -1
/* 341B4 800C95B4 14C10004 */  bne        $a2, $at, .L800C95C8
/* 341B8 800C95B8 3C018000 */   lui       $at, 0x8000
/* 341BC 800C95BC 14A10002 */  bne        $a1, $at, .L800C95C8
/* 341C0 800C95C0 00000000 */   nop
/* 341C4 800C95C4 0006000D */  break      6
.L800C95C8:
/* 341C8 800C95C8 00001812 */   mflo      $v1
/* 341CC 800C95CC 00000000 */  nop
/* 341D0 800C95D0 00000000 */  nop
/* 341D4 800C95D4 00C30018 */  mult       $a2, $v1
/* 341D8 800C95D8 00001012 */  mflo       $v0
/* 341DC 800C95DC 27BDFFF8 */  addiu      $sp, $sp, -8
/* 341E0 800C95E0 00803821 */  addu       $a3, $a0, $zero
/* 341E4 800C95E4 AFA30000 */  sw         $v1, ($sp)
/* 341E8 800C95E8 00A22823 */  subu       $a1, $a1, $v0
/* 341EC 800C95EC 04610006 */  bgez       $v1, .L800C9608
/* 341F0 800C95F0 AFA50004 */   sw        $a1, 4($sp)
/* 341F4 800C95F4 18A00004 */  blez       $a1, .L800C9608
/* 341F8 800C95F8 24620001 */   addiu     $v0, $v1, 1
/* 341FC 800C95FC AFA20000 */  sw         $v0, ($sp)
/* 34200 800C9600 00A61023 */  subu       $v0, $a1, $a2
/* 34204 800C9604 AFA20004 */  sw         $v0, 4($sp)
.L800C9608:
/* 34208 800C9608 8FA20000 */  lw         $v0, ($sp)
/* 3420C 800C960C 8FA30004 */  lw         $v1, 4($sp)
/* 34210 800C9610 ACE20000 */  sw         $v0, ($a3)
/* 34214 800C9614 ACE30004 */  sw         $v1, 4($a3)
/* 34218 800C9618 00E01021 */  addu       $v0, $a3, $zero
/* 3421C 800C961C 03E00008 */  jr         $ra
/* 34220 800C9620 27BD0008 */   addiu     $sp, $sp, 8
