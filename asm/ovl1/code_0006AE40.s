.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

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

glabel func_80026C30_6AF10
/* 6AF10 80026C30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6AF14 80026C34 24020001 */  addiu      $v0, $zero, 1
/* 6AF18 80026C38 AFBF0010 */  sw         $ra, 0x10($sp)
/* 6AF1C 80026C3C 3C018015 */  lui        $at, %hi(D_8014A028)
/* 6AF20 80026C40 0C026B70 */  jal        func_8009ADC0
/* 6AF24 80026C44 AC22A028 */   sw        $v0, %lo(D_8014A028)($at)
/* 6AF28 80026C48 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6AF2C 80026C4C 03E00008 */  jr         $ra
/* 6AF30 80026C50 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80026C54_6AF34
/* 6AF34 80026C54 24020001 */  addiu      $v0, $zero, 1
/* 6AF38 80026C58 3C018003 */  lui        $at, %hi(D_80030A30)
/* 6AF3C 80026C5C 03E00008 */  jr         $ra
/* 6AF40 80026C60 A0220A30 */   sb        $v0, %lo(D_80030A30)($at)

glabel func_80026C64_6AF44
/* 6AF44 80026C64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6AF48 80026C68 00002021 */  addu       $a0, $zero, $zero
/* 6AF4C 80026C6C 2405000E */  addiu      $a1, $zero, 0xe
/* 6AF50 80026C70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6AF54 80026C74 0C02DAC0 */  jal        func_800B6B00
/* 6AF58 80026C78 AFB00010 */   sw        $s0, 0x10($sp)
/* 6AF5C 80026C7C 00002021 */  addu       $a0, $zero, $zero
/* 6AF60 80026C80 2405000F */  addiu      $a1, $zero, 0xf
/* 6AF64 80026C84 0C02DAE0 */  jal        func_800B6B80
/* 6AF68 80026C88 24060004 */   addiu     $a2, $zero, 4
/* 6AF6C 80026C8C 3C058003 */  lui        $a1, %hi(D_8002FC44)
/* 6AF70 80026C90 24A5FC44 */  addiu      $a1, $a1, %lo(D_8002FC44)
/* 6AF74 80026C94 0C02DA9C */  jal        func_800B6A70
/* 6AF78 80026C98 00002021 */   addu      $a0, $zero, $zero
/* 6AF7C 80026C9C 00002021 */  addu       $a0, $zero, $zero
/* 6AF80 80026CA0 0C02DAC0 */  jal        func_800B6B00
/* 6AF84 80026CA4 24050007 */   addiu     $a1, $zero, 7
/* 6AF88 80026CA8 00002021 */  addu       $a0, $zero, $zero
/* 6AF8C 80026CAC 24050002 */  addiu      $a1, $zero, 2
/* 6AF90 80026CB0 0C02DAE0 */  jal        func_800B6B80
/* 6AF94 80026CB4 24060007 */   addiu     $a2, $zero, 7
/* 6AF98 80026CB8 3C058003 */  lui        $a1, %hi(D_8002FC50)
/* 6AF9C 80026CBC 24A5FC50 */  addiu      $a1, $a1, %lo(D_8002FC50)
/* 6AFA0 80026CC0 0C02DA9C */  jal        func_800B6A70
/* 6AFA4 80026CC4 00002021 */   addu      $a0, $zero, $zero
/* 6AFA8 80026CC8 00002021 */  addu       $a0, $zero, $zero
/* 6AFAC 80026CCC 24050002 */  addiu      $a1, $zero, 2
/* 6AFB0 80026CD0 0C02DAE0 */  jal        func_800B6B80
/* 6AFB4 80026CD4 24060008 */   addiu     $a2, $zero, 8
/* 6AFB8 80026CD8 3C058003 */  lui        $a1, %hi(D_8002FC5C)
/* 6AFBC 80026CDC 24A5FC5C */  addiu      $a1, $a1, %lo(D_8002FC5C)
/* 6AFC0 80026CE0 0C02DA9C */  jal        func_800B6A70
/* 6AFC4 80026CE4 00002021 */   addu      $a0, $zero, $zero
/* 6AFC8 80026CE8 0C027444 */  jal        func_8009D110
/* 6AFCC 80026CEC 00002021 */   addu      $a0, $zero, $zero
/* 6AFD0 80026CF0 3C048003 */  lui        $a0, %hi(D_8002EB94)
/* 6AFD4 80026CF4 0C027515 */  jal        func_8009D454
/* 6AFD8 80026CF8 2484EB94 */   addiu     $a0, $a0, %lo(D_8002EB94)
/* 6AFDC 80026CFC 00002021 */  addu       $a0, $zero, $zero
/* 6AFE0 80026D00 24050002 */  addiu      $a1, $zero, 2
/* 6AFE4 80026D04 0C02DAE0 */  jal        func_800B6B80
/* 6AFE8 80026D08 24060009 */   addiu     $a2, $zero, 9
/* 6AFEC 80026D0C 3C058003 */  lui        $a1, %hi(D_8002FC68)
/* 6AFF0 80026D10 24A5FC68 */  addiu      $a1, $a1, %lo(D_8002FC68)
/* 6AFF4 80026D14 0C02DA9C */  jal        func_800B6A70
/* 6AFF8 80026D18 00002021 */   addu      $a0, $zero, $zero
/* 6AFFC 80026D1C 3C108015 */  lui        $s0, %hi(D_8014CF92)
/* 6B000 80026D20 2610CF92 */  addiu      $s0, $s0, %lo(D_8014CF92)
/* 6B004 80026D24 96020000 */  lhu        $v0, ($s0)
/* 6B008 80026D28 30428000 */  andi       $v0, $v0, 0x8000
/* 6B00C 80026D2C 10400010 */  beqz       $v0, .L80026D70
/* 6B010 80026D30 00000000 */   nop
/* 6B014 80026D34 3C048003 */  lui        $a0, %hi(D_8002EB40)
/* 6B018 80026D38 8C84EB40 */  lw         $a0, %lo(D_8002EB40)($a0)
/* 6B01C 80026D3C 3C058003 */  lui        $a1, %hi(D_8002EB46)
/* 6B020 80026D40 94A5EB46 */  lhu        $a1, %lo(D_8002EB46)($a1)
/* 6B024 80026D44 3C068003 */  lui        $a2, %hi(D_8002EB4A)
/* 6B028 80026D48 0C026B15 */  jal        func_8009AC54
/* 6B02C 80026D4C 94C6EB4A */   lhu       $a2, %lo(D_8002EB4A)($a2)
/* 6B030 80026D50 00002021 */  addu       $a0, $zero, $zero
/* 6B034 80026D54 24050002 */  addiu      $a1, $zero, 2
/* 6B038 80026D58 0C02DAE0 */  jal        func_800B6B80
/* 6B03C 80026D5C 24060009 */   addiu     $a2, $zero, 9
/* 6B040 80026D60 3C058003 */  lui        $a1, %hi(D_8002FC6C)
/* 6B044 80026D64 24A5FC6C */  addiu      $a1, $a1, %lo(D_8002FC6C)
/* 6B048 80026D68 0C02DA9C */  jal        func_800B6A70
/* 6B04C 80026D6C 00002021 */   addu      $a0, $zero, $zero
.L80026D70:
/* 6B050 80026D70 96020000 */  lhu        $v0, ($s0)
/* 6B054 80026D74 30420004 */  andi       $v0, $v0, 4
/* 6B058 80026D78 10400003 */  beqz       $v0, .L80026D88
/* 6B05C 80026D7C 00000000 */   nop
/* 6B060 80026D80 0C026B46 */  jal        func_8009AD18
/* 6B064 80026D84 00000000 */   nop
.L80026D88:
/* 6B068 80026D88 96020000 */  lhu        $v0, ($s0)
/* 6B06C 80026D8C 30424000 */  andi       $v0, $v0, 0x4000
/* 6B070 80026D90 0002102B */  sltu       $v0, $zero, $v0
/* 6B074 80026D94 00021023 */  negu       $v0, $v0
/* 6B078 80026D98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6B07C 80026D9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 6B080 80026DA0 03E00008 */  jr         $ra
/* 6B084 80026DA4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 6B088 80026DA8 00000000 */  nop
/* 6B08C 80026DAC 00000000 */  nop
