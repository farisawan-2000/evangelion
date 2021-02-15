.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800CA6E0
/* 352E0 800CA6E0 3C088000 */  lui        $t0, 0x8000
/* 352E4 800CA6E4 00801821 */  addu       $v1, $a0, $zero
/* 352E8 800CA6E8 00661826 */  xor        $v1, $v1, $a2
/* 352EC 800CA6EC 0104C824 */  and        $t9, $t0, $a0
/* 352F0 800CA6F0 13200007 */  beqz       $t9, .L800CA710
/* 352F4 800CA6F4 00000000 */   nop
/* 352F8 800CA6F8 2409FFFF */  addiu      $t1, $zero, -1
/* 352FC 800CA6FC 00A92826 */  xor        $a1, $a1, $t1
/* 35300 800CA700 00892026 */  xor        $a0, $a0, $t1
/* 35304 800CA704 24A50001 */  addiu      $a1, $a1, 1
/* 35308 800CA708 2CB90001 */  sltiu      $t9, $a1, 1
/* 3530C 800CA70C 00992021 */  addu       $a0, $a0, $t9
.L800CA710:
/* 35310 800CA710 0106C824 */  and        $t9, $t0, $a2
/* 35314 800CA714 13200007 */  beqz       $t9, .L800CA734
/* 35318 800CA718 00000000 */   nop
/* 3531C 800CA71C 2409FFFF */  addiu      $t1, $zero, -1
/* 35320 800CA720 00E93826 */  xor        $a3, $a3, $t1
/* 35324 800CA724 00C93026 */  xor        $a2, $a2, $t1
/* 35328 800CA728 24E70001 */  addiu      $a3, $a3, 1
/* 3532C 800CA72C 2CF90001 */  sltiu      $t9, $a3, 1
/* 35330 800CA730 00D93021 */  addu       $a2, $a2, $t9
.L800CA734:
/* 35334 800CA734 00681824 */  and        $v1, $v1, $t0
/* 35338 800CA738 10600045 */  beqz       $v1, .L800CA850
/* 3533C 800CA73C 00000000 */   nop
/* 35340 800CA740 14C00006 */  bnez       $a2, .L800CA75C
/* 35344 800CA744 00000000 */   nop
/* 35348 800CA748 03E06821 */  addu       $t5, $ra, $zero
/* 3534C 800CA74C 0C032985 */  jal        func_800CA614
/* 35350 800CA750 00000000 */   nop
/* 35354 800CA754 080329DB */  j          .L800CA76C
/* 35358 800CA758 01A0F821 */   addu      $ra, $t5, $zero
.L800CA75C:
/* 3535C 800CA75C 03E06821 */  addu       $t5, $ra, $zero
/* 35360 800CA760 0C032946 */  jal        func_800CA518
/* 35364 800CA764 00000000 */   nop
/* 35368 800CA768 01A0F821 */  addu       $ra, $t5, $zero
.L800CA76C:
/* 3536C 800CA76C 2407FFFF */  addiu      $a3, $zero, -1
/* 35370 800CA770 00671826 */  xor        $v1, $v1, $a3
/* 35374 800CA774 00471026 */  xor        $v0, $v0, $a3
/* 35378 800CA778 24630001 */  addiu      $v1, $v1, 1
/* 3537C 800CA77C 2C790001 */  sltiu      $t9, $v1, 1
/* 35380 800CA780 03E00008 */  jr         $ra
/* 35384 800CA784 00591021 */   addu      $v0, $v0, $t9
/* 35388 800CA788 00000000 */  nop
/* 3538C 800CA78C 00000000 */  nop
/* 35390 800CA790 3C088000 */  lui        $t0, 0x8000
/* 35394 800CA794 00801821 */  addu       $v1, $a0, $zero
/* 35398 800CA798 0104C824 */  and        $t9, $t0, $a0
/* 3539C 800CA79C 13200007 */  beqz       $t9, .L800CA7BC
/* 353A0 800CA7A0 00000000 */   nop
/* 353A4 800CA7A4 2409FFFF */  addiu      $t1, $zero, -1
/* 353A8 800CA7A8 00A92826 */  xor        $a1, $a1, $t1
/* 353AC 800CA7AC 00892026 */  xor        $a0, $a0, $t1
/* 353B0 800CA7B0 24A50001 */  addiu      $a1, $a1, 1
/* 353B4 800CA7B4 2CB90001 */  sltiu      $t9, $a1, 1
/* 353B8 800CA7B8 00992021 */  addu       $a0, $a0, $t9
.L800CA7BC:
/* 353BC 800CA7BC 0106C824 */  and        $t9, $t0, $a2
/* 353C0 800CA7C0 13200007 */  beqz       $t9, .L800CA7E0
/* 353C4 800CA7C4 00000000 */   nop
/* 353C8 800CA7C8 2409FFFF */  addiu      $t1, $zero, -1
/* 353CC 800CA7CC 00E93826 */  xor        $a3, $a3, $t1
/* 353D0 800CA7D0 00C93026 */  xor        $a2, $a2, $t1
/* 353D4 800CA7D4 24E70001 */  addiu      $a3, $a3, 1
/* 353D8 800CA7D8 2CF90001 */  sltiu      $t9, $a3, 1
/* 353DC 800CA7DC 00D93021 */  addu       $a2, $a2, $t9
.L800CA7E0:
/* 353E0 800CA7E0 00681824 */  and        $v1, $v1, $t0
/* 353E4 800CA7E4 10600022 */  beqz       $v1, .L800CA870
/* 353E8 800CA7E8 00000000 */   nop
/* 353EC 800CA7EC 14C00008 */  bnez       $a2, .L800CA810
/* 353F0 800CA7F0 00000000 */   nop
/* 353F4 800CA7F4 03E06821 */  addu       $t5, $ra, $zero
/* 353F8 800CA7F8 0C032985 */  jal        func_800CA614
/* 353FC 800CA7FC 00000000 */   nop
/* 35400 800CA800 01A0F821 */  addu       $ra, $t5, $zero
/* 35404 800CA804 01201821 */  addu       $v1, $t1, $zero
/* 35408 800CA808 08032A0A */  j          .L800CA828
/* 3540C 800CA80C 00421026 */   xor       $v0, $v0, $v0
.L800CA810:
/* 35410 800CA810 03E06821 */  addu       $t5, $ra, $zero
/* 35414 800CA814 0C032946 */  jal        func_800CA518
/* 35418 800CA818 00000000 */   nop
/* 3541C 800CA81C 01A0F821 */  addu       $ra, $t5, $zero
/* 35420 800CA820 00A01821 */  addu       $v1, $a1, $zero
/* 35424 800CA824 00801021 */  addu       $v0, $a0, $zero
.L800CA828:
/* 35428 800CA828 2407FFFF */  addiu      $a3, $zero, -1
/* 3542C 800CA82C 00671826 */  xor        $v1, $v1, $a3
/* 35430 800CA830 00471026 */  xor        $v0, $v0, $a3
/* 35434 800CA834 24630001 */  addiu      $v1, $v1, 1
/* 35438 800CA838 2C790001 */  sltiu      $t9, $v1, 1
/* 3543C 800CA83C 03E00008 */  jr         $ra
/* 35440 800CA840 00591021 */   addu      $v0, $v0, $t9
/* 35444 800CA844 00000000 */  nop
/* 35448 800CA848 00000000 */  nop
/* 3544C 800CA84C 00000000 */  nop
