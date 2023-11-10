glabel func_800C3480
/* 2E080 800C3480 27BDFEA0 */  addiu      $sp, $sp, -0x160
/* 2E084 800C3484 AFB10144 */  sw         $s1, 0x144($sp)
/* 2E088 800C3488 00808821 */  addu       $s1, $a0, $zero
/* 2E08C 800C348C 8FA80170 */  lw         $t0, 0x170($sp)
/* 2E090 800C3490 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 2E094 800C3494 2CA20001 */  sltiu      $v0, $a1, 0x1
/* 2E098 800C3498 2CC30001 */  sltiu      $v1, $a2, 0x1
/* 2E09C 800C349C 00431025 */  or         $v0, $v0, $v1
/* 2E0A0 800C34A0 AFBF0158 */  sw         $ra, 0x158($sp)
/* 2E0A4 800C34A4 AFB50154 */  sw         $s5, 0x154($sp)
/* 2E0A8 800C34A8 AFB40150 */  sw         $s4, 0x150($sp)
/* 2E0AC 800C34AC AFB3014C */  sw         $s3, 0x14C($sp)
/* 2E0B0 800C34B0 AFB20148 */  sw         $s2, 0x148($sp)
/* 2E0B4 800C34B4 10400003 */  beqz       $v0, .L800C34C4
/* 2E0B8 800C34B8 AFB00140 */   sw        $s0, 0x140($sp)
/* 2E0BC 800C34BC 08030D82 */  j          .L800C3608
/* 2E0C0 800C34C0 24020005 */   addiu     $v0, $zero, 0x5
.L800C34C4:
/* 2E0C4 800C34C4 02202021 */  addu       $a0, $s1, $zero
/* 2E0C8 800C34C8 27A20138 */  addiu      $v0, $sp, 0x138
/* 2E0CC 800C34CC AFA80010 */  sw         $t0, 0x10($sp)
/* 2E0D0 800C34D0 0C030F20 */  jal        func_800C3C80
/* 2E0D4 800C34D4 AFA20014 */   sw        $v0, 0x14($sp)
/* 2E0D8 800C34D8 1440004B */  bnez       $v0, .L800C3608
/* 2E0DC 800C34DC 00000000 */   nop
/* 2E0E0 800C34E0 92220065 */  lbu        $v0, 0x65($s1)
/* 2E0E4 800C34E4 10400005 */  beqz       $v0, .L800C34FC
/* 2E0E8 800C34E8 02202021 */   addu      $a0, $s1, $zero
/* 2E0EC 800C34EC 0C031164 */  jal        func_800C4590
/* 2E0F0 800C34F0 00002821 */   addu      $a1, $zero, $zero
/* 2E0F4 800C34F4 14400044 */  bnez       $v0, .L800C3608
/* 2E0F8 800C34F8 00000000 */   nop
.L800C34FC:
/* 2E0FC 800C34FC 8E240004 */  lw         $a0, 0x4($s1)
/* 2E100 800C3500 8E26005C */  lw         $a2, 0x5C($s1)
/* 2E104 800C3504 8FA20138 */  lw         $v0, 0x138($sp)
/* 2E108 800C3508 8E250008 */  lw         $a1, 0x8($s1)
/* 2E10C 800C350C 27A70118 */  addiu      $a3, $sp, 0x118
/* 2E110 800C3510 00C23021 */  addu       $a2, $a2, $v0
/* 2E114 800C3514 0C031424 */  jal        func_800C5090
/* 2E118 800C3518 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 2E11C 800C351C 1440003A */  bnez       $v0, .L800C3608
/* 2E120 800C3520 00000000 */   nop
/* 2E124 800C3524 93B3011E */  lbu        $s3, 0x11E($sp)
/* 2E128 800C3528 92220064 */  lbu        $v0, 0x64($s1)
/* 2E12C 800C352C 93B2011F */  lbu        $s2, 0x11F($sp)
/* 2E130 800C3530 327000FF */  andi       $s0, $s3, 0xFF
/* 2E134 800C3534 0202102B */  sltu       $v0, $s0, $v0
/* 2E138 800C3538 10400032 */  beqz       $v0, .L800C3604
/* 2E13C 800C353C 27B4013C */   addiu     $s4, $sp, 0x13C
/* 2E140 800C3540 24150001 */  addiu      $s5, $zero, 0x1
/* 2E144 800C3544 02202021 */  addu       $a0, $s1, $zero
.L800C3548:
/* 2E148 800C3548 27A50018 */  addiu      $a1, $sp, 0x18
/* 2E14C 800C354C 00003021 */  addu       $a2, $zero, $zero
/* 2E150 800C3550 0C031353 */  jal        func_800C4D4C
/* 2E154 800C3554 02003821 */   addu      $a3, $s0, $zero
/* 2E158 800C3558 1440002B */  bnez       $v0, .L800C3608
/* 2E15C 800C355C 02202021 */   addu      $a0, $s1, $zero
/* 2E160 800C3560 AFB40010 */  sw         $s4, 0x10($sp)
/* 2E164 800C3564 27A50018 */  addiu      $a1, $sp, 0x18
/* 2E168 800C3568 02403021 */  addu       $a2, $s2, $zero
/* 2E16C 800C356C 0C030D8B */  jal        func_800C362C
/* 2E170 800C3570 02003821 */   addu      $a3, $s0, $zero
/* 2E174 800C3574 14400024 */  bnez       $v0, .L800C3608
/* 2E178 800C3578 02202021 */   addu      $a0, $s1, $zero
/* 2E17C 800C357C 27A50018 */  addiu      $a1, $sp, 0x18
/* 2E180 800C3580 24060001 */  addiu      $a2, $zero, 0x1
/* 2E184 800C3584 0C031353 */  jal        func_800C4D4C
/* 2E188 800C3588 02003821 */   addu      $a3, $s0, $zero
/* 2E18C 800C358C 1440001E */  bnez       $v0, .L800C3608
/* 2E190 800C3590 00000000 */   nop
/* 2E194 800C3594 97A2013C */  lhu        $v0, 0x13C($sp)
/* 2E198 800C3598 10550008 */  beq        $v0, $s5, .L800C35BC
/* 2E19C 800C359C 00000000 */   nop
/* 2E1A0 800C35A0 93B3013C */  lbu        $s3, 0x13C($sp)
/* 2E1A4 800C35A4 92220064 */  lbu        $v0, 0x64($s1)
/* 2E1A8 800C35A8 93B2013D */  lbu        $s2, 0x13D($sp)
/* 2E1AC 800C35AC 327000FF */  andi       $s0, $s3, 0xFF
/* 2E1B0 800C35B0 0202102B */  sltu       $v0, $s0, $v0
/* 2E1B4 800C35B4 1440FFE4 */  bnez       $v0, .L800C3548
/* 2E1B8 800C35B8 02202021 */   addu      $a0, $s1, $zero
.L800C35BC:
/* 2E1BC 800C35BC 92220064 */  lbu        $v0, 0x64($s1)
/* 2E1C0 800C35C0 0262102B */  sltu       $v0, $s3, $v0
/* 2E1C4 800C35C4 1040000F */  beqz       $v0, .L800C3604
/* 2E1C8 800C35C8 27B00118 */   addiu     $s0, $sp, 0x118
/* 2E1CC 800C35CC 02002021 */  addu       $a0, $s0, $zero
/* 2E1D0 800C35D0 0C030134 */  jal        bzero
/* 2E1D4 800C35D4 24050020 */   addiu     $a1, $zero, 0x20
/* 2E1D8 800C35D8 8E26005C */  lw         $a2, 0x5C($s1)
/* 2E1DC 800C35DC 8FA20138 */  lw         $v0, 0x138($sp)
/* 2E1E0 800C35E0 AFA00010 */  sw         $zero, 0x10($sp)
/* 2E1E4 800C35E4 8E240004 */  lw         $a0, 0x4($s1)
/* 2E1E8 800C35E8 8E250008 */  lw         $a1, 0x8($s1)
/* 2E1EC 800C35EC 02003821 */  addu       $a3, $s0, $zero
/* 2E1F0 800C35F0 00C23021 */  addu       $a2, $a2, $v0
/* 2E1F4 800C35F4 0C0314A0 */  jal        func_800C5280
/* 2E1F8 800C35F8 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 2E1FC 800C35FC 08030D82 */  j          .L800C3608
/* 2E200 800C3600 00000000 */   nop
.L800C3604:
/* 2E204 800C3604 24020003 */  addiu      $v0, $zero, 0x3
.L800C3608:
/* 2E208 800C3608 8FBF0158 */  lw         $ra, 0x158($sp)
/* 2E20C 800C360C 8FB50154 */  lw         $s5, 0x154($sp)
/* 2E210 800C3610 8FB40150 */  lw         $s4, 0x150($sp)
/* 2E214 800C3614 8FB3014C */  lw         $s3, 0x14C($sp)
/* 2E218 800C3618 8FB20148 */  lw         $s2, 0x148($sp)
/* 2E21C 800C361C 8FB10144 */  lw         $s1, 0x144($sp)
/* 2E220 800C3620 8FB00140 */  lw         $s0, 0x140($sp)
/* 2E224 800C3624 03E00008 */  jr         $ra
/* 2E228 800C3628 27BD0160 */   addiu     $sp, $sp, 0x160
.size func_800C3480, . - func_800C3480
