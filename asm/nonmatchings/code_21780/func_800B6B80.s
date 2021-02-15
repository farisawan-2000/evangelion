.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B6B80
/* 21780 800B6B80 00041080 */  sll        $v0, $a0, 2
/* 21784 800B6B84 00441021 */  addu       $v0, $v0, $a0
/* 21788 800B6B88 00021080 */  sll        $v0, $v0, 2
/* 2178C 800B6B8C 00441023 */  subu       $v0, $v0, $a0
/* 21790 800B6B90 00021100 */  sll        $v0, $v0, 4
/* 21794 800B6B94 00441023 */  subu       $v0, $v0, $a0
/* 21798 800B6B98 00021080 */  sll        $v0, $v0, 2
/* 2179C 800B6B9C 00441023 */  subu       $v0, $v0, $a0
/* 217A0 800B6BA0 00021040 */  sll        $v0, $v0, 1
/* 217A4 800B6BA4 3C03800F */  lui        $v1, %hi(D_800F1830)
/* 217A8 800B6BA8 24631830 */  addiu      $v1, $v1, %lo(D_800F1830)
/* 217AC 800B6BAC 00433821 */  addu       $a3, $v0, $v1
/* 217B0 800B6BB0 94E30012 */  lhu        $v1, 0x12($a3)
/* 217B4 800B6BB4 00A3102B */  sltu       $v0, $a1, $v1
/* 217B8 800B6BB8 10400003 */  beqz       $v0, .L800B6BC8
/* 217BC 800B6BBC 2462FFFF */   addiu     $v0, $v1, -1
/* 217C0 800B6BC0 0802DAF3 */  j          .L800B6BCC
/* 217C4 800B6BC4 A4E50008 */   sh        $a1, 8($a3)
.L800B6BC8:
/* 217C8 800B6BC8 A4E20008 */  sh         $v0, 8($a3)
.L800B6BCC:
/* 217CC 800B6BCC 94E30014 */  lhu        $v1, 0x14($a3)
/* 217D0 800B6BD0 00C3102B */  sltu       $v0, $a2, $v1
/* 217D4 800B6BD4 10400003 */  beqz       $v0, .L800B6BE4
/* 217D8 800B6BD8 2462FFFF */   addiu     $v0, $v1, -1
/* 217DC 800B6BDC 0802DAFA */  j          .L800B6BE8
/* 217E0 800B6BE0 A4E6000A */   sh        $a2, 0xa($a3)
.L800B6BE4:
/* 217E4 800B6BE4 A4E2000A */  sh         $v0, 0xa($a3)
.L800B6BE8:
/* 217E8 800B6BE8 94E2000A */  lhu        $v0, 0xa($a3)
/* 217EC 800B6BEC 94E40002 */  lhu        $a0, 2($a3)
/* 217F0 800B6BF0 94E30014 */  lhu        $v1, 0x14($a3)
/* 217F4 800B6BF4 00441021 */  addu       $v0, $v0, $a0
/* 217F8 800B6BF8 0043001A */  div        $zero, $v0, $v1
/* 217FC 800B6BFC 14600002 */  bnez       $v1, .L800B6C08
/* 21800 800B6C00 00000000 */   nop
/* 21804 800B6C04 0007000D */  break      7
.L800B6C08:
/* 21808 800B6C08 2401FFFF */   addiu     $at, $zero, -1
/* 2180C 800B6C0C 14610004 */  bne        $v1, $at, .L800B6C20
/* 21810 800B6C10 3C018000 */   lui       $at, 0x8000
/* 21814 800B6C14 14410002 */  bne        $v0, $at, .L800B6C20
/* 21818 800B6C18 00000000 */   nop
/* 2181C 800B6C1C 0006000D */  break      6
.L800B6C20:
/* 21820 800B6C20 00001810 */   mfhi      $v1
/* 21824 800B6C24 94E20012 */  lhu        $v0, 0x12($a3)
/* 21828 800B6C28 00000000 */  nop
/* 2182C 800B6C2C 00620018 */  mult       $v1, $v0
/* 21830 800B6C30 00001812 */  mflo       $v1
/* 21834 800B6C34 94E20008 */  lhu        $v0, 8($a3)
/* 21838 800B6C38 00431021 */  addu       $v0, $v0, $v1
/* 2183C 800B6C3C 03E00008 */  jr         $ra
/* 21840 800B6C40 A4E2000C */   sh        $v0, 0xc($a3)
/* 21844 800B6C44 00000000 */  nop
/* 21848 800B6C48 00000000 */  nop
/* 2184C 800B6C4C 00000000 */  nop
