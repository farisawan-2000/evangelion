.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BC8A0
/* 274A0 800BC8A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 274A4 800BC8A4 AFB10014 */  sw         $s1, 0x14($sp)
/* 274A8 800BC8A8 00808821 */  addu       $s1, $a0, $zero
/* 274AC 800BC8AC 3C030B00 */  lui        $v1, 0xb00
/* 274B0 800BC8B0 34630020 */  ori        $v1, $v1, 0x20
/* 274B4 800BC8B4 26240008 */  addiu      $a0, $s1, 8
/* 274B8 800BC8B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 274BC 800BC8BC 00E08021 */  addu       $s0, $a3, $zero
/* 274C0 800BC8C0 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 274C4 800BC8C4 3C020800 */  lui        $v0, 0x800
/* 274C8 800BC8C8 00A21025 */  or         $v0, $a1, $v0
/* 274CC 800BC8CC 00052C00 */  sll        $a1, $a1, 0x10
/* 274D0 800BC8D0 00063040 */  sll        $a2, $a2, 1
/* 274D4 800BC8D4 30C6FFFF */  andi       $a2, $a2, 0xffff
/* 274D8 800BC8D8 00A62825 */  or         $a1, $a1, $a2
/* 274DC 800BC8DC AFBF0018 */  sw         $ra, 0x18($sp)
/* 274E0 800BC8E0 AE020000 */  sw         $v0, ($s0)
/* 274E4 800BC8E4 AE050004 */  sw         $a1, 4($s0)
/* 274E8 800BC8E8 0C02F680 */  jal        func_800BDA00
/* 274EC 800BC8EC AE030008 */   sw        $v1, 8($s0)
/* 274F0 800BC8F0 AE02000C */  sw         $v0, 0xc($s0)
/* 274F4 800BC8F4 9222002F */  lbu        $v0, 0x2f($s1)
/* 274F8 800BC8F8 96230002 */  lhu        $v1, 2($s1)
/* 274FC 800BC8FC 3C040E00 */  lui        $a0, 0xe00
/* 27500 800BC900 00021400 */  sll        $v0, $v0, 0x10
/* 27504 800BC904 00641825 */  or         $v1, $v1, $a0
/* 27508 800BC908 00431025 */  or         $v0, $v0, $v1
/* 2750C 800BC90C AE020010 */  sw         $v0, 0x10($s0)
/* 27510 800BC910 0C02F680 */  jal        func_800BDA00
/* 27514 800BC914 8E240028 */   lw        $a0, 0x28($s1)
/* 27518 800BC918 AE020014 */  sw         $v0, 0x14($s0)
/* 2751C 800BC91C 26100018 */  addiu      $s0, $s0, 0x18
/* 27520 800BC920 02001021 */  addu       $v0, $s0, $zero
/* 27524 800BC924 AE20002C */  sw         $zero, 0x2c($s1)
/* 27528 800BC928 8FBF0018 */  lw         $ra, 0x18($sp)
/* 2752C 800BC92C 8FB10014 */  lw         $s1, 0x14($sp)
/* 27530 800BC930 8FB00010 */  lw         $s0, 0x10($sp)
/* 27534 800BC934 03E00008 */  jr         $ra
/* 27538 800BC938 27BD0020 */   addiu     $sp, $sp, 0x20
