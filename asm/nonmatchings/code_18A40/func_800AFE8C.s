.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AFE8C
/* 1AA8C 800AFE8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AA90 800AFE90 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AA94 800AFE94 00808021 */  addu       $s0, $a0, $zero
/* 1AA98 800AFE98 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1AA9C 800AFE9C 960300AA */  lhu        $v1, 0xaa($s0)
/* 1AAA0 800AFEA0 920200B6 */  lbu        $v0, 0xb6($s0)
/* 1AAA4 800AFEA4 00621823 */  subu       $v1, $v1, $v0
/* 1AAA8 800AFEA8 1C600004 */  bgtz       $v1, .L800AFEBC
/* 1AAAC 800AFEAC 00000000 */   nop
/* 1AAB0 800AFEB0 44800000 */  mtc1       $zero, $f0
/* 1AAB4 800AFEB4 0802BFB8 */  j          .L800AFEE0
/* 1AAB8 800AFEB8 00000000 */   nop
.L800AFEBC:
/* 1AABC 800AFEBC C60000DC */  lwc1       $f0, 0xdc($s0)
/* 1AAC0 800AFEC0 44836000 */  mtc1       $v1, $f12
/* 1AAC4 800AFEC4 00000000 */  nop
/* 1AAC8 800AFEC8 46806320 */  cvt.s.w    $f12, $f12
/* 1AACC 800AFECC 0C02FF68 */  jal        func_800BFDA0
/* 1AAD0 800AFED0 46006302 */   mul.s     $f12, $f12, $f0
/* 1AAD4 800AFED4 C6020020 */  lwc1       $f2, 0x20($s0)
/* 1AAD8 800AFED8 46020002 */  mul.s      $f0, $f0, $f2
/* 1AADC 800AFEDC E6000068 */  swc1       $f0, 0x68($s0)
.L800AFEE0:
/* 1AAE0 800AFEE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1AAE4 800AFEE4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AAE8 800AFEE8 03E00008 */  jr         $ra
/* 1AAEC 800AFEEC 27BD0018 */   addiu     $sp, $sp, 0x18
