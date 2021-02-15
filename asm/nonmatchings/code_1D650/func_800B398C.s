.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B398C
/* 1E58C 800B398C 000528C3 */  sra        $a1, $a1, 3
/* 1E590 800B3990 10A0000D */  beqz       $a1, .L800B39C8
/* 1E594 800B3994 00061C00 */   sll       $v1, $a2, 0x10
/* 1E598 800B3998 30E2FFFF */  andi       $v0, $a3, 0xffff
/* 1E59C 800B399C 00450018 */  mult       $v0, $a1
/* 1E5A0 800B39A0 00001012 */  mflo       $v0
/* 1E5A4 800B39A4 00031C03 */  sra        $v1, $v1, 0x10
/* 1E5A8 800B39A8 00000000 */  nop
/* 1E5AC 800B39AC 00650018 */  mult       $v1, $a1
/* 1E5B0 800B39B0 00001812 */  mflo       $v1
/* 1E5B4 800B39B4 00021403 */  sra        $v0, $v0, 0x10
/* 1E5B8 800B39B8 00431021 */  addu       $v0, $v0, $v1
/* 1E5BC 800B39BC 00821021 */  addu       $v0, $a0, $v0
/* 1E5C0 800B39C0 0802CE73 */  j          .L800B39CC
/* 1E5C4 800B39C4 00021400 */   sll       $v0, $v0, 0x10
.L800B39C8:
/* 1E5C8 800B39C8 00041400 */  sll        $v0, $a0, 0x10
.L800B39CC:
/* 1E5CC 800B39CC 03E00008 */  jr         $ra
/* 1E5D0 800B39D0 00021403 */   sra       $v0, $v0, 0x10
/* 1E5D4 800B39D4 00000000 */  nop
/* 1E5D8 800B39D8 00000000 */  nop
/* 1E5DC 800B39DC 00000000 */  nop
