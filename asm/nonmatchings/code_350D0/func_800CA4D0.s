.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800CA4D0
/* 350D0 800CA4D0 0000000D */  break
.L800CA4D4:
/* 350D4 800CA4D4 08032935 */   j         .L800CA4D4
/* 350D8 800CA4D8 00000000 */   nop
/* 350DC 800CA4DC 00000000 */  nop
/* 350E0 800CA4E0 00000000 */  nop
/* 350E4 800CA4E4 00A60019 */  multu      $a1, $a2
/* 350E8 800CA4E8 00004012 */  mflo       $t0
/* 350EC 800CA4EC 00000000 */  nop
/* 350F0 800CA4F0 00000000 */  nop
/* 350F4 800CA4F4 00870019 */  multu      $a0, $a3
/* 350F8 800CA4F8 00001812 */  mflo       $v1
/* 350FC 800CA4FC 01034021 */  addu       $t0, $t0, $v1
/* 35100 800CA500 00000000 */  nop
/* 35104 800CA504 00860019 */  multu      $a0, $a2
/* 35108 800CA508 00001812 */  mflo       $v1
/* 3510C 800CA50C 00001010 */  mfhi       $v0
/* 35110 800CA510 03E00008 */  jr         $ra
/* 35114 800CA514 00481021 */   addu      $v0, $v0, $t0
