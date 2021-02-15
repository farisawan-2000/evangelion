.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009BA10
/* 6610 8009BA10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6614 8009BA14 97A9002A */  lhu        $t1, 0x2a($sp)
/* 6618 8009BA18 97AA002E */  lhu        $t2, 0x2e($sp)
/* 661C 8009BA1C 97AB0032 */  lhu        $t3, 0x32($sp)
/* 6620 8009BA20 97AC0036 */  lhu        $t4, 0x36($sp)
/* 6624 8009BA24 97AD003A */  lhu        $t5, 0x3a($sp)
/* 6628 8009BA28 97AE003E */  lhu        $t6, 0x3e($sp)
/* 662C 8009BA2C 00A01821 */  addu       $v1, $a1, $zero
/* 6630 8009BA30 3C018010 */  lui        $at, %hi(D_800FF3C0)
/* 6634 8009BA34 A424F3C0 */  sh         $a0, %lo(D_800FF3C0)($at)
/* 6638 8009BA38 00C02021 */  addu       $a0, $a2, $zero
/* 663C 8009BA3C 00E04021 */  addu       $t0, $a3, $zero
/* 6640 8009BA40 00052C00 */  sll        $a1, $a1, 0x10
/* 6644 8009BA44 1CA00002 */  bgtz       $a1, .L8009BA50
/* 6648 8009BA48 AFBF0010 */   sw        $ra, 0x10($sp)
/* 664C 8009BA4C 24030001 */  addiu      $v1, $zero, 1
.L8009BA50:
/* 6650 8009BA50 3C018010 */  lui        $at, %hi(D_800FF3C2)
/* 6654 8009BA54 A423F3C2 */  sh         $v1, %lo(D_800FF3C2)($at)
/* 6658 8009BA58 00061400 */  sll        $v0, $a2, 0x10
/* 665C 8009BA5C 1C400002 */  bgtz       $v0, .L8009BA68
/* 6660 8009BA60 00801821 */   addu      $v1, $a0, $zero
/* 6664 8009BA64 24030001 */  addiu      $v1, $zero, 1
.L8009BA68:
/* 6668 8009BA68 3C018010 */  lui        $at, %hi(D_800FF3C4)
/* 666C 8009BA6C A423F3C4 */  sh         $v1, %lo(D_800FF3C4)($at)
/* 6670 8009BA70 00071400 */  sll        $v0, $a3, 0x10
/* 6674 8009BA74 1C400002 */  bgtz       $v0, .L8009BA80
/* 6678 8009BA78 01001821 */   addu      $v1, $t0, $zero
/* 667C 8009BA7C 24030001 */  addiu      $v1, $zero, 1
.L8009BA80:
/* 6680 8009BA80 3C04800A */  lui        $a0, %hi(func_8009BB08)
/* 6684 8009BA84 2484BB08 */  addiu      $a0, $a0, %lo(func_8009BB08)
/* 6688 8009BA88 00002821 */  addu       $a1, $zero, $zero
/* 668C 8009BA8C 00003021 */  addu       $a2, $zero, $zero
/* 6690 8009BA90 3C018010 */  lui        $at, %hi(D_800FF3C6)
/* 6694 8009BA94 A423F3C6 */  sh         $v1, %lo(D_800FF3C6)($at)
/* 6698 8009BA98 3C018010 */  lui        $at, %hi(D_800FF3C8)
/* 669C 8009BA9C A429F3C8 */  sh         $t1, %lo(D_800FF3C8)($at)
/* 66A0 8009BAA0 3C018010 */  lui        $at, %hi(D_800FF3CA)
/* 66A4 8009BAA4 A42AF3CA */  sh         $t2, %lo(D_800FF3CA)($at)
/* 66A8 8009BAA8 3C018010 */  lui        $at, %hi(D_800FF3CC)
/* 66AC 8009BAAC A42BF3CC */  sh         $t3, %lo(D_800FF3CC)($at)
/* 66B0 8009BAB0 3C018010 */  lui        $at, %hi(D_800FF3CE)
/* 66B4 8009BAB4 A42CF3CE */  sh         $t4, %lo(D_800FF3CE)($at)
/* 66B8 8009BAB8 3C018010 */  lui        $at, %hi(D_800FF3D0)
/* 66BC 8009BABC A42DF3D0 */  sh         $t5, %lo(D_800FF3D0)($at)
/* 66C0 8009BAC0 3C018010 */  lui        $at, %hi(D_800FF3D2)
/* 66C4 8009BAC4 A42EF3D2 */  sh         $t6, %lo(D_800FF3D2)($at)
/* 66C8 8009BAC8 0C025D06 */  jal        func_80097418
/* 66CC 8009BACC 00003821 */   addu      $a3, $zero, $zero
/* 66D0 8009BAD0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 66D4 8009BAD4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 66D8 8009BAD8 03E00008 */  jr         $ra
/* 66DC 8009BADC 00000000 */   nop
