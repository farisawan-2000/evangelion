.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009CF48
/* 7B48 8009CF48 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 7B4C 8009CF4C 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 7B50 8009CF50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7B54 8009CF54 30422000 */  andi       $v0, $v0, 0x2000
/* 7B58 8009CF58 10400009 */  beqz       $v0, .L8009CF80
/* 7B5C 8009CF5C AFBF0010 */   sw        $ra, 0x10($sp)
/* 7B60 8009CF60 3C028015 */  lui        $v0, %hi(D_8014A06C)
/* 7B64 8009CF64 2442A06C */  addiu      $v0, $v0, %lo(D_8014A06C)
/* 7B68 8009CF68 C4400000 */  lwc1       $f0, ($v0)
/* 7B6C 8009CF6C 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 7B70 8009CF70 C422CFA8 */  lwc1       $f2, %lo(D_8014CFA8)($at)
/* 7B74 8009CF74 46020001 */  sub.s      $f0, $f0, $f2
/* 7B78 8009CF78 080273EE */  j          .L8009CFB8
/* 7B7C 8009CF7C E4400000 */   swc1      $f0, ($v0)
.L8009CF80:
/* 7B80 8009CF80 3C028015 */  lui        $v0, %hi(D_8014A064)
/* 7B84 8009CF84 2442A064 */  addiu      $v0, $v0, %lo(D_8014A064)
/* 7B88 8009CF88 C4440000 */  lwc1       $f4, ($v0)
/* 7B8C 8009CF8C 3C018015 */  lui        $at, %hi(D_8014CFA4)
/* 7B90 8009CF90 C420CFA4 */  lwc1       $f0, %lo(D_8014CFA4)($at)
/* 7B94 8009CF94 3C018015 */  lui        $at, %hi(D_8014A068)
/* 7B98 8009CF98 C422A068 */  lwc1       $f2, %lo(D_8014A068)($at)
/* 7B9C 8009CF9C 46002101 */  sub.s      $f4, $f4, $f0
/* 7BA0 8009CFA0 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 7BA4 8009CFA4 C420CFA8 */  lwc1       $f0, %lo(D_8014CFA8)($at)
/* 7BA8 8009CFA8 46001081 */  sub.s      $f2, $f2, $f0
/* 7BAC 8009CFAC E4440000 */  swc1       $f4, ($v0)
/* 7BB0 8009CFB0 3C018015 */  lui        $at, %hi(D_8014A068)
/* 7BB4 8009CFB4 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
.L8009CFB8:
/* 7BB8 8009CFB8 0C02741E */  jal        func_8009D078
/* 7BBC 8009CFBC 00000000 */   nop
/* 7BC0 8009CFC0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7BC4 8009CFC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BC8 8009CFC8 03E00008 */  jr         $ra
/* 7BCC 8009CFCC 00000000 */   nop
