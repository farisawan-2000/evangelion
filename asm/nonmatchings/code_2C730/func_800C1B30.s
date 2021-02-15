.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C1B30
/* 2C730 800C1B30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2C734 800C1B34 AFB00010 */  sw         $s0, 0x10($sp)
/* 2C738 800C1B38 00808021 */  addu       $s0, $a0, $zero
/* 2C73C 800C1B3C AFBF001C */  sw         $ra, 0x1c($sp)
/* 2C740 800C1B40 AFB20018 */  sw         $s2, 0x18($sp)
/* 2C744 800C1B44 0C0319D0 */  jal        func_800C6740
/* 2C748 800C1B48 AFB10014 */   sw        $s1, 0x14($sp)
/* 2C74C 800C1B4C 96030010 */  lhu        $v1, 0x10($s0)
/* 2C750 800C1B50 00409021 */  addu       $s2, $v0, $zero
/* 2C754 800C1B54 24020001 */  addiu      $v0, $zero, 1
/* 2C758 800C1B58 10620008 */  beq        $v1, $v0, .L800C1B7C
/* 2C75C 800C1B5C 24020008 */   addiu     $v0, $zero, 8
/* 2C760 800C1B60 1462001E */  bne        $v1, $v0, .L800C1BDC
/* 2C764 800C1B64 24020002 */   addiu     $v0, $zero, 2
/* 2C768 800C1B68 A6020010 */  sh         $v0, 0x10($s0)
/* 2C76C 800C1B6C 3C04800F */  lui        $a0, %hi(D_800F69B8)
/* 2C770 800C1B70 248469B8 */  addiu      $a0, $a0, %lo(D_800F69B8)
/* 2C774 800C1B74 080306F5 */  j          .L800C1BD4
/* 2C778 800C1B78 02002821 */   addu      $a1, $s0, $zero
.L800C1B7C:
/* 2C77C 800C1B7C 8E020008 */  lw         $v0, 8($s0)
/* 2C780 800C1B80 50400006 */  beql       $v0, $zero, .L800C1B9C
/* 2C784 800C1B84 24020002 */   addiu     $v0, $zero, 2
/* 2C788 800C1B88 3C11800F */  lui        $s1, %hi(D_800F69B8)
/* 2C78C 800C1B8C 263169B8 */  addiu      $s1, $s1, %lo(D_800F69B8)
/* 2C790 800C1B90 14510007 */  bne        $v0, $s1, .L800C1BB0
/* 2C794 800C1B94 02002821 */   addu      $a1, $s0, $zero
/* 2C798 800C1B98 24020002 */  addiu      $v0, $zero, 2
.L800C1B9C:
/* 2C79C 800C1B9C A6020010 */  sh         $v0, 0x10($s0)
/* 2C7A0 800C1BA0 3C04800F */  lui        $a0, %hi(D_800F69B8)
/* 2C7A4 800C1BA4 248469B8 */  addiu      $a0, $a0, %lo(D_800F69B8)
/* 2C7A8 800C1BA8 080306F5 */  j          .L800C1BD4
/* 2C7AC 800C1BAC 02002821 */   addu      $a1, $s0, $zero
.L800C1BB0:
/* 2C7B0 800C1BB0 8E040008 */  lw         $a0, 8($s0)
/* 2C7B4 800C1BB4 24020008 */  addiu      $v0, $zero, 8
/* 2C7B8 800C1BB8 0C031955 */  jal        func_800C6554
/* 2C7BC 800C1BBC A6020010 */   sh        $v0, 0x10($s0)
/* 2C7C0 800C1BC0 8E040008 */  lw         $a0, 8($s0)
/* 2C7C4 800C1BC4 0C031967 */  jal        func_800C659C
/* 2C7C8 800C1BC8 00000000 */   nop
/* 2C7CC 800C1BCC 02202021 */  addu       $a0, $s1, $zero
/* 2C7D0 800C1BD0 00402821 */  addu       $a1, $v0, $zero
.L800C1BD4:
/* 2C7D4 800C1BD4 0C031955 */  jal        func_800C6554
/* 2C7D8 800C1BD8 00000000 */   nop
.L800C1BDC:
/* 2C7DC 800C1BDC 3C04800F */  lui        $a0, %hi(D_800F69C0)
/* 2C7E0 800C1BE0 8C8469C0 */  lw         $a0, %lo(D_800F69C0)($a0)
/* 2C7E4 800C1BE4 14800005 */  bnez       $a0, .L800C1BFC
/* 2C7E8 800C1BE8 00000000 */   nop
/* 2C7EC 800C1BEC 0C03196B */  jal        func_800C65AC
/* 2C7F0 800C1BF0 00000000 */   nop
/* 2C7F4 800C1BF4 0803070A */  j          .L800C1C28
/* 2C7F8 800C1BF8 00000000 */   nop
.L800C1BFC:
/* 2C7FC 800C1BFC 3C02800F */  lui        $v0, %hi(D_800F69B8)
/* 2C800 800C1C00 8C4269B8 */  lw         $v0, %lo(D_800F69B8)($v0)
/* 2C804 800C1C04 8C830004 */  lw         $v1, 4($a0)
/* 2C808 800C1C08 8C420004 */  lw         $v0, 4($v0)
/* 2C80C 800C1C0C 0062182A */  slt        $v1, $v1, $v0
/* 2C810 800C1C10 10600005 */  beqz       $v1, .L800C1C28
/* 2C814 800C1C14 24020002 */   addiu     $v0, $zero, 2
/* 2C818 800C1C18 A4820010 */  sh         $v0, 0x10($a0)
/* 2C81C 800C1C1C 3C04800F */  lui        $a0, %hi(D_800F69B8)
/* 2C820 800C1C20 0C031913 */  jal        func_800C644C
/* 2C824 800C1C24 248469B8 */   addiu     $a0, $a0, %lo(D_800F69B8)
.L800C1C28:
/* 2C828 800C1C28 0C0319EC */  jal        func_800C67B0
/* 2C82C 800C1C2C 02402021 */   addu      $a0, $s2, $zero
/* 2C830 800C1C30 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2C834 800C1C34 8FB20018 */  lw         $s2, 0x18($sp)
/* 2C838 800C1C38 8FB10014 */  lw         $s1, 0x14($sp)
/* 2C83C 800C1C3C 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C840 800C1C40 03E00008 */  jr         $ra
/* 2C844 800C1C44 27BD0020 */   addiu     $sp, $sp, 0x20
/* 2C848 800C1C48 00000000 */  nop
/* 2C84C 800C1C4C 00000000 */  nop
