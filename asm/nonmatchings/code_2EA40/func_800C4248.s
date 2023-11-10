glabel func_800C4248
/* 2EE48 800C4248 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 2EE4C 800C424C AFB00078 */  sw         $s0, 0x78($sp)
/* 2EE50 800C4250 00808021 */  addu       $s0, $a0, $zero
/* 2EE54 800C4254 00002821 */  addu       $a1, $zero, $zero
/* 2EE58 800C4258 AFBF0080 */  sw         $ra, 0x80($sp)
/* 2EE5C 800C425C 0C031164 */  jal        func_800C4590
/* 2EE60 800C4260 AFB1007C */   sw        $s1, 0x7C($sp)
/* 2EE64 800C4264 14400026 */  bnez       $v0, .L800C4300
/* 2EE68 800C4268 00003021 */   addu      $a2, $zero, $zero
/* 2EE6C 800C426C 8E040004 */  lw         $a0, 0x4($s0)
/* 2EE70 800C4270 8E050008 */  lw         $a1, 0x8($s0)
/* 2EE74 800C4274 0C031424 */  jal        func_800C5090
/* 2EE78 800C4278 27A70058 */   addiu     $a3, $sp, 0x58
/* 2EE7C 800C427C 14400020 */  bnez       $v0, .L800C4300
/* 2EE80 800C4280 27A30037 */   addiu     $v1, $sp, 0x37
/* 2EE84 800C4284 2402001F */  addiu      $v0, $zero, 0x1F
.L800C4288:
/* 2EE88 800C4288 A0620000 */  sb         $v0, 0x0($v1)
/* 2EE8C 800C428C 2442FFFF */  addiu      $v0, $v0, -0x1
/* 2EE90 800C4290 0441FFFD */  bgez       $v0, .L800C4288
/* 2EE94 800C4294 2463FFFF */   addiu     $v1, $v1, -0x1
/* 2EE98 800C4298 AFA00010 */  sw         $zero, 0x10($sp)
/* 2EE9C 800C429C 8E040004 */  lw         $a0, 0x4($s0)
/* 2EEA0 800C42A0 8E050008 */  lw         $a1, 0x8($s0)
/* 2EEA4 800C42A4 00003021 */  addu       $a2, $zero, $zero
/* 2EEA8 800C42A8 0C0314A0 */  jal        func_800C5280
/* 2EEAC 800C42AC 27A70018 */   addiu     $a3, $sp, 0x18
/* 2EEB0 800C42B0 14400013 */  bnez       $v0, .L800C4300
/* 2EEB4 800C42B4 00003021 */   addu      $a2, $zero, $zero
/* 2EEB8 800C42B8 8E040004 */  lw         $a0, 0x4($s0)
/* 2EEBC 800C42BC 8E050008 */  lw         $a1, 0x8($s0)
/* 2EEC0 800C42C0 27B10038 */  addiu      $s1, $sp, 0x38
/* 2EEC4 800C42C4 0C031424 */  jal        func_800C5090
/* 2EEC8 800C42C8 02203821 */   addu      $a3, $s1, $zero
/* 2EECC 800C42CC 1440000C */  bnez       $v0, .L800C4300
/* 2EED0 800C42D0 27A40018 */   addiu     $a0, $sp, 0x18
/* 2EED4 800C42D4 02202821 */  addu       $a1, $s1, $zero
/* 2EED8 800C42D8 0C031B34 */  jal        func_800C6CD0
/* 2EEDC 800C42DC 24060020 */   addiu     $a2, $zero, 0x20
/* 2EEE0 800C42E0 14400007 */  bnez       $v0, .L800C4300
/* 2EEE4 800C42E4 2402000B */   addiu     $v0, $zero, 0xB
/* 2EEE8 800C42E8 AFA00010 */  sw         $zero, 0x10($sp)
/* 2EEEC 800C42EC 8E040004 */  lw         $a0, 0x4($s0)
/* 2EEF0 800C42F0 8E050008 */  lw         $a1, 0x8($s0)
/* 2EEF4 800C42F4 00003021 */  addu       $a2, $zero, $zero
/* 2EEF8 800C42F8 0C0314A0 */  jal        func_800C5280
/* 2EEFC 800C42FC 27A70058 */   addiu     $a3, $sp, 0x58
.L800C4300:
/* 2EF00 800C4300 8FBF0080 */  lw         $ra, 0x80($sp)
/* 2EF04 800C4304 8FB1007C */  lw         $s1, 0x7C($sp)
/* 2EF08 800C4308 8FB00078 */  lw         $s0, 0x78($sp)
/* 2EF0C 800C430C 03E00008 */  jr         $ra
/* 2EF10 800C4310 27BD0088 */   addiu     $sp, $sp, 0x88
/* 2EF14 800C4314 00000000 */  nop
/* 2EF18 800C4318 00000000 */  nop
/* 2EF1C 800C431C 00000000 */  nop
.size func_800C4248, . - func_800C4248
