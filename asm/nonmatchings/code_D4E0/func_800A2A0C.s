.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A2A0C
/* D60C 800A2A0C 27BDFFF8 */  addiu      $sp, $sp, -8
/* D610 800A2A10 24080063 */  addiu      $t0, $zero, 0x63
/* D614 800A2A14 3C028010 */  lui        $v0, %hi(D_800FFDF6)
/* D618 800A2A18 2442FDF6 */  addiu      $v0, $v0, %lo(D_800FFDF6)
.L800A2A1C:
/* D61C 800A2A1C A4400000 */  sh         $zero, ($v0)
/* D620 800A2A20 2508FFFF */  addiu      $t0, $t0, -1
/* D624 800A2A24 0501FFFD */  bgez       $t0, .L800A2A1C
/* D628 800A2A28 2442FFFE */   addiu     $v0, $v0, -2
/* D62C 800A2A2C 1880000F */  blez       $a0, .L800A2A6C
/* D630 800A2A30 00004021 */   addu      $t0, $zero, $zero
/* D634 800A2A34 3C098010 */  lui        $t1, %hi(D_800FFD30)
/* D638 800A2A38 2529FD30 */  addiu      $t1, $t1, %lo(D_800FFD30)
/* D63C 800A2A3C 00A03821 */  addu       $a3, $a1, $zero
.L800A2A40:
/* D640 800A2A40 8CE20000 */  lw         $v0, ($a3)
/* D644 800A2A44 9442001C */  lhu        $v0, 0x1c($v0)
/* D648 800A2A48 00021040 */  sll        $v0, $v0, 1
/* D64C 800A2A4C 00491021 */  addu       $v0, $v0, $t1
/* D650 800A2A50 94430000 */  lhu        $v1, ($v0)
/* D654 800A2A54 25080001 */  addiu      $t0, $t0, 1
/* D658 800A2A58 24630001 */  addiu      $v1, $v1, 1
/* D65C 800A2A5C A4430000 */  sh         $v1, ($v0)
/* D660 800A2A60 0104102A */  slt        $v0, $t0, $a0
/* D664 800A2A64 1440FFF6 */  bnez       $v0, .L800A2A40
/* D668 800A2A68 24E70004 */   addiu     $a3, $a3, 4
.L800A2A6C:
/* D66C 800A2A6C 24080001 */  addiu      $t0, $zero, 1
/* D670 800A2A70 3C028010 */  lui        $v0, %hi(D_800FFD30)
/* D674 800A2A74 2442FD30 */  addiu      $v0, $v0, %lo(D_800FFD30)
/* D678 800A2A78 24470002 */  addiu      $a3, $v0, 2
/* D67C 800A2A7C 00404821 */  addu       $t1, $v0, $zero
.L800A2A80:
/* D680 800A2A80 94E20000 */  lhu        $v0, ($a3)
/* D684 800A2A84 95230000 */  lhu        $v1, ($t1)
/* D688 800A2A88 25290002 */  addiu      $t1, $t1, 2
/* D68C 800A2A8C 25080001 */  addiu      $t0, $t0, 1
/* D690 800A2A90 00431021 */  addu       $v0, $v0, $v1
/* D694 800A2A94 A4E20000 */  sh         $v0, ($a3)
/* D698 800A2A98 29020064 */  slti       $v0, $t0, 0x64
/* D69C 800A2A9C 1440FFF8 */  bnez       $v0, .L800A2A80
/* D6A0 800A2AA0 24E70002 */   addiu     $a3, $a3, 2
/* D6A4 800A2AA4 2488FFFF */  addiu      $t0, $a0, -1
/* D6A8 800A2AA8 05000013 */  bltz       $t0, .L800A2AF8
/* D6AC 800A2AAC 00081080 */   sll       $v0, $t0, 2
/* D6B0 800A2AB0 3C048010 */  lui        $a0, %hi(D_800FFD30)
/* D6B4 800A2AB4 2484FD30 */  addiu      $a0, $a0, %lo(D_800FFD30)
/* D6B8 800A2AB8 00452821 */  addu       $a1, $v0, $a1
.L800A2ABC:
/* D6BC 800A2ABC 8CA20000 */  lw         $v0, ($a1)
/* D6C0 800A2AC0 9443001C */  lhu        $v1, 0x1c($v0)
/* D6C4 800A2AC4 00031840 */  sll        $v1, $v1, 1
/* D6C8 800A2AC8 00641821 */  addu       $v1, $v1, $a0
/* D6CC 800A2ACC 94620000 */  lhu        $v0, ($v1)
/* D6D0 800A2AD0 2508FFFF */  addiu      $t0, $t0, -1
/* D6D4 800A2AD4 2442FFFF */  addiu      $v0, $v0, -1
/* D6D8 800A2AD8 A4620000 */  sh         $v0, ($v1)
/* D6DC 800A2ADC 8CA30000 */  lw         $v1, ($a1)
/* D6E0 800A2AE0 24A5FFFC */  addiu      $a1, $a1, -4
/* D6E4 800A2AE4 3042FFFF */  andi       $v0, $v0, 0xffff
/* D6E8 800A2AE8 00021080 */  sll        $v0, $v0, 2
/* D6EC 800A2AEC 00461021 */  addu       $v0, $v0, $a2
/* D6F0 800A2AF0 0501FFF2 */  bgez       $t0, .L800A2ABC
/* D6F4 800A2AF4 AC430000 */   sw        $v1, ($v0)
.L800A2AF8:
/* D6F8 800A2AF8 27BD0008 */  addiu      $sp, $sp, 8
/* D6FC 800A2AFC 03E00008 */  jr         $ra
/* D700 800A2B00 00000000 */   nop
