.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009B654
/* 6254 8009B654 3C028015 */  lui        $v0, %hi(D_80149BC0)
/* 6258 8009B658 8C429BC0 */  lw         $v0, %lo(D_80149BC0)($v0)
/* 625C 8009B65C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6260 8009B660 00802821 */  addu       $a1, $a0, $zero
/* 6264 8009B664 10400005 */  beqz       $v0, .L8009B67C
/* 6268 8009B668 AFBF0010 */   sw        $ra, 0x10($sp)
/* 626C 8009B66C 3C028017 */  lui        $v0, %hi(D_8016D200)
/* 6270 8009B670 8C42D200 */  lw         $v0, %lo(D_8016D200)($v0)
/* 6274 8009B674 14400003 */  bnez       $v0, .L8009B684
/* 6278 8009B678 2402FFFF */   addiu     $v0, $zero, -1
.L8009B67C:
/* 627C 8009B67C 08026DAD */  j          .L8009B6B4
/* 6280 8009B680 00001021 */   addu      $v0, $zero, $zero
.L8009B684:
/* 6284 8009B684 14A20005 */  bne        $a1, $v0, .L8009B69C
/* 6288 8009B688 00000000 */   nop
/* 628C 8009B68C 0C02B71C */  jal        func_800ADC70
/* 6290 8009B690 00002021 */   addu      $a0, $zero, $zero
/* 6294 8009B694 08026DAD */  j          .L8009B6B4
/* 6298 8009B698 00000000 */   nop
.L8009B69C:
/* 629C 8009B69C 3C048015 */  lui        $a0, %hi(D_80149FF4)
/* 62A0 8009B6A0 8C849FF4 */  lw         $a0, %lo(D_80149FF4)($a0)
/* 62A4 8009B6A4 0C02B89C */  jal        func_800AE270
/* 62A8 8009B6A8 00000000 */   nop
/* 62AC 8009B6AC 3C018015 */  lui        $at, %hi(D_80149FF0)
/* 62B0 8009B6B0 AC229FF0 */  sw         $v0, %lo(D_80149FF0)($at)
.L8009B6B4:
/* 62B4 8009B6B4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 62B8 8009B6B8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 62BC 8009B6BC 03E00008 */  jr         $ra
/* 62C0 8009B6C0 00000000 */   nop
