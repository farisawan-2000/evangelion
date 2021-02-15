.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80097158
/* 1D58 80097158 00003021 */  addu       $a2, $zero, $zero
/* 1D5C 8009715C 00A01021 */  addu       $v0, $a1, $zero
/* 1D60 80097160 10400007 */  beqz       $v0, .L80097180
/* 1D64 80097164 24A5FFFF */   addiu     $a1, $a1, -1
.L80097168:
/* 1D68 80097168 90830000 */  lbu        $v1, ($a0)
/* 1D6C 8009716C 24840001 */  addiu      $a0, $a0, 1
/* 1D70 80097170 00A01021 */  addu       $v0, $a1, $zero
/* 1D74 80097174 24A5FFFF */  addiu      $a1, $a1, -1
/* 1D78 80097178 1440FFFB */  bnez       $v0, .L80097168
/* 1D7C 8009717C 00C33021 */   addu      $a2, $a2, $v1
.L80097180:
/* 1D80 80097180 03E00008 */  jr         $ra
/* 1D84 80097184 00C01021 */   addu      $v0, $a2, $zero
/* 1D88 80097188 00000000 */  nop
/* 1D8C 8009718C 00000000 */  nop
