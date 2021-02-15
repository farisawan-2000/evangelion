.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A4CF8
/* F8F8 800A4CF8 00804821 */  addu       $t1, $a0, $zero
/* F8FC 800A4CFC 8D270000 */  lw         $a3, ($t1)
/* F900 800A4D00 00052C00 */  sll        $a1, $a1, 0x10
/* F904 800A4D04 00052C03 */  sra        $a1, $a1, 0x10
/* F908 800A4D08 00063400 */  sll        $a2, $a2, 0x10
/* F90C 800A4D0C 00063403 */  sra        $a2, $a2, 0x10
/* F910 800A4D10 94E20000 */  lhu        $v0, ($a3)
/* F914 800A4D14 94E40008 */  lhu        $a0, 8($a3)
/* F918 800A4D18 94E3000A */  lhu        $v1, 0xa($a3)
/* F91C 800A4D1C 00454021 */  addu       $t0, $v0, $a1
/* F920 800A4D20 94E20002 */  lhu        $v0, 2($a3)
/* F924 800A4D24 00862021 */  addu       $a0, $a0, $a2
/* F928 800A4D28 000330C0 */  sll        $a2, $v1, 3
/* F92C 800A4D2C 05010009 */  bgez       $t0, .L800A4D54
/* F930 800A4D30 000228C0 */   sll       $a1, $v0, 3
/* F934 800A4D34 01054021 */  addu       $t0, $t0, $a1
/* F938 800A4D38 91230020 */  lbu        $v1, 0x20($t1)
/* F93C 800A4D3C 24020006 */  addiu      $v0, $zero, 6
/* F940 800A4D40 14620004 */  bne        $v1, $v0, .L800A4D54
/* F944 800A4D44 2484FFE0 */   addiu     $a0, $a0, -0x20
/* F948 800A4D48 8CE20020 */  lw         $v0, 0x20($a3)
/* F94C 800A4D4C 2442FFE0 */  addiu      $v0, $v0, -0x20
/* F950 800A4D50 ACE20020 */  sw         $v0, 0x20($a3)
.L800A4D54:
/* F954 800A4D54 0105102A */  slt        $v0, $t0, $a1
/* F958 800A4D58 14400008 */  bnez       $v0, .L800A4D7C
/* F95C 800A4D5C 24020006 */   addiu     $v0, $zero, 6
/* F960 800A4D60 01054023 */  subu       $t0, $t0, $a1
/* F964 800A4D64 91230020 */  lbu        $v1, 0x20($t1)
/* F968 800A4D68 14620004 */  bne        $v1, $v0, .L800A4D7C
/* F96C 800A4D6C 24840020 */   addiu     $a0, $a0, 0x20
/* F970 800A4D70 8CE20020 */  lw         $v0, 0x20($a3)
/* F974 800A4D74 24420020 */  addiu      $v0, $v0, 0x20
/* F978 800A4D78 ACE20020 */  sw         $v0, 0x20($a3)
.L800A4D7C:
/* F97C 800A4D7C 04810009 */  bgez       $a0, .L800A4DA4
/* F980 800A4D80 0086102A */   slt       $v0, $a0, $a2
/* F984 800A4D84 91230020 */  lbu        $v1, 0x20($t1)
/* F988 800A4D88 24020006 */  addiu      $v0, $zero, 6
/* F98C 800A4D8C 14620004 */  bne        $v1, $v0, .L800A4DA0
/* F990 800A4D90 00862021 */   addu      $a0, $a0, $a2
/* F994 800A4D94 8CE20020 */  lw         $v0, 0x20($a3)
/* F998 800A4D98 00461021 */  addu       $v0, $v0, $a2
/* F99C 800A4D9C ACE20020 */  sw         $v0, 0x20($a3)
.L800A4DA0:
/* F9A0 800A4DA0 0086102A */  slt        $v0, $a0, $a2
.L800A4DA4:
/* F9A4 800A4DA4 54400009 */  bnezl      $v0, .L800A4DCC
/* F9A8 800A4DA8 A4E80000 */   sh        $t0, ($a3)
/* F9AC 800A4DAC 91230020 */  lbu        $v1, 0x20($t1)
/* F9B0 800A4DB0 24020006 */  addiu      $v0, $zero, 6
/* F9B4 800A4DB4 14620004 */  bne        $v1, $v0, .L800A4DC8
/* F9B8 800A4DB8 00862023 */   subu      $a0, $a0, $a2
/* F9BC 800A4DBC 8CE20020 */  lw         $v0, 0x20($a3)
/* F9C0 800A4DC0 00461023 */  subu       $v0, $v0, $a2
/* F9C4 800A4DC4 ACE20020 */  sw         $v0, 0x20($a3)
.L800A4DC8:
/* F9C8 800A4DC8 A4E80000 */  sh         $t0, ($a3)
.L800A4DCC:
/* F9CC 800A4DCC 03E00008 */  jr         $ra
/* F9D0 800A4DD0 A4E40008 */   sh        $a0, 8($a3)
