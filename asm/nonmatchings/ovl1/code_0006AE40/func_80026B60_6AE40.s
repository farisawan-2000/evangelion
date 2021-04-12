glabel func_80026B60_6AE40
/* 6AE40 80026B60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6AE44 80026B64 AFB00010 */  sw         $s0, 0x10($sp)
/* 6AE48 80026B68 00808021 */  addu       $s0, $a0, $zero
/* 6AE4C 80026B6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6AE50 80026B70 9603001C */  lhu        $v1, 0x1c($s0)
/* 6AE54 80026B74 24020001 */  addiu      $v0, $zero, 1
/* 6AE58 80026B78 10620018 */  beq        $v1, $v0, .L80026BDC
/* 6AE5C 80026B7C 28620002 */   slti      $v0, $v1, 2
/* 6AE60 80026B80 50400005 */  beql       $v0, $zero, .L80026B98
/* 6AE64 80026B84 3402FFFF */   ori       $v0, $zero, 0xffff
/* 6AE68 80026B88 10600007 */  beqz       $v1, .L80026BA8
/* 6AE6C 80026B8C 00000000 */   nop
/* 6AE70 80026B90 08009B08 */  j          .L80026C20
/* 6AE74 80026B94 00000000 */   nop
.L80026B98:
/* 6AE78 80026B98 1062001B */  beq        $v1, $v0, .L80026C08
/* 6AE7C 80026B9C 00000000 */   nop
/* 6AE80 80026BA0 08009B08 */  j          .L80026C20
/* 6AE84 80026BA4 00000000 */   nop
.L80026BA8:
/* 6AE88 80026BA8 0C032663 */  jal        func_800C998C
/* 6AE8C 80026BAC 24040001 */   addiu     $a0, $zero, 1
/* 6AE90 80026BB0 00402021 */  addu       $a0, $v0, $zero
/* 6AE94 80026BB4 24050001 */  addiu      $a1, $zero, 1
/* 6AE98 80026BB8 0C030134 */  jal        bzero
/* 6AE9C 80026BBC AE040014 */   sw        $a0, 0x14($s0)
/* 6AEA0 80026BC0 8E040014 */  lw         $a0, 0x14($s0)
/* 6AEA4 80026BC4 0C009B0C */  jal        func_80026C30_6AF10
/* 6AEA8 80026BC8 00000000 */   nop
/* 6AEAC 80026BCC 00001021 */  addu       $v0, $zero, $zero
/* 6AEB0 80026BD0 24030001 */  addiu      $v1, $zero, 1
/* 6AEB4 80026BD4 08009B08 */  j          .L80026C20
/* 6AEB8 80026BD8 A603001C */   sh        $v1, 0x1c($s0)
.L80026BDC:
/* 6AEBC 80026BDC 8E040014 */  lw         $a0, 0x14($s0)
/* 6AEC0 80026BE0 0C009B19 */  jal        func_80026C64_6AF44
/* 6AEC4 80026BE4 00000000 */   nop
/* 6AEC8 80026BE8 5040000D */  beql       $v0, $zero, .L80026C20
/* 6AECC 80026BEC 00001021 */   addu      $v0, $zero, $zero
/* 6AED0 80026BF0 0C02DB14 */  jal        func_800B6C50
/* 6AED4 80026BF4 00002021 */   addu      $a0, $zero, $zero
/* 6AED8 80026BF8 3402FFFF */  ori        $v0, $zero, 0xffff
/* 6AEDC 80026BFC A602001C */  sh         $v0, 0x1c($s0)
/* 6AEE0 80026C00 08009B08 */  j          .L80026C20
/* 6AEE4 80026C04 00001021 */   addu      $v0, $zero, $zero
.L80026C08:
/* 6AEE8 80026C08 8E040014 */  lw         $a0, 0x14($s0)
/* 6AEEC 80026C0C 0C009B15 */  jal        func_80026C54_6AF34
/* 6AEF0 80026C10 00000000 */   nop
/* 6AEF4 80026C14 0C0326A1 */  jal        func_800C9A84
/* 6AEF8 80026C18 8E040014 */   lw        $a0, 0x14($s0)
/* 6AEFC 80026C1C 24020001 */  addiu      $v0, $zero, 1
.L80026C20:
/* 6AF00 80026C20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6AF04 80026C24 8FB00010 */  lw         $s0, 0x10($sp)
/* 6AF08 80026C28 03E00008 */  jr         $ra
/* 6AF0C 80026C2C 27BD0018 */   addiu     $sp, $sp, 0x18
