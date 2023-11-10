glabel func_800C9C18
/* 34818 800C9C18 3C0E800F */  lui        $t6, %hi(D_800F7DD0)
/* 3481C 800C9C1C 8DCE7DD0 */  lw         $t6, %lo(D_800F7DD0)($t6)
/* 34820 800C9C20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 34824 800C9C24 2401FFFF */  addiu      $at, $zero, -0x1
/* 34828 800C9C28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3482C 800C9C2C 00803025 */  or         $a2, $a0, $zero
/* 34830 800C9C30 15C10003 */  bne        $t6, $at, .L800C9C40
/* 34834 800C9C34 00A03825 */   or        $a3, $a1, $zero
/* 34838 800C9C38 10000014 */  b          .L800C9C8C
/* 3483C 800C9C3C 00001025 */   or        $v0, $zero, $zero
.L800C9C40:
/* 34840 800C9C40 00C70019 */  multu      $a2, $a3
/* 34844 800C9C44 00002812 */  mflo       $a1
/* 34848 800C9C48 00A02025 */  or         $a0, $a1, $zero
/* 3484C 800C9C4C 0C032663 */  jal        func_800C998C
/* 34850 800C9C50 AFA5001C */   sw        $a1, 0x1C($sp)
/* 34854 800C9C54 8FA5001C */  lw         $a1, 0x1C($sp)
/* 34858 800C9C58 14400003 */  bnez       $v0, .L800C9C68
/* 3485C 800C9C5C 00403025 */   or        $a2, $v0, $zero
/* 34860 800C9C60 1000000A */  b          .L800C9C8C
/* 34864 800C9C64 00001025 */   or        $v0, $zero, $zero
.L800C9C68:
/* 34868 800C9C68 00401825 */  or         $v1, $v0, $zero
/* 3486C 800C9C6C 10A00006 */  beqz       $a1, .L800C9C88
/* 34870 800C9C70 24A4FFFF */   addiu     $a0, $a1, -0x1
.L800C9C74:
/* 34874 800C9C74 00801025 */  or         $v0, $a0, $zero
/* 34878 800C9C78 A0600000 */  sb         $zero, 0x0($v1)
/* 3487C 800C9C7C 24630001 */  addiu      $v1, $v1, 0x1
/* 34880 800C9C80 1480FFFC */  bnez       $a0, .L800C9C74
/* 34884 800C9C84 2484FFFF */   addiu     $a0, $a0, -0x1
.L800C9C88:
/* 34888 800C9C88 00C01025 */  or         $v0, $a2, $zero
.L800C9C8C:
/* 3488C 800C9C8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 34890 800C9C90 27BD0030 */  addiu      $sp, $sp, 0x30
/* 34894 800C9C94 03E00008 */  jr         $ra
/* 34898 800C9C98 00000000 */   nop
.size func_800C9C18, . - func_800C9C18
