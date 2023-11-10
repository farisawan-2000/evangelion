glabel func_800BCEEC
/* 27AEC 800BCEEC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 27AF0 800BCEF0 AFB20028 */  sw         $s2, 0x28($sp)
/* 27AF4 800BCEF4 3C12800F */  lui        $s2, %hi(D_800F6130)
/* 27AF8 800BCEF8 8E526130 */  lw         $s2, %lo(D_800F6130)($s2)
/* 27AFC 800BCEFC AFB7003C */  sw         $s7, 0x3C($sp)
/* 27B00 800BCF00 0080B821 */  addu       $s7, $a0, $zero
/* 27B04 800BCF04 AFBE0040 */  sw         $fp, 0x40($sp)
/* 27B08 800BCF08 00A0F021 */  addu       $fp, $a1, $zero
/* 27B0C 800BCF0C AFB3002C */  sw         $s3, 0x2C($sp)
/* 27B10 800BCF10 00E09821 */  addu       $s3, $a3, $zero
/* 27B14 800BCF14 AFBF0044 */  sw         $ra, 0x44($sp)
/* 27B18 800BCF18 AFB60038 */  sw         $s6, 0x38($sp)
/* 27B1C 800BCF1C AFB50034 */  sw         $s5, 0x34($sp)
/* 27B20 800BCF20 AFB40030 */  sw         $s4, 0x30($sp)
/* 27B24 800BCF24 AFB10024 */  sw         $s1, 0x24($sp)
/* 27B28 800BCF28 AFB00020 */  sw         $s0, 0x20($sp)
/* 27B2C 800BCF2C 8E420000 */  lw         $v0, 0x0($s2)
/* 27B30 800BCF30 02E0A021 */  addu       $s4, $s7, $zero
/* 27B34 800BCF34 00C0A821 */  addu       $s5, $a2, $zero
/* 27B38 800BCF38 14400003 */  bnez       $v0, .L800BCF48
/* 27B3C 800BCF3C A7A0001C */   sh        $zero, 0x1C($sp)
/* 27B40 800BCF40 0802F41A */  j          .L800BD068
/* 27B44 800BCF44 AFC00000 */   sw        $zero, 0x0($fp)
.L800BCF48:
/* 27B48 800BCF48 02402021 */  addu       $a0, $s2, $zero
/* 27B4C 800BCF4C 0C02F482 */  jal        func_800BD208
/* 27B50 800BCF50 27A50018 */   addiu     $a1, $sp, 0x18
/* 27B54 800BCF54 8E430020 */  lw         $v1, 0x20($s2)
/* 27B58 800BCF58 AE42001C */  sw         $v0, 0x1C($s2)
/* 27B5C 800BCF5C 00431023 */  subu       $v0, $v0, $v1
/* 27B60 800BCF60 0053102A */  slt        $v0, $v0, $s3
/* 27B64 800BCF64 10400019 */  beqz       $v0, .L800BCFCC
/* 27B68 800BCF68 00000000 */   nop
/* 27B6C 800BCF6C 2410FFF0 */  addiu      $s0, $zero, -0x10
.L800BCF70:
/* 27B70 800BCF70 8E42001C */  lw         $v0, 0x1C($s2)
/* 27B74 800BCF74 8FA40018 */  lw         $a0, 0x18($sp)
/* 27B78 800BCF78 00501024 */  and        $v0, $v0, $s0
/* 27B7C 800BCF7C AE42001C */  sw         $v0, 0x1C($s2)
/* 27B80 800BCF80 8C820008 */  lw         $v0, 0x8($a0)
/* 27B84 800BCF84 0040F809 */  jalr       $v0
/* 27B88 800BCF88 00000000 */   nop
/* 27B8C 800BCF8C 02402021 */  addu       $a0, $s2, $zero
/* 27B90 800BCF90 0C02F45D */  jal        func_800BD174
/* 27B94 800BCF94 00402821 */   addu      $a1, $v0, $zero
/* 27B98 800BCF98 8FA60018 */  lw         $a2, 0x18($sp)
/* 27B9C 800BCF9C 8CC30010 */  lw         $v1, 0x10($a2)
/* 27BA0 800BCFA0 02402021 */  addu       $a0, $s2, $zero
/* 27BA4 800BCFA4 27A50018 */  addiu      $a1, $sp, 0x18
/* 27BA8 800BCFA8 00621821 */  addu       $v1, $v1, $v0
/* 27BAC 800BCFAC 0C02F482 */  jal        func_800BD208
/* 27BB0 800BCFB0 ACC30010 */   sw        $v1, 0x10($a2)
/* 27BB4 800BCFB4 8E430020 */  lw         $v1, 0x20($s2)
/* 27BB8 800BCFB8 AE42001C */  sw         $v0, 0x1C($s2)
/* 27BBC 800BCFBC 00431023 */  subu       $v0, $v0, $v1
/* 27BC0 800BCFC0 0053102A */  slt        $v0, $v0, $s3
/* 27BC4 800BCFC4 1440FFEA */  bnez       $v0, .L800BCF70
/* 27BC8 800BCFC8 00000000 */   nop
.L800BCFCC:
/* 27BCC 800BCFCC 8E42001C */  lw         $v0, 0x1C($s2)
/* 27BD0 800BCFD0 2403FFF0 */  addiu      $v1, $zero, -0x10
/* 27BD4 800BCFD4 00431024 */  and        $v0, $v0, $v1
/* 27BD8 800BCFD8 1A60001E */  blez       $s3, .L800BD054
/* 27BDC 800BCFDC AE42001C */   sw        $v0, 0x1C($s2)
/* 27BE0 800BCFE0 3C160700 */  lui        $s6, (0x7000000 >> 16)
.L800BCFE4:
/* 27BE4 800BCFE4 8E510048 */  lw         $s1, 0x48($s2)
/* 27BE8 800BCFE8 0271102A */  slt        $v0, $s3, $s1
/* 27BEC 800BCFEC 54400001 */  bnel       $v0, $zero, .L800BCFF4
/* 27BF0 800BCFF0 02608821 */   addu      $s1, $s3, $zero
.L800BCFF4:
/* 27BF4 800BCFF4 AE960000 */  sw         $s6, 0x0($s4)
/* 27BF8 800BCFF8 AE800004 */  sw         $zero, 0x4($s4)
/* 27BFC 800BCFFC 8E500038 */  lw         $s0, 0x38($s2)
/* 27C00 800BD000 24050006 */  addiu      $a1, $zero, 0x6
/* 27C04 800BD004 02A03021 */  addu       $a2, $s5, $zero
/* 27C08 800BD008 8E020008 */  lw         $v0, 0x8($s0)
/* 27C0C 800BD00C 02719823 */  subu       $s3, $s3, $s1
/* 27C10 800BD010 0040F809 */  jalr       $v0
/* 27C14 800BD014 02002021 */   addu      $a0, $s0, $zero
/* 27C18 800BD018 02002021 */  addu       $a0, $s0, $zero
/* 27C1C 800BD01C 26820008 */  addiu      $v0, $s4, 0x8
/* 27C20 800BD020 AFA20010 */  sw         $v0, 0x10($sp)
/* 27C24 800BD024 8C820004 */  lw         $v0, 0x4($a0)
/* 27C28 800BD028 8E470020 */  lw         $a3, 0x20($s2)
/* 27C2C 800BD02C 27A5001C */  addiu      $a1, $sp, 0x1C
/* 27C30 800BD030 0040F809 */  jalr       $v0
/* 27C34 800BD034 02203021 */   addu      $a2, $s1, $zero
/* 27C38 800BD038 0040A021 */  addu       $s4, $v0, $zero
/* 27C3C 800BD03C 8E430020 */  lw         $v1, 0x20($s2)
/* 27C40 800BD040 00111080 */  sll        $v0, $s1, 2
/* 27C44 800BD044 02A2A821 */  addu       $s5, $s5, $v0
/* 27C48 800BD048 00711821 */  addu       $v1, $v1, $s1
/* 27C4C 800BD04C 1E60FFE5 */  bgtz       $s3, .L800BCFE4
/* 27C50 800BD050 AE430020 */   sw        $v1, 0x20($s2)
.L800BD054:
/* 27C54 800BD054 02971023 */  subu       $v0, $s4, $s7
/* 27C58 800BD058 000210C3 */  sra        $v0, $v0, 3
/* 27C5C 800BD05C AFC20000 */  sw         $v0, 0x0($fp)
/* 27C60 800BD060 0C02F438 */  jal        func_800BD0E0
/* 27C64 800BD064 02402021 */   addu      $a0, $s2, $zero
.L800BD068:
/* 27C68 800BD068 02801021 */  addu       $v0, $s4, $zero
/* 27C6C 800BD06C 8FBF0044 */  lw         $ra, 0x44($sp)
/* 27C70 800BD070 8FBE0040 */  lw         $fp, 0x40($sp)
/* 27C74 800BD074 8FB7003C */  lw         $s7, 0x3C($sp)
/* 27C78 800BD078 8FB60038 */  lw         $s6, 0x38($sp)
/* 27C7C 800BD07C 8FB50034 */  lw         $s5, 0x34($sp)
/* 27C80 800BD080 8FB40030 */  lw         $s4, 0x30($sp)
/* 27C84 800BD084 8FB3002C */  lw         $s3, 0x2C($sp)
/* 27C88 800BD088 8FB20028 */  lw         $s2, 0x28($sp)
/* 27C8C 800BD08C 8FB10024 */  lw         $s1, 0x24($sp)
/* 27C90 800BD090 8FB00020 */  lw         $s0, 0x20($sp)
/* 27C94 800BD094 03E00008 */  jr         $ra
/* 27C98 800BD098 27BD0048 */   addiu     $sp, $sp, 0x48
.size func_800BCEEC, . - func_800BCEEC
