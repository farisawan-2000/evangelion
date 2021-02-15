.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009F598
/* A198 8009F598 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A19C 8009F59C AFB40028 */  sw         $s4, 0x28($sp)
/* A1A0 8009F5A0 00C0A021 */  addu       $s4, $a2, $zero
/* A1A4 8009F5A4 3C03800F */  lui        $v1, %hi(D_800EF138)
/* A1A8 8009F5A8 8C63F138 */  lw         $v1, %lo(D_800EF138)($v1)
/* A1AC 8009F5AC 97A80042 */  lhu        $t0, 0x42($sp)
/* A1B0 8009F5B0 93A60047 */  lbu        $a2, 0x47($sp)
/* A1B4 8009F5B4 AFB30024 */  sw         $s3, 0x24($sp)
/* A1B8 8009F5B8 00809821 */  addu       $s3, $a0, $zero
/* A1BC 8009F5BC AFB20020 */  sw         $s2, 0x20($sp)
/* A1C0 8009F5C0 00A09021 */  addu       $s2, $a1, $zero
/* A1C4 8009F5C4 AFBF002C */  sw         $ra, 0x2c($sp)
/* A1C8 8009F5C8 AFB1001C */  sw         $s1, 0x1c($sp)
/* A1CC 8009F5CC 1860000F */  blez       $v1, .L8009F60C
/* A1D0 8009F5D0 AFB00018 */   sw        $s0, 0x18($sp)
/* A1D4 8009F5D4 00071400 */  sll        $v0, $a3, 0x10
/* A1D8 8009F5D8 00023C03 */  sra        $a3, $v0, 0x10
/* A1DC 8009F5DC 00002021 */  addu       $a0, $zero, $zero
/* A1E0 8009F5E0 000328C0 */  sll        $a1, $v1, 3
/* A1E4 8009F5E4 00801821 */  addu       $v1, $a0, $zero
.L8009F5E8:
/* A1E8 8009F5E8 3C02800F */  lui        $v0, %hi(D_800EECF0)
/* A1EC 8009F5EC 00431021 */  addu       $v0, $v0, $v1
/* A1F0 8009F5F0 8442ECF0 */  lh         $v0, %lo(D_800EECF0)($v0)
/* A1F4 8009F5F4 1047001C */  beq        $v0, $a3, .L8009F668
/* A1F8 8009F5F8 00000000 */   nop
/* A1FC 8009F5FC 24640008 */  addiu      $a0, $v1, 8
/* A200 8009F600 0085102A */  slt        $v0, $a0, $a1
/* A204 8009F604 1440FFF8 */  bnez       $v0, .L8009F5E8
/* A208 8009F608 00801821 */   addu      $v1, $a0, $zero
.L8009F60C:
/* A20C 8009F60C 00001021 */  addu       $v0, $zero, $zero
.L8009F610:
/* A210 8009F610 10400019 */  beqz       $v0, .L8009F678
/* A214 8009F614 30D100FF */   andi      $s1, $a2, 0xff
/* A218 8009F618 8C500004 */  lw         $s0, 4($v0)
/* A21C 8009F61C 00081400 */  sll        $v0, $t0, 0x10
/* A220 8009F620 00021303 */  sra        $v0, $v0, 0xc
/* A224 8009F624 02028021 */  addu       $s0, $s0, $v0
/* A228 8009F628 86040000 */  lh         $a0, ($s0)
/* A22C 8009F62C 8E050004 */  lw         $a1, 4($s0)
/* A230 8009F630 0C027814 */  jal        func_8009E050
/* A234 8009F634 02203021 */   addu      $a2, $s1, $zero
/* A238 8009F638 AE620000 */  sw         $v0, ($s3)
/* A23C 8009F63C 86050002 */  lh         $a1, 2($s0)
/* A240 8009F640 2402FFFF */  addiu      $v0, $zero, -1
/* A244 8009F644 50A2000E */  beql       $a1, $v0, .L8009F680
/* A248 8009F648 AE400000 */   sw        $zero, ($s2)
/* A24C 8009F64C 92070008 */  lbu        $a3, 8($s0)
/* A250 8009F650 AFB10010 */  sw         $s1, 0x10($sp)
/* A254 8009F654 8E060004 */  lw         $a2, 4($s0)
/* A258 8009F658 0C027B10 */  jal        func_8009EC40
/* A25C 8009F65C 02802021 */   addu      $a0, $s4, $zero
/* A260 8009F660 08027DA0 */  j          .L8009F680
/* A264 8009F664 AE420000 */   sw        $v0, ($s2)
.L8009F668:
/* A268 8009F668 3C02800F */  lui        $v0, %hi(D_800EECF0)
/* A26C 8009F66C 2442ECF0 */  addiu      $v0, $v0, %lo(D_800EECF0)
/* A270 8009F670 08027D84 */  j          .L8009F610
/* A274 8009F674 00821021 */   addu      $v0, $a0, $v0
.L8009F678:
/* A278 8009F678 AE600000 */  sw         $zero, ($s3)
/* A27C 8009F67C AE400000 */  sw         $zero, ($s2)
.L8009F680:
/* A280 8009F680 8FBF002C */  lw         $ra, 0x2c($sp)
/* A284 8009F684 8FB40028 */  lw         $s4, 0x28($sp)
/* A288 8009F688 8FB30024 */  lw         $s3, 0x24($sp)
/* A28C 8009F68C 8FB20020 */  lw         $s2, 0x20($sp)
/* A290 8009F690 8FB1001C */  lw         $s1, 0x1c($sp)
/* A294 8009F694 8FB00018 */  lw         $s0, 0x18($sp)
/* A298 8009F698 27BD0030 */  addiu      $sp, $sp, 0x30
/* A29C 8009F69C 03E00008 */  jr         $ra
/* A2A0 8009F6A0 00000000 */   nop
/* A2A4 8009F6A4 00000000 */  nop
/* A2A8 8009F6A8 00000000 */  nop
/* A2AC 8009F6AC 00000000 */  nop
