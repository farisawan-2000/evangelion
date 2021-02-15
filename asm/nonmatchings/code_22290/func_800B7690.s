.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7690
/* 22290 800B7690 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22294 800B7694 AFBF0010 */  sw         $ra, 0x10($sp)
/* 22298 800B7698 00002021 */  addu       $a0, $zero, $zero
/* 2229C 800B769C 24050002 */  addiu      $a1, $zero, 2
/* 222A0 800B76A0 00001821 */  addu       $v1, $zero, $zero
.L800B76A4:
/* 222A4 800B76A4 3C018015 */  lui        $at, %hi(D_8014A006)
/* 222A8 800B76A8 00230821 */  addu       $at, $at, $v1
/* 222AC 800B76AC A025A006 */  sb         $a1, %lo(D_8014A006)($at)
/* 222B0 800B76B0 3C018015 */  lui        $at, %hi(D_8014A007)
/* 222B4 800B76B4 00230821 */  addu       $at, $at, $v1
/* 222B8 800B76B8 A020A007 */  sb         $zero, %lo(D_8014A007)($at)
/* 222BC 800B76BC 3C018015 */  lui        $at, %hi(D_8014A004)
/* 222C0 800B76C0 00230821 */  addu       $at, $at, $v1
/* 222C4 800B76C4 A424A004 */  sh         $a0, %lo(D_8014A004)($at)
/* 222C8 800B76C8 24840001 */  addiu      $a0, $a0, 1
/* 222CC 800B76CC 2C820004 */  sltiu      $v0, $a0, 4
/* 222D0 800B76D0 1440FFF4 */  bnez       $v0, .L800B76A4
/* 222D4 800B76D4 2463000A */   addiu     $v1, $v1, 0xa
/* 222D8 800B76D8 3C04800F */  lui        $a0, %hi(D_800F5DB0)
/* 222DC 800B76DC 0C02E0B0 */  jal        func_800B82C0
/* 222E0 800B76E0 24845DB0 */   addiu     $a0, $a0, %lo(D_800F5DB0)
/* 222E4 800B76E4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 222E8 800B76E8 03E00008 */  jr         $ra
/* 222EC 800B76EC 27BD0018 */   addiu     $sp, $sp, 0x18
