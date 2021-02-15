.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800CA614
/* 35214 800CA614 0087001B */  divu       $zero, $a0, $a3
/* 35218 800CA618 14E00002 */  bnez       $a3, .L800CA624
/* 3521C 800CA61C 00000000 */   nop
/* 35220 800CA620 0007000D */  break      7
.L800CA624:
/* 35224 800CA624 00005012 */   mflo      $t2
/* 35228 800CA628 00002010 */  mfhi       $a0
/* 3522C 800CA62C 01084026 */  xor        $t0, $t0, $t0
.L800CA630:
/* 35230 800CA630 1080001E */  beqz       $a0, .L800CA6AC
/* 35234 800CA634 00000000 */   nop
/* 35238 800CA638 00A01821 */  addu       $v1, $a1, $zero
/* 3523C 800CA63C 00801021 */  addu       $v0, $a0, $zero
/* 35240 800CA640 00E04821 */  addu       $t1, $a3, $zero
.L800CA644:
/* 35244 800CA644 0002CFC0 */  sll        $t9, $v0, 0x1f
/* 35248 800CA648 00031842 */  srl        $v1, $v1, 1
/* 3524C 800CA64C 00791825 */  or         $v1, $v1, $t9
/* 35250 800CA650 00021042 */  srl        $v0, $v0, 1
/* 35254 800CA654 1440FFFB */  bnez       $v0, .L800CA644
/* 35258 800CA658 00094842 */   srl       $t1, $t1, 1
/* 3525C 800CA65C 25290001 */  addiu      $t1, $t1, 1
/* 35260 800CA660 0069001B */  divu       $zero, $v1, $t1
/* 35264 800CA664 15200002 */  bnez       $t1, .L800CA670
/* 35268 800CA668 00000000 */   nop
/* 3526C 800CA66C 0007000D */  break      7
.L800CA670:
/* 35270 800CA670 00001812 */   mflo      $v1
/* 35274 800CA674 00421026 */  xor        $v0, $v0, $v0
/* 35278 800CA678 01034021 */  addu       $t0, $t0, $v1
/* 3527C 800CA67C 0103C82B */  sltu       $t9, $t0, $v1
/* 35280 800CA680 01425021 */  addu       $t2, $t2, $v0
/* 35284 800CA684 01595021 */  addu       $t2, $t2, $t9
/* 35288 800CA688 00000000 */  nop
/* 3528C 800CA68C 00670019 */  multu      $v1, $a3
/* 35290 800CA690 00001812 */  mflo       $v1
/* 35294 800CA694 00001010 */  mfhi       $v0
/* 35298 800CA698 00A3C82B */  sltu       $t9, $a1, $v1
/* 3529C 800CA69C 00A32823 */  subu       $a1, $a1, $v1
/* 352A0 800CA6A0 00822023 */  subu       $a0, $a0, $v0
/* 352A4 800CA6A4 0803298C */  j          .L800CA630
/* 352A8 800CA6A8 00992023 */   subu      $a0, $a0, $t9
.L800CA6AC:
/* 352AC 800CA6AC 00A7001B */  divu       $zero, $a1, $a3
/* 352B0 800CA6B0 14E00002 */  bnez       $a3, .L800CA6BC
/* 352B4 800CA6B4 00000000 */   nop
/* 352B8 800CA6B8 0007000D */  break      7
.L800CA6BC:
/* 352BC 800CA6BC 00001812 */   mflo      $v1
/* 352C0 800CA6C0 00004810 */  mfhi       $t1
/* 352C4 800CA6C4 00421026 */  xor        $v0, $v0, $v0
/* 352C8 800CA6C8 00681821 */  addu       $v1, $v1, $t0
/* 352CC 800CA6CC 0068C82B */  sltu       $t9, $v1, $t0
/* 352D0 800CA6D0 004A1021 */  addu       $v0, $v0, $t2
/* 352D4 800CA6D4 03E00008 */  jr         $ra
/* 352D8 800CA6D8 00591021 */   addu      $v0, $v0, $t9
/* 352DC 800CA6DC 00000000 */  nop
