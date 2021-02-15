.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7BF0
/* 227F0 800B7BF0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 227F4 800B7BF4 00041080 */  sll        $v0, $a0, 2
/* 227F8 800B7BF8 00441021 */  addu       $v0, $v0, $a0
/* 227FC 800B7BFC 00021040 */  sll        $v0, $v0, 1
/* 22800 800B7C00 AFBF0030 */  sw         $ra, 0x30($sp)
/* 22804 800B7C04 3C018015 */  lui        $at, %hi(D_8014A007)
/* 22808 800B7C08 00220821 */  addu       $at, $at, $v0
/* 2280C 800B7C0C 9022A007 */  lbu        $v0, %lo(D_8014A007)($at)
/* 22810 800B7C10 30420080 */  andi       $v0, $v0, 0x80
/* 22814 800B7C14 1440000A */  bnez       $v0, .L800B7C40
/* 22818 800B7C18 24020003 */   addiu     $v0, $zero, 3
/* 2281C 800B7C1C A3A20016 */  sb         $v0, 0x16($sp)
/* 22820 800B7C20 27A20010 */  addiu      $v0, $sp, 0x10
/* 22824 800B7C24 A3A40020 */  sb         $a0, 0x20($sp)
/* 22828 800B7C28 24040302 */  addiu      $a0, $zero, 0x302
/* 2282C 800B7C2C A7A50010 */  sh         $a1, 0x10($sp)
/* 22830 800B7C30 27A50020 */  addiu      $a1, $sp, 0x20
/* 22834 800B7C34 A7A60012 */  sh         $a2, 0x12($sp)
/* 22838 800B7C38 0C02E01E */  jal        func_800B8078
/* 2283C 800B7C3C AFA20028 */   sw        $v0, 0x28($sp)
.L800B7C40:
/* 22840 800B7C40 8FBF0030 */  lw         $ra, 0x30($sp)
/* 22844 800B7C44 03E00008 */  jr         $ra
/* 22848 800B7C48 27BD0038 */   addiu     $sp, $sp, 0x38
/* 2284C 800B7C4C 00000000 */  nop
