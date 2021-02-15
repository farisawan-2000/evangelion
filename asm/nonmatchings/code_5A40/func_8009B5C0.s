.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009B5C0
/* 61C0 8009B5C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 61C4 8009B5C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 61C8 8009B5C8 00808021 */  addu       $s0, $a0, $zero
/* 61CC 8009B5CC 2E020018 */  sltiu      $v0, $s0, 0x18
/* 61D0 8009B5D0 1040001B */  beqz       $v0, .L8009B640
/* 61D4 8009B5D4 AFBF0014 */   sw        $ra, 0x14($sp)
/* 61D8 8009B5D8 00101040 */  sll        $v0, $s0, 1
/* 61DC 8009B5DC 3C01800D */  lui        $at, %hi(D_800D4134)
/* 61E0 8009B5E0 00220821 */  addu       $at, $at, $v0
/* 61E4 8009B5E4 94224134 */  lhu        $v0, %lo(D_800D4134)($at)
/* 61E8 8009B5E8 000210C0 */  sll        $v0, $v0, 3
/* 61EC 8009B5EC 3C04800D */  lui        $a0, %hi(D_800D3A90)
/* 61F0 8009B5F0 00822021 */  addu       $a0, $a0, $v0
/* 61F4 8009B5F4 8C843A90 */  lw         $a0, %lo(D_800D3A90)($a0)
/* 61F8 8009B5F8 3C05800D */  lui        $a1, %hi(D_800D3A94)
/* 61FC 8009B5FC 00A22821 */  addu       $a1, $a1, $v0
/* 6200 8009B600 8CA53A94 */  lw         $a1, %lo(D_800D3A94)($a1)
/* 6204 8009B604 3C06800D */  lui        $a2, %hi(D_800D3A70)
/* 6208 8009B608 00C23021 */  addu       $a2, $a2, $v0
/* 620C 8009B60C 8CC63A70 */  lw         $a2, %lo(D_800D3A70)($a2)
/* 6210 8009B610 0C02B6E8 */  jal        func_800ADBA0
/* 6214 8009B614 00A42823 */   subu      $a1, $a1, $a0
/* 6218 8009B618 001010C0 */  sll        $v0, $s0, 3
/* 621C 8009B61C 3C05800D */  lui        $a1, %hi(D_800D3AC0)
/* 6220 8009B620 00A22821 */  addu       $a1, $a1, $v0
/* 6224 8009B624 8CA53AC0 */  lw         $a1, %lo(D_800D3AC0)($a1)
/* 6228 8009B628 3C06800D */  lui        $a2, %hi(D_800D3AC4)
/* 622C 8009B62C 00C23021 */  addu       $a2, $a2, $v0
/* 6230 8009B630 8CC63AC4 */  lw         $a2, %lo(D_800D3AC4)($a2)
/* 6234 8009B634 00002021 */  addu       $a0, $zero, $zero
/* 6238 8009B638 0C02B70C */  jal        func_800ADC30
/* 623C 8009B63C 00C53023 */   subu      $a2, $a2, $a1
.L8009B640:
/* 6240 8009B640 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6244 8009B644 8FB00010 */  lw         $s0, 0x10($sp)
/* 6248 8009B648 27BD0018 */  addiu      $sp, $sp, 0x18
/* 624C 8009B64C 03E00008 */  jr         $ra
/* 6250 8009B650 00000000 */   nop
