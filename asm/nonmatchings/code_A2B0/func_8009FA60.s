glabel func_8009FA60
/* A660 8009FA60 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A664 8009FA64 AFB00018 */  sw         $s0, 0x18($sp)
/* A668 8009FA68 00808021 */  addu       $s0, $a0, $zero
/* A66C 8009FA6C AFBF002C */  sw         $ra, 0x2C($sp)
/* A670 8009FA70 AFB40028 */  sw         $s4, 0x28($sp)
/* A674 8009FA74 AFB30024 */  sw         $s3, 0x24($sp)
/* A678 8009FA78 AFB20020 */  sw         $s2, 0x20($sp)
/* A67C 8009FA7C 12000061 */  beqz       $s0, .L8009FC04
/* A680 8009FA80 AFB1001C */   sw        $s1, 0x1C($sp)
/* A684 8009FA84 86020064 */  lh         $v0, 0x64($s0)
/* A688 8009FA88 1840003D */  blez       $v0, .L8009FB80
/* A68C 8009FA8C 00009021 */   addu      $s2, $zero, $zero
/* A690 8009FA90 24140001 */  addiu      $s4, $zero, 0x1
/* A694 8009FA94 24130002 */  addiu      $s3, $zero, 0x2
.L8009FA98:
/* A698 8009FA98 8E030008 */  lw         $v1, 0x8($s0)
/* A69C 8009FA9C 00121080 */  sll        $v0, $s2, 2
/* A6A0 8009FAA0 00431021 */  addu       $v0, $v0, $v1
/* A6A4 8009FAA4 8C510000 */  lw         $s1, 0x0($v0)
/* A6A8 8009FAA8 8E2400A0 */  lw         $a0, 0xA0($s1)
/* A6AC 8009FAAC 10800018 */  beqz       $a0, .L8009FB10
/* A6B0 8009FAB0 00000000 */   nop
/* A6B4 8009FAB4 92030000 */  lbu        $v1, 0x0($s0)
/* A6B8 8009FAB8 1074000F */  beq        $v1, $s4, .L8009FAF8
/* A6BC 8009FABC 28620002 */   slti      $v0, $v1, 0x2
/* A6C0 8009FAC0 10400005 */  beqz       $v0, .L8009FAD8
/* A6C4 8009FAC4 00000000 */   nop
/* A6C8 8009FAC8 10600007 */  beqz       $v1, .L8009FAE8
/* A6CC 8009FACC 00000000 */   nop
/* A6D0 8009FAD0 08027EC5 */  j          .L8009FB14
/* A6D4 8009FAD4 00000000 */   nop
.L8009FAD8:
/* A6D8 8009FAD8 1073000B */  beq        $v1, $s3, .L8009FB08
/* A6DC 8009FADC 00000000 */   nop
/* A6E0 8009FAE0 08027EC4 */  j          .L8009FB10
/* A6E4 8009FAE4 00000000 */   nop
.L8009FAE8:
/* A6E8 8009FAE8 0C0326A1 */  jal        func_800C9A84
/* A6EC 8009FAEC 00000000 */   nop
/* A6F0 8009FAF0 08027EC4 */  j          .L8009FB10
/* A6F4 8009FAF4 00000000 */   nop
.L8009FAF8:
/* A6F8 8009FAF8 0C025EC3 */  jal        func_80097B0C
/* A6FC 8009FAFC 00000000 */   nop
/* A700 8009FB00 08027EC4 */  j          .L8009FB10
/* A704 8009FB04 00000000 */   nop
.L8009FB08:
/* A708 8009FB08 0C026187 */  jal        func_8009861C
/* A70C 8009FB0C 00000000 */   nop
.L8009FB10:
/* A710 8009FB10 92030000 */  lbu        $v1, 0x0($s0)
.L8009FB14:
/* A714 8009FB14 1074000F */  beq        $v1, $s4, .L8009FB54
/* A718 8009FB18 28620002 */   slti      $v0, $v1, 0x2
/* A71C 8009FB1C 10400005 */  beqz       $v0, .L8009FB34
/* A720 8009FB20 00000000 */   nop
/* A724 8009FB24 10600007 */  beqz       $v1, .L8009FB44
/* A728 8009FB28 00000000 */   nop
/* A72C 8009FB2C 08027EDB */  j          .L8009FB6C
/* A730 8009FB30 00000000 */   nop
.L8009FB34:
/* A734 8009FB34 1073000B */  beq        $v1, $s3, .L8009FB64
/* A738 8009FB38 00000000 */   nop
/* A73C 8009FB3C 08027EDB */  j          .L8009FB6C
/* A740 8009FB40 00000000 */   nop
.L8009FB44:
/* A744 8009FB44 0C0326A1 */  jal        func_800C9A84
/* A748 8009FB48 02202021 */   addu      $a0, $s1, $zero
/* A74C 8009FB4C 08027EDB */  j          .L8009FB6C
/* A750 8009FB50 00000000 */   nop
.L8009FB54:
/* A754 8009FB54 0C025EC3 */  jal        func_80097B0C
/* A758 8009FB58 02202021 */   addu      $a0, $s1, $zero
/* A75C 8009FB5C 08027EDB */  j          .L8009FB6C
/* A760 8009FB60 00000000 */   nop
.L8009FB64:
/* A764 8009FB64 0C026187 */  jal        func_8009861C
/* A768 8009FB68 02202021 */   addu      $a0, $s1, $zero
.L8009FB6C:
/* A76C 8009FB6C 86020064 */  lh         $v0, 0x64($s0)
/* A770 8009FB70 26520001 */  addiu      $s2, $s2, 0x1
/* A774 8009FB74 0242102A */  slt        $v0, $s2, $v0
/* A778 8009FB78 1440FFC7 */  bnez       $v0, .L8009FA98
/* A77C 8009FB7C 00000000 */   nop
.L8009FB80:
/* A780 8009FB80 92030000 */  lbu        $v1, 0x0($s0)
/* A784 8009FB84 24020001 */  addiu      $v0, $zero, 0x1
/* A788 8009FB88 10620012 */  beq        $v1, $v0, .L8009FBD4
/* A78C 8009FB8C 28620002 */   slti      $v0, $v1, 0x2
/* A790 8009FB90 50400005 */  beql       $v0, $zero, .L8009FBA8
/* A794 8009FB94 24020002 */   addiu     $v0, $zero, 0x2
/* A798 8009FB98 10600007 */  beqz       $v1, .L8009FBB8
/* A79C 8009FB9C 00000000 */   nop
/* A7A0 8009FBA0 08027F01 */  j          .L8009FC04
/* A7A4 8009FBA4 00000000 */   nop
.L8009FBA8:
/* A7A8 8009FBA8 10620011 */  beq        $v1, $v0, .L8009FBF0
/* A7AC 8009FBAC 00000000 */   nop
/* A7B0 8009FBB0 08027F01 */  j          .L8009FC04
/* A7B4 8009FBB4 00000000 */   nop
.L8009FBB8:
/* A7B8 8009FBB8 8E040004 */  lw         $a0, 0x4($s0)
/* A7BC 8009FBBC 0C0326A1 */  jal        func_800C9A84
/* A7C0 8009FBC0 00000000 */   nop
/* A7C4 8009FBC4 0C0326A1 */  jal        func_800C9A84
/* A7C8 8009FBC8 02002021 */   addu      $a0, $s0, $zero
/* A7CC 8009FBCC 08027F01 */  j          .L8009FC04
/* A7D0 8009FBD0 00000000 */   nop
.L8009FBD4:
/* A7D4 8009FBD4 8E040004 */  lw         $a0, 0x4($s0)
/* A7D8 8009FBD8 0C025EC3 */  jal        func_80097B0C
/* A7DC 8009FBDC 00000000 */   nop
/* A7E0 8009FBE0 0C025EC3 */  jal        func_80097B0C
/* A7E4 8009FBE4 02002021 */   addu      $a0, $s0, $zero
/* A7E8 8009FBE8 08027F01 */  j          .L8009FC04
/* A7EC 8009FBEC 00000000 */   nop
.L8009FBF0:
/* A7F0 8009FBF0 8E040004 */  lw         $a0, 0x4($s0)
/* A7F4 8009FBF4 0C026187 */  jal        func_8009861C
/* A7F8 8009FBF8 00000000 */   nop
/* A7FC 8009FBFC 0C026187 */  jal        func_8009861C
/* A800 8009FC00 02002021 */   addu      $a0, $s0, $zero
.L8009FC04:
/* A804 8009FC04 8FBF002C */  lw         $ra, 0x2C($sp)
/* A808 8009FC08 8FB40028 */  lw         $s4, 0x28($sp)
/* A80C 8009FC0C 8FB30024 */  lw         $s3, 0x24($sp)
/* A810 8009FC10 8FB20020 */  lw         $s2, 0x20($sp)
/* A814 8009FC14 8FB1001C */  lw         $s1, 0x1C($sp)
/* A818 8009FC18 8FB00018 */  lw         $s0, 0x18($sp)
/* A81C 8009FC1C 27BD0030 */  addiu      $sp, $sp, 0x30
/* A820 8009FC20 03E00008 */  jr         $ra
/* A824 8009FC24 00000000 */   nop
.size func_8009FA60, . - func_8009FA60
