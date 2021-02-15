.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009FC28
/* A828 8009FC28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A82C 8009FC2C AFBF0014 */  sw         $ra, 0x14($sp)
/* A830 8009FC30 AFB00010 */  sw         $s0, 0x10($sp)
/* A834 8009FC34 8C820008 */  lw         $v0, 8($a0)
/* A838 8009FC38 00052C00 */  sll        $a1, $a1, 0x10
/* A83C 8009FC3C 00052B83 */  sra        $a1, $a1, 0xe
/* A840 8009FC40 00A22821 */  addu       $a1, $a1, $v0
/* A844 8009FC44 8CB00000 */  lw         $s0, ($a1)
/* A848 8009FC48 8E0300A0 */  lw         $v1, 0xa0($s0)
/* A84C 8009FC4C 10600019 */  beqz       $v1, .L8009FCB4
/* A850 8009FC50 24020001 */   addiu     $v0, $zero, 1
/* A854 8009FC54 90840000 */  lbu        $a0, ($a0)
/* A858 8009FC58 1082000F */  beq        $a0, $v0, .L8009FC98
/* A85C 8009FC5C 28820002 */   slti      $v0, $a0, 2
/* A860 8009FC60 50400005 */  beql       $v0, $zero, .L8009FC78
/* A864 8009FC64 24020002 */   addiu     $v0, $zero, 2
/* A868 8009FC68 10800007 */  beqz       $a0, .L8009FC88
/* A86C 8009FC6C 00000000 */   nop
/* A870 8009FC70 08027F2D */  j          .L8009FCB4
/* A874 8009FC74 AE0000A0 */   sw        $zero, 0xa0($s0)
.L8009FC78:
/* A878 8009FC78 1082000B */  beq        $a0, $v0, .L8009FCA8
/* A87C 8009FC7C 00000000 */   nop
/* A880 8009FC80 08027F2D */  j          .L8009FCB4
/* A884 8009FC84 AE0000A0 */   sw        $zero, 0xa0($s0)
.L8009FC88:
/* A888 8009FC88 0C0326A1 */  jal        func_800C9A84
/* A88C 8009FC8C 00602021 */   addu      $a0, $v1, $zero
/* A890 8009FC90 08027F2D */  j          .L8009FCB4
/* A894 8009FC94 AE0000A0 */   sw        $zero, 0xa0($s0)
.L8009FC98:
/* A898 8009FC98 0C025EC3 */  jal        func_80097B0C
/* A89C 8009FC9C 00602021 */   addu      $a0, $v1, $zero
/* A8A0 8009FCA0 08027F2D */  j          .L8009FCB4
/* A8A4 8009FCA4 AE0000A0 */   sw        $zero, 0xa0($s0)
.L8009FCA8:
/* A8A8 8009FCA8 0C026187 */  jal        func_8009861C
/* A8AC 8009FCAC 00602021 */   addu      $a0, $v1, $zero
/* A8B0 8009FCB0 AE0000A0 */  sw         $zero, 0xa0($s0)
.L8009FCB4:
/* A8B4 8009FCB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A8B8 8009FCB8 8FB00010 */  lw         $s0, 0x10($sp)
/* A8BC 8009FCBC 27BD0018 */  addiu      $sp, $sp, 0x18
/* A8C0 8009FCC0 03E00008 */  jr         $ra
/* A8C4 8009FCC4 00000000 */   nop
