.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003DD10_167A70
/* 167A70 8003DD10 3C028005 */  lui        $v0, %hi(D_8004AD40)
/* 167A74 8003DD14 9042AD40 */  lbu        $v0, %lo(D_8004AD40)($v0)
/* 167A78 8003DD18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 167A7C 8003DD1C AFB10014 */  sw         $s1, 0x14($sp)
/* 167A80 8003DD20 00808821 */  addu       $s1, $a0, $zero
/* 167A84 8003DD24 AFBF0018 */  sw         $ra, 0x18($sp)
/* 167A88 8003DD28 10400029 */  beqz       $v0, .L8003DDD0
/* 167A8C 8003DD2C AFB00010 */   sw        $s0, 0x10($sp)
/* 167A90 8003DD30 0C02A5D2 */  jal        func_800A9748
/* 167A94 8003DD34 24040001 */   addiu     $a0, $zero, 1
/* 167A98 8003DD38 3C108005 */  lui        $s0, %hi(D_8004AD41)
/* 167A9C 8003DD3C 9210AD41 */  lbu        $s0, %lo(D_8004AD41)($s0)
/* 167AA0 8003DD40 24020001 */  addiu      $v0, $zero, 1
/* 167AA4 8003DD44 1602000E */  bne        $s0, $v0, .L8003DD80
/* 167AA8 8003DD48 00000000 */   nop
/* 167AAC 8003DD4C 0C0097DF */  jal        func_80025F7C_14FCDC
/* 167AB0 8003DD50 00000000 */   nop
/* 167AB4 8003DD54 0C02B4A0 */  jal        func_800AD280
/* 167AB8 8003DD58 00000000 */   nop
/* 167ABC 8003DD5C 2402008E */  addiu      $v0, $zero, 0x8e
/* 167AC0 8003DD60 3C018005 */  lui        $at, %hi(D_8004C530)
/* 167AC4 8003DD64 A422C530 */  sh         $v0, %lo(D_8004C530)($at)
/* 167AC8 8003DD68 0C00BBCD */  jal        func_8002EF34_158C94
/* 167ACC 8003DD6C 322400FF */   andi      $a0, $s1, 0xff
/* 167AD0 8003DD70 3C018005 */  lui        $at, %hi(D_8004AD41)
/* 167AD4 8003DD74 A020AD41 */  sb         $zero, %lo(D_8004AD41)($at)
/* 167AD8 8003DD78 3C018005 */  lui        $at, %hi(D_8004AAE4)
/* 167ADC 8003DD7C AC30AAE4 */  sw         $s0, %lo(D_8004AAE4)($at)
.L8003DD80:
/* 167AE0 8003DD80 3C038005 */  lui        $v1, %hi(D_8004C530)
/* 167AE4 8003DD84 8463C530 */  lh         $v1, %lo(D_8004C530)($v1)
/* 167AE8 8003DD88 2402008F */  addiu      $v0, $zero, 0x8f
/* 167AEC 8003DD8C 14620005 */  bne        $v1, $v0, .L8003DDA4
/* 167AF0 8003DD90 2402008E */   addiu     $v0, $zero, 0x8e
/* 167AF4 8003DD94 0C00BDDD */  jal        func_8002F774_1594D4
/* 167AF8 8003DD98 00000000 */   nop
/* 167AFC 8003DD9C 0800F76D */  j          .L8003DDB4
/* 167B00 8003DDA0 00000000 */   nop
.L8003DDA4:
/* 167B04 8003DDA4 14620003 */  bne        $v1, $v0, .L8003DDB4
/* 167B08 8003DDA8 00000000 */   nop
/* 167B0C 8003DDAC 0C00B9C1 */  jal        func_8002E704_158464
/* 167B10 8003DDB0 00000000 */   nop
.L8003DDB4:
/* 167B14 8003DDB4 3C048005 */  lui        $a0, %hi(D_8004C530)
/* 167B18 8003DDB8 0C00D112 */  jal        func_80034448_15E1A8
/* 167B1C 8003DDBC 8484C530 */   lh        $a0, %lo(D_8004C530)($a0)
/* 167B20 8003DDC0 3C018005 */  lui        $at, %hi(D_8004BEC0)
/* 167B24 8003DDC4 AC22BEC0 */  sw         $v0, %lo(D_8004BEC0)($at)
/* 167B28 8003DDC8 3C018005 */  lui        $at, %hi(D_8004AD40)
/* 167B2C 8003DDCC A020AD40 */  sb         $zero, %lo(D_8004AD40)($at)
.L8003DDD0:
/* 167B30 8003DDD0 3C048005 */  lui        $a0, %hi(D_8004BEC0)
/* 167B34 8003DDD4 8C84BEC0 */  lw         $a0, %lo(D_8004BEC0)($a0)
/* 167B38 8003DDD8 0C00D9F2 */  jal        func_800367C8_160528
/* 167B3C 8003DDDC 2411008F */   addiu     $s1, $zero, 0x8f
/* 167B40 8003DDE0 3C048005 */  lui        $a0, %hi(D_8004BEC0)
/* 167B44 8003DDE4 8C84BEC0 */  lw         $a0, %lo(D_8004BEC0)($a0)
/* 167B48 8003DDE8 0C00D94B */  jal        func_8003652C_16028C
/* 167B4C 8003DDEC 00408021 */   addu      $s0, $v0, $zero
/* 167B50 8003DDF0 3C028005 */  lui        $v0, %hi(D_8004C530)
/* 167B54 8003DDF4 8442C530 */  lh         $v0, %lo(D_8004C530)($v0)
/* 167B58 8003DDF8 14510003 */  bne        $v0, $s1, .L8003DE08
/* 167B5C 8003DDFC 00000000 */   nop
/* 167B60 8003DE00 0C00AC82 */  jal        func_8002B208_154F68
/* 167B64 8003DE04 00000000 */   nop
.L8003DE08:
/* 167B68 8003DE08 0C0097E9 */  jal        func_80025FA4_14FD04
/* 167B6C 8003DE0C 00000000 */   nop
/* 167B70 8003DE10 12000020 */  beqz       $s0, .L8003DE94
/* 167B74 8003DE14 24020001 */   addiu     $v0, $zero, 1
/* 167B78 8003DE18 3C038005 */  lui        $v1, %hi(D_8004C530)
/* 167B7C 8003DE1C 8463C530 */  lh         $v1, %lo(D_8004C530)($v1)
/* 167B80 8003DE20 3C018005 */  lui        $at, %hi(D_8004AD40)
/* 167B84 8003DE24 14710005 */  bne        $v1, $s1, .L8003DE3C
/* 167B88 8003DE28 A022AD40 */   sb        $v0, %lo(D_8004AD40)($at)
/* 167B8C 8003DE2C 0C00BD6A */  jal        func_8002F5A8_159308
/* 167B90 8003DE30 00000000 */   nop
/* 167B94 8003DE34 0800F791 */  j          .L8003DE44
/* 167B98 8003DE38 00000000 */   nop
.L8003DE3C:
/* 167B9C 8003DE3C 0C00B92F */  jal        func_8002E4BC_15821C
/* 167BA0 8003DE40 00000000 */   nop
.L8003DE44:
/* 167BA4 8003DE44 3C048005 */  lui        $a0, %hi(D_8004BEC0)
/* 167BA8 8003DE48 0C00D18F */  jal        func_8003463C_15E39C
/* 167BAC 8003DE4C 8C84BEC0 */   lw        $a0, %lo(D_8004BEC0)($a0)
/* 167BB0 8003DE50 0C00A631 */  jal        func_800298C4_153624
/* 167BB4 8003DE54 00000000 */   nop
/* 167BB8 8003DE58 3C028005 */  lui        $v0, %hi(D_8004C530)
/* 167BBC 8003DE5C 9442C530 */  lhu        $v0, %lo(D_8004C530)($v0)
/* 167BC0 8003DE60 24420001 */  addiu      $v0, $v0, 1
/* 167BC4 8003DE64 3C018005 */  lui        $at, %hi(D_8004C530)
/* 167BC8 8003DE68 A422C530 */  sh         $v0, %lo(D_8004C530)($at)
/* 167BCC 8003DE6C 00021400 */  sll        $v0, $v0, 0x10
/* 167BD0 8003DE70 00021403 */  sra        $v0, $v0, 0x10
/* 167BD4 8003DE74 28420091 */  slti       $v0, $v0, 0x91
/* 167BD8 8003DE78 54400007 */  bnezl      $v0, .L8003DE98
/* 167BDC 8003DE7C 00001021 */   addu      $v0, $zero, $zero
/* 167BE0 8003DE80 24020001 */  addiu      $v0, $zero, 1
/* 167BE4 8003DE84 3C018005 */  lui        $at, %hi(D_8004AD41)
/* 167BE8 8003DE88 A022AD41 */  sb         $v0, %lo(D_8004AD41)($at)
/* 167BEC 8003DE8C 0800F7A6 */  j          .L8003DE98
/* 167BF0 8003DE90 24020001 */   addiu     $v0, $zero, 1
.L8003DE94:
/* 167BF4 8003DE94 00001021 */  addu       $v0, $zero, $zero
.L8003DE98:
/* 167BF8 8003DE98 8FBF0018 */  lw         $ra, 0x18($sp)
/* 167BFC 8003DE9C 8FB10014 */  lw         $s1, 0x14($sp)
/* 167C00 8003DEA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 167C04 8003DEA4 03E00008 */  jr         $ra
/* 167C08 8003DEA8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003DEAC_167C0C
/* 167C0C 8003DEAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 167C10 8003DEB0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 167C14 8003DEB4 0C00F744 */  jal        func_8003DD10_167A70
/* 167C18 8003DEB8 00002021 */   addu      $a0, $zero, $zero
/* 167C1C 8003DEBC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 167C20 8003DEC0 03E00008 */  jr         $ra
/* 167C24 8003DEC4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003DEC8_167C28
/* 167C28 8003DEC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 167C2C 8003DECC AFBF0010 */  sw         $ra, 0x10($sp)
/* 167C30 8003DED0 0C00F744 */  jal        func_8003DD10_167A70
/* 167C34 8003DED4 24040001 */   addiu     $a0, $zero, 1
/* 167C38 8003DED8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 167C3C 8003DEDC 03E00008 */  jr         $ra
/* 167C40 8003DEE0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003DEE4_167C44
/* 167C44 8003DEE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 167C48 8003DEE8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 167C4C 8003DEEC 0C00F744 */  jal        func_8003DD10_167A70
/* 167C50 8003DEF0 24040002 */   addiu     $a0, $zero, 2
/* 167C54 8003DEF4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 167C58 8003DEF8 03E00008 */  jr         $ra
/* 167C5C 8003DEFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003DF00_167C60
/* 167C60 8003DF00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 167C64 8003DF04 AFBF0010 */  sw         $ra, 0x10($sp)
/* 167C68 8003DF08 0C00F744 */  jal        func_8003DD10_167A70
/* 167C6C 8003DF0C 24040003 */   addiu     $a0, $zero, 3
/* 167C70 8003DF10 8FBF0010 */  lw         $ra, 0x10($sp)
/* 167C74 8003DF14 03E00008 */  jr         $ra
/* 167C78 8003DF18 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003DF1C_167C7C
/* 167C7C 8003DF1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 167C80 8003DF20 AFBF0010 */  sw         $ra, 0x10($sp)
/* 167C84 8003DF24 0C00F744 */  jal        func_8003DD10_167A70
/* 167C88 8003DF28 24040004 */   addiu     $a0, $zero, 4
/* 167C8C 8003DF2C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 167C90 8003DF30 03E00008 */  jr         $ra
/* 167C94 8003DF34 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003DF38_167C98
/* 167C98 8003DF38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 167C9C 8003DF3C AFBF0010 */  sw         $ra, 0x10($sp)
/* 167CA0 8003DF40 0C00F744 */  jal        func_8003DD10_167A70
/* 167CA4 8003DF44 24040005 */   addiu     $a0, $zero, 5
/* 167CA8 8003DF48 8FBF0010 */  lw         $ra, 0x10($sp)
/* 167CAC 8003DF4C 03E00008 */  jr         $ra
/* 167CB0 8003DF50 27BD0018 */   addiu     $sp, $sp, 0x18
/* 167CB4 8003DF54 00000000 */  nop
/* 167CB8 8003DF58 00000000 */  nop
/* 167CBC 8003DF5C 00000000 */  nop