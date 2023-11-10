glabel func_800B3FB4
/* 1EBB4 800B3FB4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1EBB8 800B3FB8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1EBBC 800B3FBC 8FB30044 */  lw         $s3, 0x44($sp)
/* 1EBC0 800B3FC0 AFB60028 */  sw         $s6, 0x28($sp)
/* 1EBC4 800B3FC4 8FB60048 */  lw         $s6, 0x48($sp)
/* 1EBC8 800B3FC8 AFB50024 */  sw         $s5, 0x24($sp)
/* 1EBCC 800B3FCC 97B50042 */  lhu        $s5, 0x42($sp)
/* 1EBD0 800B3FD0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1EBD4 800B3FD4 00808821 */  addu       $s1, $a0, $zero
/* 1EBD8 800B3FD8 AFB20018 */  sw         $s2, 0x18($sp)
/* 1EBDC 800B3FDC 00A09021 */  addu       $s2, $a1, $zero
/* 1EBE0 800B3FE0 AFB40020 */  sw         $s4, 0x20($sp)
/* 1EBE4 800B3FE4 00C0A021 */  addu       $s4, $a2, $zero
/* 1EBE8 800B3FE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1EBEC 800B3FEC 00E08021 */  addu       $s0, $a3, $zero
/* 1EBF0 800B3FF0 1A000017 */  blez       $s0, .L800B4050
/* 1EBF4 800B3FF4 AFBF002C */   sw        $ra, 0x2C($sp)
/* 1EBF8 800B3FF8 8E420028 */  lw         $v0, 0x28($s2)
/* 1EBFC 800B3FFC 8E44003C */  lw         $a0, 0x3C($s2)
/* 1EC00 800B4000 8E46002C */  lw         $a2, 0x2C($s2)
/* 1EC04 800B4004 0040F809 */  jalr       $v0
/* 1EC08 800B4008 02002821 */   addu      $a1, $s0, $zero
/* 1EC0C 800B400C 30480007 */  andi       $t0, $v0, 0x7
/* 1EC10 800B4010 02088021 */  addu       $s0, $s0, $t0
/* 1EC14 800B4014 02203021 */  addu       $a2, $s1, $zero
/* 1EC18 800B4018 26310008 */  addiu      $s1, $s1, 0x8
/* 1EC1C 800B401C 32030007 */  andi       $v1, $s0, 0x7
/* 1EC20 800B4020 2463FFF8 */  addiu      $v1, $v1, -0x8
/* 1EC24 800B4024 02031823 */  subu       $v1, $s0, $v1
/* 1EC28 800B4028 30630FFF */  andi       $v1, $v1, 0xFFF
/* 1EC2C 800B402C 00031B00 */  sll        $v1, $v1, 12
/* 1EC30 800B4030 32640FFF */  andi       $a0, $s3, 0xFFF
/* 1EC34 800B4034 3C050400 */  lui        $a1, (0x4000000 >> 16)
/* 1EC38 800B4038 00852025 */  or         $a0, $a0, $a1
/* 1EC3C 800B403C 00641825 */  or         $v1, $v1, $a0
/* 1EC40 800B4040 00481023 */  subu       $v0, $v0, $t0
/* 1EC44 800B4044 ACC30000 */  sw         $v1, 0x0($a2)
/* 1EC48 800B4048 0802D015 */  j          .L800B4054
/* 1EC4C 800B404C ACC20004 */   sw        $v0, 0x4($a2)
.L800B4050:
/* 1EC50 800B4050 00004021 */  addu       $t0, $zero, $zero
.L800B4054:
/* 1EC54 800B4054 32C20002 */  andi       $v0, $s6, 0x2
/* 1EC58 800B4058 10400009 */  beqz       $v0, .L800B4080
/* 1EC5C 800B405C 02202021 */   addu      $a0, $s1, $zero
/* 1EC60 800B4060 26310008 */  addiu      $s1, $s1, 0x8
/* 1EC64 800B4064 3C020F00 */  lui        $v0, (0xF000000 >> 16)
/* 1EC68 800B4068 AC820000 */  sw         $v0, 0x0($a0)
/* 1EC6C 800B406C 8E420010 */  lw         $v0, 0x10($s2)
/* 1EC70 800B4070 3C031FFF */  lui        $v1, (0x1FFFFFFF >> 16)
/* 1EC74 800B4074 3463FFFF */  ori        $v1, $v1, (0x1FFFFFFF & 0xFFFF)
/* 1EC78 800B4078 00431024 */  and        $v0, $v0, $v1
/* 1EC7C 800B407C AC820004 */  sw         $v0, 0x4($a0)
.L800B4080:
/* 1EC80 800B4080 3C0700FF */  lui        $a3, (0xFFFFFF >> 16)
/* 1EC84 800B4084 34E7FFFF */  ori        $a3, $a3, (0xFFFFFF & 0xFFFF)
/* 1EC88 800B4088 26220008 */  addiu      $v0, $s1, 0x8
/* 1EC8C 800B408C 02203021 */  addu       $a2, $s1, $zero
/* 1EC90 800B4090 8E45000C */  lw         $a1, 0xC($s2)
/* 1EC94 800B4094 00162700 */  sll        $a0, $s6, 28
/* 1EC98 800B4098 00141840 */  sll        $v1, $s4, 1
/* 1EC9C 800B409C 30630FFF */  andi       $v1, $v1, 0xFFF
/* 1ECA0 800B40A0 00031C00 */  sll        $v1, $v1, 16
/* 1ECA4 800B40A4 00832025 */  or         $a0, $a0, $v1
/* 1ECA8 800B40A8 00081B00 */  sll        $v1, $t0, 12
/* 1ECAC 800B40AC 00832025 */  or         $a0, $a0, $v1
/* 1ECB0 800B40B0 32A30FFF */  andi       $v1, $s5, 0xFFF
/* 1ECB4 800B40B4 00832025 */  or         $a0, $a0, $v1
/* 1ECB8 800B40B8 3C030100 */  lui        $v1, (0x1000000 >> 16)
/* 1ECBC 800B40BC ACC40004 */  sw         $a0, 0x4($a2)
/* 1ECC0 800B40C0 00A72824 */  and        $a1, $a1, $a3
/* 1ECC4 800B40C4 00A32825 */  or         $a1, $a1, $v1
/* 1ECC8 800B40C8 ACC50000 */  sw         $a1, 0x0($a2)
/* 1ECCC 800B40CC AE400038 */  sw         $zero, 0x38($s2)
/* 1ECD0 800B40D0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1ECD4 800B40D4 8FB60028 */  lw         $s6, 0x28($sp)
/* 1ECD8 800B40D8 8FB50024 */  lw         $s5, 0x24($sp)
/* 1ECDC 800B40DC 8FB40020 */  lw         $s4, 0x20($sp)
/* 1ECE0 800B40E0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1ECE4 800B40E4 8FB20018 */  lw         $s2, 0x18($sp)
/* 1ECE8 800B40E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1ECEC 800B40EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1ECF0 800B40F0 03E00008 */  jr         $ra
/* 1ECF4 800B40F4 27BD0030 */   addiu     $sp, $sp, 0x30
/* 1ECF8 800B40F8 00000000 */  nop
/* 1ECFC 800B40FC 00000000 */  nop
.size func_800B3FB4, . - func_800B3FB4
