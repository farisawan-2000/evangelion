.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002D430_D6940
/* D6940 8002D430 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6944 8002D434 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6948 8002D438 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D694C 8002D43C 14400005 */  bnez       $v0, .L8002D454
/* D6950 8002D440 AFBF0010 */   sw        $ra, 0x10($sp)
/* D6954 8002D444 0C00B522 */  jal        func_8002D488_D6998
/* D6958 8002D448 00000000 */   nop
/* D695C 8002D44C 0800B51F */  j          .L8002D47C
/* D6960 8002D450 00001021 */   addu      $v0, $zero, $zero
.L8002D454:
/* D6964 8002D454 90430038 */  lbu        $v1, 0x38($v0)
/* D6968 8002D458 24020006 */  addiu      $v0, $zero, 6
/* D696C 8002D45C 10620005 */  beq        $v1, $v0, .L8002D474
/* D6970 8002D460 00000000 */   nop
/* D6974 8002D464 0C00B66C */  jal        func_8002D9B0_D6EC0
/* D6978 8002D468 00000000 */   nop
/* D697C 8002D46C 0800B51F */  j          .L8002D47C
/* D6980 8002D470 00001021 */   addu      $v0, $zero, $zero
.L8002D474:
/* D6984 8002D474 0C00B616 */  jal        func_8002D858_D6D68
/* D6988 8002D478 00000000 */   nop
.L8002D47C:
/* D698C 8002D47C 8FBF0010 */  lw         $ra, 0x10($sp)
/* D6990 8002D480 03E00008 */  jr         $ra
/* D6994 8002D484 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002D488_D6998
/* D6998 8002D488 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D699C 8002D48C 24040002 */  addiu      $a0, $zero, 2
/* D69A0 8002D490 AFBF0024 */  sw         $ra, 0x24($sp)
/* D69A4 8002D494 AFB20020 */  sw         $s2, 0x20($sp)
/* D69A8 8002D498 AFB1001C */  sw         $s1, 0x1c($sp)
/* D69AC 8002D49C 0C026449 */  jal        func_80099124
/* D69B0 8002D4A0 AFB00018 */   sw        $s0, 0x18($sp)
/* D69B4 8002D4A4 3C048017 */  lui        $a0, %hi(D_8016D168)
/* D69B8 8002D4A8 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* D69BC 8002D4AC 0C02A5AF */  jal        func_800A96BC
/* D69C0 8002D4B0 00009021 */   addu      $s2, $zero, $zero
/* D69C4 8002D4B4 0C032663 */  jal        func_800C998C
/* D69C8 8002D4B8 24040064 */   addiu     $a0, $zero, 0x64
/* D69CC 8002D4BC 00402021 */  addu       $a0, $v0, $zero
/* D69D0 8002D4C0 3C018006 */  lui        $at, %hi(D_800679C0)
/* D69D4 8002D4C4 AC2479C0 */  sw         $a0, %lo(D_800679C0)($at)
/* D69D8 8002D4C8 0C030134 */  jal        bzero
/* D69DC 8002D4CC 24050064 */   addiu     $a1, $zero, 0x64
/* D69E0 8002D4D0 0C029375 */  jal        func_800A4DD4
/* D69E4 8002D4D4 00000000 */   nop
/* D69E8 8002D4D8 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D69EC 8002D4DC 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D69F0 8002D4E0 3C118006 */  lui        $s1, %hi(D_800679C4)
/* D69F4 8002D4E4 263179C4 */  addiu      $s1, $s1, %lo(D_800679C4)
/* D69F8 8002D4E8 24050010 */  addiu      $a1, $zero, 0x10
/* D69FC 8002D4EC AC620000 */  sw         $v0, ($v1)
/* D6A00 8002D4F0 240200E0 */  addiu      $v0, $zero, 0xe0
/* D6A04 8002D4F4 AFA20010 */  sw         $v0, 0x10($sp)
/* D6A08 8002D4F8 8C640000 */  lw         $a0, ($v1)
/* D6A0C 8002D4FC 24060010 */  addiu      $a2, $zero, 0x10
/* D6A10 8002D500 0C02939C */  jal        func_800A4E70
/* D6A14 8002D504 24070130 */   addiu     $a3, $zero, 0x130
.L8002D508:
/* D6A18 8002D508 96240000 */  lhu        $a0, ($s1)
/* D6A1C 8002D50C 92250002 */  lbu        $a1, 2($s1)
/* D6A20 8002D510 0C028CB7 */  jal        func_800A32DC
/* D6A24 8002D514 00003021 */   addu      $a2, $zero, $zero
/* D6A28 8002D518 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D6A2C 8002D51C 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D6A30 8002D520 00128080 */  sll        $s0, $s2, 2
/* D6A34 8002D524 02031821 */  addu       $v1, $s0, $v1
/* D6A38 8002D528 AC620004 */  sw         $v0, 4($v1)
/* D6A3C 8002D52C 92220003 */  lbu        $v0, 3($s1)
/* D6A40 8002D530 26520001 */  addiu      $s2, $s2, 1
/* D6A44 8002D534 240500FF */  addiu      $a1, $zero, 0xff
/* D6A48 8002D538 AFA20010 */  sw         $v0, 0x10($sp)
/* D6A4C 8002D53C 8C640004 */  lw         $a0, 4($v1)
/* D6A50 8002D540 240600FF */  addiu      $a2, $zero, 0xff
/* D6A54 8002D544 0C028E41 */  jal        func_800A3904
/* D6A58 8002D548 240700FF */   addiu     $a3, $zero, 0xff
/* D6A5C 8002D54C 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6A60 8002D550 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6A64 8002D554 96250004 */  lhu        $a1, 4($s1)
/* D6A68 8002D558 96260006 */  lhu        $a2, 6($s1)
/* D6A6C 8002D55C 26310008 */  addiu      $s1, $s1, 8
/* D6A70 8002D560 02028021 */  addu       $s0, $s0, $v0
/* D6A74 8002D564 8E040004 */  lw         $a0, 4($s0)
/* D6A78 8002D568 00052C80 */  sll        $a1, $a1, 0x12
/* D6A7C 8002D56C 00052C03 */  sra        $a1, $a1, 0x10
/* D6A80 8002D570 00063480 */  sll        $a2, $a2, 0x12
/* D6A84 8002D574 0C028D89 */  jal        func_800A3624
/* D6A88 8002D578 00063403 */   sra       $a2, $a2, 0x10
/* D6A8C 8002D57C 2A420008 */  slti       $v0, $s2, 8
/* D6A90 8002D580 1440FFE1 */  bnez       $v0, .L8002D508
/* D6A94 8002D584 00000000 */   nop
/* D6A98 8002D588 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6A9C 8002D58C 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6AA0 8002D590 8C440004 */  lw         $a0, 4($v0)
/* D6AA4 8002D594 8C82000C */  lw         $v0, 0xc($a0)
/* D6AA8 8002D598 94450000 */  lhu        $a1, ($v0)
/* D6AAC 8002D59C 94460002 */  lhu        $a2, 2($v0)
/* D6AB0 8002D5A0 00052842 */  srl        $a1, $a1, 1
/* D6AB4 8002D5A4 0C02912A */  jal        func_800A44A8
/* D6AB8 8002D5A8 00063042 */   srl       $a2, $a2, 1
/* D6ABC 8002D5AC 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6AC0 8002D5B0 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6AC4 8002D5B4 8C440008 */  lw         $a0, 8($v0)
/* D6AC8 8002D5B8 8C82000C */  lw         $v0, 0xc($a0)
/* D6ACC 8002D5BC 94450000 */  lhu        $a1, ($v0)
/* D6AD0 8002D5C0 94460002 */  lhu        $a2, 2($v0)
/* D6AD4 8002D5C4 00052842 */  srl        $a1, $a1, 1
/* D6AD8 8002D5C8 0C02912A */  jal        func_800A44A8
/* D6ADC 8002D5CC 00063042 */   srl       $a2, $a2, 1
/* D6AE0 8002D5D0 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6AE4 8002D5D4 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6AE8 8002D5D8 8C44001C */  lw         $a0, 0x1c($v0)
/* D6AEC 8002D5DC 8C82000C */  lw         $v0, 0xc($a0)
/* D6AF0 8002D5E0 94450000 */  lhu        $a1, ($v0)
/* D6AF4 8002D5E4 94460002 */  lhu        $a2, 2($v0)
/* D6AF8 8002D5E8 00052842 */  srl        $a1, $a1, 1
/* D6AFC 8002D5EC 0C02912A */  jal        func_800A44A8
/* D6B00 8002D5F0 00063042 */   srl       $a2, $a2, 1
/* D6B04 8002D5F4 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6B08 8002D5F8 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6B0C 8002D5FC 8C440020 */  lw         $a0, 0x20($v0)
/* D6B10 8002D600 8C82000C */  lw         $v0, 0xc($a0)
/* D6B14 8002D604 94450000 */  lhu        $a1, ($v0)
/* D6B18 8002D608 94460002 */  lhu        $a2, 2($v0)
/* D6B1C 8002D60C 00052842 */  srl        $a1, $a1, 1
/* D6B20 8002D610 0C02912A */  jal        func_800A44A8
/* D6B24 8002D614 00063042 */   srl       $a2, $a2, 1
/* D6B28 8002D618 3C048006 */  lui        $a0, %hi(D_800679C0)
/* D6B2C 8002D61C 8C8479C0 */  lw         $a0, %lo(D_800679C0)($a0)
/* D6B30 8002D620 8C830004 */  lw         $v1, 4($a0)
/* D6B34 8002D624 9462001E */  lhu        $v0, 0x1e($v1)
/* D6B38 8002D628 34420004 */  ori        $v0, $v0, 4
/* D6B3C 8002D62C A462001E */  sh         $v0, 0x1e($v1)
/* D6B40 8002D630 8C830008 */  lw         $v1, 8($a0)
/* D6B44 8002D634 9462001E */  lhu        $v0, 0x1e($v1)
/* D6B48 8002D638 34420004 */  ori        $v0, $v0, 4
/* D6B4C 8002D63C A462001E */  sh         $v0, 0x1e($v1)
/* D6B50 8002D640 8C83001C */  lw         $v1, 0x1c($a0)
/* D6B54 8002D644 9462001E */  lhu        $v0, 0x1e($v1)
/* D6B58 8002D648 34420004 */  ori        $v0, $v0, 4
/* D6B5C 8002D64C A462001E */  sh         $v0, 0x1e($v1)
/* D6B60 8002D650 8C830020 */  lw         $v1, 0x20($a0)
/* D6B64 8002D654 9462001E */  lhu        $v0, 0x1e($v1)
/* D6B68 8002D658 00002821 */  addu       $a1, $zero, $zero
/* D6B6C 8002D65C 240403B7 */  addiu      $a0, $zero, 0x3b7
/* D6B70 8002D660 34420004 */  ori        $v0, $v0, 4
/* D6B74 8002D664 0C0298D4 */  jal        func_800A6350
/* D6B78 8002D668 A462001E */   sh        $v0, 0x1e($v1)
/* D6B7C 8002D66C 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D6B80 8002D670 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D6B84 8002D674 240403B9 */  addiu      $a0, $zero, 0x3b9
/* D6B88 8002D678 00002821 */  addu       $a1, $zero, $zero
/* D6B8C 8002D67C 0C0298D4 */  jal        func_800A6350
/* D6B90 8002D680 AC620024 */   sw        $v0, 0x24($v1)
/* D6B94 8002D684 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D6B98 8002D688 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D6B9C 8002D68C 8C650024 */  lw         $a1, 0x24($v1)
/* D6BA0 8002D690 8C64001C */  lw         $a0, 0x1c($v1)
/* D6BA4 8002D694 AC620028 */  sw         $v0, 0x28($v1)
/* D6BA8 8002D698 8C840014 */  lw         $a0, 0x14($a0)
/* D6BAC 8002D69C 24060010 */  addiu      $a2, $zero, 0x10
/* D6BB0 8002D6A0 0C02994E */  jal        func_800A6538
/* D6BB4 8002D6A4 2407000A */   addiu     $a3, $zero, 0xa
/* D6BB8 8002D6A8 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D6BBC 8002D6AC 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D6BC0 8002D6B0 8C640028 */  lw         $a0, 0x28($v1)
/* D6BC4 8002D6B4 8C650020 */  lw         $a1, 0x20($v1)
/* D6BC8 8002D6B8 AC62002C */  sw         $v0, 0x2c($v1)
/* D6BCC 8002D6BC 8CA50014 */  lw         $a1, 0x14($a1)
/* D6BD0 8002D6C0 0C03006C */  jal        func_800C01B0
/* D6BD4 8002D6C4 24060020 */   addiu     $a2, $zero, 0x20
/* D6BD8 8002D6C8 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6BDC 8002D6CC 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6BE0 8002D6D0 8C430020 */  lw         $v1, 0x20($v0)
/* D6BE4 8002D6D4 8C450024 */  lw         $a1, 0x24($v0)
/* D6BE8 8002D6D8 8C640014 */  lw         $a0, 0x14($v1)
/* D6BEC 8002D6DC 24060010 */  addiu      $a2, $zero, 0x10
/* D6BF0 8002D6E0 0C02994E */  jal        func_800A6538
/* D6BF4 8002D6E4 2407000A */   addiu     $a3, $zero, 0xa
/* D6BF8 8002D6E8 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D6BFC 8002D6EC 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D6C00 8002D6F0 8C640008 */  lw         $a0, 8($v1)
/* D6C04 8002D6F4 AC620030 */  sw         $v0, 0x30($v1)
/* D6C08 8002D6F8 8C82000C */  lw         $v0, 0xc($a0)
/* D6C0C 8002D6FC 8C840010 */  lw         $a0, 0x10($a0)
/* D6C10 8002D700 84450000 */  lh         $a1, ($v0)
/* D6C14 8002D704 84460002 */  lh         $a2, 2($v0)
/* D6C18 8002D708 0C029558 */  jal        func_800A5560
/* D6C1C 8002D70C 24070001 */   addiu     $a3, $zero, 1
/* D6C20 8002D710 3C048006 */  lui        $a0, %hi(D_800679C0)
/* D6C24 8002D714 8C8479C0 */  lw         $a0, %lo(D_800679C0)($a0)
/* D6C28 8002D718 3C013FC0 */  lui        $at, 0x3fc0
/* D6C2C 8002D71C 44810000 */  mtc1       $at, $f0
/* D6C30 8002D720 24030014 */  addiu      $v1, $zero, 0x14
/* D6C34 8002D724 AC820034 */  sw         $v0, 0x34($a0)
/* D6C38 8002D728 AC430014 */  sw         $v1, 0x14($v0)
/* D6C3C 8002D72C 8C830034 */  lw         $v1, 0x34($a0)
/* D6C40 8002D730 24020004 */  addiu      $v0, $zero, 4
/* D6C44 8002D734 AC620018 */  sw         $v0, 0x18($v1)
/* D6C48 8002D738 8C830034 */  lw         $v1, 0x34($a0)
/* D6C4C 8002D73C 44060000 */  mfc1       $a2, $f0
/* D6C50 8002D740 24020064 */  addiu      $v0, $zero, 0x64
/* D6C54 8002D744 AC62001C */  sw         $v0, 0x1c($v1)
/* D6C58 8002D748 8C840020 */  lw         $a0, 0x20($a0)
/* D6C5C 8002D74C 00002821 */  addu       $a1, $zero, $zero
/* D6C60 8002D750 0C02915B */  jal        func_800A456C
/* D6C64 8002D754 00C03821 */   addu      $a3, $a2, $zero
/* D6C68 8002D758 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6C6C 8002D75C 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6C70 8002D760 A0400038 */  sb         $zero, 0x38($v0)
/* D6C74 8002D764 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6C78 8002D768 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6C7C 8002D76C A0400039 */  sb         $zero, 0x39($v0)
/* D6C80 8002D770 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6C84 8002D774 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6C88 8002D778 A040003A */  sb         $zero, 0x3a($v0)
/* D6C8C 8002D77C 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6C90 8002D780 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6C94 8002D784 A040003B */  sb         $zero, 0x3b($v0)
/* D6C98 8002D788 3C028017 */  lui        $v0, %hi(D_8016D168)
/* D6C9C 8002D78C 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* D6CA0 8002D790 3C018007 */  lui        $at, %hi(D_80069BE0)
/* D6CA4 8002D794 D4229BE0 */  ldc1       $f2, %lo(D_80069BE0)($at)
/* D6CA8 8002D798 44820000 */  mtc1       $v0, $f0
/* D6CAC 8002D79C 00000000 */  nop
/* D6CB0 8002D7A0 46800021 */  cvt.d.w    $f0, $f0
/* D6CB4 8002D7A4 46220002 */  mul.d      $f0, $f0, $f2
/* D6CB8 8002D7A8 3C018007 */  lui        $at, %hi(D_80069BE8)
/* D6CBC 8002D7AC D4249BE8 */  ldc1       $f4, %lo(D_80069BE8)($at)
/* D6CC0 8002D7B0 46202103 */  div.d      $f4, $f4, $f0
/* D6CC4 8002D7B4 3C018007 */  lui        $at, %hi(D_80069BF0)
/* D6CC8 8002D7B8 D4269BF0 */  ldc1       $f6, %lo(D_80069BF0)($at)
/* D6CCC 8002D7BC 46203183 */  div.d      $f6, $f6, $f0
/* D6CD0 8002D7C0 3C018007 */  lui        $at, %hi(D_80069BF8)
/* D6CD4 8002D7C4 D4229BF8 */  ldc1       $f2, %lo(D_80069BF8)($at)
/* D6CD8 8002D7C8 46220000 */  add.d      $f0, $f0, $f2
/* D6CDC 8002D7CC 46202203 */  div.d      $f8, $f4, $f0
/* D6CE0 8002D7D0 46203087 */  neg.d      $f2, $f6
/* D6CE4 8002D7D4 46201083 */  div.d      $f2, $f2, $f0
/* D6CE8 8002D7D8 3C01C360 */  lui        $at, 0xc360
/* D6CEC 8002D7DC 44815000 */  mtc1       $at, $f10
/* D6CF0 8002D7E0 3C013F80 */  lui        $at, 0x3f80
/* D6CF4 8002D7E4 44816000 */  mtc1       $at, $f12
/* D6CF8 8002D7E8 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D6CFC 8002D7EC 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D6D00 8002D7F0 A462003C */  sh         $v0, 0x3c($v1)
/* D6D04 8002D7F4 2402000A */  addiu      $v0, $zero, 0xa
/* D6D08 8002D7F8 A462003E */  sh         $v0, 0x3e($v1)
/* D6D0C 8002D7FC A4600040 */  sh         $zero, 0x40($v1)
/* D6D10 8002D800 A4600042 */  sh         $zero, 0x42($v1)
/* D6D14 8002D804 A4600044 */  sh         $zero, 0x44($v1)
/* D6D18 8002D808 E46A0054 */  swc1       $f10, 0x54($v1)
/* D6D1C 8002D80C E46C0060 */  swc1       $f12, 0x60($v1)
/* D6D20 8002D810 3C01435F */  lui        $at, 0x435f
/* D6D24 8002D814 44810000 */  mtc1       $at, $f0
/* D6D28 8002D818 462031A0 */  cvt.s.d    $f6, $f6
/* D6D2C 8002D81C 46202107 */  neg.d      $f4, $f4
/* D6D30 8002D820 E4660058 */  swc1       $f6, 0x58($v1)
/* D6D34 8002D824 46202120 */  cvt.s.d    $f4, $f4
/* D6D38 8002D828 E464004C */  swc1       $f4, 0x4c($v1)
/* D6D3C 8002D82C E4600048 */  swc1       $f0, 0x48($v1)
/* D6D40 8002D830 46204220 */  cvt.s.d    $f8, $f8
/* D6D44 8002D834 E4680050 */  swc1       $f8, 0x50($v1)
/* D6D48 8002D838 462010A0 */  cvt.s.d    $f2, $f2
/* D6D4C 8002D83C E462005C */  swc1       $f2, 0x5c($v1)
/* D6D50 8002D840 8FBF0024 */  lw         $ra, 0x24($sp)
/* D6D54 8002D844 8FB20020 */  lw         $s2, 0x20($sp)
/* D6D58 8002D848 8FB1001C */  lw         $s1, 0x1c($sp)
/* D6D5C 8002D84C 8FB00018 */  lw         $s0, 0x18($sp)
/* D6D60 8002D850 03E00008 */  jr         $ra
/* D6D64 8002D854 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002D858_D6D68
/* D6D68 8002D858 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6D6C 8002D85C 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6D70 8002D860 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D6D74 8002D864 AFBF0018 */  sw         $ra, 0x18($sp)
/* D6D78 8002D868 AFB10014 */  sw         $s1, 0x14($sp)
/* D6D7C 8002D86C AFB00010 */  sw         $s0, 0x10($sp)
/* D6D80 8002D870 9042003A */  lbu        $v0, 0x3a($v0)
/* D6D84 8002D874 14400003 */  bnez       $v0, .L8002D884
/* D6D88 8002D878 24020001 */   addiu     $v0, $zero, 1
/* D6D8C 8002D87C 0800B634 */  j          .L8002D8D0
/* D6D90 8002D880 24100002 */   addiu     $s0, $zero, 2
.L8002D884:
/* D6D94 8002D884 3C018015 */  lui        $at, %hi(D_80149F9C)
/* D6D98 8002D888 A0209F9C */  sb         $zero, %lo(D_80149F9C)($at)
/* D6D9C 8002D88C 3C018015 */  lui        $at, %hi(D_80149DBC)
/* D6DA0 8002D890 A0209DBC */  sb         $zero, %lo(D_80149DBC)($at)
/* D6DA4 8002D894 3C018017 */  lui        $at, %hi(D_8016D828)
/* D6DA8 8002D898 A022D828 */  sb         $v0, %lo(D_8016D828)($at)
/* D6DAC 8002D89C 0C02AC1D */  jal        func_800AB074
/* D6DB0 8002D8A0 00008821 */   addu      $s1, $zero, $zero
/* D6DB4 8002D8A4 0C02AB72 */  jal        func_800AADC8
/* D6DB8 8002D8A8 323000FF */   andi      $s0, $s1, 0xff
.L8002D8AC:
/* D6DBC 8002D8AC 0C02AD4E */  jal        func_800AB538
/* D6DC0 8002D8B0 02002021 */   addu      $a0, $s0, $zero
/* D6DC4 8002D8B4 0C02AC93 */  jal        func_800AB24C
/* D6DC8 8002D8B8 02002021 */   addu      $a0, $s0, $zero
/* D6DCC 8002D8BC 26310001 */  addiu      $s1, $s1, 1
/* D6DD0 8002D8C0 2A220003 */  slti       $v0, $s1, 3
/* D6DD4 8002D8C4 1440FFF9 */  bnez       $v0, .L8002D8AC
/* D6DD8 8002D8C8 323000FF */   andi      $s0, $s1, 0xff
/* D6DDC 8002D8CC 24100001 */  addiu      $s0, $zero, 1
.L8002D8D0:
/* D6DE0 8002D8D0 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6DE4 8002D8D4 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6DE8 8002D8D8 8C440000 */  lw         $a0, ($v0)
/* D6DEC 8002D8DC 0C029393 */  jal        func_800A4E4C
/* D6DF0 8002D8E0 00008821 */   addu      $s1, $zero, $zero
.L8002D8E4:
/* D6DF4 8002D8E4 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6DF8 8002D8E8 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6DFC 8002D8EC 00111880 */  sll        $v1, $s1, 2
/* D6E00 8002D8F0 00621821 */  addu       $v1, $v1, $v0
/* D6E04 8002D8F4 8C640004 */  lw         $a0, 4($v1)
/* D6E08 8002D8F8 0C028D30 */  jal        func_800A34C0
/* D6E0C 8002D8FC 26310001 */   addiu     $s1, $s1, 1
/* D6E10 8002D900 2A220008 */  slti       $v0, $s1, 8
/* D6E14 8002D904 1440FFF7 */  bnez       $v0, .L8002D8E4
/* D6E18 8002D908 00000000 */   nop
/* D6E1C 8002D90C 00008821 */  addu       $s1, $zero, $zero
.L8002D910:
/* D6E20 8002D910 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6E24 8002D914 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6E28 8002D918 00111880 */  sll        $v1, $s1, 2
/* D6E2C 8002D91C 00621821 */  addu       $v1, $v1, $v0
/* D6E30 8002D920 8C640024 */  lw         $a0, 0x24($v1)
/* D6E34 8002D924 0C0326A1 */  jal        func_800C9A84
/* D6E38 8002D928 26310001 */   addiu     $s1, $s1, 1
/* D6E3C 8002D92C 2A220002 */  slti       $v0, $s1, 2
/* D6E40 8002D930 1440FFF7 */  bnez       $v0, .L8002D910
/* D6E44 8002D934 00000000 */   nop
/* D6E48 8002D938 00008821 */  addu       $s1, $zero, $zero
.L8002D93C:
/* D6E4C 8002D93C 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6E50 8002D940 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6E54 8002D944 00111880 */  sll        $v1, $s1, 2
/* D6E58 8002D948 00621821 */  addu       $v1, $v1, $v0
/* D6E5C 8002D94C 8C64002C */  lw         $a0, 0x2c($v1)
/* D6E60 8002D950 0C0299BD */  jal        func_800A66F4
/* D6E64 8002D954 26310001 */   addiu     $s1, $s1, 1
/* D6E68 8002D958 2A220002 */  slti       $v0, $s1, 2
/* D6E6C 8002D95C 1440FFF7 */  bnez       $v0, .L8002D93C
/* D6E70 8002D960 00000000 */   nop
/* D6E74 8002D964 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6E78 8002D968 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6E7C 8002D96C 0C0295AA */  jal        func_800A56A8
/* D6E80 8002D970 8C440034 */   lw        $a0, 0x34($v0)
/* D6E84 8002D974 3C048006 */  lui        $a0, %hi(D_800679C0)
/* D6E88 8002D978 0C0326A1 */  jal        func_800C9A84
/* D6E8C 8002D97C 8C8479C0 */   lw        $a0, %lo(D_800679C0)($a0)
/* D6E90 8002D980 3C018006 */  lui        $at, %hi(D_800679C0)
/* D6E94 8002D984 AC2079C0 */  sw         $zero, %lo(D_800679C0)($at)
/* D6E98 8002D988 0C026449 */  jal        func_80099124
/* D6E9C 8002D98C 24040002 */   addiu     $a0, $zero, 2
/* D6EA0 8002D990 0C02DB14 */  jal        func_800B6C50
/* D6EA4 8002D994 00002021 */   addu      $a0, $zero, $zero
/* D6EA8 8002D998 02001021 */  addu       $v0, $s0, $zero
/* D6EAC 8002D99C 8FBF0018 */  lw         $ra, 0x18($sp)
/* D6EB0 8002D9A0 8FB10014 */  lw         $s1, 0x14($sp)
/* D6EB4 8002D9A4 8FB00010 */  lw         $s0, 0x10($sp)
/* D6EB8 8002D9A8 03E00008 */  jr         $ra
/* D6EBC 8002D9AC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002D9B0_D6EC0
/* D6EC0 8002D9B0 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6EC4 8002D9B4 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6EC8 8002D9B8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* D6ECC 8002D9BC AFBF0064 */  sw         $ra, 0x64($sp)
/* D6ED0 8002D9C0 AFB00060 */  sw         $s0, 0x60($sp)
/* D6ED4 8002D9C4 90430038 */  lbu        $v1, 0x38($v0)
/* D6ED8 8002D9C8 2C620007 */  sltiu      $v0, $v1, 7
/* D6EDC 8002D9CC 104001F2 */  beqz       $v0, .L8002E198
/* D6EE0 8002D9D0 00031080 */   sll       $v0, $v1, 2
/* D6EE4 8002D9D4 3C018007 */  lui        $at, %hi(D_80069C00)
/* D6EE8 8002D9D8 00220821 */  addu       $at, $at, $v0
/* D6EEC 8002D9DC 8C229C00 */  lw         $v0, %lo(D_80069C00)($at)
/* D6EF0 8002D9E0 00400008 */  jr         $v0
/* D6EF4 8002D9E4 00000000 */   nop
/* D6EF8 8002D9E8 3C048006 */  lui        $a0, %hi(D_800679C0)
/* D6EFC 8002D9EC 8C8479C0 */  lw         $a0, %lo(D_800679C0)($a0)
/* D6F00 8002D9F0 8482003C */  lh         $v0, 0x3c($a0)
/* D6F04 8002D9F4 144001E3 */  bnez       $v0, .L8002E184
/* D6F08 8002D9F8 00401821 */   addu      $v1, $v0, $zero
/* D6F0C 8002D9FC 3C018007 */  lui        $at, %hi(D_80069C20)
/* D6F10 8002DA00 D4229C20 */  ldc1       $f2, %lo(D_80069C20)($at)
/* D6F14 8002DA04 3C018017 */  lui        $at, %hi(D_8016D168)
/* D6F18 8002DA08 C420D168 */  lwc1       $f0, %lo(D_8016D168)($at)
/* D6F1C 8002DA0C 46800021 */  cvt.d.w    $f0, $f0
/* D6F20 8002DA10 46220002 */  mul.d      $f0, $f0, $f2
/* D6F24 8002DA14 24020001 */  addiu      $v0, $zero, 1
/* D6F28 8002DA18 A0820038 */  sb         $v0, 0x38($a0)
/* D6F2C 8002DA1C 4620008D */  trunc.w.d  $f2, $f0
/* D6F30 8002DA20 44021000 */  mfc1       $v0, $f2
/* D6F34 8002DA24 00000000 */  nop
/* D6F38 8002DA28 0800B866 */  j          .L8002E198
/* D6F3C 8002DA2C A482003C */   sh        $v0, 0x3c($a0)
/* D6F40 8002DA30 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D6F44 8002DA34 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D6F48 8002DA38 8462003C */  lh         $v0, 0x3c($v1)
/* D6F4C 8002DA3C 10400023 */  beqz       $v0, .L8002DACC
/* D6F50 8002DA40 00402021 */   addu      $a0, $v0, $zero
/* D6F54 8002DA44 C462004C */  lwc1       $f2, 0x4c($v1)
/* D6F58 8002DA48 C4600050 */  lwc1       $f0, 0x50($v1)
/* D6F5C 8002DA4C 46001080 */  add.s      $f2, $f2, $f0
/* D6F60 8002DA50 C4600048 */  lwc1       $f0, 0x48($v1)
/* D6F64 8002DA54 2482FFFF */  addiu      $v0, $a0, -1
/* D6F68 8002DA58 8C640010 */  lw         $a0, 0x10($v1)
/* D6F6C 8002DA5C 46020000 */  add.s      $f0, $f0, $f2
/* D6F70 8002DA60 24050048 */  addiu      $a1, $zero, 0x48
/* D6F74 8002DA64 A462003C */  sh         $v0, 0x3c($v1)
/* D6F78 8002DA68 E462004C */  swc1       $f2, 0x4c($v1)
/* D6F7C 8002DA6C 4600008D */  trunc.w.s  $f2, $f0
/* D6F80 8002DA70 44061000 */  mfc1       $a2, $f2
/* D6F84 8002DA74 00000000 */  nop
/* D6F88 8002DA78 00063480 */  sll        $a2, $a2, 0x12
/* D6F8C 8002DA7C 00063403 */  sra        $a2, $a2, 0x10
/* D6F90 8002DA80 0C028D89 */  jal        func_800A3624
/* D6F94 8002DA84 E4600048 */   swc1      $f0, 0x48($v1)
/* D6F98 8002DA88 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D6F9C 8002DA8C 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D6FA0 8002DA90 C4420058 */  lwc1       $f2, 0x58($v0)
/* D6FA4 8002DA94 C440005C */  lwc1       $f0, 0x5c($v0)
/* D6FA8 8002DA98 46001080 */  add.s      $f2, $f2, $f0
/* D6FAC 8002DA9C C4400054 */  lwc1       $f0, 0x54($v0)
/* D6FB0 8002DAA0 8C44000C */  lw         $a0, 0xc($v0)
/* D6FB4 8002DAA4 46020000 */  add.s      $f0, $f0, $f2
/* D6FB8 8002DAA8 24060290 */  addiu      $a2, $zero, 0x290
/* D6FBC 8002DAAC E4420058 */  swc1       $f2, 0x58($v0)
/* D6FC0 8002DAB0 4600008D */  trunc.w.s  $f2, $f0
/* D6FC4 8002DAB4 44051000 */  mfc1       $a1, $f2
/* D6FC8 8002DAB8 00000000 */  nop
/* D6FCC 8002DABC 00052C80 */  sll        $a1, $a1, 0x12
/* D6FD0 8002DAC0 00052C03 */  sra        $a1, $a1, 0x10
/* D6FD4 8002DAC4 0C028D89 */  jal        func_800A3624
/* D6FD8 8002DAC8 E4400054 */   swc1      $f0, 0x54($v0)
.L8002DACC:
/* D6FDC 8002DACC 3C048006 */  lui        $a0, %hi(D_800679C0)
/* D6FE0 8002DAD0 8C8479C0 */  lw         $a0, %lo(D_800679C0)($a0)
/* D6FE4 8002DAD4 84860040 */  lh         $a2, 0x40($a0)
/* D6FE8 8002DAD8 240200FF */  addiu      $v0, $zero, 0xff
/* D6FEC 8002DADC 10C20013 */  beq        $a2, $v0, .L8002DB2C
/* D6FF0 8002DAE0 00C01821 */   addu      $v1, $a2, $zero
/* D6FF4 8002DAE4 24620008 */  addiu      $v0, $v1, 8
/* D6FF8 8002DAE8 A4820040 */  sh         $v0, 0x40($a0)
/* D6FFC 8002DAEC 00021400 */  sll        $v0, $v0, 0x10
/* D7000 8002DAF0 00021C03 */  sra        $v1, $v0, 0x10
/* D7004 8002DAF4 28620100 */  slti       $v0, $v1, 0x100
/* D7008 8002DAF8 14400003 */  bnez       $v0, .L8002DB08
/* D700C 8002DAFC 240200FF */   addiu     $v0, $zero, 0xff
/* D7010 8002DB00 0800B6C4 */  j          .L8002DB10
/* D7014 8002DB04 A4820040 */   sh        $v0, 0x40($a0)
.L8002DB08:
/* D7018 8002DB08 04620001 */  bltzl      $v1, .L8002DB10
/* D701C 8002DB0C A4800040 */   sh        $zero, 0x40($a0)
.L8002DB10:
/* D7020 8002DB10 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D7024 8002DB14 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D7028 8002DB18 90620041 */  lbu        $v0, 0x41($v1)
/* D702C 8002DB1C AFA20010 */  sw         $v0, 0x10($sp)
/* D7030 8002DB20 8C640014 */  lw         $a0, 0x14($v1)
/* D7034 8002DB24 0800B6FD */  j          .L8002DBF4
/* D7038 8002DB28 240500FF */   addiu     $a1, $zero, 0xff
.L8002DB2C:
/* D703C 8002DB2C 84850042 */  lh         $a1, 0x42($a0)
/* D7040 8002DB30 10A60013 */  beq        $a1, $a2, .L8002DB80
/* D7044 8002DB34 00A01021 */   addu      $v0, $a1, $zero
/* D7048 8002DB38 24420008 */  addiu      $v0, $v0, 8
/* D704C 8002DB3C A4820042 */  sh         $v0, 0x42($a0)
/* D7050 8002DB40 00021400 */  sll        $v0, $v0, 0x10
/* D7054 8002DB44 00021C03 */  sra        $v1, $v0, 0x10
/* D7058 8002DB48 28620100 */  slti       $v0, $v1, 0x100
/* D705C 8002DB4C 14400003 */  bnez       $v0, .L8002DB5C
/* D7060 8002DB50 240200FF */   addiu     $v0, $zero, 0xff
/* D7064 8002DB54 0800B6D9 */  j          .L8002DB64
/* D7068 8002DB58 A4820042 */   sh        $v0, 0x42($a0)
.L8002DB5C:
/* D706C 8002DB5C 04620001 */  bltzl      $v1, .L8002DB64
/* D7070 8002DB60 A4800042 */   sh        $zero, 0x42($a0)
.L8002DB64:
/* D7074 8002DB64 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D7078 8002DB68 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D707C 8002DB6C 90620043 */  lbu        $v0, 0x43($v1)
/* D7080 8002DB70 AFA20010 */  sw         $v0, 0x10($sp)
/* D7084 8002DB74 8C640018 */  lw         $a0, 0x18($v1)
/* D7088 8002DB78 0800B6FD */  j          .L8002DBF4
/* D708C 8002DB7C 240500FF */   addiu     $a1, $zero, 0xff
.L8002DB80:
/* D7090 8002DB80 84820044 */  lh         $v0, 0x44($a0)
/* D7094 8002DB84 10450020 */  beq        $v0, $a1, .L8002DC08
/* D7098 8002DB88 00401821 */   addu      $v1, $v0, $zero
/* D709C 8002DB8C 24620008 */  addiu      $v0, $v1, 8
/* D70A0 8002DB90 A4820044 */  sh         $v0, 0x44($a0)
/* D70A4 8002DB94 00021400 */  sll        $v0, $v0, 0x10
/* D70A8 8002DB98 00021C03 */  sra        $v1, $v0, 0x10
/* D70AC 8002DB9C 28620100 */  slti       $v0, $v1, 0x100
/* D70B0 8002DBA0 14400003 */  bnez       $v0, .L8002DBB0
/* D70B4 8002DBA4 240200FF */   addiu     $v0, $zero, 0xff
/* D70B8 8002DBA8 0800B6EE */  j          .L8002DBB8
/* D70BC 8002DBAC A4820044 */   sh        $v0, 0x44($a0)
.L8002DBB0:
/* D70C0 8002DBB0 04620001 */  bltzl      $v1, .L8002DBB8
/* D70C4 8002DBB4 A4800044 */   sh        $zero, 0x44($a0)
.L8002DBB8:
/* D70C8 8002DBB8 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D70CC 8002DBBC 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D70D0 8002DBC0 90620045 */  lbu        $v0, 0x45($v1)
/* D70D4 8002DBC4 240500FF */  addiu      $a1, $zero, 0xff
/* D70D8 8002DBC8 AFA20010 */  sw         $v0, 0x10($sp)
/* D70DC 8002DBCC 8C64001C */  lw         $a0, 0x1c($v1)
/* D70E0 8002DBD0 240600FF */  addiu      $a2, $zero, 0xff
/* D70E4 8002DBD4 0C028E41 */  jal        func_800A3904
/* D70E8 8002DBD8 240700FF */   addiu     $a3, $zero, 0xff
/* D70EC 8002DBDC 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D70F0 8002DBE0 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D70F4 8002DBE4 90620045 */  lbu        $v0, 0x45($v1)
/* D70F8 8002DBE8 240500FF */  addiu      $a1, $zero, 0xff
/* D70FC 8002DBEC AFA20010 */  sw         $v0, 0x10($sp)
/* D7100 8002DBF0 8C640020 */  lw         $a0, 0x20($v1)
.L8002DBF4:
/* D7104 8002DBF4 240600FF */  addiu      $a2, $zero, 0xff
/* D7108 8002DBF8 0C028E41 */  jal        func_800A3904
/* D710C 8002DBFC 240700FF */   addiu     $a3, $zero, 0xff
/* D7110 8002DC00 0800B866 */  j          .L8002E198
/* D7114 8002DC04 00000000 */   nop
.L8002DC08:
/* D7118 8002DC08 0800B865 */  j          .L8002E194
/* D711C 8002DC0C 24020002 */   addiu     $v0, $zero, 2
/* D7120 8002DC10 27A40018 */  addiu      $a0, $sp, 0x18
/* D7124 8002DC14 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D7128 8002DC18 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D712C 8002DC1C 27A5001C */  addiu      $a1, $sp, 0x1c
/* D7130 8002DC20 90500039 */  lbu        $s0, 0x39($v0)
/* D7134 8002DC24 0C0266D6 */  jal        func_80099B58
/* D7138 8002DC28 00003021 */   addu      $a2, $zero, $zero
/* D713C 8002DC2C 304200FF */  andi       $v0, $v0, 0xff
/* D7140 8002DC30 1040000D */  beqz       $v0, .L8002DC68
/* D7144 8002DC34 2402FFFF */   addiu     $v0, $zero, -1
/* D7148 8002DC38 8FA30018 */  lw         $v1, 0x18($sp)
/* D714C 8002DC3C 14620006 */  bne        $v1, $v0, .L8002DC58
/* D7150 8002DC40 24020001 */   addiu     $v0, $zero, 1
/* D7154 8002DC44 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D7158 8002DC48 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D715C 8002DC4C 24020001 */  addiu      $v0, $zero, 1
/* D7160 8002DC50 0800B722 */  j          .L8002DC88
/* D7164 8002DC54 A0620039 */   sb        $v0, 0x39($v1)
.L8002DC58:
/* D7168 8002DC58 10620008 */  beq        $v1, $v0, .L8002DC7C
/* D716C 8002DC5C 00000000 */   nop
/* D7170 8002DC60 0800B722 */  j          .L8002DC88
/* D7174 8002DC64 00000000 */   nop
.L8002DC68:
/* D7178 8002DC68 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* D717C 8002DC6C 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* D7180 8002DC70 30424000 */  andi       $v0, $v0, 0x4000
/* D7184 8002DC74 10400004 */  beqz       $v0, .L8002DC88
/* D7188 8002DC78 00000000 */   nop
.L8002DC7C:
/* D718C 8002DC7C 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D7190 8002DC80 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D7194 8002DC84 A0400039 */  sb         $zero, 0x39($v0)
.L8002DC88:
/* D7198 8002DC88 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D719C 8002DC8C 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D71A0 8002DC90 90420039 */  lbu        $v0, 0x39($v0)
/* D71A4 8002DC94 12020064 */  beq        $s0, $v0, .L8002DE28
/* D71A8 8002DC98 00000000 */   nop
/* D71AC 8002DC9C 0C026DD5 */  jal        func_8009B754
/* D71B0 8002DCA0 24040019 */   addiu     $a0, $zero, 0x19
/* D71B4 8002DCA4 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D71B8 8002DCA8 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D71BC 8002DCAC 90620039 */  lbu        $v0, 0x39($v1)
/* D71C0 8002DCB0 1040002F */  beqz       $v0, .L8002DD70
/* D71C4 8002DCB4 00002821 */   addu      $a1, $zero, $zero
/* D71C8 8002DCB8 3C013FC0 */  lui        $at, 0x3fc0
/* D71CC 8002DCBC 44810000 */  mtc1       $at, $f0
/* D71D0 8002DCC0 8C64001C */  lw         $a0, 0x1c($v1)
/* D71D4 8002DCC4 44060000 */  mfc1       $a2, $f0
/* D71D8 8002DCC8 00000000 */  nop
/* D71DC 8002DCCC 0C02915B */  jal        func_800A456C
/* D71E0 8002DCD0 00C03821 */   addu      $a3, $a2, $zero
/* D71E4 8002DCD4 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D71E8 8002DCD8 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D71EC 8002DCDC 3C013F80 */  lui        $at, 0x3f80
/* D71F0 8002DCE0 44810000 */  mtc1       $at, $f0
/* D71F4 8002DCE4 8C440020 */  lw         $a0, 0x20($v0)
/* D71F8 8002DCE8 44060000 */  mfc1       $a2, $f0
/* D71FC 8002DCEC 00002821 */  addu       $a1, $zero, $zero
/* D7200 8002DCF0 0C02915B */  jal        func_800A456C
/* D7204 8002DCF4 00C03821 */   addu      $a3, $a2, $zero
/* D7208 8002DCF8 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D720C 8002DCFC 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D7210 8002DD00 8C43001C */  lw         $v1, 0x1c($v0)
/* D7214 8002DD04 8C440028 */  lw         $a0, 0x28($v0)
/* D7218 8002DD08 8C650014 */  lw         $a1, 0x14($v1)
/* D721C 8002DD0C 0C03006C */  jal        func_800C01B0
/* D7220 8002DD10 24060020 */   addiu     $a2, $zero, 0x20
/* D7224 8002DD14 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D7228 8002DD18 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D722C 8002DD1C 8C430020 */  lw         $v1, 0x20($v0)
/* D7230 8002DD20 8C440024 */  lw         $a0, 0x24($v0)
/* D7234 8002DD24 8C650014 */  lw         $a1, 0x14($v1)
/* D7238 8002DD28 0C03006C */  jal        func_800C01B0
/* D723C 8002DD2C 24060020 */   addiu     $a2, $zero, 0x20
/* D7240 8002DD30 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D7244 8002DD34 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D7248 8002DD38 0C0299BD */  jal        func_800A66F4
/* D724C 8002DD3C 8C44002C */   lw        $a0, 0x2c($v0)
/* D7250 8002DD40 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D7254 8002DD44 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D7258 8002DD48 8C43001C */  lw         $v1, 0x1c($v0)
/* D725C 8002DD4C 8C450024 */  lw         $a1, 0x24($v0)
/* D7260 8002DD50 8447003E */  lh         $a3, 0x3e($v0)
/* D7264 8002DD54 8C640014 */  lw         $a0, 0x14($v1)
/* D7268 8002DD58 0C02994E */  jal        func_800A6538
/* D726C 8002DD5C 24060010 */   addiu     $a2, $zero, 0x10
/* D7270 8002DD60 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D7274 8002DD64 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D7278 8002DD68 0800B789 */  j          .L8002DE24
/* D727C 8002DD6C AC62002C */   sw        $v0, 0x2c($v1)
.L8002DD70:
/* D7280 8002DD70 3C013F80 */  lui        $at, 0x3f80
/* D7284 8002DD74 44810000 */  mtc1       $at, $f0
/* D7288 8002DD78 8C64001C */  lw         $a0, 0x1c($v1)
/* D728C 8002DD7C 44060000 */  mfc1       $a2, $f0
/* D7290 8002DD80 00000000 */  nop
/* D7294 8002DD84 0C02915B */  jal        func_800A456C
/* D7298 8002DD88 00C03821 */   addu      $a3, $a2, $zero
/* D729C 8002DD8C 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D72A0 8002DD90 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D72A4 8002DD94 3C013FC0 */  lui        $at, 0x3fc0
/* D72A8 8002DD98 44810000 */  mtc1       $at, $f0
/* D72AC 8002DD9C 8C440020 */  lw         $a0, 0x20($v0)
/* D72B0 8002DDA0 44060000 */  mfc1       $a2, $f0
/* D72B4 8002DDA4 00002821 */  addu       $a1, $zero, $zero
/* D72B8 8002DDA8 0C02915B */  jal        func_800A456C
/* D72BC 8002DDAC 00C03821 */   addu      $a3, $a2, $zero
/* D72C0 8002DDB0 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D72C4 8002DDB4 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D72C8 8002DDB8 8C430020 */  lw         $v1, 0x20($v0)
/* D72CC 8002DDBC 8C440028 */  lw         $a0, 0x28($v0)
/* D72D0 8002DDC0 8C650014 */  lw         $a1, 0x14($v1)
/* D72D4 8002DDC4 0C03006C */  jal        func_800C01B0
/* D72D8 8002DDC8 24060020 */   addiu     $a2, $zero, 0x20
/* D72DC 8002DDCC 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D72E0 8002DDD0 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D72E4 8002DDD4 8C43001C */  lw         $v1, 0x1c($v0)
/* D72E8 8002DDD8 8C440024 */  lw         $a0, 0x24($v0)
/* D72EC 8002DDDC 8C650014 */  lw         $a1, 0x14($v1)
/* D72F0 8002DDE0 0C03006C */  jal        func_800C01B0
/* D72F4 8002DDE4 24060020 */   addiu     $a2, $zero, 0x20
/* D72F8 8002DDE8 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D72FC 8002DDEC 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D7300 8002DDF0 0C0299BD */  jal        func_800A66F4
/* D7304 8002DDF4 8C440030 */   lw        $a0, 0x30($v0)
/* D7308 8002DDF8 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D730C 8002DDFC 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D7310 8002DE00 8C430020 */  lw         $v1, 0x20($v0)
/* D7314 8002DE04 8C450024 */  lw         $a1, 0x24($v0)
/* D7318 8002DE08 8447003E */  lh         $a3, 0x3e($v0)
/* D731C 8002DE0C 8C640014 */  lw         $a0, 0x14($v1)
/* D7320 8002DE10 0C02994E */  jal        func_800A6538
/* D7324 8002DE14 24060010 */   addiu     $a2, $zero, 0x10
/* D7328 8002DE18 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D732C 8002DE1C 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D7330 8002DE20 AC620030 */  sw         $v0, 0x30($v1)
.L8002DE24:
/* D7334 8002DE24 A060003B */  sb         $zero, 0x3b($v1)
.L8002DE28:
/* D7338 8002DE28 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* D733C 8002DE2C 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* D7340 8002DE30 30428000 */  andi       $v0, $v0, 0x8000
/* D7344 8002DE34 104000D8 */  beqz       $v0, .L8002E198
/* D7348 8002DE38 00000000 */   nop
/* D734C 8002DE3C 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D7350 8002DE40 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D7354 8002DE44 90420039 */  lbu        $v0, 0x39($v0)
/* D7358 8002DE48 1040003A */  beqz       $v0, .L8002DF34
/* D735C 8002DE4C 00000000 */   nop
/* D7360 8002DE50 0C026DD5 */  jal        func_8009B754
/* D7364 8002DE54 24040066 */   addiu     $a0, $zero, 0x66
/* D7368 8002DE58 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D736C 8002DE5C 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D7370 8002DE60 8C64002C */  lw         $a0, 0x2c($v1)
/* D7374 8002DE64 24020001 */  addiu      $v0, $zero, 1
/* D7378 8002DE68 0C0299BD */  jal        func_800A66F4
/* D737C 8002DE6C A462003E */   sh        $v0, 0x3e($v1)
/* D7380 8002DE70 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D7384 8002DE74 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D7388 8002DE78 8C43001C */  lw         $v1, 0x1c($v0)
/* D738C 8002DE7C 8C450028 */  lw         $a1, 0x28($v0)
/* D7390 8002DE80 8447003E */  lh         $a3, 0x3e($v0)
/* D7394 8002DE84 8C640014 */  lw         $a0, 0x14($v1)
/* D7398 8002DE88 0C02994E */  jal        func_800A6538
/* D739C 8002DE8C 24060010 */   addiu     $a2, $zero, 0x10
/* D73A0 8002DE90 3C018007 */  lui        $at, %hi(D_80069C28)
/* D73A4 8002DE94 D4289C28 */  ldc1       $f8, %lo(D_80069C28)($at)
/* D73A8 8002DE98 3C018017 */  lui        $at, %hi(D_8016D168)
/* D73AC 8002DE9C C420D168 */  lwc1       $f0, %lo(D_8016D168)($at)
/* D73B0 8002DEA0 46800021 */  cvt.d.w    $f0, $f0
/* D73B4 8002DEA4 46280002 */  mul.d      $f0, $f0, $f8
/* D73B8 8002DEA8 3C018007 */  lui        $at, %hi(D_80069C30)
/* D73BC 8002DEAC D4249C30 */  ldc1       $f4, %lo(D_80069C30)($at)
/* D73C0 8002DEB0 46202103 */  div.d      $f4, $f4, $f0
/* D73C4 8002DEB4 3C018007 */  lui        $at, %hi(D_80069C38)
/* D73C8 8002DEB8 D4269C38 */  ldc1       $f6, %lo(D_80069C38)($at)
/* D73CC 8002DEBC 46203183 */  div.d      $f6, $f6, $f0
/* D73D0 8002DEC0 3C018007 */  lui        $at, %hi(D_80069C40)
/* D73D4 8002DEC4 D4229C40 */  ldc1       $f2, %lo(D_80069C40)($at)
/* D73D8 8002DEC8 46220000 */  add.d      $f0, $f0, $f2
/* D73DC 8002DECC 46203183 */  div.d      $f6, $f6, $f0
/* D73E0 8002DED0 46202107 */  neg.d      $f4, $f4
/* D73E4 8002DED4 46202103 */  div.d      $f4, $f4, $f0
/* D73E8 8002DED8 3C048006 */  lui        $a0, %hi(D_800679C0)
/* D73EC 8002DEDC 8C8479C0 */  lw         $a0, %lo(D_800679C0)($a0)
/* D73F0 8002DEE0 24030001 */  addiu      $v1, $zero, 1
/* D73F4 8002DEE4 A083003A */  sb         $v1, 0x3a($a0)
/* D73F8 8002DEE8 3C018017 */  lui        $at, %hi(D_8016D168)
/* D73FC 8002DEEC C420D168 */  lwc1       $f0, %lo(D_8016D168)($at)
/* D7400 8002DEF0 46800021 */  cvt.d.w    $f0, $f0
/* D7404 8002DEF4 46280002 */  mul.d      $f0, $f0, $f8
/* D7408 8002DEF8 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D740C 8002DEFC 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D7410 8002DF00 AC82002C */  sw         $v0, 0x2c($a0)
/* D7414 8002DF04 AC80004C */  sw         $zero, 0x4c($a0)
/* D7418 8002DF08 AC800058 */  sw         $zero, 0x58($a0)
/* D741C 8002DF0C 4620008D */  trunc.w.d  $f2, $f0
/* D7420 8002DF10 44021000 */  mfc1       $v0, $f2
/* D7424 8002DF14 462031A0 */  cvt.s.d    $f6, $f6
/* D7428 8002DF18 E486005C */  swc1       $f6, 0x5c($a0)
/* D742C 8002DF1C 46202120 */  cvt.s.d    $f4, $f4
/* D7430 8002DF20 E4840050 */  swc1       $f4, 0x50($a0)
/* D7434 8002DF24 A462003C */  sh         $v0, 0x3c($v1)
/* D7438 8002DF28 24020003 */  addiu      $v0, $zero, 3
/* D743C 8002DF2C 0800B866 */  j          .L8002E198
/* D7440 8002DF30 A0620038 */   sb        $v0, 0x38($v1)
.L8002DF34:
/* D7444 8002DF34 0C026DD5 */  jal        func_8009B754
/* D7448 8002DF38 2404001D */   addiu     $a0, $zero, 0x1d
/* D744C 8002DF3C 3C048017 */  lui        $a0, %hi(D_8016D168)
/* D7450 8002DF40 0C02A5C1 */  jal        func_800A9704
/* D7454 8002DF44 8C84D168 */   lw        $a0, %lo(D_8016D168)($a0)
/* D7458 8002DF48 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D745C 8002DF4C 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D7460 8002DF50 8C640030 */  lw         $a0, 0x30($v1)
/* D7464 8002DF54 24020001 */  addiu      $v0, $zero, 1
/* D7468 8002DF58 0C0299BD */  jal        func_800A66F4
/* D746C 8002DF5C A462003E */   sh        $v0, 0x3e($v1)
/* D7470 8002DF60 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D7474 8002DF64 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D7478 8002DF68 8C430020 */  lw         $v1, 0x20($v0)
/* D747C 8002DF6C 8C450028 */  lw         $a1, 0x28($v0)
/* D7480 8002DF70 8447003E */  lh         $a3, 0x3e($v0)
/* D7484 8002DF74 8C640014 */  lw         $a0, 0x14($v1)
/* D7488 8002DF78 0C02994E */  jal        func_800A6538
/* D748C 8002DF7C 24060010 */   addiu     $a2, $zero, 0x10
/* D7490 8002DF80 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D7494 8002DF84 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D7498 8002DF88 3C048017 */  lui        $a0, %hi(D_8016D168)
/* D749C 8002DF8C 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* D74A0 8002DF90 AC620030 */  sw         $v0, 0x30($v1)
/* D74A4 8002DF94 24020005 */  addiu      $v0, $zero, 5
/* D74A8 8002DF98 A464003C */  sh         $a0, 0x3c($v1)
/* D74AC 8002DF9C 0800B866 */  j          .L8002E198
/* D74B0 8002DFA0 A0620038 */   sb        $v0, 0x38($v1)
/* D74B4 8002DFA4 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D74B8 8002DFA8 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D74BC 8002DFAC 8462003C */  lh         $v0, 0x3c($v1)
/* D74C0 8002DFB0 10400025 */  beqz       $v0, .L8002E048
/* D74C4 8002DFB4 00402021 */   addu      $a0, $v0, $zero
/* D74C8 8002DFB8 C462004C */  lwc1       $f2, 0x4c($v1)
/* D74CC 8002DFBC C4600050 */  lwc1       $f0, 0x50($v1)
/* D74D0 8002DFC0 46001080 */  add.s      $f2, $f2, $f0
/* D74D4 8002DFC4 C4600048 */  lwc1       $f0, 0x48($v1)
/* D74D8 8002DFC8 2482FFFF */  addiu      $v0, $a0, -1
/* D74DC 8002DFCC 8C640010 */  lw         $a0, 0x10($v1)
/* D74E0 8002DFD0 46020000 */  add.s      $f0, $f0, $f2
/* D74E4 8002DFD4 24050048 */  addiu      $a1, $zero, 0x48
/* D74E8 8002DFD8 A462003C */  sh         $v0, 0x3c($v1)
/* D74EC 8002DFDC E462004C */  swc1       $f2, 0x4c($v1)
/* D74F0 8002DFE0 4600008D */  trunc.w.s  $f2, $f0
/* D74F4 8002DFE4 44061000 */  mfc1       $a2, $f2
/* D74F8 8002DFE8 00000000 */  nop
/* D74FC 8002DFEC 00063480 */  sll        $a2, $a2, 0x12
/* D7500 8002DFF0 00063403 */  sra        $a2, $a2, 0x10
/* D7504 8002DFF4 0C028D89 */  jal        func_800A3624
/* D7508 8002DFF8 E4600048 */   swc1      $f0, 0x48($v1)
/* D750C 8002DFFC 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D7510 8002E000 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D7514 8002E004 C4420058 */  lwc1       $f2, 0x58($v0)
/* D7518 8002E008 C440005C */  lwc1       $f0, 0x5c($v0)
/* D751C 8002E00C 46001080 */  add.s      $f2, $f2, $f0
/* D7520 8002E010 C4400054 */  lwc1       $f0, 0x54($v0)
/* D7524 8002E014 8C44000C */  lw         $a0, 0xc($v0)
/* D7528 8002E018 46020000 */  add.s      $f0, $f0, $f2
/* D752C 8002E01C 24060290 */  addiu      $a2, $zero, 0x290
/* D7530 8002E020 E4420058 */  swc1       $f2, 0x58($v0)
/* D7534 8002E024 4600008D */  trunc.w.s  $f2, $f0
/* D7538 8002E028 44051000 */  mfc1       $a1, $f2
/* D753C 8002E02C 00000000 */  nop
/* D7540 8002E030 00052C80 */  sll        $a1, $a1, 0x12
/* D7544 8002E034 00052C03 */  sra        $a1, $a1, 0x10
/* D7548 8002E038 0C028D89 */  jal        func_800A3624
/* D754C 8002E03C E4400054 */   swc1      $f0, 0x54($v0)
/* D7550 8002E040 0800B866 */  j          .L8002E198
/* D7554 8002E044 00000000 */   nop
.L8002E048:
/* D7558 8002E048 0C026DD5 */  jal        func_8009B754
/* D755C 8002E04C 2404006E */   addiu     $a0, $zero, 0x6e
/* D7560 8002E050 2404FFFE */  addiu      $a0, $zero, -2
/* D7564 8002E054 3C068017 */  lui        $a2, %hi(D_8016D16A)
/* D7568 8002E058 94C6D16A */  lhu        $a2, %lo(D_8016D16A)($a2)
/* D756C 8002E05C 2405FFFF */  addiu      $a1, $zero, -1
/* D7570 8002E060 00003821 */  addu       $a3, $zero, $zero
/* D7574 8002E064 0C026C9A */  jal        func_8009B268
/* D7578 8002E068 AFA00010 */   sw        $zero, 0x10($sp)
/* D757C 8002E06C 3C048017 */  lui        $a0, %hi(D_8016D168)
/* D7580 8002E070 0C02A5E5 */  jal        func_800A9794
/* D7584 8002E074 8C84D168 */   lw        $a0, %lo(D_8016D168)($a0)
/* D7588 8002E078 3C048006 */  lui        $a0, %hi(D_800679C0)
/* D758C 8002E07C 8C8479C0 */  lw         $a0, %lo(D_800679C0)($a0)
/* D7590 8002E080 8C830010 */  lw         $v1, 0x10($a0)
/* D7594 8002E084 9462001E */  lhu        $v0, 0x1e($v1)
/* D7598 8002E088 34420400 */  ori        $v0, $v0, 0x400
/* D759C 8002E08C A462001E */  sh         $v0, 0x1e($v1)
/* D75A0 8002E090 8C83000C */  lw         $v1, 0xc($a0)
/* D75A4 8002E094 9462001E */  lhu        $v0, 0x1e($v1)
/* D75A8 8002E098 34420400 */  ori        $v0, $v0, 0x400
/* D75AC 8002E09C A462001E */  sh         $v0, 0x1e($v1)
/* D75B0 8002E0A0 8C830014 */  lw         $v1, 0x14($a0)
/* D75B4 8002E0A4 9462001E */  lhu        $v0, 0x1e($v1)
/* D75B8 8002E0A8 34420400 */  ori        $v0, $v0, 0x400
/* D75BC 8002E0AC A462001E */  sh         $v0, 0x1e($v1)
/* D75C0 8002E0B0 8C830018 */  lw         $v1, 0x18($a0)
/* D75C4 8002E0B4 9462001E */  lhu        $v0, 0x1e($v1)
/* D75C8 8002E0B8 34420400 */  ori        $v0, $v0, 0x400
/* D75CC 8002E0BC A462001E */  sh         $v0, 0x1e($v1)
/* D75D0 8002E0C0 8C83001C */  lw         $v1, 0x1c($a0)
/* D75D4 8002E0C4 9462001E */  lhu        $v0, 0x1e($v1)
/* D75D8 8002E0C8 34420400 */  ori        $v0, $v0, 0x400
/* D75DC 8002E0CC A462001E */  sh         $v0, 0x1e($v1)
/* D75E0 8002E0D0 8C830020 */  lw         $v1, 0x20($a0)
/* D75E4 8002E0D4 9462001E */  lhu        $v0, 0x1e($v1)
/* D75E8 8002E0D8 3C058017 */  lui        $a1, %hi(D_8016D168)
/* D75EC 8002E0DC 8CA5D168 */  lw         $a1, %lo(D_8016D168)($a1)
/* D75F0 8002E0E0 34420400 */  ori        $v0, $v0, 0x400
/* D75F4 8002E0E4 A462001E */  sh         $v0, 0x1e($v1)
/* D75F8 8002E0E8 24020004 */  addiu      $v0, $zero, 4
/* D75FC 8002E0EC 0800B865 */  j          .L8002E194
/* D7600 8002E0F0 A485003C */   sh        $a1, 0x3c($a0)
/* D7604 8002E0F4 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D7608 8002E0F8 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D760C 8002E0FC 3C013D4C */  lui        $at, 0x3d4c
/* D7610 8002E100 3421CCCD */  ori        $at, $at, 0xcccd
/* D7614 8002E104 44810000 */  mtc1       $at, $f0
/* D7618 8002E108 C4420060 */  lwc1       $f2, 0x60($v0)
/* D761C 8002E10C 46001080 */  add.s      $f2, $f2, $f0
/* D7620 8002E110 8C440004 */  lw         $a0, 4($v0)
/* D7624 8002E114 44061000 */  mfc1       $a2, $f2
/* D7628 8002E118 00002821 */  addu       $a1, $zero, $zero
/* D762C 8002E11C 00C03821 */  addu       $a3, $a2, $zero
/* D7630 8002E120 0C02915B */  jal        func_800A456C
/* D7634 8002E124 AC460060 */   sw        $a2, 0x60($v0)
/* D7638 8002E128 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D763C 8002E12C 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D7640 8002E130 8C460060 */  lw         $a2, 0x60($v0)
/* D7644 8002E134 8C440008 */  lw         $a0, 8($v0)
/* D7648 8002E138 00002821 */  addu       $a1, $zero, $zero
/* D764C 8002E13C 0C02915B */  jal        func_800A456C
/* D7650 8002E140 00C03821 */   addu      $a3, $a2, $zero
/* D7654 8002E144 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D7658 8002E148 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D765C 8002E14C 8462003C */  lh         $v0, 0x3c($v1)
/* D7660 8002E150 10400004 */  beqz       $v0, .L8002E164
/* D7664 8002E154 00402021 */   addu      $a0, $v0, $zero
/* D7668 8002E158 2482FFFF */  addiu      $v0, $a0, -1
/* D766C 8002E15C 0800B866 */  j          .L8002E198
/* D7670 8002E160 A462003C */   sh        $v0, 0x3c($v1)
.L8002E164:
/* D7674 8002E164 24020006 */  addiu      $v0, $zero, 6
/* D7678 8002E168 0800B866 */  j          .L8002E198
/* D767C 8002E16C A0620038 */   sb        $v0, 0x38($v1)
/* D7680 8002E170 3C048006 */  lui        $a0, %hi(D_800679C0)
/* D7684 8002E174 8C8479C0 */  lw         $a0, %lo(D_800679C0)($a0)
/* D7688 8002E178 8482003C */  lh         $v0, 0x3c($a0)
/* D768C 8002E17C 10400004 */  beqz       $v0, .L8002E190
/* D7690 8002E180 00401821 */   addu      $v1, $v0, $zero
.L8002E184:
/* D7694 8002E184 2462FFFF */  addiu      $v0, $v1, -1
/* D7698 8002E188 0800B866 */  j          .L8002E198
/* D769C 8002E18C A482003C */   sh        $v0, 0x3c($a0)
.L8002E190:
/* D76A0 8002E190 24020006 */  addiu      $v0, $zero, 6
.L8002E194:
/* D76A4 8002E194 A0820038 */  sb         $v0, 0x38($a0)
.L8002E198:
/* D76A8 8002E198 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D76AC 8002E19C 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D76B0 8002E1A0 0C02962F */  jal        func_800A58BC
/* D76B4 8002E1A4 8C440034 */   lw        $a0, 0x34($v0)
/* D76B8 8002E1A8 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D76BC 8002E1AC 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D76C0 8002E1B0 90620038 */  lbu        $v0, 0x38($v1)
/* D76C4 8002E1B4 2C420002 */  sltiu      $v0, $v0, 2
/* D76C8 8002E1B8 14400042 */  bnez       $v0, .L8002E2C4
/* D76CC 8002E1BC 00000000 */   nop
/* D76D0 8002E1C0 90620039 */  lbu        $v0, 0x39($v1)
/* D76D4 8002E1C4 10400020 */  beqz       $v0, .L8002E248
/* D76D8 8002E1C8 00000000 */   nop
/* D76DC 8002E1CC 0C0299C6 */  jal        func_800A6718
/* D76E0 8002E1D0 8C64002C */   lw        $a0, 0x2c($v1)
/* D76E4 8002E1D4 1440003B */  bnez       $v0, .L8002E2C4
/* D76E8 8002E1D8 00000000 */   nop
/* D76EC 8002E1DC 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D76F0 8002E1E0 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D76F4 8002E1E4 0C0299BD */  jal        func_800A66F4
/* D76F8 8002E1E8 8C44002C */   lw        $a0, 0x2c($v0)
/* D76FC 8002E1EC 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D7700 8002E1F0 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D7704 8002E1F4 9062003B */  lbu        $v0, 0x3b($v1)
/* D7708 8002E1F8 38420001 */  xori       $v0, $v0, 1
/* D770C 8002E1FC A062003B */  sb         $v0, 0x3b($v1)
/* D7710 8002E200 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D7714 8002E204 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D7718 8002E208 9062003B */  lbu        $v0, 0x3b($v1)
/* D771C 8002E20C 10400004 */  beqz       $v0, .L8002E220
/* D7720 8002E210 00000000 */   nop
/* D7724 8002E214 8C62001C */  lw         $v0, 0x1c($v1)
/* D7728 8002E218 0800B88A */  j          .L8002E228
/* D772C 8002E21C 8C650028 */   lw        $a1, 0x28($v1)
.L8002E220:
/* D7730 8002E220 8C62001C */  lw         $v0, 0x1c($v1)
/* D7734 8002E224 8C650024 */  lw         $a1, 0x24($v1)
.L8002E228:
/* D7738 8002E228 8467003E */  lh         $a3, 0x3e($v1)
/* D773C 8002E22C 8C440014 */  lw         $a0, 0x14($v0)
/* D7740 8002E230 0C02994E */  jal        func_800A6538
/* D7744 8002E234 24060010 */   addiu     $a2, $zero, 0x10
/* D7748 8002E238 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D774C 8002E23C 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D7750 8002E240 0800B8B1 */  j          .L8002E2C4
/* D7754 8002E244 AC62002C */   sw        $v0, 0x2c($v1)
.L8002E248:
/* D7758 8002E248 8C640030 */  lw         $a0, 0x30($v1)
/* D775C 8002E24C 0C0299C6 */  jal        func_800A6718
/* D7760 8002E250 00000000 */   nop
/* D7764 8002E254 1440001B */  bnez       $v0, .L8002E2C4
/* D7768 8002E258 00000000 */   nop
/* D776C 8002E25C 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D7770 8002E260 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D7774 8002E264 0C0299BD */  jal        func_800A66F4
/* D7778 8002E268 8C440030 */   lw        $a0, 0x30($v0)
/* D777C 8002E26C 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D7780 8002E270 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D7784 8002E274 9062003B */  lbu        $v0, 0x3b($v1)
/* D7788 8002E278 38420001 */  xori       $v0, $v0, 1
/* D778C 8002E27C A062003B */  sb         $v0, 0x3b($v1)
/* D7790 8002E280 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D7794 8002E284 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D7798 8002E288 9062003B */  lbu        $v0, 0x3b($v1)
/* D779C 8002E28C 10400004 */  beqz       $v0, .L8002E2A0
/* D77A0 8002E290 00000000 */   nop
/* D77A4 8002E294 8C620020 */  lw         $v0, 0x20($v1)
/* D77A8 8002E298 0800B8AA */  j          .L8002E2A8
/* D77AC 8002E29C 8C650028 */   lw        $a1, 0x28($v1)
.L8002E2A0:
/* D77B0 8002E2A0 8C620020 */  lw         $v0, 0x20($v1)
/* D77B4 8002E2A4 8C650024 */  lw         $a1, 0x24($v1)
.L8002E2A8:
/* D77B8 8002E2A8 8467003E */  lh         $a3, 0x3e($v1)
/* D77BC 8002E2AC 8C440014 */  lw         $a0, 0x14($v0)
/* D77C0 8002E2B0 0C02994E */  jal        func_800A6538
/* D77C4 8002E2B4 24060010 */   addiu     $a2, $zero, 0x10
/* D77C8 8002E2B8 3C038006 */  lui        $v1, %hi(D_800679C0)
/* D77CC 8002E2BC 8C6379C0 */  lw         $v1, %lo(D_800679C0)($v1)
/* D77D0 8002E2C0 AC620030 */  sw         $v0, 0x30($v1)
.L8002E2C4:
/* D77D4 8002E2C4 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D77D8 8002E2C8 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D77DC 8002E2CC 8C440000 */  lw         $a0, ($v0)
/* D77E0 8002E2D0 0C028A40 */  jal        func_800A2900
/* D77E4 8002E2D4 00008021 */   addu      $s0, $zero, $zero
.L8002E2D8:
/* D77E8 8002E2D8 3C028006 */  lui        $v0, %hi(D_800679C0)
/* D77EC 8002E2DC 8C4279C0 */  lw         $v0, %lo(D_800679C0)($v0)
/* D77F0 8002E2E0 00101880 */  sll        $v1, $s0, 2
/* D77F4 8002E2E4 00621821 */  addu       $v1, $v1, $v0
/* D77F8 8002E2E8 8C640004 */  lw         $a0, 4($v1)
/* D77FC 8002E2EC 0C028A40 */  jal        func_800A2900
/* D7800 8002E2F0 26100001 */   addiu     $s0, $s0, 1
/* D7804 8002E2F4 2A020008 */  slti       $v0, $s0, 8
/* D7808 8002E2F8 1440FFF7 */  bnez       $v0, .L8002E2D8
/* D780C 8002E2FC 00000000 */   nop
/* D7810 8002E300 8FBF0064 */  lw         $ra, 0x64($sp)
/* D7814 8002E304 8FB00060 */  lw         $s0, 0x60($sp)
/* D7818 8002E308 03E00008 */  jr         $ra
/* D781C 8002E30C 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8002E310_D7820
/* D7820 8002E310 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7824 8002E314 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7828 8002E318 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D782C 8002E31C 14400005 */  bnez       $v0, .L8002E334
/* D7830 8002E320 AFBF0010 */   sw        $ra, 0x10($sp)
/* D7834 8002E324 0C00B8DA */  jal        func_8002E368_D7878
/* D7838 8002E328 00000000 */   nop
/* D783C 8002E32C 0800B8D7 */  j          .L8002E35C
/* D7840 8002E330 00001021 */   addu      $v0, $zero, $zero
.L8002E334:
/* D7844 8002E334 90430024 */  lbu        $v1, 0x24($v0)
/* D7848 8002E338 24020008 */  addiu      $v0, $zero, 8
/* D784C 8002E33C 10620005 */  beq        $v1, $v0, .L8002E354
/* D7850 8002E340 00000000 */   nop
/* D7854 8002E344 0C00BA7B */  jal        func_8002E9EC_D7EFC
/* D7858 8002E348 00000000 */   nop
/* D785C 8002E34C 0800B8D7 */  j          .L8002E35C
/* D7860 8002E350 00001021 */   addu      $v0, $zero, $zero
.L8002E354:
/* D7864 8002E354 0C00BA29 */  jal        func_8002E8A4_D7DB4
/* D7868 8002E358 00000000 */   nop
.L8002E35C:
/* D786C 8002E35C 8FBF0010 */  lw         $ra, 0x10($sp)
/* D7870 8002E360 03E00008 */  jr         $ra
/* D7874 8002E364 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002E368_D7878
/* D7878 8002E368 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D787C 8002E36C AFBF0020 */  sw         $ra, 0x20($sp)
/* D7880 8002E370 AFB1001C */  sw         $s1, 0x1c($sp)
/* D7884 8002E374 0C026B70 */  jal        func_8009ADC0
/* D7888 8002E378 AFB00018 */   sw        $s0, 0x18($sp)
/* D788C 8002E37C 0C026449 */  jal        func_80099124
/* D7890 8002E380 24040002 */   addiu     $a0, $zero, 2
/* D7894 8002E384 3C048017 */  lui        $a0, %hi(D_8016D168)
/* D7898 8002E388 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* D789C 8002E38C 0C02A5AF */  jal        func_800A96BC
/* D78A0 8002E390 00042040 */   sll       $a0, $a0, 1
/* D78A4 8002E394 0C02B9C9 */  jal        func_800AE724
/* D78A8 8002E398 24040002 */   addiu     $a0, $zero, 2
/* D78AC 8002E39C 14400008 */  bnez       $v0, .L8002E3C0
/* D78B0 8002E3A0 24060001 */   addiu     $a2, $zero, 1
/* D78B4 8002E3A4 2404000B */  addiu      $a0, $zero, 0xb
/* D78B8 8002E3A8 2405FFFF */  addiu      $a1, $zero, -1
/* D78BC 8002E3AC 3C078015 */  lui        $a3, %hi(D_8014A2D0)
/* D78C0 8002E3B0 84E7A2D0 */  lh         $a3, %lo(D_8014A2D0)($a3)
/* D78C4 8002E3B4 24020001 */  addiu      $v0, $zero, 1
/* D78C8 8002E3B8 0C026C9A */  jal        func_8009B268
/* D78CC 8002E3BC AFA20010 */   sw        $v0, 0x10($sp)
.L8002E3C0:
/* D78D0 8002E3C0 0C02A626 */  jal        func_800A9898
/* D78D4 8002E3C4 24040003 */   addiu     $a0, $zero, 3
/* D78D8 8002E3C8 24110001 */  addiu      $s1, $zero, 1
/* D78DC 8002E3CC 3C018015 */  lui        $at, %hi(D_80149BBC)
/* D78E0 8002E3D0 AC319BBC */  sw         $s1, %lo(D_80149BBC)($at)
/* D78E4 8002E3D4 3C018017 */  lui        $at, %hi(D_8016E58C)
/* D78E8 8002E3D8 0C02B4A0 */  jal        func_800AD280
/* D78EC 8002E3DC AC20E58C */   sw        $zero, %lo(D_8016E58C)($at)
/* D78F0 8002E3E0 3C048039 */  lui        $a0, %hi(D_80396B60)
/* D78F4 8002E3E4 24846B60 */  addiu      $a0, $a0, %lo(D_80396B60)
/* D78F8 8002E3E8 00002821 */  addu       $a1, $zero, $zero
/* D78FC 8002E3EC 24060064 */  addiu      $a2, $zero, 0x64
/* D7900 8002E3F0 0C025D06 */  jal        func_80097418
/* D7904 8002E3F4 24070001 */   addiu     $a3, $zero, 1
/* D7908 8002E3F8 3C108015 */  lui        $s0, %hi(D_80149E10)
/* D790C 8002E3FC 26109E10 */  addiu      $s0, $s0, %lo(D_80149E10)
/* D7910 8002E400 3C018015 */  lui        $at, %hi(D_80149FA8)
/* D7914 8002E404 AC319FA8 */  sw         $s1, %lo(D_80149FA8)($at)
/* D7918 8002E408 3C118007 */  lui        $s1, %hi(D_8006A610)
/* D791C 8002E40C 2631A610 */  addiu      $s1, $s1, %lo(D_8006A610)
/* D7920 8002E410 3C018015 */  lui        $at, %hi(D_80149EC4)
/* D7924 8002E414 AC229EC4 */  sw         $v0, %lo(D_80149EC4)($at)
/* D7928 8002E418 24020087 */  addiu      $v0, $zero, 0x87
/* D792C 8002E41C A6220000 */  sh         $v0, ($s1)
/* D7930 8002E420 240200B2 */  addiu      $v0, $zero, 0xb2
/* D7934 8002E424 3C018007 */  lui        $at, %hi(D_8006A612)
/* D7938 8002E428 A422A612 */  sh         $v0, %lo(D_8006A612)($at)
/* D793C 8002E42C 24020001 */  addiu      $v0, $zero, 1
/* D7940 8002E430 3C018007 */  lui        $at, %hi(D_8006A616)
/* D7944 8002E434 A422A616 */  sh         $v0, %lo(D_8006A616)($at)
/* D7948 8002E438 3C028015 */  lui        $v0, %hi(D_8014A2D4)
/* D794C 8002E43C 2442A2D4 */  addiu      $v0, $v0, %lo(D_8014A2D4)
/* D7950 8002E440 3C018007 */  lui        $at, %hi(D_8006A614)
/* D7954 8002E444 A020A614 */  sb         $zero, %lo(D_8006A614)($at)
/* D7958 8002E448 3C018007 */  lui        $at, %hi(D_8006A615)
/* D795C 8002E44C A020A615 */  sb         $zero, %lo(D_8006A615)($at)
/* D7960 8002E450 3C018007 */  lui        $at, %hi(D_8006A618)
/* D7964 8002E454 A420A618 */  sh         $zero, %lo(D_8006A618)($at)
/* D7968 8002E458 3C018007 */  lui        $at, %hi(D_8006A61A)
/* D796C 8002E45C A420A61A */  sh         $zero, %lo(D_8006A61A)($at)
/* D7970 8002E460 3C018007 */  lui        $at, %hi(D_8006A61C)
/* D7974 8002E464 AC22A61C */  sw         $v0, %lo(D_8006A61C)($at)
/* D7978 8002E468 0C025C49 */  jal        func_80097124
/* D797C 8002E46C 02002021 */   addu      $a0, $s0, $zero
/* D7980 8002E470 02002021 */  addu       $a0, $s0, $zero
/* D7984 8002E474 0C025C4C */  jal        func_80097130
/* D7988 8002E478 02202821 */   addu      $a1, $s1, $zero
/* D798C 8002E47C 3C048039 */  lui        $a0, %hi(D_80395500)
/* D7990 8002E480 24845500 */  addiu      $a0, $a0, %lo(D_80395500)
/* D7994 8002E484 02002821 */  addu       $a1, $s0, $zero
/* D7998 8002E488 2406012C */  addiu      $a2, $zero, 0x12c
/* D799C 8002E48C 0C025D06 */  jal        func_80097418
/* D79A0 8002E490 24070001 */   addiu     $a3, $zero, 1
/* D79A4 8002E494 3C018015 */  lui        $at, %hi(D_8014A2D4)
/* D79A8 8002E498 AC22A2D4 */  sw         $v0, %lo(D_8014A2D4)($at)
/* D79AC 8002E49C 0C032663 */  jal        func_800C998C
/* D79B0 8002E4A0 2404006C */   addiu     $a0, $zero, 0x6c
/* D79B4 8002E4A4 00402021 */  addu       $a0, $v0, $zero
/* D79B8 8002E4A8 3C018006 */  lui        $at, %hi(D_80067E40)
/* D79BC 8002E4AC AC247E40 */  sw         $a0, %lo(D_80067E40)($at)
/* D79C0 8002E4B0 0C030134 */  jal        bzero
/* D79C4 8002E4B4 2405006C */   addiu     $a1, $zero, 0x6c
/* D79C8 8002E4B8 3C048006 */  lui        $a0, %hi(D_80067A20)
/* D79CC 8002E4BC 24847A20 */  addiu      $a0, $a0, %lo(D_80067A20)
/* D79D0 8002E4C0 0C00C490 */  jal        func_80031240_DA750
/* D79D4 8002E4C4 24050029 */   addiu     $a1, $zero, 0x29
/* D79D8 8002E4C8 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D79DC 8002E4CC 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D79E0 8002E4D0 AC620000 */  sw         $v0, ($v1)
/* D79E4 8002E4D4 8C440020 */  lw         $a0, 0x20($v0)
/* D79E8 8002E4D8 8C82000C */  lw         $v0, 0xc($a0)
/* D79EC 8002E4DC 90430004 */  lbu        $v1, 4($v0)
/* D79F0 8002E4E0 84450000 */  lh         $a1, ($v0)
/* D79F4 8002E4E4 84460002 */  lh         $a2, 2($v0)
/* D79F8 8002E4E8 14600002 */  bnez       $v1, .L8002E4F4
/* D79FC 8002E4EC 24070001 */   addiu     $a3, $zero, 1
/* D7A00 8002E4F0 24070002 */  addiu      $a3, $zero, 2
.L8002E4F4:
/* D7A04 8002E4F4 0C0297AC */  jal        func_800A5EB0
/* D7A08 8002E4F8 8C840010 */   lw        $a0, 0x10($a0)
/* D7A0C 8002E4FC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7A10 8002E500 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7A14 8002E504 8C420000 */  lw         $v0, ($v0)
/* D7A18 8002E508 8C440028 */  lw         $a0, 0x28($v0)
/* D7A1C 8002E50C 8C82000C */  lw         $v0, 0xc($a0)
/* D7A20 8002E510 90430004 */  lbu        $v1, 4($v0)
/* D7A24 8002E514 84450000 */  lh         $a1, ($v0)
/* D7A28 8002E518 84460002 */  lh         $a2, 2($v0)
/* D7A2C 8002E51C 14600002 */  bnez       $v1, .L8002E528
/* D7A30 8002E520 24070001 */   addiu     $a3, $zero, 1
/* D7A34 8002E524 24070002 */  addiu      $a3, $zero, 2
.L8002E528:
/* D7A38 8002E528 0C0297AC */  jal        func_800A5EB0
/* D7A3C 8002E52C 8C840010 */   lw        $a0, 0x10($a0)
/* D7A40 8002E530 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7A44 8002E534 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7A48 8002E538 8C420000 */  lw         $v0, ($v0)
/* D7A4C 8002E53C 8C440030 */  lw         $a0, 0x30($v0)
/* D7A50 8002E540 8C82000C */  lw         $v0, 0xc($a0)
/* D7A54 8002E544 90430004 */  lbu        $v1, 4($v0)
/* D7A58 8002E548 84450000 */  lh         $a1, ($v0)
/* D7A5C 8002E54C 84460002 */  lh         $a2, 2($v0)
/* D7A60 8002E550 14600002 */  bnez       $v1, .L8002E55C
/* D7A64 8002E554 24070001 */   addiu     $a3, $zero, 1
/* D7A68 8002E558 24070002 */  addiu      $a3, $zero, 2
.L8002E55C:
/* D7A6C 8002E55C 0C0297AC */  jal        func_800A5EB0
/* D7A70 8002E560 8C840010 */   lw        $a0, 0x10($a0)
/* D7A74 8002E564 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7A78 8002E568 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7A7C 8002E56C 8C420000 */  lw         $v0, ($v0)
/* D7A80 8002E570 8C440038 */  lw         $a0, 0x38($v0)
/* D7A84 8002E574 8C82000C */  lw         $v0, 0xc($a0)
/* D7A88 8002E578 90430004 */  lbu        $v1, 4($v0)
/* D7A8C 8002E57C 84450000 */  lh         $a1, ($v0)
/* D7A90 8002E580 84460002 */  lh         $a2, 2($v0)
/* D7A94 8002E584 14600002 */  bnez       $v1, .L8002E590
/* D7A98 8002E588 24070001 */   addiu     $a3, $zero, 1
/* D7A9C 8002E58C 24070002 */  addiu      $a3, $zero, 2
.L8002E590:
/* D7AA0 8002E590 0C0297AC */  jal        func_800A5EB0
/* D7AA4 8002E594 8C840010 */   lw        $a0, 0x10($a0)
/* D7AA8 8002E598 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7AAC 8002E59C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7AB0 8002E5A0 8C420000 */  lw         $v0, ($v0)
/* D7AB4 8002E5A4 8C44004C */  lw         $a0, 0x4c($v0)
/* D7AB8 8002E5A8 24050020 */  addiu      $a1, $zero, 0x20
/* D7ABC 8002E5AC 0C02912A */  jal        func_800A44A8
/* D7AC0 8002E5B0 2406001E */   addiu     $a2, $zero, 0x1e
/* D7AC4 8002E5B4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7AC8 8002E5B8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7ACC 8002E5BC 8C420000 */  lw         $v0, ($v0)
/* D7AD0 8002E5C0 8C440050 */  lw         $a0, 0x50($v0)
/* D7AD4 8002E5C4 24050021 */  addiu      $a1, $zero, 0x21
/* D7AD8 8002E5C8 0C02912A */  jal        func_800A44A8
/* D7ADC 8002E5CC 24060011 */   addiu     $a2, $zero, 0x11
/* D7AE0 8002E5D0 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7AE4 8002E5D4 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7AE8 8002E5D8 8C420000 */  lw         $v0, ($v0)
/* D7AEC 8002E5DC 8C440054 */  lw         $a0, 0x54($v0)
/* D7AF0 8002E5E0 24050038 */  addiu      $a1, $zero, 0x38
/* D7AF4 8002E5E4 0C02912A */  jal        func_800A44A8
/* D7AF8 8002E5E8 24060030 */   addiu     $a2, $zero, 0x30
/* D7AFC 8002E5EC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7B00 8002E5F0 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7B04 8002E5F4 8C420000 */  lw         $v0, ($v0)
/* D7B08 8002E5F8 8C44008C */  lw         $a0, 0x8c($v0)
/* D7B0C 8002E5FC 24050020 */  addiu      $a1, $zero, 0x20
/* D7B10 8002E600 0C02912A */  jal        func_800A44A8
/* D7B14 8002E604 24060020 */   addiu     $a2, $zero, 0x20
/* D7B18 8002E608 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7B1C 8002E60C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7B20 8002E610 8C420000 */  lw         $v0, ($v0)
/* D7B24 8002E614 8C420080 */  lw         $v0, 0x80($v0)
/* D7B28 8002E618 8C420014 */  lw         $v0, 0x14($v0)
/* D7B2C 8002E61C 3403FFC0 */  ori        $v1, $zero, 0xffc0
/* D7B30 8002E620 A4430000 */  sh         $v1, ($v0)
/* D7B34 8002E624 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7B38 8002E628 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7B3C 8002E62C 8C420000 */  lw         $v0, ($v0)
/* D7B40 8002E630 8C420084 */  lw         $v0, 0x84($v0)
/* D7B44 8002E634 8C420014 */  lw         $v0, 0x14($v0)
/* D7B48 8002E638 A4430000 */  sh         $v1, ($v0)
/* D7B4C 8002E63C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7B50 8002E640 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7B54 8002E644 8C420000 */  lw         $v0, ($v0)
/* D7B58 8002E648 8C420088 */  lw         $v0, 0x88($v0)
/* D7B5C 8002E64C 8C420014 */  lw         $v0, 0x14($v0)
/* D7B60 8002E650 A4430000 */  sh         $v1, ($v0)
/* D7B64 8002E654 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7B68 8002E658 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7B6C 8002E65C 8C420000 */  lw         $v0, ($v0)
/* D7B70 8002E660 8C420010 */  lw         $v0, 0x10($v0)
/* D7B74 8002E664 3C048006 */  lui        $a0, %hi(D_80067DF8)
/* D7B78 8002E668 24847DF8 */  addiu      $a0, $a0, %lo(D_80067DF8)
/* D7B7C 8002E66C 8C430014 */  lw         $v1, 0x14($v0)
/* D7B80 8002E670 24050003 */  addiu      $a1, $zero, 3
/* D7B84 8002E674 3402FFFE */  ori        $v0, $zero, 0xfffe
/* D7B88 8002E678 0C00C537 */  jal        func_800314DC_DA9EC
/* D7B8C 8002E67C A4620000 */   sh        $v0, ($v1)
/* D7B90 8002E680 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D7B94 8002E684 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D7B98 8002E688 AC620004 */  sw         $v0, 4($v1)
/* D7B9C 8002E68C 8C4300E8 */  lw         $v1, 0xe8($v0)
/* D7BA0 8002E690 2402000A */  addiu      $v0, $zero, 0xa
/* D7BA4 8002E694 A0620067 */  sb         $v0, 0x67($v1)
/* D7BA8 8002E698 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7BAC 8002E69C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7BB0 8002E6A0 8C430004 */  lw         $v1, 4($v0)
/* D7BB4 8002E6A4 240500FF */  addiu      $a1, $zero, 0xff
/* D7BB8 8002E6A8 24020080 */  addiu      $v0, $zero, 0x80
/* D7BBC 8002E6AC AFA20010 */  sw         $v0, 0x10($sp)
/* D7BC0 8002E6B0 8C6400E8 */  lw         $a0, 0xe8($v1)
/* D7BC4 8002E6B4 240600FF */  addiu      $a2, $zero, 0xff
/* D7BC8 8002E6B8 0C027F5E */  jal        func_8009FD78
/* D7BCC 8002E6BC 240700FF */   addiu     $a3, $zero, 0xff
/* D7BD0 8002E6C0 0C00C3FE */  jal        func_80030FF8_DA508
/* D7BD4 8002E6C4 00000000 */   nop
/* D7BD8 8002E6C8 24040404 */  addiu      $a0, $zero, 0x404
/* D7BDC 8002E6CC 0C0298D4 */  jal        func_800A6350
/* D7BE0 8002E6D0 00002821 */   addu      $a1, $zero, $zero
/* D7BE4 8002E6D4 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D7BE8 8002E6D8 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D7BEC 8002E6DC 24040405 */  addiu      $a0, $zero, 0x405
/* D7BF0 8002E6E0 00002821 */  addu       $a1, $zero, $zero
/* D7BF4 8002E6E4 0C0298D4 */  jal        func_800A6350
/* D7BF8 8002E6E8 AC620008 */   sw        $v0, 8($v1)
/* D7BFC 8002E6EC 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D7C00 8002E6F0 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D7C04 8002E6F4 A0600024 */  sb         $zero, 0x24($v1)
/* D7C08 8002E6F8 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D7C0C 8002E6FC 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D7C10 8002E700 AC62000C */  sw         $v0, 0xc($v1)
/* D7C14 8002E704 A0800025 */  sb         $zero, 0x25($a0)
/* D7C18 8002E708 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D7C1C 8002E70C 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D7C20 8002E710 A4600026 */  sh         $zero, 0x26($v1)
/* D7C24 8002E714 3C028015 */  lui        $v0, %hi(D_80149E28)
/* D7C28 8002E718 90429E28 */  lbu        $v0, %lo(D_80149E28)($v0)
/* D7C2C 8002E71C A0620028 */  sb         $v0, 0x28($v1)
/* D7C30 8002E720 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7C34 8002E724 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7C38 8002E728 A0400029 */  sb         $zero, 0x29($v0)
/* D7C3C 8002E72C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7C40 8002E730 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7C44 8002E734 A040002A */  sb         $zero, 0x2a($v0)
/* D7C48 8002E738 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7C4C 8002E73C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7C50 8002E740 A040002B */  sb         $zero, 0x2b($v0)
/* D7C54 8002E744 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7C58 8002E748 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7C5C 8002E74C A040002C */  sb         $zero, 0x2c($v0)
/* D7C60 8002E750 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7C64 8002E754 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7C68 8002E758 24040002 */  addiu      $a0, $zero, 2
/* D7C6C 8002E75C 0C02591A */  jal        func_80096468
/* D7C70 8002E760 A040002D */   sb        $zero, 0x2d($v0)
/* D7C74 8002E764 3042FFFF */  andi       $v0, $v0, 0xffff
/* D7C78 8002E768 0C02592F */  jal        func_800964BC
/* D7C7C 8002E76C 24440001 */   addiu     $a0, $v0, 1
/* D7C80 8002E770 24040002 */  addiu      $a0, $zero, 2
/* D7C84 8002E774 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D7C88 8002E778 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D7C8C 8002E77C 244200A0 */  addiu      $v0, $v0, 0xa0
/* D7C90 8002E780 44820000 */  mtc1       $v0, $f0
/* D7C94 8002E784 00000000 */  nop
/* D7C98 8002E788 46800020 */  cvt.s.w    $f0, $f0
/* D7C9C 8002E78C 0C02591A */  jal        func_80096468
/* D7CA0 8002E790 E4600030 */   swc1      $f0, 0x30($v1)
/* D7CA4 8002E794 3042FFFF */  andi       $v0, $v0, 0xffff
/* D7CA8 8002E798 0C02592F */  jal        func_800964BC
/* D7CAC 8002E79C 24440001 */   addiu     $a0, $v0, 1
/* D7CB0 8002E7A0 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D7CB4 8002E7A4 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D7CB8 8002E7A8 3C014220 */  lui        $at, 0x4220
/* D7CBC 8002E7AC 44811000 */  mtc1       $at, $f2
/* D7CC0 8002E7B0 A0800044 */  sb         $zero, 0x44($a0)
/* D7CC4 8002E7B4 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D7CC8 8002E7B8 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D7CCC 8002E7BC 3C058017 */  lui        $a1, %hi(D_8016D168)
/* D7CD0 8002E7C0 8CA5D168 */  lw         $a1, %lo(D_8016D168)($a1)
/* D7CD4 8002E7C4 24420078 */  addiu      $v0, $v0, 0x78
/* D7CD8 8002E7C8 44820000 */  mtc1       $v0, $f0
/* D7CDC 8002E7CC 00000000 */  nop
/* D7CE0 8002E7D0 46800020 */  cvt.s.w    $f0, $f0
/* D7CE4 8002E7D4 E4800034 */  swc1       $f0, 0x34($a0)
/* D7CE8 8002E7D8 A4800038 */  sh         $zero, 0x38($a0)
/* D7CEC 8002E7DC AC80003C */  sw         $zero, 0x3c($a0)
/* D7CF0 8002E7E0 E4820040 */  swc1       $f2, 0x40($a0)
/* D7CF4 8002E7E4 00051080 */  sll        $v0, $a1, 2
/* D7CF8 8002E7E8 00451021 */  addu       $v0, $v0, $a1
/* D7CFC 8002E7EC A462005C */  sh         $v0, 0x5c($v1)
/* D7D00 8002E7F0 00051100 */  sll        $v0, $a1, 4
/* D7D04 8002E7F4 00451021 */  addu       $v0, $v0, $a1
/* D7D08 8002E7F8 A462005E */  sh         $v0, 0x5e($v1)
/* D7D0C 8002E7FC 240200FF */  addiu      $v0, $zero, 0xff
/* D7D10 8002E800 AC600048 */  sw         $zero, 0x48($v1)
/* D7D14 8002E804 AC60004C */  sw         $zero, 0x4c($v1)
/* D7D18 8002E808 AC600050 */  sw         $zero, 0x50($v1)
/* D7D1C 8002E80C A4600054 */  sh         $zero, 0x54($v1)
/* D7D20 8002E810 A4600056 */  sh         $zero, 0x56($v1)
/* D7D24 8002E814 A4600058 */  sh         $zero, 0x58($v1)
/* D7D28 8002E818 A460005A */  sh         $zero, 0x5a($v1)
/* D7D2C 8002E81C A4620060 */  sh         $v0, 0x60($v1)
/* D7D30 8002E820 0C00C43D */  jal        func_800310F4_DA604
/* D7D34 8002E824 A0600068 */   sb        $zero, 0x68($v1)
/* D7D38 8002E828 0C00C07A */  jal        func_800301E8_D96F8
/* D7D3C 8002E82C 00000000 */   nop
/* D7D40 8002E830 0C02725C */  jal        func_8009C970
/* D7D44 8002E834 00000000 */   nop
/* D7D48 8002E838 24040046 */  addiu      $a0, $zero, 0x46
/* D7D4C 8002E83C 24050046 */  addiu      $a1, $zero, 0x46
/* D7D50 8002E840 24060046 */  addiu      $a2, $zero, 0x46
/* D7D54 8002E844 240700FF */  addiu      $a3, $zero, 0xff
/* D7D58 8002E848 240200FF */  addiu      $v0, $zero, 0xff
/* D7D5C 8002E84C AFA20010 */  sw         $v0, 0x10($sp)
/* D7D60 8002E850 0C027101 */  jal        func_8009C404
/* D7D64 8002E854 AFA20014 */   sw        $v0, 0x14($sp)
/* D7D68 8002E858 3C014000 */  lui        $at, 0x4000
/* D7D6C 8002E85C 44810000 */  mtc1       $at, $f0
/* D7D70 8002E860 3C018015 */  lui        $at, %hi(D_8014A054)
/* D7D74 8002E864 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* D7D78 8002E868 3C018015 */  lui        $at, %hi(D_8014A050)
/* D7D7C 8002E86C AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* D7D80 8002E870 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* D7D84 8002E874 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* D7D88 8002E878 3C018017 */  lui        $at, %hi(D_8016E568)
/* D7D8C 8002E87C AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* D7D90 8002E880 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* D7D94 8002E884 E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* D7D98 8002E888 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* D7D9C 8002E88C E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* D7DA0 8002E890 8FBF0020 */  lw         $ra, 0x20($sp)
/* D7DA4 8002E894 8FB1001C */  lw         $s1, 0x1c($sp)
/* D7DA8 8002E898 8FB00018 */  lw         $s0, 0x18($sp)
/* D7DAC 8002E89C 03E00008 */  jr         $ra
/* D7DB0 8002E8A0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002E8A4_D7DB4
/* D7DB4 8002E8A4 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D7DB8 8002E8A8 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D7DBC 8002E8AC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D7DC0 8002E8B0 AFBF0024 */  sw         $ra, 0x24($sp)
/* D7DC4 8002E8B4 AFB20020 */  sw         $s2, 0x20($sp)
/* D7DC8 8002E8B8 AFB1001C */  sw         $s1, 0x1c($sp)
/* D7DCC 8002E8BC AFB00018 */  sw         $s0, 0x18($sp)
/* D7DD0 8002E8C0 90820029 */  lbu        $v0, 0x29($a0)
/* D7DD4 8002E8C4 10400002 */  beqz       $v0, .L8002E8D0
/* D7DD8 8002E8C8 24120005 */   addiu     $s2, $zero, 5
/* D7DDC 8002E8CC 24120003 */  addiu      $s2, $zero, 3
.L8002E8D0:
/* D7DE0 8002E8D0 8C840000 */  lw         $a0, ($a0)
/* D7DE4 8002E8D4 0C00C505 */  jal        func_80031414_DA924
/* D7DE8 8002E8D8 00008021 */   addu      $s0, $zero, $zero
/* D7DEC 8002E8DC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7DF0 8002E8E0 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7DF4 8002E8E4 0C00C59F */  jal        func_8003167C_DAB8C
/* D7DF8 8002E8E8 8C440004 */   lw        $a0, 4($v0)
.L8002E8EC:
/* D7DFC 8002E8EC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7E00 8002E8F0 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7E04 8002E8F4 00101880 */  sll        $v1, $s0, 2
/* D7E08 8002E8F8 00621821 */  addu       $v1, $v1, $v0
/* D7E0C 8002E8FC 8C640008 */  lw         $a0, 8($v1)
/* D7E10 8002E900 0C0326A1 */  jal        func_800C9A84
/* D7E14 8002E904 26100001 */   addiu     $s0, $s0, 1
/* D7E18 8002E908 2A020002 */  slti       $v0, $s0, 2
/* D7E1C 8002E90C 1440FFF7 */  bnez       $v0, .L8002E8EC
/* D7E20 8002E910 00000000 */   nop
/* D7E24 8002E914 00008021 */  addu       $s0, $zero, $zero
.L8002E918:
/* D7E28 8002E918 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D7E2C 8002E91C 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D7E30 8002E920 00101080 */  sll        $v0, $s0, 2
/* D7E34 8002E924 00431021 */  addu       $v0, $v0, $v1
/* D7E38 8002E928 8C440010 */  lw         $a0, 0x10($v0)
/* D7E3C 8002E92C 10800003 */  beqz       $a0, .L8002E93C
/* D7E40 8002E930 26100001 */   addiu     $s0, $s0, 1
/* D7E44 8002E934 0C0299BD */  jal        func_800A66F4
/* D7E48 8002E938 00000000 */   nop
.L8002E93C:
/* D7E4C 8002E93C 2A020002 */  slti       $v0, $s0, 2
/* D7E50 8002E940 1440FFF5 */  bnez       $v0, .L8002E918
/* D7E54 8002E944 24110018 */   addiu     $s1, $zero, 0x18
/* D7E58 8002E948 00008021 */  addu       $s0, $zero, $zero
.L8002E94C:
/* D7E5C 8002E94C 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D7E60 8002E950 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D7E64 8002E954 26100001 */  addiu      $s0, $s0, 1
/* D7E68 8002E958 0C026E4E */  jal        func_8009B938
/* D7E6C 8002E95C 00912021 */   addu      $a0, $a0, $s1
/* D7E70 8002E960 2A020003 */  slti       $v0, $s0, 3
/* D7E74 8002E964 1440FFF9 */  bnez       $v0, .L8002E94C
/* D7E78 8002E968 26310004 */   addiu     $s1, $s1, 4
/* D7E7C 8002E96C 0C00D73C */  jal        func_80035CF0_DF200
/* D7E80 8002E970 00000000 */   nop
/* D7E84 8002E974 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D7E88 8002E978 0C0326A1 */  jal        func_800C9A84
/* D7E8C 8002E97C 8C847E40 */   lw        $a0, %lo(D_80067E40)($a0)
/* D7E90 8002E980 3C048015 */  lui        $a0, %hi(D_80149EC4)
/* D7E94 8002E984 8C849EC4 */  lw         $a0, %lo(D_80149EC4)($a0)
/* D7E98 8002E988 3C018006 */  lui        $at, %hi(D_80067E40)
/* D7E9C 8002E98C 0C025D58 */  jal        func_80097560
/* D7EA0 8002E990 AC207E40 */   sw        $zero, %lo(D_80067E40)($at)
/* D7EA4 8002E994 3C048015 */  lui        $a0, %hi(D_8014A2D4)
/* D7EA8 8002E998 0C025D58 */  jal        func_80097560
/* D7EAC 8002E99C 8C84A2D4 */   lw        $a0, %lo(D_8014A2D4)($a0)
/* D7EB0 8002E9A0 0C026449 */  jal        func_80099124
/* D7EB4 8002E9A4 24040002 */   addiu     $a0, $zero, 2
/* D7EB8 8002E9A8 0C02DB14 */  jal        func_800B6C50
/* D7EBC 8002E9AC 00002021 */   addu      $a0, $zero, $zero
/* D7EC0 8002E9B0 2404FFFE */  addiu      $a0, $zero, -2
/* D7EC4 8002E9B4 2405FFFF */  addiu      $a1, $zero, -1
/* D7EC8 8002E9B8 24060001 */  addiu      $a2, $zero, 1
/* D7ECC 8002E9BC 00003821 */  addu       $a3, $zero, $zero
/* D7ED0 8002E9C0 0C026C9A */  jal        func_8009B268
/* D7ED4 8002E9C4 AFA00010 */   sw        $zero, 0x10($sp)
/* D7ED8 8002E9C8 02401021 */  addu       $v0, $s2, $zero
/* D7EDC 8002E9CC 3C018015 */  lui        $at, %hi(D_80149BBC)
/* D7EE0 8002E9D0 AC209BBC */  sw         $zero, %lo(D_80149BBC)($at)
/* D7EE4 8002E9D4 8FBF0024 */  lw         $ra, 0x24($sp)
/* D7EE8 8002E9D8 8FB20020 */  lw         $s2, 0x20($sp)
/* D7EEC 8002E9DC 8FB1001C */  lw         $s1, 0x1c($sp)
/* D7EF0 8002E9E0 8FB00018 */  lw         $s0, 0x18($sp)
/* D7EF4 8002E9E4 03E00008 */  jr         $ra
/* D7EF8 8002E9E8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002E9EC_D7EFC
/* D7EFC 8002E9EC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7F00 8002E9F0 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7F04 8002E9F4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* D7F08 8002E9F8 AFBF0040 */  sw         $ra, 0x40($sp)
/* D7F0C 8002E9FC AFB1003C */  sw         $s1, 0x3c($sp)
/* D7F10 8002EA00 AFB00038 */  sw         $s0, 0x38($sp)
/* D7F14 8002EA04 94430026 */  lhu        $v1, 0x26($v0)
/* D7F18 8002EA08 90440024 */  lbu        $a0, 0x24($v0)
/* D7F1C 8002EA0C 24630001 */  addiu      $v1, $v1, 1
/* D7F20 8002EA10 A4430026 */  sh         $v1, 0x26($v0)
/* D7F24 8002EA14 2C820008 */  sltiu      $v0, $a0, 8
/* D7F28 8002EA18 104002A1 */  beqz       $v0, .L8002F4A0
/* D7F2C 8002EA1C 00041080 */   sll       $v0, $a0, 2
/* D7F30 8002EA20 3C018007 */  lui        $at, %hi(D_80069C50)
/* D7F34 8002EA24 00220821 */  addu       $at, $at, $v0
/* D7F38 8002EA28 8C229C50 */  lw         $v0, %lo(D_80069C50)($at)
/* D7F3C 8002EA2C 00400008 */  jr         $v0
/* D7F40 8002EA30 00000000 */   nop
/* D7F44 8002EA34 0C00BD2D */  jal        func_8002F4B4_D89C4
/* D7F48 8002EA38 00000000 */   nop
/* D7F4C 8002EA3C 0C00C07A */  jal        func_800301E8_D96F8
/* D7F50 8002EA40 00000000 */   nop
/* D7F54 8002EA44 0C00C32C */  jal        func_80030CB0_DA1C0
/* D7F58 8002EA48 00000000 */   nop
/* D7F5C 8002EA4C 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D7F60 8002EA50 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D7F64 8002EA54 3C028017 */  lui        $v0, %hi(D_8016D168)
/* D7F68 8002EA58 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* D7F6C 8002EA5C 84830026 */  lh         $v1, 0x26($a0)
/* D7F70 8002EA60 00021040 */  sll        $v0, $v0, 1
/* D7F74 8002EA64 1462028E */  bne        $v1, $v0, .L8002F4A0
/* D7F78 8002EA68 24020002 */   addiu     $v0, $zero, 2
/* D7F7C 8002EA6C A0820024 */  sb         $v0, 0x24($a0)
/* D7F80 8002EA70 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D7F84 8002EA74 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D7F88 8002EA78 24020003 */  addiu      $v0, $zero, 3
/* D7F8C 8002EA7C 0800BD25 */  j          .L8002F494
/* D7F90 8002EA80 A0620025 */   sb        $v0, 0x25($v1)
/* D7F94 8002EA84 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D7F98 8002EA88 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D7F9C 8002EA8C 8482005C */  lh         $v0, 0x5c($a0)
/* D7FA0 8002EA90 10400003 */  beqz       $v0, .L8002EAA0
/* D7FA4 8002EA94 00401821 */   addu      $v1, $v0, $zero
/* D7FA8 8002EA98 2462FFFF */  addiu      $v0, $v1, -1
/* D7FAC 8002EA9C A482005C */  sh         $v0, 0x5c($a0)
.L8002EAA0:
/* D7FB0 8002EAA0 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D7FB4 8002EAA4 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D7FB8 8002EAA8 8443005C */  lh         $v1, 0x5c($v0)
/* D7FBC 8002EAAC 3C028017 */  lui        $v0, %hi(D_8016D168)
/* D7FC0 8002EAB0 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* D7FC4 8002EAB4 0062001A */  div        $zero, $v1, $v0
/* D7FC8 8002EAB8 14400002 */  bnez       $v0, .L8002EAC4
/* D7FCC 8002EABC 00000000 */   nop
/* D7FD0 8002EAC0 0007000D */  break      7
.L8002EAC4:
/* D7FD4 8002EAC4 2401FFFF */   addiu     $at, $zero, -1
/* D7FD8 8002EAC8 14410004 */  bne        $v0, $at, .L8002EADC
/* D7FDC 8002EACC 3C018000 */   lui       $at, 0x8000
/* D7FE0 8002EAD0 14610002 */  bne        $v1, $at, .L8002EADC
/* D7FE4 8002EAD4 00000000 */   nop
/* D7FE8 8002EAD8 0006000D */  break      6
.L8002EADC:
/* D7FEC 8002EADC 00001812 */   mflo      $v1
/* D7FF0 8002EAE0 28620009 */  slti       $v0, $v1, 9
/* D7FF4 8002EAE4 00000000 */  nop
/* D7FF8 8002EAE8 14400003 */  bnez       $v0, .L8002EAF8
/* D7FFC 8002EAEC 28620002 */   slti      $v0, $v1, 2
/* D8000 8002EAF0 0800BAC0 */  j          .L8002EB00
/* D8004 8002EAF4 24030008 */   addiu     $v1, $zero, 8
.L8002EAF8:
/* D8008 8002EAF8 54400001 */  bnezl      $v0, .L8002EB00
/* D800C 8002EAFC 24030002 */   addiu     $v1, $zero, 2
.L8002EB00:
/* D8010 8002EB00 00032400 */  sll        $a0, $v1, 0x10
/* D8014 8002EB04 0C00C25C */  jal        func_80030970_D9E80
/* D8018 8002EB08 00042403 */   sra       $a0, $a0, 0x10
/* D801C 8002EB0C 0C00BD2D */  jal        func_8002F4B4_D89C4
/* D8020 8002EB10 00000000 */   nop
/* D8024 8002EB14 0C00C07A */  jal        func_800301E8_D96F8
/* D8028 8002EB18 00000000 */   nop
/* D802C 8002EB1C 0C00C32C */  jal        func_80030CB0_DA1C0
/* D8030 8002EB20 00000000 */   nop
/* D8034 8002EB24 3C058006 */  lui        $a1, %hi(D_80067E40)
/* D8038 8002EB28 8CA57E40 */  lw         $a1, %lo(D_80067E40)($a1)
/* D803C 8002EB2C 3C038017 */  lui        $v1, %hi(D_8016D168)
/* D8040 8002EB30 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* D8044 8002EB34 84A40026 */  lh         $a0, 0x26($a1)
/* D8048 8002EB38 00031040 */  sll        $v0, $v1, 1
/* D804C 8002EB3C 00431021 */  addu       $v0, $v0, $v1
/* D8050 8002EB40 14820257 */  bne        $a0, $v0, .L8002F4A0
/* D8054 8002EB44 24020002 */   addiu     $v0, $zero, 2
/* D8058 8002EB48 A0A20024 */  sb         $v0, 0x24($a1)
/* D805C 8002EB4C 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D8060 8002EB50 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D8064 8002EB54 24020004 */  addiu      $v0, $zero, 4
/* D8068 8002EB58 0800BD25 */  j          .L8002F494
/* D806C 8002EB5C A0620025 */   sb        $v0, 0x25($v1)
/* D8070 8002EB60 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8074 8002EB64 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8078 8002EB68 84430026 */  lh         $v1, 0x26($v0)
/* D807C 8002EB6C 24020005 */  addiu      $v0, $zero, 5
/* D8080 8002EB70 14620003 */  bne        $v1, $v0, .L8002EB80
/* D8084 8002EB74 00000000 */   nop
/* D8088 8002EB78 0C026DD5 */  jal        func_8009B754
/* D808C 8002EB7C 24040061 */   addiu     $a0, $zero, 0x61
.L8002EB80:
/* D8090 8002EB80 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D8094 8002EB84 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D8098 8002EB88 94620056 */  lhu        $v0, 0x56($v1)
/* D809C 8002EB8C 24420008 */  addiu      $v0, $v0, 8
/* D80A0 8002EB90 A4620056 */  sh         $v0, 0x56($v1)
/* D80A4 8002EB94 00021400 */  sll        $v0, $v0, 0x10
/* D80A8 8002EB98 00022403 */  sra        $a0, $v0, 0x10
/* D80AC 8002EB9C 2882002B */  slti       $v0, $a0, 0x2b
/* D80B0 8002EBA0 14400003 */  bnez       $v0, .L8002EBB0
/* D80B4 8002EBA4 2402002A */   addiu     $v0, $zero, 0x2a
/* D80B8 8002EBA8 0800BAEE */  j          .L8002EBB8
/* D80BC 8002EBAC A4620056 */   sh        $v0, 0x56($v1)
.L8002EBB0:
/* D80C0 8002EBB0 04820001 */  bltzl      $a0, .L8002EBB8
/* D80C4 8002EBB4 A4600056 */   sh        $zero, 0x56($v1)
.L8002EBB8:
/* D80C8 8002EBB8 3C078006 */  lui        $a3, %hi(D_80067E40)
/* D80CC 8002EBBC 8CE77E40 */  lw         $a3, %lo(D_80067E40)($a3)
/* D80D0 8002EBC0 8CE20000 */  lw         $v0, ($a3)
/* D80D4 8002EBC4 8C430000 */  lw         $v1, ($v0)
/* D80D8 8002EBC8 8C4400A0 */  lw         $a0, 0xa0($v0)
/* D80DC 8002EBCC 946503B2 */  lhu        $a1, 0x3b2($v1)
/* D80E0 8002EBD0 94E20056 */  lhu        $v0, 0x56($a3)
/* D80E4 8002EBD4 946603B4 */  lhu        $a2, 0x3b4($v1)
/* D80E8 8002EBD8 00052C80 */  sll        $a1, $a1, 0x12
/* D80EC 8002EBDC 00052C03 */  sra        $a1, $a1, 0x10
/* D80F0 8002EBE0 00C23021 */  addu       $a2, $a2, $v0
/* D80F4 8002EBE4 00063480 */  sll        $a2, $a2, 0x12
/* D80F8 8002EBE8 0C028D89 */  jal        func_800A3624
/* D80FC 8002EBEC 00063403 */   sra       $a2, $a2, 0x10
/* D8100 8002EBF0 0C00BD2D */  jal        func_8002F4B4_D89C4
/* D8104 8002EBF4 00000000 */   nop
/* D8108 8002EBF8 0C00C07A */  jal        func_800301E8_D96F8
/* D810C 8002EBFC 00000000 */   nop
/* D8110 8002EC00 0C00C32C */  jal        func_80030CB0_DA1C0
/* D8114 8002EC04 00000000 */   nop
/* D8118 8002EC08 3C018007 */  lui        $at, %hi(D_80069C70)
/* D811C 8002EC0C D4209C70 */  ldc1       $f0, %lo(D_80069C70)($at)
/* D8120 8002EC10 3C018017 */  lui        $at, %hi(D_8016D168)
/* D8124 8002EC14 C422D168 */  lwc1       $f2, %lo(D_8016D168)($at)
/* D8128 8002EC18 468010A1 */  cvt.d.w    $f2, $f2
/* D812C 8002EC1C 46201082 */  mul.d      $f2, $f2, $f0
/* D8130 8002EC20 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D8134 8002EC24 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D8138 8002EC28 84620026 */  lh         $v0, 0x26($v1)
/* D813C 8002EC2C 44820000 */  mtc1       $v0, $f0
/* D8140 8002EC30 00000000 */  nop
/* D8144 8002EC34 46800021 */  cvt.d.w    $f0, $f0
/* D8148 8002EC38 46220032 */  c.eq.d     $f0, $f2
/* D814C 8002EC3C 00000000 */  nop
/* D8150 8002EC40 45000217 */  bc1f       .L8002F4A0
/* D8154 8002EC44 00000000 */   nop
/* D8158 8002EC48 90620025 */  lbu        $v0, 0x25($v1)
/* D815C 8002EC4C 0800BD22 */  j          .L8002F488
/* D8160 8002EC50 A0620024 */   sb        $v0, 0x24($v1)
/* D8164 8002EC54 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D8168 8002EC58 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D816C 8002EC5C 94820060 */  lhu        $v0, 0x60($a0)
/* D8170 8002EC60 2442FFFE */  addiu      $v0, $v0, -2
/* D8174 8002EC64 A4820060 */  sh         $v0, 0x60($a0)
/* D8178 8002EC68 00021400 */  sll        $v0, $v0, 0x10
/* D817C 8002EC6C 00021C03 */  sra        $v1, $v0, 0x10
/* D8180 8002EC70 28620100 */  slti       $v0, $v1, 0x100
/* D8184 8002EC74 14400003 */  bnez       $v0, .L8002EC84
/* D8188 8002EC78 28620040 */   slti      $v0, $v1, 0x40
/* D818C 8002EC7C 0800BB23 */  j          .L8002EC8C
/* D8190 8002EC80 240200FF */   addiu     $v0, $zero, 0xff
.L8002EC84:
/* D8194 8002EC84 10400002 */  beqz       $v0, .L8002EC90
/* D8198 8002EC88 24020040 */   addiu     $v0, $zero, 0x40
.L8002EC8C:
/* D819C 8002EC8C A4820060 */  sh         $v0, 0x60($a0)
.L8002EC90:
/* D81A0 8002EC90 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D81A4 8002EC94 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D81A8 8002EC98 8C430000 */  lw         $v1, ($v0)
/* D81AC 8002EC9C 90420061 */  lbu        $v0, 0x61($v0)
/* D81B0 8002ECA0 240500FF */  addiu      $a1, $zero, 0xff
/* D81B4 8002ECA4 AFA20010 */  sw         $v0, 0x10($sp)
/* D81B8 8002ECA8 8C640014 */  lw         $a0, 0x14($v1)
/* D81BC 8002ECAC 240600FF */  addiu      $a2, $zero, 0xff
/* D81C0 8002ECB0 0C028E41 */  jal        func_800A3904
/* D81C4 8002ECB4 240700FF */   addiu     $a3, $zero, 0xff
/* D81C8 8002ECB8 3C038017 */  lui        $v1, %hi(D_8016D168)
/* D81CC 8002ECBC 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* D81D0 8002ECC0 3C045555 */  lui        $a0, 0x5555
/* D81D4 8002ECC4 34845556 */  ori        $a0, $a0, 0x5556
/* D81D8 8002ECC8 00031100 */  sll        $v0, $v1, 4
/* D81DC 8002ECCC 00431021 */  addu       $v0, $v0, $v1
/* D81E0 8002ECD0 00440018 */  mult       $v0, $a0
/* D81E4 8002ECD4 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D81E8 8002ECD8 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D81EC 8002ECDC 000217C3 */  sra        $v0, $v0, 0x1f
/* D81F0 8002ECE0 84630026 */  lh         $v1, 0x26($v1)
/* D81F4 8002ECE4 00004010 */  mfhi       $t0
/* D81F8 8002ECE8 01021023 */  subu       $v0, $t0, $v0
/* D81FC 8002ECEC 00021040 */  sll        $v0, $v0, 1
/* D8200 8002ECF0 14620006 */  bne        $v1, $v0, .L8002ED0C
/* D8204 8002ECF4 24050026 */   addiu     $a1, $zero, 0x26
/* D8208 8002ECF8 3C048015 */  lui        $a0, %hi(D_8014A2D4)
/* D820C 8002ECFC 8C84A2D4 */  lw         $a0, %lo(D_8014A2D4)($a0)
/* D8210 8002ED00 00003021 */  addu       $a2, $zero, $zero
/* D8214 8002ED04 0C0E5A47 */  jal        func_8039691C
/* D8218 8002ED08 00003821 */   addu      $a3, $zero, $zero
.L8002ED0C:
/* D821C 8002ED0C 3C058017 */  lui        $a1, %hi(D_8016D168)
/* D8220 8002ED10 8CA5D168 */  lw         $a1, %lo(D_8016D168)($a1)
/* D8224 8002ED14 3C0141F0 */  lui        $at, 0x41f0
/* D8228 8002ED18 44811000 */  mtc1       $at, $f2
/* D822C 8002ED1C 00051100 */  sll        $v0, $a1, 4
/* D8230 8002ED20 00451021 */  addu       $v0, $v0, $a1
/* D8234 8002ED24 44820000 */  mtc1       $v0, $f0
/* D8238 8002ED28 00000000 */  nop
/* D823C 8002ED2C 46800020 */  cvt.s.w    $f0, $f0
/* D8240 8002ED30 46001083 */  div.s      $f2, $f2, $f0
/* D8244 8002ED34 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D8248 8002ED38 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D824C 8002ED3C 8C820004 */  lw         $v0, 4($a0)
/* D8250 8002ED40 C4400064 */  lwc1       $f0, 0x64($v0)
/* D8254 8002ED44 46020000 */  add.s      $f0, $f0, $f2
/* D8258 8002ED48 E4400064 */  swc1       $f0, 0x64($v0)
/* D825C 8002ED4C 8C820004 */  lw         $v0, 4($a0)
/* D8260 8002ED50 C44000D4 */  lwc1       $f0, 0xd4($v0)
/* D8264 8002ED54 46020000 */  add.s      $f0, $f0, $f2
/* D8268 8002ED58 E44000D4 */  swc1       $f0, 0xd4($v0)
/* D826C 8002ED5C 8482005E */  lh         $v0, 0x5e($a0)
/* D8270 8002ED60 10400021 */  beqz       $v0, .L8002EDE8
/* D8274 8002ED64 00401821 */   addu      $v1, $v0, $zero
/* D8278 8002ED68 3C018007 */  lui        $at, %hi(D_80069C78)
/* D827C 8002ED6C D4229C78 */  ldc1       $f2, %lo(D_80069C78)($at)
/* D8280 8002ED70 44850000 */  mtc1       $a1, $f0
/* D8284 8002ED74 00000000 */  nop
/* D8288 8002ED78 46800021 */  cvt.d.w    $f0, $f0
/* D828C 8002ED7C 46220082 */  mul.d      $f2, $f0, $f2
/* D8290 8002ED80 2463FFFF */  addiu      $v1, $v1, -1
/* D8294 8002ED84 00031400 */  sll        $v0, $v1, 0x10
/* D8298 8002ED88 00021403 */  sra        $v0, $v0, 0x10
/* D829C 8002ED8C 44820000 */  mtc1       $v0, $f0
/* D82A0 8002ED90 00000000 */  nop
/* D82A4 8002ED94 46800021 */  cvt.d.w    $f0, $f0
/* D82A8 8002ED98 46220032 */  c.eq.d     $f0, $f2
/* D82AC 8002ED9C 00000000 */  nop
/* D82B0 8002EDA0 00000000 */  nop
/* D82B4 8002EDA4 4500003D */  bc1f       .L8002EE9C
/* D82B8 8002EDA8 A483005E */   sh        $v1, 0x5e($a0)
/* D82BC 8002EDAC 00051040 */  sll        $v0, $a1, 1
/* D82C0 8002EDB0 44820000 */  mtc1       $v0, $f0
/* D82C4 8002EDB4 00000000 */  nop
/* D82C8 8002EDB8 46800021 */  cvt.d.w    $f0, $f0
/* D82CC 8002EDBC 46220000 */  add.d      $f0, $f0, $f2
/* D82D0 8002EDC0 3C04803B */  lui        $a0, %hi(D_803B3E40)
/* D82D4 8002EDC4 8C843E40 */  lw         $a0, %lo(D_803B3E40)($a0)
/* D82D8 8002EDC8 4620008D */  trunc.w.d  $f2, $f0
/* D82DC 8002EDCC 44051000 */  mfc1       $a1, $f2
/* D82E0 8002EDD0 00000000 */  nop
/* D82E4 8002EDD4 00052C00 */  sll        $a1, $a1, 0x10
/* D82E8 8002EDD8 0C0E5A3D */  jal        func_803968F4
/* D82EC 8002EDDC 00052C03 */   sra       $a1, $a1, 0x10
/* D82F0 8002EDE0 0800BBA7 */  j          .L8002EE9C
/* D82F4 8002EDE4 00000000 */   nop
.L8002EDE8:
/* D82F8 8002EDE8 0C00BFF0 */  jal        func_8002FFC0_D94D0
/* D82FC 8002EDEC 00002021 */   addu      $a0, $zero, $zero
/* D8300 8002EDF0 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D8304 8002EDF4 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D8308 8002EDF8 8C820000 */  lw         $v0, ($a0)
/* D830C 8002EDFC 8C43004C */  lw         $v1, 0x4c($v0)
/* D8310 8002EE00 9462001E */  lhu        $v0, 0x1e($v1)
/* D8314 8002EE04 34420400 */  ori        $v0, $v0, 0x400
/* D8318 8002EE08 A462001E */  sh         $v0, 0x1e($v1)
/* D831C 8002EE0C 8C820000 */  lw         $v0, ($a0)
/* D8320 8002EE10 8C430050 */  lw         $v1, 0x50($v0)
/* D8324 8002EE14 9462001E */  lhu        $v0, 0x1e($v1)
/* D8328 8002EE18 34420400 */  ori        $v0, $v0, 0x400
/* D832C 8002EE1C A462001E */  sh         $v0, 0x1e($v1)
/* D8330 8002EE20 8C820000 */  lw         $v0, ($a0)
/* D8334 8002EE24 8C430054 */  lw         $v1, 0x54($v0)
/* D8338 8002EE28 9462001E */  lhu        $v0, 0x1e($v1)
/* D833C 8002EE2C 34420400 */  ori        $v0, $v0, 0x400
/* D8340 8002EE30 0C00C32C */  jal        func_80030CB0_DA1C0
/* D8344 8002EE34 A462001E */   sh        $v0, 0x1e($v1)
/* D8348 8002EE38 3C048017 */  lui        $a0, %hi(D_8016D168)
/* D834C 8002EE3C 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* D8350 8002EE40 00008021 */  addu       $s0, $zero, $zero
/* D8354 8002EE44 24110018 */  addiu      $s1, $zero, 0x18
/* D8358 8002EE48 0C02A5E5 */  jal        func_800A9794
/* D835C 8002EE4C 00042040 */   sll       $a0, $a0, 1
/* D8360 8002EE50 3C018015 */  lui        $at, %hi(D_80149BBC)
/* D8364 8002EE54 AC209BBC */  sw         $zero, %lo(D_80149BBC)($at)
.L8002EE58:
/* D8368 8002EE58 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D836C 8002EE5C 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D8370 8002EE60 26100001 */  addiu      $s0, $s0, 1
/* D8374 8002EE64 0C026E4E */  jal        func_8009B938
/* D8378 8002EE68 00912021 */   addu      $a0, $a0, $s1
/* D837C 8002EE6C 2A020003 */  slti       $v0, $s0, 3
/* D8380 8002EE70 1440FFF9 */  bnez       $v0, .L8002EE58
/* D8384 8002EE74 26310004 */   addiu     $s1, $s1, 4
/* D8388 8002EE78 00002021 */  addu       $a0, $zero, $zero
/* D838C 8002EE7C 24050100 */  addiu      $a1, $zero, 0x100
/* D8390 8002EE80 0C026B15 */  jal        func_8009AC54
/* D8394 8002EE84 2406003C */   addiu     $a2, $zero, 0x3c
/* D8398 8002EE88 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D839C 8002EE8C 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D83A0 8002EE90 24020007 */  addiu      $v0, $zero, 7
/* D83A4 8002EE94 0800BD22 */  j          .L8002F488
/* D83A8 8002EE98 A0620024 */   sb        $v0, 0x24($v1)
.L8002EE9C:
/* D83AC 8002EE9C 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D83B0 8002EEA0 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D83B4 8002EEA4 8482005C */  lh         $v0, 0x5c($a0)
/* D83B8 8002EEA8 10400003 */  beqz       $v0, .L8002EEB8
/* D83BC 8002EEAC 00401821 */   addu      $v1, $v0, $zero
/* D83C0 8002EEB0 2462FFFF */  addiu      $v0, $v1, -1
/* D83C4 8002EEB4 A482005C */  sh         $v0, 0x5c($a0)
.L8002EEB8:
/* D83C8 8002EEB8 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D83CC 8002EEBC 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D83D0 8002EEC0 8443005C */  lh         $v1, 0x5c($v0)
/* D83D4 8002EEC4 3C028017 */  lui        $v0, %hi(D_8016D168)
/* D83D8 8002EEC8 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* D83DC 8002EECC 0062001A */  div        $zero, $v1, $v0
/* D83E0 8002EED0 14400002 */  bnez       $v0, .L8002EEDC
/* D83E4 8002EED4 00000000 */   nop
/* D83E8 8002EED8 0007000D */  break      7
.L8002EEDC:
/* D83EC 8002EEDC 2401FFFF */   addiu     $at, $zero, -1
/* D83F0 8002EEE0 14410004 */  bne        $v0, $at, .L8002EEF4
/* D83F4 8002EEE4 3C018000 */   lui       $at, 0x8000
/* D83F8 8002EEE8 14610002 */  bne        $v1, $at, .L8002EEF4
/* D83FC 8002EEEC 00000000 */   nop
/* D8400 8002EEF0 0006000D */  break      6
.L8002EEF4:
/* D8404 8002EEF4 00001812 */   mflo      $v1
/* D8408 8002EEF8 28620009 */  slti       $v0, $v1, 9
/* D840C 8002EEFC 00000000 */  nop
/* D8410 8002EF00 14400003 */  bnez       $v0, .L8002EF10
/* D8414 8002EF04 28620002 */   slti      $v0, $v1, 2
/* D8418 8002EF08 0800BBC6 */  j          .L8002EF18
/* D841C 8002EF0C 24030008 */   addiu     $v1, $zero, 8
.L8002EF10:
/* D8420 8002EF10 54400001 */  bnezl      $v0, .L8002EF18
/* D8424 8002EF14 24030002 */   addiu     $v1, $zero, 2
.L8002EF18:
/* D8428 8002EF18 00032400 */  sll        $a0, $v1, 0x10
/* D842C 8002EF1C 0C00C25C */  jal        func_80030970_D9E80
/* D8430 8002EF20 00042403 */   sra       $a0, $a0, 0x10
/* D8434 8002EF24 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8438 8002EF28 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D843C 8002EF2C 9042002A */  lbu        $v0, 0x2a($v0)
/* D8440 8002EF30 14400009 */  bnez       $v0, .L8002EF58
/* D8444 8002EF34 00000000 */   nop
/* D8448 8002EF38 0C00BD2D */  jal        func_8002F4B4_D89C4
/* D844C 8002EF3C 00000000 */   nop
/* D8450 8002EF40 0C00BDAD */  jal        func_8002F6B4_D8BC4
/* D8454 8002EF44 00000000 */   nop
/* D8458 8002EF48 0C00C07A */  jal        func_800301E8_D96F8
/* D845C 8002EF4C 00000000 */   nop
/* D8460 8002EF50 0C00BE3E */  jal        func_8002F8F8_D8E08
/* D8464 8002EF54 00000000 */   nop
.L8002EF58:
/* D8468 8002EF58 0C00BECF */  jal        func_8002FB3C_D904C
/* D846C 8002EF5C 00000000 */   nop
/* D8470 8002EF60 0C00BF70 */  jal        func_8002FDC0_D92D0
/* D8474 8002EF64 00000000 */   nop
/* D8478 8002EF68 0C00C32C */  jal        func_80030CB0_DA1C0
/* D847C 8002EF6C 00000000 */   nop
/* D8480 8002EF70 0800BD28 */  j          .L8002F4A0
/* D8484 8002EF74 00000000 */   nop
/* D8488 8002EF78 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D848C 8002EF7C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8490 8002EF80 80420068 */  lb         $v0, 0x68($v0)
/* D8494 8002EF84 1440001B */  bnez       $v0, .L8002EFF4
/* D8498 8002EF88 00000000 */   nop
/* D849C 8002EF8C 00008021 */  addu       $s0, $zero, $zero
/* D84A0 8002EF90 24110018 */  addiu      $s1, $zero, 0x18
.L8002EF94:
/* D84A4 8002EF94 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D84A8 8002EF98 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D84AC 8002EF9C 26100001 */  addiu      $s0, $s0, 1
/* D84B0 8002EFA0 0C026E4E */  jal        func_8009B938
/* D84B4 8002EFA4 00912021 */   addu      $a0, $a0, $s1
/* D84B8 8002EFA8 2A020003 */  slti       $v0, $s0, 3
/* D84BC 8002EFAC 1440FFF9 */  bnez       $v0, .L8002EF94
/* D84C0 8002EFB0 26310004 */   addiu     $s1, $s1, 4
/* D84C4 8002EFB4 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D84C8 8002EFB8 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D84CC 8002EFBC 90620068 */  lbu        $v0, 0x68($v1)
/* D84D0 8002EFC0 24440001 */  addiu      $a0, $v0, 1
/* D84D4 8002EFC4 A0640068 */  sb         $a0, 0x68($v1)
/* D84D8 8002EFC8 8C630064 */  lw         $v1, 0x64($v1)
/* D84DC 8002EFCC 00021600 */  sll        $v0, $v0, 0x18
/* D84E0 8002EFD0 00021603 */  sra        $v0, $v0, 0x18
/* D84E4 8002EFD4 00621821 */  addu       $v1, $v1, $v0
/* D84E8 8002EFD8 80640000 */  lb         $a0, ($v1)
/* D84EC 8002EFDC 0C00D720 */  jal        func_80035C80_DF190
/* D84F0 8002EFE0 3084FFFF */   andi      $a0, $a0, 0xffff
/* D84F4 8002EFE4 3C018015 */  lui        $at, %hi(D_80149BBC)
/* D84F8 8002EFE8 AC209BBC */  sw         $zero, %lo(D_80149BBC)($at)
/* D84FC 8002EFEC 3C018015 */  lui        $at, %hi(D_80149FA8)
/* D8500 8002EFF0 AC209FA8 */  sw         $zero, %lo(D_80149FA8)($at)
.L8002EFF4:
/* D8504 8002EFF4 0C00D750 */  jal        func_80035D40_DF250
/* D8508 8002EFF8 00000000 */   nop
/* D850C 8002EFFC 10400128 */  beqz       $v0, .L8002F4A0
/* D8510 8002F000 00000000 */   nop
/* D8514 8002F004 0C00D73C */  jal        func_80035CF0_DF200
/* D8518 8002F008 00000000 */   nop
/* D851C 8002F00C 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D8520 8002F010 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D8524 8002F014 90620068 */  lbu        $v0, 0x68($v1)
/* D8528 8002F018 24440001 */  addiu      $a0, $v0, 1
/* D852C 8002F01C A0640068 */  sb         $a0, 0x68($v1)
/* D8530 8002F020 8C630064 */  lw         $v1, 0x64($v1)
/* D8534 8002F024 00021600 */  sll        $v0, $v0, 0x18
/* D8538 8002F028 00021603 */  sra        $v0, $v0, 0x18
/* D853C 8002F02C 00621821 */  addu       $v1, $v1, $v0
/* D8540 8002F030 80640000 */  lb         $a0, ($v1)
/* D8544 8002F034 2402FFFF */  addiu      $v0, $zero, -1
/* D8548 8002F038 10820007 */  beq        $a0, $v0, .L8002F058
/* D854C 8002F03C 00000000 */   nop
/* D8550 8002F040 0C00D720 */  jal        func_80035C80_DF190
/* D8554 8002F044 3084FFFF */   andi      $a0, $a0, 0xffff
/* D8558 8002F048 0C00D750 */  jal        func_80035D40_DF250
/* D855C 8002F04C 00000000 */   nop
/* D8560 8002F050 0800BD28 */  j          .L8002F4A0
/* D8564 8002F054 00000000 */   nop
.L8002F058:
/* D8568 8002F058 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D856C 8002F05C 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D8570 8002F060 90620025 */  lbu        $v0, 0x25($v1)
/* D8574 8002F064 A0620024 */  sb         $v0, 0x24($v1)
/* D8578 8002F068 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D857C 8002F06C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8580 8002F070 A0400025 */  sb         $zero, 0x25($v0)
/* D8584 8002F074 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8588 8002F078 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D858C 8002F07C 0C02725C */  jal        func_8009C970
/* D8590 8002F080 A4400026 */   sh        $zero, 0x26($v0)
/* D8594 8002F084 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8598 8002F088 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D859C 8002F08C 90430024 */  lbu        $v1, 0x24($v0)
/* D85A0 8002F090 24100001 */  addiu      $s0, $zero, 1
/* D85A4 8002F094 54700037 */  bnel       $v1, $s0, .L8002F174
/* D85A8 8002F098 24020005 */   addiu     $v0, $zero, 5
/* D85AC 8002F09C 8C430000 */  lw         $v1, ($v0)
/* D85B0 8002F0A0 A4400056 */  sh         $zero, 0x56($v0)
/* D85B4 8002F0A4 8C620000 */  lw         $v0, ($v1)
/* D85B8 8002F0A8 3C018015 */  lui        $at, %hi(D_80149BBC)
/* D85BC 8002F0AC AC309BBC */  sw         $s0, %lo(D_80149BBC)($at)
/* D85C0 8002F0B0 3C018015 */  lui        $at, %hi(D_80149FA8)
/* D85C4 8002F0B4 AC309FA8 */  sw         $s0, %lo(D_80149FA8)($at)
/* D85C8 8002F0B8 944503B2 */  lhu        $a1, 0x3b2($v0)
/* D85CC 8002F0BC 8C6400A0 */  lw         $a0, 0xa0($v1)
/* D85D0 8002F0C0 944603B4 */  lhu        $a2, 0x3b4($v0)
/* D85D4 8002F0C4 00052C80 */  sll        $a1, $a1, 0x12
/* D85D8 8002F0C8 00052C03 */  sra        $a1, $a1, 0x10
/* D85DC 8002F0CC 00063480 */  sll        $a2, $a2, 0x12
/* D85E0 8002F0D0 0C028D89 */  jal        func_800A3624
/* D85E4 8002F0D4 00063403 */   sra       $a2, $a2, 0x10
/* D85E8 8002F0D8 0C00C46C */  jal        func_800311B0_DA6C0
/* D85EC 8002F0DC 00000000 */   nop
/* D85F0 8002F0E0 0C00C43D */  jal        func_800310F4_DA604
/* D85F4 8002F0E4 00000000 */   nop
/* D85F8 8002F0E8 0C00C07A */  jal        func_800301E8_D96F8
/* D85FC 8002F0EC 00000000 */   nop
/* D8600 8002F0F0 0C00BFF0 */  jal        func_8002FFC0_D94D0
/* D8604 8002F0F4 24040001 */   addiu     $a0, $zero, 1
/* D8608 8002F0F8 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D860C 8002F0FC 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D8610 8002F100 8C820000 */  lw         $v0, ($a0)
/* D8614 8002F104 8C430080 */  lw         $v1, 0x80($v0)
/* D8618 8002F108 9462001E */  lhu        $v0, 0x1e($v1)
/* D861C 8002F10C 34420400 */  ori        $v0, $v0, 0x400
/* D8620 8002F110 A462001E */  sh         $v0, 0x1e($v1)
/* D8624 8002F114 8C820000 */  lw         $v0, ($a0)
/* D8628 8002F118 8C430084 */  lw         $v1, 0x84($v0)
/* D862C 8002F11C 9462001E */  lhu        $v0, 0x1e($v1)
/* D8630 8002F120 34420400 */  ori        $v0, $v0, 0x400
/* D8634 8002F124 A462001E */  sh         $v0, 0x1e($v1)
/* D8638 8002F128 8C820000 */  lw         $v0, ($a0)
/* D863C 8002F12C 8C430088 */  lw         $v1, 0x88($v0)
/* D8640 8002F130 9462001E */  lhu        $v0, 0x1e($v1)
/* D8644 8002F134 24040015 */  addiu      $a0, $zero, 0x15
/* D8648 8002F138 34420400 */  ori        $v0, $v0, 0x400
/* D864C 8002F13C 0C026DD5 */  jal        func_8009B754
/* D8650 8002F140 A462001E */   sh        $v0, 0x1e($v1)
/* D8654 8002F144 00002021 */  addu       $a0, $zero, $zero
/* D8658 8002F148 24050100 */  addiu      $a1, $zero, 0x100
/* D865C 8002F14C 0C026B15 */  jal        func_8009AC54
/* D8660 8002F150 24060078 */   addiu     $a2, $zero, 0x78
/* D8664 8002F154 3C048015 */  lui        $a0, %hi(D_8014A2D4)
/* D8668 8002F158 8C84A2D4 */  lw         $a0, %lo(D_8014A2D4)($a0)
/* D866C 8002F15C 24050008 */  addiu      $a1, $zero, 8
/* D8670 8002F160 00003021 */  addu       $a2, $zero, $zero
/* D8674 8002F164 0C0E5A47 */  jal        func_8039691C
/* D8678 8002F168 00003821 */   addu      $a3, $zero, $zero
/* D867C 8002F16C 0800BD28 */  j          .L8002F4A0
/* D8680 8002F170 00000000 */   nop
.L8002F174:
/* D8684 8002F174 146200CA */  bne        $v1, $v0, .L8002F4A0
/* D8688 8002F178 00000000 */   nop
/* D868C 8002F17C 3C018015 */  lui        $at, %hi(D_80149BBC)
/* D8690 8002F180 AC309BBC */  sw         $s0, %lo(D_80149BBC)($at)
/* D8694 8002F184 3C018015 */  lui        $at, %hi(D_80149FA8)
/* D8698 8002F188 AC309FA8 */  sw         $s0, %lo(D_80149FA8)($at)
/* D869C 8002F18C 0C00C46C */  jal        func_800311B0_DA6C0
/* D86A0 8002F190 24110002 */   addiu     $s1, $zero, 2
/* D86A4 8002F194 0C00BFF0 */  jal        func_8002FFC0_D94D0
/* D86A8 8002F198 24040001 */   addiu     $a0, $zero, 1
/* D86AC 8002F19C 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D86B0 8002F1A0 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D86B4 8002F1A4 8C820000 */  lw         $v0, ($a0)
/* D86B8 8002F1A8 8C430010 */  lw         $v1, 0x10($v0)
/* D86BC 8002F1AC 9462001E */  lhu        $v0, 0x1e($v1)
/* D86C0 8002F1B0 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D86C4 8002F1B4 A462001E */  sh         $v0, 0x1e($v1)
/* D86C8 8002F1B8 8C820004 */  lw         $v0, 4($a0)
/* D86CC 8002F1BC 8C430008 */  lw         $v1, 8($v0)
/* D86D0 8002F1C0 90620066 */  lbu        $v0, 0x66($v1)
/* D86D4 8002F1C4 3042007F */  andi       $v0, $v0, 0x7f
/* D86D8 8002F1C8 A0620066 */  sb         $v0, 0x66($v1)
/* D86DC 8002F1CC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D86E0 8002F1D0 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D86E4 8002F1D4 8C420004 */  lw         $v0, 4($v0)
/* D86E8 8002F1D8 8C430078 */  lw         $v1, 0x78($v0)
/* D86EC 8002F1DC 90620066 */  lbu        $v0, 0x66($v1)
/* D86F0 8002F1E0 2404006A */  addiu      $a0, $zero, 0x6a
/* D86F4 8002F1E4 3042007F */  andi       $v0, $v0, 0x7f
/* D86F8 8002F1E8 0C026DD5 */  jal        func_8009B754
/* D86FC 8002F1EC A0620066 */   sb        $v0, 0x66($v1)
/* D8700 8002F1F0 2404006B */  addiu      $a0, $zero, 0x6b
/* D8704 8002F1F4 24050060 */  addiu      $a1, $zero, 0x60
/* D8708 8002F1F8 24060080 */  addiu      $a2, $zero, 0x80
/* D870C 8002F1FC 24070001 */  addiu      $a3, $zero, 1
/* D8710 8002F200 24020064 */  addiu      $v0, $zero, 0x64
/* D8714 8002F204 0C026E0C */  jal        func_8009B830
/* D8718 8002F208 AFA20010 */   sw        $v0, 0x10($sp)
/* D871C 8002F20C 00002021 */  addu       $a0, $zero, $zero
/* D8720 8002F210 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D8724 8002F214 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D8728 8002F218 24050100 */  addiu      $a1, $zero, 0x100
/* D872C 8002F21C 24060078 */  addiu      $a2, $zero, 0x78
/* D8730 8002F220 0C026B15 */  jal        func_8009AC54
/* D8734 8002F224 AC62001C */   sw        $v0, 0x1c($v1)
/* D8738 8002F228 00002021 */  addu       $a0, $zero, $zero
/* D873C 8002F22C 00002821 */  addu       $a1, $zero, $zero
/* D8740 8002F230 24060002 */  addiu      $a2, $zero, 2
/* D8744 8002F234 2407005C */  addiu      $a3, $zero, 0x5c
/* D8748 8002F238 AFA00010 */  sw         $zero, 0x10($sp)
/* D874C 8002F23C AFB10014 */  sw         $s1, 0x14($sp)
/* D8750 8002F240 0C0E5BE4 */  jal        func_80396F90
/* D8754 8002F244 AFB00018 */   sw        $s0, 0x18($sp)
/* D8758 8002F248 3C038017 */  lui        $v1, %hi(D_8016D168)
/* D875C 8002F24C 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* D8760 8002F250 3C0438E3 */  lui        $a0, 0x38e3
/* D8764 8002F254 34848E39 */  ori        $a0, $a0, 0x8e39
/* D8768 8002F258 00031100 */  sll        $v0, $v1, 4
/* D876C 8002F25C 00431021 */  addu       $v0, $v0, $v1
/* D8770 8002F260 00440018 */  mult       $v0, $a0
/* D8774 8002F264 00002821 */  addu       $a1, $zero, $zero
/* D8778 8002F268 24060002 */  addiu      $a2, $zero, 2
/* D877C 8002F26C 2407005E */  addiu      $a3, $zero, 0x5e
/* D8780 8002F270 AFA00010 */  sw         $zero, 0x10($sp)
/* D8784 8002F274 AFB10014 */  sw         $s1, 0x14($sp)
/* D8788 8002F278 AFB00018 */  sw         $s0, 0x18($sp)
/* D878C 8002F27C 000217C3 */  sra        $v0, $v0, 0x1f
/* D8790 8002F280 00004010 */  mfhi       $t0
/* D8794 8002F284 00082043 */  sra        $a0, $t0, 1
/* D8798 8002F288 00822023 */  subu       $a0, $a0, $v0
/* D879C 8002F28C 00042040 */  sll        $a0, $a0, 1
/* D87A0 8002F290 0C0E5BE4 */  jal        func_80396F90
/* D87A4 8002F294 3084FFFE */   andi      $a0, $a0, 0xfffe
/* D87A8 8002F298 3C038017 */  lui        $v1, %hi(D_8016D168)
/* D87AC 8002F29C 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* D87B0 8002F2A0 00031100 */  sll        $v0, $v1, 4
/* D87B4 8002F2A4 00431021 */  addu       $v0, $v0, $v1
/* D87B8 8002F2A8 04420001 */  bltzl      $v0, .L8002F2B0
/* D87BC 8002F2AC 24420003 */   addiu     $v0, $v0, 3
.L8002F2B0:
/* D87C0 8002F2B0 00022043 */  sra        $a0, $v0, 1
/* D87C4 8002F2B4 3084FFFE */  andi       $a0, $a0, 0xfffe
/* D87C8 8002F2B8 00002821 */  addu       $a1, $zero, $zero
/* D87CC 8002F2BC 24060002 */  addiu      $a2, $zero, 2
/* D87D0 8002F2C0 2407005F */  addiu      $a3, $zero, 0x5f
/* D87D4 8002F2C4 AFA00010 */  sw         $zero, 0x10($sp)
/* D87D8 8002F2C8 AFB10014 */  sw         $s1, 0x14($sp)
/* D87DC 8002F2CC 0C0E5BE4 */  jal        func_80396F90
/* D87E0 8002F2D0 AFB00018 */   sw        $s0, 0x18($sp)
/* D87E4 8002F2D4 3C048015 */  lui        $a0, %hi(D_8014A2D4)
/* D87E8 8002F2D8 8C84A2D4 */  lw         $a0, %lo(D_8014A2D4)($a0)
/* D87EC 8002F2DC 24050008 */  addiu      $a1, $zero, 8
/* D87F0 8002F2E0 00003021 */  addu       $a2, $zero, $zero
/* D87F4 8002F2E4 0C0E5A47 */  jal        func_8039691C
/* D87F8 8002F2E8 00003821 */   addu      $a3, $zero, $zero
/* D87FC 8002F2EC 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D8800 8002F2F0 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D8804 8002F2F4 90620028 */  lbu        $v0, 0x28($v1)
/* D8808 8002F2F8 2442FFFF */  addiu      $v0, $v0, -1
/* D880C 8002F2FC A0620028 */  sb         $v0, 0x28($v1)
/* D8810 8002F300 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D8814 8002F304 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D8818 8002F308 80640028 */  lb         $a0, 0x28($v1)
/* D881C 8002F30C 28820003 */  slti       $v0, $a0, 3
/* D8820 8002F310 14400003 */  bnez       $v0, .L8002F320
/* D8824 8002F314 24020002 */   addiu     $v0, $zero, 2
/* D8828 8002F318 0800BD28 */  j          .L8002F4A0
/* D882C 8002F31C A0620028 */   sb        $v0, 0x28($v1)
.L8002F320:
/* D8830 8002F320 0482005F */  bltzl      $a0, .L8002F4A0
/* D8834 8002F324 A0600028 */   sb        $zero, 0x28($v1)
/* D8838 8002F328 0800BD28 */  j          .L8002F4A0
/* D883C 8002F32C 00000000 */   nop
/* D8840 8002F330 3C018007 */  lui        $at, %hi(D_80069C80)
/* D8844 8002F334 D4209C80 */  ldc1       $f0, %lo(D_80069C80)($at)
/* D8848 8002F338 3C018017 */  lui        $at, %hi(D_8016D168)
/* D884C 8002F33C C422D168 */  lwc1       $f2, %lo(D_8016D168)($at)
/* D8850 8002F340 468010A1 */  cvt.d.w    $f2, $f2
/* D8854 8002F344 46201082 */  mul.d      $f2, $f2, $f0
/* D8858 8002F348 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D885C 8002F34C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8860 8002F350 84420026 */  lh         $v0, 0x26($v0)
/* D8864 8002F354 44820000 */  mtc1       $v0, $f0
/* D8868 8002F358 00000000 */  nop
/* D886C 8002F35C 46800021 */  cvt.d.w    $f0, $f0
/* D8870 8002F360 46220032 */  c.eq.d     $f0, $f2
/* D8874 8002F364 00000000 */  nop
/* D8878 8002F368 00000000 */  nop
/* D887C 8002F36C 45000006 */  bc1f       .L8002F388
/* D8880 8002F370 24050006 */   addiu     $a1, $zero, 6
/* D8884 8002F374 3C048015 */  lui        $a0, %hi(D_8014A2D4)
/* D8888 8002F378 8C84A2D4 */  lw         $a0, %lo(D_8014A2D4)($a0)
/* D888C 8002F37C 00003021 */  addu       $a2, $zero, $zero
/* D8890 8002F380 0C0E5A47 */  jal        func_8039691C
/* D8894 8002F384 00003821 */   addu      $a3, $zero, $zero
.L8002F388:
/* D8898 8002F388 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D889C 8002F38C 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D88A0 8002F390 94820060 */  lhu        $v0, 0x60($a0)
/* D88A4 8002F394 24420008 */  addiu      $v0, $v0, 8
/* D88A8 8002F398 A4820060 */  sh         $v0, 0x60($a0)
/* D88AC 8002F39C 00021400 */  sll        $v0, $v0, 0x10
/* D88B0 8002F3A0 00021C03 */  sra        $v1, $v0, 0x10
/* D88B4 8002F3A4 28620100 */  slti       $v0, $v1, 0x100
/* D88B8 8002F3A8 14400003 */  bnez       $v0, .L8002F3B8
/* D88BC 8002F3AC 28620040 */   slti      $v0, $v1, 0x40
/* D88C0 8002F3B0 0800BCF0 */  j          .L8002F3C0
/* D88C4 8002F3B4 240200FF */   addiu     $v0, $zero, 0xff
.L8002F3B8:
/* D88C8 8002F3B8 10400002 */  beqz       $v0, .L8002F3C4
/* D88CC 8002F3BC 24020040 */   addiu     $v0, $zero, 0x40
.L8002F3C0:
/* D88D0 8002F3C0 A4820060 */  sh         $v0, 0x60($a0)
.L8002F3C4:
/* D88D4 8002F3C4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D88D8 8002F3C8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D88DC 8002F3CC 8C430000 */  lw         $v1, ($v0)
/* D88E0 8002F3D0 90420061 */  lbu        $v0, 0x61($v0)
/* D88E4 8002F3D4 240500FF */  addiu      $a1, $zero, 0xff
/* D88E8 8002F3D8 AFA20010 */  sw         $v0, 0x10($sp)
/* D88EC 8002F3DC 8C640014 */  lw         $a0, 0x14($v1)
/* D88F0 8002F3E0 240600FF */  addiu      $a2, $zero, 0xff
/* D88F4 8002F3E4 0C028E41 */  jal        func_800A3904
/* D88F8 8002F3E8 240700FF */   addiu     $a3, $zero, 0xff
/* D88FC 8002F3EC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8900 8002F3F0 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8904 8002F3F4 84420026 */  lh         $v0, 0x26($v0)
/* D8908 8002F3F8 3C038017 */  lui        $v1, %hi(D_8016D168)
/* D890C 8002F3FC 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* D8910 8002F400 00021080 */  sll        $v0, $v0, 2
/* D8914 8002F404 0043001A */  div        $zero, $v0, $v1
/* D8918 8002F408 14600002 */  bnez       $v1, .L8002F414
/* D891C 8002F40C 00000000 */   nop
/* D8920 8002F410 0007000D */  break      7
.L8002F414:
/* D8924 8002F414 2401FFFF */   addiu     $at, $zero, -1
/* D8928 8002F418 14610004 */  bne        $v1, $at, .L8002F42C
/* D892C 8002F41C 3C018000 */   lui       $at, 0x8000
/* D8930 8002F420 14410002 */  bne        $v0, $at, .L8002F42C
/* D8934 8002F424 00000000 */   nop
/* D8938 8002F428 0006000D */  break      6
.L8002F42C:
/* D893C 8002F42C 00001012 */   mflo      $v0
/* D8940 8002F430 24430002 */  addiu      $v1, $v0, 2
/* D8944 8002F434 28620009 */  slti       $v0, $v1, 9
/* D8948 8002F438 14400003 */  bnez       $v0, .L8002F448
/* D894C 8002F43C 28620002 */   slti      $v0, $v1, 2
/* D8950 8002F440 0800BD14 */  j          .L8002F450
/* D8954 8002F444 24030008 */   addiu     $v1, $zero, 8
.L8002F448:
/* D8958 8002F448 54400001 */  bnezl      $v0, .L8002F450
/* D895C 8002F44C 24030002 */   addiu     $v1, $zero, 2
.L8002F450:
/* D8960 8002F450 00032400 */  sll        $a0, $v1, 0x10
/* D8964 8002F454 0C00C25C */  jal        func_80030970_D9E80
/* D8968 8002F458 00042403 */   sra       $a0, $a0, 0x10
/* D896C 8002F45C 0C00C32C */  jal        func_80030CB0_DA1C0
/* D8970 8002F460 00000000 */   nop
/* D8974 8002F464 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D8978 8002F468 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D897C 8002F46C 3C028017 */  lui        $v0, %hi(D_8016D168)
/* D8980 8002F470 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* D8984 8002F474 84830026 */  lh         $v1, 0x26($a0)
/* D8988 8002F478 00021040 */  sll        $v0, $v0, 1
/* D898C 8002F47C 14620008 */  bne        $v1, $v0, .L8002F4A0
/* D8990 8002F480 24020008 */   addiu     $v0, $zero, 8
/* D8994 8002F484 A0820024 */  sb         $v0, 0x24($a0)
.L8002F488:
/* D8998 8002F488 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D899C 8002F48C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D89A0 8002F490 A0400025 */  sb         $zero, 0x25($v0)
.L8002F494:
/* D89A4 8002F494 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D89A8 8002F498 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D89AC 8002F49C A4400026 */  sh         $zero, 0x26($v0)
.L8002F4A0:
/* D89B0 8002F4A0 8FBF0040 */  lw         $ra, 0x40($sp)
/* D89B4 8002F4A4 8FB1003C */  lw         $s1, 0x3c($sp)
/* D89B8 8002F4A8 8FB00038 */  lw         $s0, 0x38($sp)
/* D89BC 8002F4AC 03E00008 */  jr         $ra
/* D89C0 8002F4B0 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8002F4B4_D89C4
/* D89C4 8002F4B4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D89C8 8002F4B8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D89CC 8002F4BC 3C014320 */  lui        $at, 0x4320
/* D89D0 8002F4C0 44810000 */  mtc1       $at, $f0
/* D89D4 8002F4C4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* D89D8 8002F4C8 AFBF0018 */  sw         $ra, 0x18($sp)
/* D89DC 8002F4CC AFB10014 */  sw         $s1, 0x14($sp)
/* D89E0 8002F4D0 AFB00010 */  sw         $s0, 0x10($sp)
/* D89E4 8002F4D4 F7B80030 */  sdc1       $f24, 0x30($sp)
/* D89E8 8002F4D8 F7B60028 */  sdc1       $f22, 0x28($sp)
/* D89EC 8002F4DC F7B40020 */  sdc1       $f20, 0x20($sp)
/* D89F0 8002F4E0 C4420030 */  lwc1       $f2, 0x30($v0)
/* D89F4 8002F4E4 46001581 */  sub.s      $f22, $f2, $f0
/* D89F8 8002F4E8 C4420034 */  lwc1       $f2, 0x34($v0)
/* D89FC 8002F4EC 3C0142F0 */  lui        $at, 0x42f0
/* D8A00 8002F4F0 44810000 */  mtc1       $at, $f0
/* D8A04 8002F4F4 4616B102 */  mul.s      $f4, $f22, $f22
/* D8A08 8002F4F8 46001501 */  sub.s      $f20, $f2, $f0
/* D8A0C 8002F4FC 4614A002 */  mul.s      $f0, $f20, $f20
/* D8A10 8002F500 46002300 */  add.s      $f12, $f4, $f0
/* D8A14 8002F504 46006604 */  sqrt.s     $f24, $f12
/* D8A18 8002F508 4618C032 */  c.eq.s     $f24, $f24
/* D8A1C 8002F50C 00000000 */  nop
/* D8A20 8002F510 00000000 */  nop
/* D8A24 8002F514 45030005 */  bc1tl      .L8002F52C
/* D8A28 8002F518 4600A306 */   mov.s     $f12, $f20
/* D8A2C 8002F51C 0C02F698 */  jal        func_800BDA60
/* D8A30 8002F520 00000000 */   nop
/* D8A34 8002F524 46000606 */  mov.s      $f24, $f0
/* D8A38 8002F528 4600A306 */  mov.s      $f12, $f20
.L8002F52C:
/* D8A3C 8002F52C 0C032884 */  jal        func_800CA210
/* D8A40 8002F530 4600B386 */   mov.s     $f14, $f22
/* D8A44 8002F534 3C018007 */  lui        $at, %hi(D_80069C88)
/* D8A48 8002F538 D4229C88 */  ldc1       $f2, %lo(D_80069C88)($at)
/* D8A4C 8002F53C 46000021 */  cvt.d.s    $f0, $f0
/* D8A50 8002F540 46220002 */  mul.d      $f0, $f0, $f2
/* D8A54 8002F544 3C0143B4 */  lui        $at, 0x43b4
/* D8A58 8002F548 44817000 */  mtc1       $at, $f14
/* D8A5C 8002F54C 00000000 */  nop
/* D8A60 8002F550 0C0259AB */  jal        func_800966AC
/* D8A64 8002F554 46200320 */   cvt.s.d   $f12, $f0
/* D8A68 8002F558 3C014336 */  lui        $at, 0x4336
/* D8A6C 8002F55C 34210AAB */  ori        $at, $at, 0xaab
/* D8A70 8002F560 44811000 */  mtc1       $at, $f2
/* D8A74 8002F564 46000586 */  mov.s      $f22, $f0
/* D8A78 8002F568 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8A7C 8002F56C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8A80 8002F570 4602B082 */  mul.s      $f2, $f22, $f2
/* D8A84 8002F574 3C013F80 */  lui        $at, 0x3f80
/* D8A88 8002F578 4481A000 */  mtc1       $at, $f20
/* D8A8C 8002F57C 8C420000 */  lw         $v0, ($v0)
/* D8A90 8002F580 4406A000 */  mfc1       $a2, $f20
/* D8A94 8002F584 4407A000 */  mfc1       $a3, $f20
/* D8A98 8002F588 8C440080 */  lw         $a0, 0x80($v0)
/* D8A9C 8002F58C 4600100D */  trunc.w.s  $f0, $f2
/* D8AA0 8002F590 44100000 */  mfc1       $s0, $f0
/* D8AA4 8002F594 00000000 */  nop
/* D8AA8 8002F598 0C02915B */  jal        func_800A456C
/* D8AAC 8002F59C 02002821 */   addu      $a1, $s0, $zero
/* D8AB0 8002F5A0 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8AB4 8002F5A4 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8AB8 8002F5A8 8C420000 */  lw         $v0, ($v0)
/* D8ABC 8002F5AC 8C440084 */  lw         $a0, 0x84($v0)
/* D8AC0 8002F5B0 4406A000 */  mfc1       $a2, $f20
/* D8AC4 8002F5B4 4407A000 */  mfc1       $a3, $f20
/* D8AC8 8002F5B8 00000000 */  nop
/* D8ACC 8002F5BC 0C02915B */  jal        func_800A456C
/* D8AD0 8002F5C0 02002821 */   addu      $a1, $s0, $zero
/* D8AD4 8002F5C4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8AD8 8002F5C8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8ADC 8002F5CC 8C420000 */  lw         $v0, ($v0)
/* D8AE0 8002F5D0 4406A000 */  mfc1       $a2, $f20
/* D8AE4 8002F5D4 8C440088 */  lw         $a0, 0x88($v0)
/* D8AE8 8002F5D8 02002821 */  addu       $a1, $s0, $zero
/* D8AEC 8002F5DC 0C02915B */  jal        func_800A456C
/* D8AF0 8002F5E0 00C03821 */   addu      $a3, $a2, $zero
/* D8AF4 8002F5E4 3C0142A0 */  lui        $at, 0x42a0
/* D8AF8 8002F5E8 44810000 */  mtc1       $at, $f0
/* D8AFC 8002F5EC 00000000 */  nop
/* D8B00 8002F5F0 4600C03C */  c.lt.s     $f24, $f0
/* D8B04 8002F5F4 00000000 */  nop
/* D8B08 8002F5F8 45000026 */  bc1f       .L8002F694
/* D8B0C 8002F5FC 00000000 */   nop
/* D8B10 8002F600 3C018007 */  lui        $at, %hi(D_80069C90)
/* D8B14 8002F604 D4209C90 */  ldc1       $f0, %lo(D_80069C90)($at)
/* D8B18 8002F608 4600B521 */  cvt.d.s    $f20, $f22
/* D8B1C 8002F60C 4620A502 */  mul.d      $f20, $f20, $f0
/* D8B20 8002F610 3C118006 */  lui        $s1, %hi(D_80067E40)
/* D8B24 8002F614 8E317E40 */  lw         $s1, %lo(D_80067E40)($s1)
/* D8B28 8002F618 4620A520 */  cvt.s.d    $f20, $f20
/* D8B2C 8002F61C 0C02F784 */  jal        func_800BDE10
/* D8B30 8002F620 4600A306 */   mov.s     $f12, $f20
/* D8B34 8002F624 3C108006 */  lui        $s0, %hi(D_80067E40)
/* D8B38 8002F628 8E107E40 */  lw         $s0, %lo(D_80067E40)($s0)
/* D8B3C 8002F62C 82020028 */  lb         $v0, 0x28($s0)
/* D8B40 8002F630 000210C0 */  sll        $v0, $v0, 3
/* D8B44 8002F634 3C018006 */  lui        $at, %hi(D_80067E44)
/* D8B48 8002F638 00220821 */  addu       $at, $at, $v0
/* D8B4C 8002F63C C4227E44 */  lwc1       $f2, %lo(D_80067E44)($at)
/* D8B50 8002F640 46020002 */  mul.s      $f0, $f0, $f2
/* D8B54 8002F644 00000000 */  nop
/* D8B58 8002F648 46180002 */  mul.s      $f0, $f0, $f24
/* D8B5C 8002F64C C6220030 */  lwc1       $f2, 0x30($s1)
/* D8B60 8002F650 46001080 */  add.s      $f2, $f2, $f0
/* D8B64 8002F654 4600A306 */  mov.s      $f12, $f20
/* D8B68 8002F658 0C02FF68 */  jal        func_800BFDA0
/* D8B6C 8002F65C E6220030 */   swc1      $f2, 0x30($s1)
/* D8B70 8002F660 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8B74 8002F664 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8B78 8002F668 80420028 */  lb         $v0, 0x28($v0)
/* D8B7C 8002F66C 000210C0 */  sll        $v0, $v0, 3
/* D8B80 8002F670 3C018006 */  lui        $at, %hi(D_80067E44)
/* D8B84 8002F674 00220821 */  addu       $at, $at, $v0
/* D8B88 8002F678 C4227E44 */  lwc1       $f2, %lo(D_80067E44)($at)
/* D8B8C 8002F67C 46020002 */  mul.s      $f0, $f0, $f2
/* D8B90 8002F680 00000000 */  nop
/* D8B94 8002F684 46180002 */  mul.s      $f0, $f0, $f24
/* D8B98 8002F688 C6020034 */  lwc1       $f2, 0x34($s0)
/* D8B9C 8002F68C 46001080 */  add.s      $f2, $f2, $f0
/* D8BA0 8002F690 E6020034 */  swc1       $f2, 0x34($s0)
.L8002F694:
/* D8BA4 8002F694 8FBF0018 */  lw         $ra, 0x18($sp)
/* D8BA8 8002F698 8FB10014 */  lw         $s1, 0x14($sp)
/* D8BAC 8002F69C 8FB00010 */  lw         $s0, 0x10($sp)
/* D8BB0 8002F6A0 D7B80030 */  ldc1       $f24, 0x30($sp)
/* D8BB4 8002F6A4 D7B60028 */  ldc1       $f22, 0x28($sp)
/* D8BB8 8002F6A8 D7B40020 */  ldc1       $f20, 0x20($sp)
/* D8BBC 8002F6AC 03E00008 */  jr         $ra
/* D8BC0 8002F6B0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8002F6B4_D8BC4
/* D8BC4 8002F6B4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8BC8 8002F6B8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8BCC 8002F6BC 3C018015 */  lui        $at, %hi(D_8014CFA4)
/* D8BD0 8002F6C0 C422CFA4 */  lwc1       $f2, %lo(D_8014CFA4)($at)
/* D8BD4 8002F6C4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D8BD8 8002F6C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D8BDC 8002F6CC AFB00010 */  sw         $s0, 0x10($sp)
/* D8BE0 8002F6D0 F7B80028 */  sdc1       $f24, 0x28($sp)
/* D8BE4 8002F6D4 F7B60020 */  sdc1       $f22, 0x20($sp)
/* D8BE8 8002F6D8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* D8BEC 8002F6DC C4400030 */  lwc1       $f0, 0x30($v0)
/* D8BF0 8002F6E0 46020000 */  add.s      $f0, $f0, $f2
/* D8BF4 8002F6E4 E4400030 */  swc1       $f0, 0x30($v0)
/* D8BF8 8002F6E8 C4440030 */  lwc1       $f4, 0x30($v0)
/* D8BFC 8002F6EC 3C014320 */  lui        $at, 0x4320
/* D8C00 8002F6F0 44810000 */  mtc1       $at, $f0
/* D8C04 8002F6F4 C4420034 */  lwc1       $f2, 0x34($v0)
/* D8C08 8002F6F8 46002581 */  sub.s      $f22, $f4, $f0
/* D8C0C 8002F6FC 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* D8C10 8002F700 C420CFA8 */  lwc1       $f0, %lo(D_8014CFA8)($at)
/* D8C14 8002F704 3C0142F0 */  lui        $at, 0x42f0
/* D8C18 8002F708 44812000 */  mtc1       $at, $f4
/* D8C1C 8002F70C 46001080 */  add.s      $f2, $f2, $f0
/* D8C20 8002F710 4616B182 */  mul.s      $f6, $f22, $f22
/* D8C24 8002F714 46041501 */  sub.s      $f20, $f2, $f4
/* D8C28 8002F718 4614A002 */  mul.s      $f0, $f20, $f20
/* D8C2C 8002F71C 46003300 */  add.s      $f12, $f6, $f0
/* D8C30 8002F720 46006004 */  sqrt.s     $f0, $f12
/* D8C34 8002F724 46000032 */  c.eq.s     $f0, $f0
/* D8C38 8002F728 00000000 */  nop
/* D8C3C 8002F72C 00000000 */  nop
/* D8C40 8002F730 45010003 */  bc1t       .L8002F740
/* D8C44 8002F734 E4420034 */   swc1      $f2, 0x34($v0)
/* D8C48 8002F738 0C02F698 */  jal        func_800BDA60
/* D8C4C 8002F73C 00000000 */   nop
.L8002F740:
/* D8C50 8002F740 46000606 */  mov.s      $f24, $f0
/* D8C54 8002F744 4600A306 */  mov.s      $f12, $f20
/* D8C58 8002F748 0C032884 */  jal        func_800CA210
/* D8C5C 8002F74C 4600B386 */   mov.s     $f14, $f22
/* D8C60 8002F750 3C018007 */  lui        $at, %hi(D_80069C98)
/* D8C64 8002F754 D4229C98 */  ldc1       $f2, %lo(D_80069C98)($at)
/* D8C68 8002F758 46000021 */  cvt.d.s    $f0, $f0
/* D8C6C 8002F75C 46220002 */  mul.d      $f0, $f0, $f2
/* D8C70 8002F760 3C0143B4 */  lui        $at, 0x43b4
/* D8C74 8002F764 44817000 */  mtc1       $at, $f14
/* D8C78 8002F768 00000000 */  nop
/* D8C7C 8002F76C 0C0259AB */  jal        func_800966AC
/* D8C80 8002F770 46200320 */   cvt.s.d   $f12, $f0
/* D8C84 8002F774 3C0142A0 */  lui        $at, 0x42a0
/* D8C88 8002F778 44811000 */  mtc1       $at, $f2
/* D8C8C 8002F77C 00000000 */  nop
/* D8C90 8002F780 4618103C */  c.lt.s     $f2, $f24
/* D8C94 8002F784 00000000 */  nop
/* D8C98 8002F788 00000000 */  nop
/* D8C9C 8002F78C 45000003 */  bc1f       .L8002F79C
/* D8CA0 8002F790 46000506 */   mov.s     $f20, $f0
/* D8CA4 8002F794 0800BDEE */  j          .L8002F7B8
/* D8CA8 8002F798 46001606 */   mov.s     $f24, $f2
.L8002F79C:
/* D8CAC 8002F79C 44800000 */  mtc1       $zero, $f0
/* D8CB0 8002F7A0 00000000 */  nop
/* D8CB4 8002F7A4 4600C03C */  c.lt.s     $f24, $f0
/* D8CB8 8002F7A8 00000000 */  nop
/* D8CBC 8002F7AC 00000000 */  nop
/* D8CC0 8002F7B0 45030001 */  bc1tl      .L8002F7B8
/* D8CC4 8002F7B4 46000606 */   mov.s     $f24, $f0
.L8002F7B8:
/* D8CC8 8002F7B8 3C018007 */  lui        $at, %hi(D_80069CA0)
/* D8CCC 8002F7BC D4209CA0 */  ldc1       $f0, %lo(D_80069CA0)($at)
/* D8CD0 8002F7C0 4600A521 */  cvt.d.s    $f20, $f20
/* D8CD4 8002F7C4 4620A502 */  mul.d      $f20, $f20, $f0
/* D8CD8 8002F7C8 3C108006 */  lui        $s0, %hi(D_80067E40)
/* D8CDC 8002F7CC 8E107E40 */  lw         $s0, %lo(D_80067E40)($s0)
/* D8CE0 8002F7D0 4620A520 */  cvt.s.d    $f20, $f20
/* D8CE4 8002F7D4 0C02F784 */  jal        func_800BDE10
/* D8CE8 8002F7D8 4600A306 */   mov.s     $f12, $f20
/* D8CEC 8002F7DC 00000000 */  nop
/* D8CF0 8002F7E0 46180002 */  mul.s      $f0, $f0, $f24
/* D8CF4 8002F7E4 3C014320 */  lui        $at, 0x4320
/* D8CF8 8002F7E8 44811000 */  mtc1       $at, $f2
/* D8CFC 8002F7EC 00000000 */  nop
/* D8D00 8002F7F0 46020000 */  add.s      $f0, $f0, $f2
/* D8D04 8002F7F4 E6000030 */  swc1       $f0, 0x30($s0)
/* D8D08 8002F7F8 3C108006 */  lui        $s0, %hi(D_80067E40)
/* D8D0C 8002F7FC 8E107E40 */  lw         $s0, %lo(D_80067E40)($s0)
/* D8D10 8002F800 0C02FF68 */  jal        func_800BFDA0
/* D8D14 8002F804 4600A306 */   mov.s     $f12, $f20
/* D8D18 8002F808 00000000 */  nop
/* D8D1C 8002F80C 46180002 */  mul.s      $f0, $f0, $f24
/* D8D20 8002F810 3C0142F0 */  lui        $at, 0x42f0
/* D8D24 8002F814 44811000 */  mtc1       $at, $f2
/* D8D28 8002F818 00000000 */  nop
/* D8D2C 8002F81C 46020000 */  add.s      $f0, $f0, $f2
/* D8D30 8002F820 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D8D34 8002F824 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D8D38 8002F828 E6000034 */  swc1       $f0, 0x34($s0)
/* D8D3C 8002F82C C482003C */  lwc1       $f2, 0x3c($a0)
/* D8D40 8002F830 3C013F00 */  lui        $at, 0x3f00
/* D8D44 8002F834 44810000 */  mtc1       $at, $f0
/* D8D48 8002F838 00000000 */  nop
/* D8D4C 8002F83C 46001100 */  add.s      $f4, $f2, $f0
/* D8D50 8002F840 3C014040 */  lui        $at, 0x4040
/* D8D54 8002F844 44813000 */  mtc1       $at, $f6
/* D8D58 8002F848 00000000 */  nop
/* D8D5C 8002F84C 4604303E */  c.le.s     $f6, $f4
/* D8D60 8002F850 4600100D */  trunc.w.s  $f0, $f2
/* D8D64 8002F854 44030000 */  mfc1       $v1, $f0
/* D8D68 8002F858 00000000 */  nop
/* D8D6C 8002F85C 45000003 */  bc1f       .L8002F86C
/* D8D70 8002F860 E484003C */   swc1      $f4, 0x3c($a0)
/* D8D74 8002F864 0800BE22 */  j          .L8002F888
/* D8D78 8002F868 46062001 */   sub.s     $f0, $f4, $f6
.L8002F86C:
/* D8D7C 8002F86C 44800000 */  mtc1       $zero, $f0
/* D8D80 8002F870 00000000 */  nop
/* D8D84 8002F874 4600203C */  c.lt.s     $f4, $f0
/* D8D88 8002F878 00000000 */  nop
/* D8D8C 8002F87C 45000003 */  bc1f       .L8002F88C
/* D8D90 8002F880 00000000 */   nop
/* D8D94 8002F884 46062000 */  add.s      $f0, $f4, $f6
.L8002F888:
/* D8D98 8002F888 E480003C */  swc1       $f0, 0x3c($a0)
.L8002F88C:
/* D8D9C 8002F88C 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D8DA0 8002F890 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D8DA4 8002F894 8C820000 */  lw         $v0, ($a0)
/* D8DA8 8002F898 00031880 */  sll        $v1, $v1, 2
/* D8DAC 8002F89C 00431021 */  addu       $v0, $v0, $v1
/* D8DB0 8002F8A0 8C430080 */  lw         $v1, 0x80($v0)
/* D8DB4 8002F8A4 9462001E */  lhu        $v0, 0x1e($v1)
/* D8DB8 8002F8A8 C480003C */  lwc1       $f0, 0x3c($a0)
/* D8DBC 8002F8AC 34420400 */  ori        $v0, $v0, 0x400
/* D8DC0 8002F8B0 A462001E */  sh         $v0, 0x1e($v1)
/* D8DC4 8002F8B4 8C830000 */  lw         $v1, ($a0)
/* D8DC8 8002F8B8 4600008D */  trunc.w.s  $f2, $f0
/* D8DCC 8002F8BC 44021000 */  mfc1       $v0, $f2
/* D8DD0 8002F8C0 00000000 */  nop
/* D8DD4 8002F8C4 00021080 */  sll        $v0, $v0, 2
/* D8DD8 8002F8C8 00621821 */  addu       $v1, $v1, $v0
/* D8DDC 8002F8CC 8C630080 */  lw         $v1, 0x80($v1)
/* D8DE0 8002F8D0 9462001E */  lhu        $v0, 0x1e($v1)
/* D8DE4 8002F8D4 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D8DE8 8002F8D8 A462001E */  sh         $v0, 0x1e($v1)
/* D8DEC 8002F8DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D8DF0 8002F8E0 8FB00010 */  lw         $s0, 0x10($sp)
/* D8DF4 8002F8E4 D7B80028 */  ldc1       $f24, 0x28($sp)
/* D8DF8 8002F8E8 D7B60020 */  ldc1       $f22, 0x20($sp)
/* D8DFC 8002F8EC D7B40018 */  ldc1       $f20, 0x18($sp)
/* D8E00 8002F8F0 03E00008 */  jr         $ra
/* D8E04 8002F8F4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002F8F8_D8E08
/* D8E08 8002F8F8 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8E0C 8002F8FC 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8E10 8002F900 3C014320 */  lui        $at, 0x4320
/* D8E14 8002F904 44810000 */  mtc1       $at, $f0
/* D8E18 8002F908 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D8E1C 8002F90C AFBF0010 */  sw         $ra, 0x10($sp)
/* D8E20 8002F910 C4420030 */  lwc1       $f2, 0x30($v0)
/* D8E24 8002F914 46001081 */  sub.s      $f2, $f2, $f0
/* D8E28 8002F918 3C0142F0 */  lui        $at, 0x42f0
/* D8E2C 8002F91C 44812000 */  mtc1       $at, $f4
/* D8E30 8002F920 C4400034 */  lwc1       $f0, 0x34($v0)
/* D8E34 8002F924 46021082 */  mul.s      $f2, $f2, $f2
/* D8E38 8002F928 46040001 */  sub.s      $f0, $f0, $f4
/* D8E3C 8002F92C 46000002 */  mul.s      $f0, $f0, $f0
/* D8E40 8002F930 46001300 */  add.s      $f12, $f2, $f0
/* D8E44 8002F934 46006104 */  sqrt.s     $f4, $f12
/* D8E48 8002F938 46042032 */  c.eq.s     $f4, $f4
/* D8E4C 8002F93C 00000000 */  nop
/* D8E50 8002F940 45010004 */  bc1t       .L8002F954
/* D8E54 8002F944 00000000 */   nop
/* D8E58 8002F948 0C02F698 */  jal        func_800BDA60
/* D8E5C 8002F94C 00000000 */   nop
/* D8E60 8002F950 46000106 */  mov.s      $f4, $f0
.L8002F954:
/* D8E64 8002F954 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D8E68 8002F958 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D8E6C 8002F95C 80620028 */  lb         $v0, 0x28($v1)
/* D8E70 8002F960 000210C0 */  sll        $v0, $v0, 3
/* D8E74 8002F964 3C018006 */  lui        $at, %hi(D_80067E48)
/* D8E78 8002F968 00220821 */  addu       $at, $at, $v0
/* D8E7C 8002F96C C4207E48 */  lwc1       $f0, %lo(D_80067E48)($at)
/* D8E80 8002F970 4600203C */  c.lt.s     $f4, $f0
/* D8E84 8002F974 00000000 */  nop
/* D8E88 8002F978 45000004 */  bc1f       .L8002F98C
/* D8E8C 8002F97C 00000000 */   nop
/* D8E90 8002F980 94620038 */  lhu        $v0, 0x38($v1)
/* D8E94 8002F984 0800BE65 */  j          .L8002F994
/* D8E98 8002F988 24420001 */   addiu     $v0, $v0, 1
.L8002F98C:
/* D8E9C 8002F98C 94620038 */  lhu        $v0, 0x38($v1)
/* D8EA0 8002F990 2442FFFF */  addiu      $v0, $v0, -1
.L8002F994:
/* D8EA4 8002F994 A4620038 */  sh         $v0, 0x38($v1)
/* D8EA8 8002F998 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D8EAC 8002F99C 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D8EB0 8002F9A0 84640038 */  lh         $a0, 0x38($v1)
/* D8EB4 8002F9A4 2882000D */  slti       $v0, $a0, 0xd
/* D8EB8 8002F9A8 14400003 */  bnez       $v0, .L8002F9B8
/* D8EBC 8002F9AC 2402000C */   addiu     $v0, $zero, 0xc
/* D8EC0 8002F9B0 0800BE70 */  j          .L8002F9C0
/* D8EC4 8002F9B4 A4620038 */   sh        $v0, 0x38($v1)
.L8002F9B8:
/* D8EC8 8002F9B8 04820001 */  bltzl      $a0, .L8002F9C0
/* D8ECC 8002F9BC A4600038 */   sh        $zero, 0x38($v1)
.L8002F9C0:
/* D8ED0 8002F9C0 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D8ED4 8002F9C4 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D8ED8 8002F9C8 84830038 */  lh         $v1, 0x38($a0)
/* D8EDC 8002F9CC 2402000C */  addiu      $v0, $zero, 0xc
/* D8EE0 8002F9D0 14620011 */  bne        $v1, $v0, .L8002FA18
/* D8EE4 8002F9D4 00000000 */   nop
/* D8EE8 8002F9D8 8C820018 */  lw         $v0, 0x18($a0)
/* D8EEC 8002F9DC 14400006 */  bnez       $v0, .L8002F9F8
/* D8EF0 8002F9E0 00000000 */   nop
/* D8EF4 8002F9E4 0C026DD5 */  jal        func_8009B754
/* D8EF8 8002F9E8 24040064 */   addiu     $a0, $zero, 0x64
/* D8EFC 8002F9EC 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D8F00 8002F9F0 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D8F04 8002F9F4 AC620018 */  sw         $v0, 0x18($v1)
.L8002F9F8:
/* D8F08 8002F9F8 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8F0C 8002F9FC 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8F10 8002FA00 3C013F19 */  lui        $at, 0x3f19
/* D8F14 8002FA04 3421999A */  ori        $at, $at, 0x999a
/* D8F18 8002FA08 44811000 */  mtc1       $at, $f2
/* D8F1C 8002FA0C C4400040 */  lwc1       $f0, 0x40($v0)
/* D8F20 8002FA10 0800BE8F */  j          .L8002FA3C
/* D8F24 8002FA14 46020001 */   sub.s     $f0, $f0, $f2
.L8002FA18:
/* D8F28 8002FA18 0C026E4E */  jal        func_8009B938
/* D8F2C 8002FA1C 24840018 */   addiu     $a0, $a0, 0x18
/* D8F30 8002FA20 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8F34 8002FA24 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8F38 8002FA28 3C013ECC */  lui        $at, 0x3ecc
/* D8F3C 8002FA2C 3421CCCD */  ori        $at, $at, 0xcccd
/* D8F40 8002FA30 44811000 */  mtc1       $at, $f2
/* D8F44 8002FA34 C4400040 */  lwc1       $f0, 0x40($v0)
/* D8F48 8002FA38 46020000 */  add.s      $f0, $f0, $f2
.L8002FA3C:
/* D8F4C 8002FA3C E4400040 */  swc1       $f0, 0x40($v0)
/* D8F50 8002FA40 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D8F54 8002FA44 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D8F58 8002FA48 3C014220 */  lui        $at, 0x4220
/* D8F5C 8002FA4C 44811000 */  mtc1       $at, $f2
/* D8F60 8002FA50 C4400040 */  lwc1       $f0, 0x40($v0)
/* D8F64 8002FA54 4600103C */  c.lt.s     $f2, $f0
/* D8F68 8002FA58 00000000 */  nop
/* D8F6C 8002FA5C 00000000 */  nop
/* D8F70 8002FA60 45030008 */  bc1tl      .L8002FA84
/* D8F74 8002FA64 E4420040 */   swc1      $f2, 0x40($v0)
/* D8F78 8002FA68 44801000 */  mtc1       $zero, $f2
/* D8F7C 8002FA6C 00000000 */  nop
/* D8F80 8002FA70 4602003C */  c.lt.s     $f0, $f2
/* D8F84 8002FA74 00000000 */  nop
/* D8F88 8002FA78 00000000 */  nop
/* D8F8C 8002FA7C 45030001 */  bc1tl      .L8002FA84
/* D8F90 8002FA80 E4420040 */   swc1      $f2, 0x40($v0)
.L8002FA84:
/* D8F94 8002FA84 3C018007 */  lui        $at, %hi(D_80069CA8)
/* D8F98 8002FA88 D4209CA8 */  ldc1       $f0, %lo(D_80069CA8)($at)
/* D8F9C 8002FA8C 3C018017 */  lui        $at, %hi(D_8016D168)
/* D8FA0 8002FA90 C422D168 */  lwc1       $f2, %lo(D_8016D168)($at)
/* D8FA4 8002FA94 468010A1 */  cvt.d.w    $f2, $f2
/* D8FA8 8002FA98 46201082 */  mul.d      $f2, $f2, $f0
/* D8FAC 8002FA9C 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D8FB0 8002FAA0 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D8FB4 8002FAA4 80620044 */  lb         $v0, 0x44($v1)
/* D8FB8 8002FAA8 44820000 */  mtc1       $v0, $f0
/* D8FBC 8002FAAC 00000000 */  nop
/* D8FC0 8002FAB0 46800021 */  cvt.d.w    $f0, $f0
/* D8FC4 8002FAB4 46220032 */  c.eq.d     $f0, $f2
/* D8FC8 8002FAB8 00000000 */  nop
/* D8FCC 8002FABC 00000000 */  nop
/* D8FD0 8002FAC0 4500001B */  bc1f       .L8002FB30
/* D8FD4 8002FAC4 24020001 */   addiu     $v0, $zero, 1
/* D8FD8 8002FAC8 A062002A */  sb         $v0, 0x2a($v1)
/* D8FDC 8002FACC 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D8FE0 8002FAD0 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D8FE4 8002FAD4 0C026E4E */  jal        func_8009B938
/* D8FE8 8002FAD8 24840018 */   addiu     $a0, $a0, 0x18
/* D8FEC 8002FADC 0C026DD5 */  jal        func_8009B754
/* D8FF0 8002FAE0 24040066 */   addiu     $a0, $zero, 0x66
/* D8FF4 8002FAE4 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D8FF8 8002FAE8 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D8FFC 8002FAEC 8C820000 */  lw         $v0, ($a0)
/* D9000 8002FAF0 8C43004C */  lw         $v1, 0x4c($v0)
/* D9004 8002FAF4 9462001E */  lhu        $v0, 0x1e($v1)
/* D9008 8002FAF8 34420400 */  ori        $v0, $v0, 0x400
/* D900C 8002FAFC A462001E */  sh         $v0, 0x1e($v1)
/* D9010 8002FB00 8C820000 */  lw         $v0, ($a0)
/* D9014 8002FB04 8C430050 */  lw         $v1, 0x50($v0)
/* D9018 8002FB08 9462001E */  lhu        $v0, 0x1e($v1)
/* D901C 8002FB0C 34420400 */  ori        $v0, $v0, 0x400
/* D9020 8002FB10 A462001E */  sh         $v0, 0x1e($v1)
/* D9024 8002FB14 8C820000 */  lw         $v0, ($a0)
/* D9028 8002FB18 8C430054 */  lw         $v1, 0x54($v0)
/* D902C 8002FB1C 9462001E */  lhu        $v0, 0x1e($v1)
/* D9030 8002FB20 00002021 */  addu       $a0, $zero, $zero
/* D9034 8002FB24 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D9038 8002FB28 0C00BFF0 */  jal        func_8002FFC0_D94D0
/* D903C 8002FB2C A462001E */   sh        $v0, 0x1e($v1)
.L8002FB30:
/* D9040 8002FB30 8FBF0010 */  lw         $ra, 0x10($sp)
/* D9044 8002FB34 03E00008 */  jr         $ra
/* D9048 8002FB38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002FB3C_D904C
/* D904C 8002FB3C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9050 8002FB40 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9054 8002FB44 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D9058 8002FB48 AFBF0028 */  sw         $ra, 0x28($sp)
/* D905C 8002FB4C AFB10024 */  sw         $s1, 0x24($sp)
/* D9060 8002FB50 AFB00020 */  sw         $s0, 0x20($sp)
/* D9064 8002FB54 94430054 */  lhu        $v1, 0x54($v0)
/* D9068 8002FB58 90440024 */  lbu        $a0, 0x24($v0)
/* D906C 8002FB5C 24630001 */  addiu      $v1, $v1, 1
/* D9070 8002FB60 A4430054 */  sh         $v1, 0x54($v0)
/* D9074 8002FB64 24020003 */  addiu      $v0, $zero, 3
/* D9078 8002FB68 14820006 */  bne        $a0, $v0, .L8002FB84
/* D907C 8002FB6C 24020004 */   addiu     $v0, $zero, 4
/* D9080 8002FB70 3C038017 */  lui        $v1, %hi(D_8016D168)
/* D9084 8002FB74 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* D9088 8002FB78 00031100 */  sll        $v0, $v1, 4
/* D908C 8002FB7C 0800BEEB */  j          .L8002FBAC
/* D9090 8002FB80 00438823 */   subu      $s1, $v0, $v1
.L8002FB84:
/* D9094 8002FB84 14820009 */  bne        $a0, $v0, .L8002FBAC
/* D9098 8002FB88 00000000 */   nop
/* D909C 8002FB8C 3C018007 */  lui        $at, %hi(D_80069CB0)
/* D90A0 8002FB90 D4229CB0 */  ldc1       $f2, %lo(D_80069CB0)($at)
/* D90A4 8002FB94 3C018017 */  lui        $at, %hi(D_8016D168)
/* D90A8 8002FB98 C420D168 */  lwc1       $f0, %lo(D_8016D168)($at)
/* D90AC 8002FB9C 46800021 */  cvt.d.w    $f0, $f0
/* D90B0 8002FBA0 46220002 */  mul.d      $f0, $f0, $f2
/* D90B4 8002FBA4 4620008D */  trunc.w.d  $f2, $f0
/* D90B8 8002FBA8 44111000 */  mfc1       $s1, $f2
.L8002FBAC:
/* D90BC 8002FBAC 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D90C0 8002FBB0 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D90C4 8002FBB4 9062002A */  lbu        $v0, 0x2a($v1)
/* D90C8 8002FBB8 10400007 */  beqz       $v0, .L8002FBD8
/* D90CC 8002FBBC 00000000 */   nop
/* D90D0 8002FBC0 84620054 */  lh         $v0, 0x54($v1)
/* D90D4 8002FBC4 0051102A */  slt        $v0, $v0, $s1
/* D90D8 8002FBC8 54400001 */  bnezl      $v0, .L8002FBD0
/* D90DC 8002FBCC A4710054 */   sh        $s1, 0x54($v1)
.L8002FBD0:
/* D90E0 8002FBD0 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D90E4 8002FBD4 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
.L8002FBD8:
/* D90E8 8002FBD8 84620054 */  lh         $v0, 0x54($v1)
/* D90EC 8002FBDC 14510029 */  bne        $v0, $s1, .L8002FC84
/* D90F0 8002FBE0 2404006D */   addiu     $a0, $zero, 0x6d
/* D90F4 8002FBE4 24020001 */  addiu      $v0, $zero, 1
/* D90F8 8002FBE8 0C026DD5 */  jal        func_8009B754
/* D90FC 8002FBEC A062002C */   sb        $v0, 0x2c($v1)
/* D9100 8002FBF0 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D9104 8002FBF4 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9108 8002FBF8 00008021 */  addu       $s0, $zero, $zero
/* D910C 8002FBFC AC620020 */  sw         $v0, 0x20($v1)
.L8002FC00:
/* D9110 8002FC00 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D9114 8002FC04 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9118 8002FC08 00101080 */  sll        $v0, $s0, 2
/* D911C 8002FC0C 00431021 */  addu       $v0, $v0, $v1
/* D9120 8002FC10 8C440010 */  lw         $a0, 0x10($v0)
/* D9124 8002FC14 10800003 */  beqz       $a0, .L8002FC24
/* D9128 8002FC18 26100001 */   addiu     $s0, $s0, 1
/* D912C 8002FC1C 0C0299BD */  jal        func_800A66F4
/* D9130 8002FC20 00000000 */   nop
.L8002FC24:
/* D9134 8002FC24 2A020002 */  slti       $v0, $s0, 2
/* D9138 8002FC28 1440FFF5 */  bnez       $v0, .L8002FC00
/* D913C 8002FC2C 24060010 */   addiu     $a2, $zero, 0x10
/* D9140 8002FC30 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D9144 8002FC34 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9148 8002FC38 8C620000 */  lw         $v0, ($v1)
/* D914C 8002FC3C 8C420090 */  lw         $v0, 0x90($v0)
/* D9150 8002FC40 8C650008 */  lw         $a1, 8($v1)
/* D9154 8002FC44 8C440014 */  lw         $a0, 0x14($v0)
/* D9158 8002FC48 0C02994E */  jal        func_800A6538
/* D915C 8002FC4C 2407001E */   addiu     $a3, $zero, 0x1e
/* D9160 8002FC50 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D9164 8002FC54 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9168 8002FC58 8C640000 */  lw         $a0, ($v1)
/* D916C 8002FC5C AC620010 */  sw         $v0, 0x10($v1)
/* D9170 8002FC60 8C820094 */  lw         $v0, 0x94($a0)
/* D9174 8002FC64 8C65000C */  lw         $a1, 0xc($v1)
/* D9178 8002FC68 8C440014 */  lw         $a0, 0x14($v0)
/* D917C 8002FC6C 24060010 */  addiu      $a2, $zero, 0x10
/* D9180 8002FC70 0C02994E */  jal        func_800A6538
/* D9184 8002FC74 2407001E */   addiu     $a3, $zero, 0x1e
/* D9188 8002FC78 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D918C 8002FC7C 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9190 8002FC80 AC620014 */  sw         $v0, 0x14($v1)
.L8002FC84:
/* D9194 8002FC84 3C018007 */  lui        $at, %hi(D_80069CB8)
/* D9198 8002FC88 D4209CB8 */  ldc1       $f0, %lo(D_80069CB8)($at)
/* D919C 8002FC8C 3C018017 */  lui        $at, %hi(D_8016D168)
/* D91A0 8002FC90 C422D168 */  lwc1       $f2, %lo(D_8016D168)($at)
/* D91A4 8002FC94 468010A1 */  cvt.d.w    $f2, $f2
/* D91A8 8002FC98 46201082 */  mul.d      $f2, $f2, $f0
/* D91AC 8002FC9C 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D91B0 8002FCA0 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D91B4 8002FCA4 84620054 */  lh         $v0, 0x54($v1)
/* D91B8 8002FCA8 44910000 */  mtc1       $s1, $f0
/* D91BC 8002FCAC 00000000 */  nop
/* D91C0 8002FCB0 46800021 */  cvt.d.w    $f0, $f0
/* D91C4 8002FCB4 46220000 */  add.d      $f0, $f0, $f2
/* D91C8 8002FCB8 44821000 */  mtc1       $v0, $f2
/* D91CC 8002FCBC 00000000 */  nop
/* D91D0 8002FCC0 468010A1 */  cvt.d.w    $f2, $f2
/* D91D4 8002FCC4 46201032 */  c.eq.d     $f2, $f0
/* D91D8 8002FCC8 00000000 */  nop
/* D91DC 8002FCCC 00000000 */  nop
/* D91E0 8002FCD0 45000019 */  bc1f       .L8002FD38
/* D91E4 8002FCD4 24020001 */   addiu     $v0, $zero, 1
/* D91E8 8002FCD8 A062002D */  sb         $v0, 0x2d($v1)
/* D91EC 8002FCDC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D91F0 8002FCE0 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D91F4 8002FCE4 90430024 */  lbu        $v1, 0x24($v0)
/* D91F8 8002FCE8 24020003 */  addiu      $v0, $zero, 3
/* D91FC 8002FCEC 14620008 */  bne        $v1, $v0, .L8002FD10
/* D9200 8002FCF0 00002021 */   addu      $a0, $zero, $zero
/* D9204 8002FCF4 24050004 */  addiu      $a1, $zero, 4
/* D9208 8002FCF8 24060002 */  addiu      $a2, $zero, 2
/* D920C 8002FCFC 240700F7 */  addiu      $a3, $zero, 0xf7
/* D9210 8002FD00 2402FFFF */  addiu      $v0, $zero, -1
/* D9214 8002FD04 AFA20010 */  sw         $v0, 0x10($sp)
/* D9218 8002FD08 0800BF4A */  j          .L8002FD28
/* D921C 8002FD0C 24020009 */   addiu     $v0, $zero, 9
.L8002FD10:
/* D9220 8002FD10 24050004 */  addiu      $a1, $zero, 4
/* D9224 8002FD14 24060002 */  addiu      $a2, $zero, 2
/* D9228 8002FD18 240700DC */  addiu      $a3, $zero, 0xdc
/* D922C 8002FD1C 2402FFFF */  addiu      $v0, $zero, -1
/* D9230 8002FD20 AFA20010 */  sw         $v0, 0x10($sp)
/* D9234 8002FD24 24020007 */  addiu      $v0, $zero, 7
.L8002FD28:
/* D9238 8002FD28 AFA20014 */  sw         $v0, 0x14($sp)
/* D923C 8002FD2C 24020001 */  addiu      $v0, $zero, 1
/* D9240 8002FD30 0C0E5BE4 */  jal        func_80396F90
/* D9244 8002FD34 AFA20018 */   sw        $v0, 0x18($sp)
.L8002FD38:
/* D9248 8002FD38 3C058006 */  lui        $a1, %hi(D_80067E40)
/* D924C 8002FD3C 8CA57E40 */  lw         $a1, %lo(D_80067E40)($a1)
/* D9250 8002FD40 3C028017 */  lui        $v0, %hi(D_8016D168)
/* D9254 8002FD44 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* D9258 8002FD48 84A40054 */  lh         $a0, 0x54($a1)
/* D925C 8002FD4C 00021840 */  sll        $v1, $v0, 1
/* D9260 8002FD50 00621821 */  addu       $v1, $v1, $v0
/* D9264 8002FD54 02231821 */  addu       $v1, $s1, $v1
/* D9268 8002FD58 14830002 */  bne        $a0, $v1, .L8002FD64
/* D926C 8002FD5C 24020001 */   addiu     $v0, $zero, 1
/* D9270 8002FD60 A0A2002B */  sb         $v0, 0x2b($a1)
.L8002FD64:
/* D9274 8002FD64 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9278 8002FD68 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D927C 8002FD6C 84420054 */  lh         $v0, 0x54($v0)
/* D9280 8002FD70 0051102A */  slt        $v0, $v0, $s1
/* D9284 8002FD74 1440000D */  bnez       $v0, .L8002FDAC
/* D9288 8002FD78 00008021 */   addu      $s0, $zero, $zero
.L8002FD7C:
/* D928C 8002FD7C 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D9290 8002FD80 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9294 8002FD84 00101080 */  sll        $v0, $s0, 2
/* D9298 8002FD88 00431021 */  addu       $v0, $v0, $v1
/* D929C 8002FD8C 8C440010 */  lw         $a0, 0x10($v0)
/* D92A0 8002FD90 10800003 */  beqz       $a0, .L8002FDA0
/* D92A4 8002FD94 26100001 */   addiu     $s0, $s0, 1
/* D92A8 8002FD98 0C0299C6 */  jal        func_800A6718
/* D92AC 8002FD9C 00000000 */   nop
.L8002FDA0:
/* D92B0 8002FDA0 2A020002 */  slti       $v0, $s0, 2
/* D92B4 8002FDA4 1440FFF5 */  bnez       $v0, .L8002FD7C
/* D92B8 8002FDA8 00000000 */   nop
.L8002FDAC:
/* D92BC 8002FDAC 8FBF0028 */  lw         $ra, 0x28($sp)
/* D92C0 8002FDB0 8FB10024 */  lw         $s1, 0x24($sp)
/* D92C4 8002FDB4 8FB00020 */  lw         $s0, 0x20($sp)
/* D92C8 8002FDB8 03E00008 */  jr         $ra
/* D92CC 8002FDBC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002FDC0_D92D0
/* D92D0 8002FDC0 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D92D4 8002FDC4 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D92D8 8002FDC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D92DC 8002FDCC AFBF0010 */  sw         $ra, 0x10($sp)
/* D92E0 8002FDD0 9042002A */  lbu        $v0, 0x2a($v0)
/* D92E4 8002FDD4 1040005D */  beqz       $v0, .L8002FF4C
/* D92E8 8002FDD8 00000000 */   nop
/* D92EC 8002FDDC 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* D92F0 8002FDE0 8C42CF90 */  lw         $v0, %lo(D_8014CF90)($v0)
/* D92F4 8002FDE4 3042A000 */  andi       $v0, $v0, 0xa000
/* D92F8 8002FDE8 10400058 */  beqz       $v0, .L8002FF4C
/* D92FC 8002FDEC 00000000 */   nop
/* D9300 8002FDF0 0C026DD5 */  jal        func_8009B754
/* D9304 8002FDF4 24040067 */   addiu     $a0, $zero, 0x67
/* D9308 8002FDF8 00002021 */  addu       $a0, $zero, $zero
/* D930C 8002FDFC 24050100 */  addiu      $a1, $zero, 0x100
/* D9310 8002FE00 0C026B15 */  jal        func_8009AC54
/* D9314 8002FE04 2406000A */   addiu     $a2, $zero, 0xa
/* D9318 8002FE08 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D931C 8002FE0C 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D9320 8002FE10 90830024 */  lbu        $v1, 0x24($a0)
/* D9324 8002FE14 24020003 */  addiu      $v0, $zero, 3
/* D9328 8002FE18 14620022 */  bne        $v1, $v0, .L8002FEA4
/* D932C 8002FE1C 24020004 */   addiu     $v0, $zero, 4
/* D9330 8002FE20 9082002D */  lbu        $v0, 0x2d($a0)
/* D9334 8002FE24 1040000C */  beqz       $v0, .L8002FE58
/* D9338 8002FE28 24020006 */   addiu     $v0, $zero, 6
/* D933C 8002FE2C A0800068 */  sb         $zero, 0x68($a0)
/* D9340 8002FE30 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D9344 8002FE34 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9348 8002FE38 A0620024 */  sb         $v0, 0x24($v1)
/* D934C 8002FE3C 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D9350 8002FE40 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D9354 8002FE44 3C028006 */  lui        $v0, %hi(D_80067A10)
/* D9358 8002FE48 24427A10 */  addiu      $v0, $v0, %lo(D_80067A10)
/* D935C 8002FE4C AC620064 */  sw         $v0, 0x64($v1)
/* D9360 8002FE50 0800BFCE */  j          .L8002FF38
/* D9364 8002FE54 24020001 */   addiu     $v0, $zero, 1
.L8002FE58:
/* D9368 8002FE58 24020001 */  addiu      $v0, $zero, 1
/* D936C 8002FE5C A0820029 */  sb         $v0, 0x29($a0)
/* D9370 8002FE60 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D9374 8002FE64 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9378 8002FE68 24020006 */  addiu      $v0, $zero, 6
/* D937C 8002FE6C A0620024 */  sb         $v0, 0x24($v1)
/* D9380 8002FE70 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9384 8002FE74 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9388 8002FE78 A0400068 */  sb         $zero, 0x68($v0)
/* D938C 8002FE7C 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D9390 8002FE80 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D9394 8002FE84 24020008 */  addiu      $v0, $zero, 8
/* D9398 8002FE88 A0820025 */  sb         $v0, 0x25($a0)
/* D939C 8002FE8C 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D93A0 8002FE90 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D93A4 8002FE94 3C028006 */  lui        $v0, %hi(D_80067A18)
/* D93A8 8002FE98 24427A18 */  addiu      $v0, $v0, %lo(D_80067A18)
/* D93AC 8002FE9C 0800BFEC */  j          .L8002FFB0
/* D93B0 8002FEA0 AC820064 */   sw        $v0, 0x64($a0)
.L8002FEA4:
/* D93B4 8002FEA4 14620014 */  bne        $v1, $v0, .L8002FEF8
/* D93B8 8002FEA8 24020005 */   addiu     $v0, $zero, 5
/* D93BC 8002FEAC 24020001 */  addiu      $v0, $zero, 1
/* D93C0 8002FEB0 A0820029 */  sb         $v0, 0x29($a0)
/* D93C4 8002FEB4 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D93C8 8002FEB8 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D93CC 8002FEBC 24020006 */  addiu      $v0, $zero, 6
/* D93D0 8002FEC0 A0620024 */  sb         $v0, 0x24($v1)
/* D93D4 8002FEC4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D93D8 8002FEC8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D93DC 8002FECC A0400068 */  sb         $zero, 0x68($v0)
/* D93E0 8002FED0 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D93E4 8002FED4 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D93E8 8002FED8 24020008 */  addiu      $v0, $zero, 8
/* D93EC 8002FEDC A0820025 */  sb         $v0, 0x25($a0)
/* D93F0 8002FEE0 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D93F4 8002FEE4 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D93F8 8002FEE8 3C028006 */  lui        $v0, %hi(D_80067A18)
/* D93FC 8002FEEC 24427A18 */  addiu      $v0, $v0, %lo(D_80067A18)
/* D9400 8002FEF0 0800BFEC */  j          .L8002FFB0
/* D9404 8002FEF4 AC820064 */   sw        $v0, 0x64($a0)
.L8002FEF8:
/* D9408 8002FEF8 1462002E */  bne        $v1, $v0, .L8002FFB4
/* D940C 8002FEFC 24020001 */   addiu     $v0, $zero, 1
/* D9410 8002FF00 A0820029 */  sb         $v0, 0x29($a0)
/* D9414 8002FF04 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9418 8002FF08 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D941C 8002FF0C A0400068 */  sb         $zero, 0x68($v0)
/* D9420 8002FF10 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D9424 8002FF14 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9428 8002FF18 24020006 */  addiu      $v0, $zero, 6
/* D942C 8002FF1C A0620024 */  sb         $v0, 0x24($v1)
/* D9430 8002FF20 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D9434 8002FF24 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D9438 8002FF28 3C028006 */  lui        $v0, %hi(D_80067A14)
/* D943C 8002FF2C 24427A14 */  addiu      $v0, $v0, %lo(D_80067A14)
/* D9440 8002FF30 AC620064 */  sw         $v0, 0x64($v1)
/* D9444 8002FF34 24020008 */  addiu      $v0, $zero, 8
.L8002FF38:
/* D9448 8002FF38 A0820025 */  sb         $v0, 0x25($a0)
/* D944C 8002FF3C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9450 8002FF40 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9454 8002FF44 0800BFED */  j          .L8002FFB4
/* D9458 8002FF48 A4400026 */   sh        $zero, 0x26($v0)
.L8002FF4C:
/* D945C 8002FF4C 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D9460 8002FF50 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9464 8002FF54 9062002B */  lbu        $v0, 0x2b($v1)
/* D9468 8002FF58 10400016 */  beqz       $v0, .L8002FFB4
/* D946C 8002FF5C 00000000 */   nop
/* D9470 8002FF60 A060002B */  sb         $zero, 0x2b($v1)
/* D9474 8002FF64 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9478 8002FF68 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D947C 8002FF6C A0400068 */  sb         $zero, 0x68($v0)
/* D9480 8002FF70 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D9484 8002FF74 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9488 8002FF78 24020006 */  addiu      $v0, $zero, 6
/* D948C 8002FF7C A0620024 */  sb         $v0, 0x24($v1)
/* D9490 8002FF80 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D9494 8002FF84 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D9498 8002FF88 3C028006 */  lui        $v0, %hi(D_80067A1C)
/* D949C 8002FF8C 24427A1C */  addiu      $v0, $v0, %lo(D_80067A1C)
/* D94A0 8002FF90 AC620064 */  sw         $v0, 0x64($v1)
/* D94A4 8002FF94 24020005 */  addiu      $v0, $zero, 5
/* D94A8 8002FF98 A0820025 */  sb         $v0, 0x25($a0)
/* D94AC 8002FF9C 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D94B0 8002FFA0 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D94B4 8002FFA4 24020001 */  addiu      $v0, $zero, 1
/* D94B8 8002FFA8 3C018017 */  lui        $at, %hi(D_8016E58C)
/* D94BC 8002FFAC AC22E58C */  sw         $v0, %lo(D_8016E58C)($at)
.L8002FFB0:
/* D94C0 8002FFB0 A4600026 */  sh         $zero, 0x26($v1)
.L8002FFB4:
/* D94C4 8002FFB4 8FBF0010 */  lw         $ra, 0x10($sp)
/* D94C8 8002FFB8 03E00008 */  jr         $ra
/* D94CC 8002FFBC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002FFC0_D94D0
/* D94D0 8002FFC0 308400FF */  andi       $a0, $a0, 0xff
/* D94D4 8002FFC4 10800044 */  beqz       $a0, .L800300D8
/* D94D8 8002FFC8 00000000 */   nop
/* D94DC 8002FFCC 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D94E0 8002FFD0 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D94E4 8002FFD4 8C820000 */  lw         $v0, ($a0)
/* D94E8 8002FFD8 8C430060 */  lw         $v1, 0x60($v0)
/* D94EC 8002FFDC 9462001E */  lhu        $v0, 0x1e($v1)
/* D94F0 8002FFE0 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D94F4 8002FFE4 A462001E */  sh         $v0, 0x1e($v1)
/* D94F8 8002FFE8 8C820000 */  lw         $v0, ($a0)
/* D94FC 8002FFEC 8C430064 */  lw         $v1, 0x64($v0)
/* D9500 8002FFF0 9462001E */  lhu        $v0, 0x1e($v1)
/* D9504 8002FFF4 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D9508 8002FFF8 A462001E */  sh         $v0, 0x1e($v1)
/* D950C 8002FFFC 8C820000 */  lw         $v0, ($a0)
/* D9510 80030000 8C430068 */  lw         $v1, 0x68($v0)
/* D9514 80030004 9462001E */  lhu        $v0, 0x1e($v1)
/* D9518 80030008 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D951C 8003000C A462001E */  sh         $v0, 0x1e($v1)
/* D9520 80030010 8C820000 */  lw         $v0, ($a0)
/* D9524 80030014 8C43006C */  lw         $v1, 0x6c($v0)
/* D9528 80030018 9462001E */  lhu        $v0, 0x1e($v1)
/* D952C 8003001C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D9530 80030020 A462001E */  sh         $v0, 0x1e($v1)
/* D9534 80030024 8C820000 */  lw         $v0, ($a0)
/* D9538 80030028 8C430070 */  lw         $v1, 0x70($v0)
/* D953C 8003002C 9462001E */  lhu        $v0, 0x1e($v1)
/* D9540 80030030 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D9544 80030034 A462001E */  sh         $v0, 0x1e($v1)
/* D9548 80030038 8C820000 */  lw         $v0, ($a0)
/* D954C 8003003C 8C430074 */  lw         $v1, 0x74($v0)
/* D9550 80030040 9462001E */  lhu        $v0, 0x1e($v1)
/* D9554 80030044 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D9558 80030048 A462001E */  sh         $v0, 0x1e($v1)
/* D955C 8003004C 8C820000 */  lw         $v0, ($a0)
/* D9560 80030050 8C430078 */  lw         $v1, 0x78($v0)
/* D9564 80030054 9462001E */  lhu        $v0, 0x1e($v1)
/* D9568 80030058 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D956C 8003005C A462001E */  sh         $v0, 0x1e($v1)
/* D9570 80030060 8C820000 */  lw         $v0, ($a0)
/* D9574 80030064 8C43007C */  lw         $v1, 0x7c($v0)
/* D9578 80030068 9462001E */  lhu        $v0, 0x1e($v1)
/* D957C 8003006C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D9580 80030070 A462001E */  sh         $v0, 0x1e($v1)
/* D9584 80030074 8C820000 */  lw         $v0, ($a0)
/* D9588 80030078 8C430080 */  lw         $v1, 0x80($v0)
/* D958C 8003007C 9462001E */  lhu        $v0, 0x1e($v1)
/* D9590 80030080 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D9594 80030084 A462001E */  sh         $v0, 0x1e($v1)
/* D9598 80030088 8C820000 */  lw         $v0, ($a0)
/* D959C 8003008C 8C430084 */  lw         $v1, 0x84($v0)
/* D95A0 80030090 9462001E */  lhu        $v0, 0x1e($v1)
/* D95A4 80030094 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D95A8 80030098 A462001E */  sh         $v0, 0x1e($v1)
/* D95AC 8003009C 8C820000 */  lw         $v0, ($a0)
/* D95B0 800300A0 8C430088 */  lw         $v1, 0x88($v0)
/* D95B4 800300A4 9462001E */  lhu        $v0, 0x1e($v1)
/* D95B8 800300A8 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D95BC 800300AC A462001E */  sh         $v0, 0x1e($v1)
/* D95C0 800300B0 8C820000 */  lw         $v0, ($a0)
/* D95C4 800300B4 8C430058 */  lw         $v1, 0x58($v0)
/* D95C8 800300B8 9462001E */  lhu        $v0, 0x1e($v1)
/* D95CC 800300BC 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D95D0 800300C0 A462001E */  sh         $v0, 0x1e($v1)
/* D95D4 800300C4 8C820000 */  lw         $v0, ($a0)
/* D95D8 800300C8 8C43005C */  lw         $v1, 0x5c($v0)
/* D95DC 800300CC 9462001E */  lhu        $v0, 0x1e($v1)
/* D95E0 800300D0 0800C078 */  j          .L800301E0
/* D95E4 800300D4 3042FBFF */   andi      $v0, $v0, 0xfbff
.L800300D8:
/* D95E8 800300D8 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D95EC 800300DC 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D95F0 800300E0 8C820000 */  lw         $v0, ($a0)
/* D95F4 800300E4 8C430060 */  lw         $v1, 0x60($v0)
/* D95F8 800300E8 9462001E */  lhu        $v0, 0x1e($v1)
/* D95FC 800300EC 34420400 */  ori        $v0, $v0, 0x400
/* D9600 800300F0 A462001E */  sh         $v0, 0x1e($v1)
/* D9604 800300F4 8C820000 */  lw         $v0, ($a0)
/* D9608 800300F8 8C430064 */  lw         $v1, 0x64($v0)
/* D960C 800300FC 9462001E */  lhu        $v0, 0x1e($v1)
/* D9610 80030100 34420400 */  ori        $v0, $v0, 0x400
/* D9614 80030104 A462001E */  sh         $v0, 0x1e($v1)
/* D9618 80030108 8C820000 */  lw         $v0, ($a0)
/* D961C 8003010C 8C430068 */  lw         $v1, 0x68($v0)
/* D9620 80030110 9462001E */  lhu        $v0, 0x1e($v1)
/* D9624 80030114 34420400 */  ori        $v0, $v0, 0x400
/* D9628 80030118 A462001E */  sh         $v0, 0x1e($v1)
/* D962C 8003011C 8C820000 */  lw         $v0, ($a0)
/* D9630 80030120 8C43006C */  lw         $v1, 0x6c($v0)
/* D9634 80030124 9462001E */  lhu        $v0, 0x1e($v1)
/* D9638 80030128 34420400 */  ori        $v0, $v0, 0x400
/* D963C 8003012C A462001E */  sh         $v0, 0x1e($v1)
/* D9640 80030130 8C820000 */  lw         $v0, ($a0)
/* D9644 80030134 8C430070 */  lw         $v1, 0x70($v0)
/* D9648 80030138 9462001E */  lhu        $v0, 0x1e($v1)
/* D964C 8003013C 34420400 */  ori        $v0, $v0, 0x400
/* D9650 80030140 A462001E */  sh         $v0, 0x1e($v1)
/* D9654 80030144 8C820000 */  lw         $v0, ($a0)
/* D9658 80030148 8C430074 */  lw         $v1, 0x74($v0)
/* D965C 8003014C 9462001E */  lhu        $v0, 0x1e($v1)
/* D9660 80030150 34420400 */  ori        $v0, $v0, 0x400
/* D9664 80030154 A462001E */  sh         $v0, 0x1e($v1)
/* D9668 80030158 8C820000 */  lw         $v0, ($a0)
/* D966C 8003015C 8C430078 */  lw         $v1, 0x78($v0)
/* D9670 80030160 9462001E */  lhu        $v0, 0x1e($v1)
/* D9674 80030164 34420400 */  ori        $v0, $v0, 0x400
/* D9678 80030168 A462001E */  sh         $v0, 0x1e($v1)
/* D967C 8003016C 8C820000 */  lw         $v0, ($a0)
/* D9680 80030170 8C43007C */  lw         $v1, 0x7c($v0)
/* D9684 80030174 9462001E */  lhu        $v0, 0x1e($v1)
/* D9688 80030178 34420400 */  ori        $v0, $v0, 0x400
/* D968C 8003017C A462001E */  sh         $v0, 0x1e($v1)
/* D9690 80030180 8C820000 */  lw         $v0, ($a0)
/* D9694 80030184 8C430080 */  lw         $v1, 0x80($v0)
/* D9698 80030188 9462001E */  lhu        $v0, 0x1e($v1)
/* D969C 8003018C 34420400 */  ori        $v0, $v0, 0x400
/* D96A0 80030190 A462001E */  sh         $v0, 0x1e($v1)
/* D96A4 80030194 8C820000 */  lw         $v0, ($a0)
/* D96A8 80030198 8C430084 */  lw         $v1, 0x84($v0)
/* D96AC 8003019C 9462001E */  lhu        $v0, 0x1e($v1)
/* D96B0 800301A0 34420400 */  ori        $v0, $v0, 0x400
/* D96B4 800301A4 A462001E */  sh         $v0, 0x1e($v1)
/* D96B8 800301A8 8C820000 */  lw         $v0, ($a0)
/* D96BC 800301AC 8C430088 */  lw         $v1, 0x88($v0)
/* D96C0 800301B0 9462001E */  lhu        $v0, 0x1e($v1)
/* D96C4 800301B4 34420400 */  ori        $v0, $v0, 0x400
/* D96C8 800301B8 A462001E */  sh         $v0, 0x1e($v1)
/* D96CC 800301BC 8C820000 */  lw         $v0, ($a0)
/* D96D0 800301C0 8C430058 */  lw         $v1, 0x58($v0)
/* D96D4 800301C4 9462001E */  lhu        $v0, 0x1e($v1)
/* D96D8 800301C8 34420400 */  ori        $v0, $v0, 0x400
/* D96DC 800301CC A462001E */  sh         $v0, 0x1e($v1)
/* D96E0 800301D0 8C820000 */  lw         $v0, ($a0)
/* D96E4 800301D4 8C43005C */  lw         $v1, 0x5c($v0)
/* D96E8 800301D8 9462001E */  lhu        $v0, 0x1e($v1)
/* D96EC 800301DC 34420400 */  ori        $v0, $v0, 0x400
.L800301E0:
/* D96F0 800301E0 03E00008 */  jr         $ra
/* D96F4 800301E4 A462001E */   sh        $v0, 0x1e($v1)

glabel func_800301E8_D96F8
/* D96F8 800301E8 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D96FC 800301EC 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D9700 800301F0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D9704 800301F4 AFBF0020 */  sw         $ra, 0x20($sp)
/* D9708 800301F8 AFB1001C */  sw         $s1, 0x1c($sp)
/* D970C 800301FC AFB00018 */  sw         $s0, 0x18($sp)
/* D9710 80030200 F7B40028 */  sdc1       $f20, 0x28($sp)
/* D9714 80030204 84830038 */  lh         $v1, 0x38($a0)
/* D9718 80030208 2402000C */  addiu      $v0, $zero, 0xc
/* D971C 8003020C 14620066 */  bne        $v1, $v0, .L800303A8
/* D9720 80030210 240500FF */   addiu     $a1, $zero, 0xff
/* D9724 80030214 3C028015 */  lui        $v0, %hi(D_80149BA4)
/* D9728 80030218 8C429BA4 */  lw         $v0, %lo(D_80149BA4)($v0)
/* D972C 8003021C 30420001 */  andi       $v0, $v0, 1
/* D9730 80030220 1040002B */  beqz       $v0, .L800302D0
/* D9734 80030224 241000FF */   addiu     $s0, $zero, 0xff
/* D9738 80030228 8C820000 */  lw         $v0, ($a0)
/* D973C 8003022C AFB00010 */  sw         $s0, 0x10($sp)
/* D9740 80030230 8C440064 */  lw         $a0, 0x64($v0)
/* D9744 80030234 00003021 */  addu       $a2, $zero, $zero
/* D9748 80030238 0C028E41 */  jal        func_800A3904
/* D974C 8003023C 00003821 */   addu      $a3, $zero, $zero
/* D9750 80030240 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9754 80030244 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9758 80030248 8C420000 */  lw         $v0, ($v0)
/* D975C 8003024C 240500FF */  addiu      $a1, $zero, 0xff
/* D9760 80030250 AFB00010 */  sw         $s0, 0x10($sp)
/* D9764 80030254 8C44006C */  lw         $a0, 0x6c($v0)
/* D9768 80030258 00003021 */  addu       $a2, $zero, $zero
/* D976C 8003025C 0C028E41 */  jal        func_800A3904
/* D9770 80030260 00003821 */   addu      $a3, $zero, $zero
/* D9774 80030264 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9778 80030268 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D977C 8003026C 8C420000 */  lw         $v0, ($v0)
/* D9780 80030270 240500FF */  addiu      $a1, $zero, 0xff
/* D9784 80030274 AFB00010 */  sw         $s0, 0x10($sp)
/* D9788 80030278 8C440074 */  lw         $a0, 0x74($v0)
/* D978C 8003027C 00003021 */  addu       $a2, $zero, $zero
/* D9790 80030280 0C028E41 */  jal        func_800A3904
/* D9794 80030284 00003821 */   addu      $a3, $zero, $zero
/* D9798 80030288 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D979C 8003028C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D97A0 80030290 8C420000 */  lw         $v0, ($v0)
/* D97A4 80030294 240500FF */  addiu      $a1, $zero, 0xff
/* D97A8 80030298 AFB00010 */  sw         $s0, 0x10($sp)
/* D97AC 8003029C 8C44007C */  lw         $a0, 0x7c($v0)
/* D97B0 800302A0 00003021 */  addu       $a2, $zero, $zero
/* D97B4 800302A4 0C028E41 */  jal        func_800A3904
/* D97B8 800302A8 00003821 */   addu      $a3, $zero, $zero
/* D97BC 800302AC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D97C0 800302B0 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D97C4 800302B4 8C420000 */  lw         $v0, ($v0)
/* D97C8 800302B8 240500FF */  addiu      $a1, $zero, 0xff
/* D97CC 800302BC AFB00010 */  sw         $s0, 0x10($sp)
/* D97D0 800302C0 8C440058 */  lw         $a0, 0x58($v0)
/* D97D4 800302C4 00003021 */  addu       $a2, $zero, $zero
/* D97D8 800302C8 0800C0DE */  j          .L80030378
/* D97DC 800302CC 00003821 */   addu      $a3, $zero, $zero
.L800302D0:
/* D97E0 800302D0 8C820000 */  lw         $v0, ($a0)
/* D97E4 800302D4 240500FF */  addiu      $a1, $zero, 0xff
/* D97E8 800302D8 AFB00010 */  sw         $s0, 0x10($sp)
/* D97EC 800302DC 8C440064 */  lw         $a0, 0x64($v0)
/* D97F0 800302E0 240600FF */  addiu      $a2, $zero, 0xff
/* D97F4 800302E4 0C028E41 */  jal        func_800A3904
/* D97F8 800302E8 240700FF */   addiu     $a3, $zero, 0xff
/* D97FC 800302EC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9800 800302F0 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9804 800302F4 8C420000 */  lw         $v0, ($v0)
/* D9808 800302F8 240500FF */  addiu      $a1, $zero, 0xff
/* D980C 800302FC AFB00010 */  sw         $s0, 0x10($sp)
/* D9810 80030300 8C44006C */  lw         $a0, 0x6c($v0)
/* D9814 80030304 240600FF */  addiu      $a2, $zero, 0xff
/* D9818 80030308 0C028E41 */  jal        func_800A3904
/* D981C 8003030C 240700FF */   addiu     $a3, $zero, 0xff
/* D9820 80030310 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9824 80030314 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9828 80030318 8C420000 */  lw         $v0, ($v0)
/* D982C 8003031C 240500FF */  addiu      $a1, $zero, 0xff
/* D9830 80030320 AFB00010 */  sw         $s0, 0x10($sp)
/* D9834 80030324 8C440074 */  lw         $a0, 0x74($v0)
/* D9838 80030328 240600FF */  addiu      $a2, $zero, 0xff
/* D983C 8003032C 0C028E41 */  jal        func_800A3904
/* D9840 80030330 240700FF */   addiu     $a3, $zero, 0xff
/* D9844 80030334 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9848 80030338 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D984C 8003033C 8C420000 */  lw         $v0, ($v0)
/* D9850 80030340 240500FF */  addiu      $a1, $zero, 0xff
/* D9854 80030344 AFB00010 */  sw         $s0, 0x10($sp)
/* D9858 80030348 8C44007C */  lw         $a0, 0x7c($v0)
/* D985C 8003034C 240600FF */  addiu      $a2, $zero, 0xff
/* D9860 80030350 0C028E41 */  jal        func_800A3904
/* D9864 80030354 240700FF */   addiu     $a3, $zero, 0xff
/* D9868 80030358 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D986C 8003035C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9870 80030360 8C420000 */  lw         $v0, ($v0)
/* D9874 80030364 240500FF */  addiu      $a1, $zero, 0xff
/* D9878 80030368 AFB00010 */  sw         $s0, 0x10($sp)
/* D987C 8003036C 8C440058 */  lw         $a0, 0x58($v0)
/* D9880 80030370 240600FF */  addiu      $a2, $zero, 0xff
/* D9884 80030374 240700FF */  addiu      $a3, $zero, 0xff
.L80030378:
/* D9888 80030378 0C028E41 */  jal        func_800A3904
/* D988C 8003037C 00000000 */   nop
/* D9890 80030380 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D9894 80030384 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D9898 80030388 8C820000 */  lw         $v0, ($a0)
/* D989C 8003038C 8C430058 */  lw         $v1, 0x58($v0)
/* D98A0 80030390 9462001E */  lhu        $v0, 0x1e($v1)
/* D98A4 80030394 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D98A8 80030398 A462001E */  sh         $v0, 0x1e($v1)
/* D98AC 8003039C 8C820000 */  lw         $v0, ($a0)
/* D98B0 800303A0 0800C11E */  j          .L80030478
/* D98B4 800303A4 8C43005C */   lw        $v1, 0x5c($v0)
.L800303A8:
/* D98B8 800303A8 8C820000 */  lw         $v0, ($a0)
/* D98BC 800303AC 241000FF */  addiu      $s0, $zero, 0xff
/* D98C0 800303B0 AFB00010 */  sw         $s0, 0x10($sp)
/* D98C4 800303B4 8C440064 */  lw         $a0, 0x64($v0)
/* D98C8 800303B8 240600FF */  addiu      $a2, $zero, 0xff
/* D98CC 800303BC 0C028E41 */  jal        func_800A3904
/* D98D0 800303C0 240700FF */   addiu     $a3, $zero, 0xff
/* D98D4 800303C4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D98D8 800303C8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D98DC 800303CC 8C420000 */  lw         $v0, ($v0)
/* D98E0 800303D0 240500FF */  addiu      $a1, $zero, 0xff
/* D98E4 800303D4 AFB00010 */  sw         $s0, 0x10($sp)
/* D98E8 800303D8 8C44006C */  lw         $a0, 0x6c($v0)
/* D98EC 800303DC 240600FF */  addiu      $a2, $zero, 0xff
/* D98F0 800303E0 0C028E41 */  jal        func_800A3904
/* D98F4 800303E4 240700FF */   addiu     $a3, $zero, 0xff
/* D98F8 800303E8 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D98FC 800303EC 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9900 800303F0 8C420000 */  lw         $v0, ($v0)
/* D9904 800303F4 240500FF */  addiu      $a1, $zero, 0xff
/* D9908 800303F8 AFB00010 */  sw         $s0, 0x10($sp)
/* D990C 800303FC 8C440074 */  lw         $a0, 0x74($v0)
/* D9910 80030400 240600FF */  addiu      $a2, $zero, 0xff
/* D9914 80030404 0C028E41 */  jal        func_800A3904
/* D9918 80030408 240700FF */   addiu     $a3, $zero, 0xff
/* D991C 8003040C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9920 80030410 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9924 80030414 8C420000 */  lw         $v0, ($v0)
/* D9928 80030418 240500FF */  addiu      $a1, $zero, 0xff
/* D992C 8003041C AFB00010 */  sw         $s0, 0x10($sp)
/* D9930 80030420 8C44007C */  lw         $a0, 0x7c($v0)
/* D9934 80030424 240600FF */  addiu      $a2, $zero, 0xff
/* D9938 80030428 0C028E41 */  jal        func_800A3904
/* D993C 8003042C 240700FF */   addiu     $a3, $zero, 0xff
/* D9940 80030430 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9944 80030434 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9948 80030438 8C420000 */  lw         $v0, ($v0)
/* D994C 8003043C 240500FF */  addiu      $a1, $zero, 0xff
/* D9950 80030440 AFB00010 */  sw         $s0, 0x10($sp)
/* D9954 80030444 8C440058 */  lw         $a0, 0x58($v0)
/* D9958 80030448 240600FF */  addiu      $a2, $zero, 0xff
/* D995C 8003044C 0C028E41 */  jal        func_800A3904
/* D9960 80030450 240700FF */   addiu     $a3, $zero, 0xff
/* D9964 80030454 3C048006 */  lui        $a0, %hi(D_80067E40)
/* D9968 80030458 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* D996C 8003045C 8C820000 */  lw         $v0, ($a0)
/* D9970 80030460 8C43005C */  lw         $v1, 0x5c($v0)
/* D9974 80030464 9462001E */  lhu        $v0, 0x1e($v1)
/* D9978 80030468 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D997C 8003046C A462001E */  sh         $v0, 0x1e($v1)
/* D9980 80030470 8C820000 */  lw         $v0, ($a0)
/* D9984 80030474 8C430058 */  lw         $v1, 0x58($v0)
.L80030478:
/* D9988 80030478 9462001E */  lhu        $v0, 0x1e($v1)
/* D998C 8003047C 34420400 */  ori        $v0, $v0, 0x400
/* D9990 80030480 A462001E */  sh         $v0, 0x1e($v1)
/* D9994 80030484 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9998 80030488 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D999C 8003048C 8C430000 */  lw         $v1, ($v0)
/* D99A0 80030490 C4400030 */  lwc1       $f0, 0x30($v0)
/* D99A4 80030494 8C640060 */  lw         $a0, 0x60($v1)
/* D99A8 80030498 4600008D */  trunc.w.s  $f2, $f0
/* D99AC 8003049C 44051000 */  mfc1       $a1, $f2
/* D99B0 800304A0 00000000 */  nop
/* D99B4 800304A4 00052C80 */  sll        $a1, $a1, 0x12
/* D99B8 800304A8 C4400034 */  lwc1       $f0, 0x34($v0)
/* D99BC 800304AC 94420038 */  lhu        $v0, 0x38($v0)
/* D99C0 800304B0 00052C03 */  sra        $a1, $a1, 0x10
/* D99C4 800304B4 4600008D */  trunc.w.s  $f2, $f0
/* D99C8 800304B8 44061000 */  mfc1       $a2, $f2
/* D99CC 800304BC 00000000 */  nop
/* D99D0 800304C0 00C23023 */  subu       $a2, $a2, $v0
/* D99D4 800304C4 00063480 */  sll        $a2, $a2, 0x12
/* D99D8 800304C8 0C028D89 */  jal        func_800A3624
/* D99DC 800304CC 00063403 */   sra       $a2, $a2, 0x10
/* D99E0 800304D0 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D99E4 800304D4 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D99E8 800304D8 8C430000 */  lw         $v1, ($v0)
/* D99EC 800304DC C4400030 */  lwc1       $f0, 0x30($v0)
/* D99F0 800304E0 8C640064 */  lw         $a0, 0x64($v1)
/* D99F4 800304E4 4600008D */  trunc.w.s  $f2, $f0
/* D99F8 800304E8 44051000 */  mfc1       $a1, $f2
/* D99FC 800304EC 00000000 */  nop
/* D9A00 800304F0 00052C80 */  sll        $a1, $a1, 0x12
/* D9A04 800304F4 C4400034 */  lwc1       $f0, 0x34($v0)
/* D9A08 800304F8 94420038 */  lhu        $v0, 0x38($v0)
/* D9A0C 800304FC 00052C03 */  sra        $a1, $a1, 0x10
/* D9A10 80030500 4600008D */  trunc.w.s  $f2, $f0
/* D9A14 80030504 44061000 */  mfc1       $a2, $f2
/* D9A18 80030508 00000000 */  nop
/* D9A1C 8003050C 00C23023 */  subu       $a2, $a2, $v0
/* D9A20 80030510 00063480 */  sll        $a2, $a2, 0x12
/* D9A24 80030514 0C028D89 */  jal        func_800A3624
/* D9A28 80030518 00063403 */   sra       $a2, $a2, 0x10
/* D9A2C 8003051C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9A30 80030520 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9A34 80030524 8C430000 */  lw         $v1, ($v0)
/* D9A38 80030528 C4400030 */  lwc1       $f0, 0x30($v0)
/* D9A3C 8003052C 8C640068 */  lw         $a0, 0x68($v1)
/* D9A40 80030530 4600008D */  trunc.w.s  $f2, $f0
/* D9A44 80030534 44051000 */  mfc1       $a1, $f2
/* D9A48 80030538 00000000 */  nop
/* D9A4C 8003053C 00052C80 */  sll        $a1, $a1, 0x12
/* D9A50 80030540 C4400034 */  lwc1       $f0, 0x34($v0)
/* D9A54 80030544 94420038 */  lhu        $v0, 0x38($v0)
/* D9A58 80030548 00052C03 */  sra        $a1, $a1, 0x10
/* D9A5C 8003054C 4600008D */  trunc.w.s  $f2, $f0
/* D9A60 80030550 44061000 */  mfc1       $a2, $f2
/* D9A64 80030554 00000000 */  nop
/* D9A68 80030558 00C23021 */  addu       $a2, $a2, $v0
/* D9A6C 8003055C 00063480 */  sll        $a2, $a2, 0x12
/* D9A70 80030560 0C028D89 */  jal        func_800A3624
/* D9A74 80030564 00063403 */   sra       $a2, $a2, 0x10
/* D9A78 80030568 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9A7C 8003056C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9A80 80030570 8C430000 */  lw         $v1, ($v0)
/* D9A84 80030574 C4400030 */  lwc1       $f0, 0x30($v0)
/* D9A88 80030578 8C64006C */  lw         $a0, 0x6c($v1)
/* D9A8C 8003057C 4600008D */  trunc.w.s  $f2, $f0
/* D9A90 80030580 44051000 */  mfc1       $a1, $f2
/* D9A94 80030584 00000000 */  nop
/* D9A98 80030588 00052C80 */  sll        $a1, $a1, 0x12
/* D9A9C 8003058C C4400034 */  lwc1       $f0, 0x34($v0)
/* D9AA0 80030590 94420038 */  lhu        $v0, 0x38($v0)
/* D9AA4 80030594 00052C03 */  sra        $a1, $a1, 0x10
/* D9AA8 80030598 4600008D */  trunc.w.s  $f2, $f0
/* D9AAC 8003059C 44061000 */  mfc1       $a2, $f2
/* D9AB0 800305A0 00000000 */  nop
/* D9AB4 800305A4 00C23021 */  addu       $a2, $a2, $v0
/* D9AB8 800305A8 00063480 */  sll        $a2, $a2, 0x12
/* D9ABC 800305AC 0C028D89 */  jal        func_800A3624
/* D9AC0 800305B0 00063403 */   sra       $a2, $a2, 0x10
/* D9AC4 800305B4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9AC8 800305B8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9ACC 800305BC 8C430000 */  lw         $v1, ($v0)
/* D9AD0 800305C0 C4400030 */  lwc1       $f0, 0x30($v0)
/* D9AD4 800305C4 94460038 */  lhu        $a2, 0x38($v0)
/* D9AD8 800305C8 8C640070 */  lw         $a0, 0x70($v1)
/* D9ADC 800305CC 4600008D */  trunc.w.s  $f2, $f0
/* D9AE0 800305D0 44051000 */  mfc1       $a1, $f2
/* D9AE4 800305D4 00000000 */  nop
/* D9AE8 800305D8 00A62821 */  addu       $a1, $a1, $a2
/* D9AEC 800305DC C4400034 */  lwc1       $f0, 0x34($v0)
/* D9AF0 800305E0 00052C80 */  sll        $a1, $a1, 0x12
/* D9AF4 800305E4 00052C03 */  sra        $a1, $a1, 0x10
/* D9AF8 800305E8 4600008D */  trunc.w.s  $f2, $f0
/* D9AFC 800305EC 44061000 */  mfc1       $a2, $f2
/* D9B00 800305F0 00000000 */  nop
/* D9B04 800305F4 00063480 */  sll        $a2, $a2, 0x12
/* D9B08 800305F8 0C028D89 */  jal        func_800A3624
/* D9B0C 800305FC 00063403 */   sra       $a2, $a2, 0x10
/* D9B10 80030600 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9B14 80030604 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9B18 80030608 8C430000 */  lw         $v1, ($v0)
/* D9B1C 8003060C C4400030 */  lwc1       $f0, 0x30($v0)
/* D9B20 80030610 94460038 */  lhu        $a2, 0x38($v0)
/* D9B24 80030614 8C640074 */  lw         $a0, 0x74($v1)
/* D9B28 80030618 4600008D */  trunc.w.s  $f2, $f0
/* D9B2C 8003061C 44051000 */  mfc1       $a1, $f2
/* D9B30 80030620 00000000 */  nop
/* D9B34 80030624 00A62821 */  addu       $a1, $a1, $a2
/* D9B38 80030628 C4400034 */  lwc1       $f0, 0x34($v0)
/* D9B3C 8003062C 00052C80 */  sll        $a1, $a1, 0x12
/* D9B40 80030630 00052C03 */  sra        $a1, $a1, 0x10
/* D9B44 80030634 4600008D */  trunc.w.s  $f2, $f0
/* D9B48 80030638 44061000 */  mfc1       $a2, $f2
/* D9B4C 8003063C 00000000 */  nop
/* D9B50 80030640 00063480 */  sll        $a2, $a2, 0x12
/* D9B54 80030644 0C028D89 */  jal        func_800A3624
/* D9B58 80030648 00063403 */   sra       $a2, $a2, 0x10
/* D9B5C 8003064C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9B60 80030650 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9B64 80030654 8C430000 */  lw         $v1, ($v0)
/* D9B68 80030658 C4400030 */  lwc1       $f0, 0x30($v0)
/* D9B6C 8003065C 94460038 */  lhu        $a2, 0x38($v0)
/* D9B70 80030660 8C640078 */  lw         $a0, 0x78($v1)
/* D9B74 80030664 4600008D */  trunc.w.s  $f2, $f0
/* D9B78 80030668 44051000 */  mfc1       $a1, $f2
/* D9B7C 8003066C 00000000 */  nop
/* D9B80 80030670 00A62823 */  subu       $a1, $a1, $a2
/* D9B84 80030674 C4400034 */  lwc1       $f0, 0x34($v0)
/* D9B88 80030678 00052C80 */  sll        $a1, $a1, 0x12
/* D9B8C 8003067C 00052C03 */  sra        $a1, $a1, 0x10
/* D9B90 80030680 4600008D */  trunc.w.s  $f2, $f0
/* D9B94 80030684 44061000 */  mfc1       $a2, $f2
/* D9B98 80030688 00000000 */  nop
/* D9B9C 8003068C 00063480 */  sll        $a2, $a2, 0x12
/* D9BA0 80030690 0C028D89 */  jal        func_800A3624
/* D9BA4 80030694 00063403 */   sra       $a2, $a2, 0x10
/* D9BA8 80030698 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9BAC 8003069C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9BB0 800306A0 8C430000 */  lw         $v1, ($v0)
/* D9BB4 800306A4 C4400030 */  lwc1       $f0, 0x30($v0)
/* D9BB8 800306A8 94460038 */  lhu        $a2, 0x38($v0)
/* D9BBC 800306AC 8C64007C */  lw         $a0, 0x7c($v1)
/* D9BC0 800306B0 4600008D */  trunc.w.s  $f2, $f0
/* D9BC4 800306B4 44051000 */  mfc1       $a1, $f2
/* D9BC8 800306B8 00000000 */  nop
/* D9BCC 800306BC 00A62823 */  subu       $a1, $a1, $a2
/* D9BD0 800306C0 C4400034 */  lwc1       $f0, 0x34($v0)
/* D9BD4 800306C4 00052C80 */  sll        $a1, $a1, 0x12
/* D9BD8 800306C8 00052C03 */  sra        $a1, $a1, 0x10
/* D9BDC 800306CC 4600008D */  trunc.w.s  $f2, $f0
/* D9BE0 800306D0 44061000 */  mfc1       $a2, $f2
/* D9BE4 800306D4 00000000 */  nop
/* D9BE8 800306D8 00063480 */  sll        $a2, $a2, 0x12
/* D9BEC 800306DC 0C028D89 */  jal        func_800A3624
/* D9BF0 800306E0 00063403 */   sra       $a2, $a2, 0x10
/* D9BF4 800306E4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9BF8 800306E8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9BFC 800306EC 8C430000 */  lw         $v1, ($v0)
/* D9C00 800306F0 C4400030 */  lwc1       $f0, 0x30($v0)
/* D9C04 800306F4 8C640080 */  lw         $a0, 0x80($v1)
/* D9C08 800306F8 4600008D */  trunc.w.s  $f2, $f0
/* D9C0C 800306FC 44051000 */  mfc1       $a1, $f2
/* D9C10 80030700 C4400034 */  lwc1       $f0, 0x34($v0)
/* D9C14 80030704 00052C80 */  sll        $a1, $a1, 0x12
/* D9C18 80030708 00052C03 */  sra        $a1, $a1, 0x10
/* D9C1C 8003070C 4600008D */  trunc.w.s  $f2, $f0
/* D9C20 80030710 44061000 */  mfc1       $a2, $f2
/* D9C24 80030714 00000000 */  nop
/* D9C28 80030718 00063480 */  sll        $a2, $a2, 0x12
/* D9C2C 8003071C 0C028D89 */  jal        func_800A3624
/* D9C30 80030720 00063403 */   sra       $a2, $a2, 0x10
/* D9C34 80030724 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9C38 80030728 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9C3C 8003072C 8C430000 */  lw         $v1, ($v0)
/* D9C40 80030730 C4400030 */  lwc1       $f0, 0x30($v0)
/* D9C44 80030734 8C640084 */  lw         $a0, 0x84($v1)
/* D9C48 80030738 4600008D */  trunc.w.s  $f2, $f0
/* D9C4C 8003073C 44051000 */  mfc1       $a1, $f2
/* D9C50 80030740 C4400034 */  lwc1       $f0, 0x34($v0)
/* D9C54 80030744 00052C80 */  sll        $a1, $a1, 0x12
/* D9C58 80030748 00052C03 */  sra        $a1, $a1, 0x10
/* D9C5C 8003074C 4600008D */  trunc.w.s  $f2, $f0
/* D9C60 80030750 44061000 */  mfc1       $a2, $f2
/* D9C64 80030754 00000000 */  nop
/* D9C68 80030758 00063480 */  sll        $a2, $a2, 0x12
/* D9C6C 8003075C 0C028D89 */  jal        func_800A3624
/* D9C70 80030760 00063403 */   sra       $a2, $a2, 0x10
/* D9C74 80030764 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9C78 80030768 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9C7C 8003076C 8C430000 */  lw         $v1, ($v0)
/* D9C80 80030770 C4400030 */  lwc1       $f0, 0x30($v0)
/* D9C84 80030774 8C640088 */  lw         $a0, 0x88($v1)
/* D9C88 80030778 4600008D */  trunc.w.s  $f2, $f0
/* D9C8C 8003077C 44051000 */  mfc1       $a1, $f2
/* D9C90 80030780 C4400034 */  lwc1       $f0, 0x34($v0)
/* D9C94 80030784 00052C80 */  sll        $a1, $a1, 0x12
/* D9C98 80030788 00052C03 */  sra        $a1, $a1, 0x10
/* D9C9C 8003078C 4600008D */  trunc.w.s  $f2, $f0
/* D9CA0 80030790 44061000 */  mfc1       $a2, $f2
/* D9CA4 80030794 00000000 */  nop
/* D9CA8 80030798 00063480 */  sll        $a2, $a2, 0x12
/* D9CAC 8003079C 0C028D89 */  jal        func_800A3624
/* D9CB0 800307A0 00063403 */   sra       $a2, $a2, 0x10
/* D9CB4 800307A4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9CB8 800307A8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9CBC 800307AC C44C0040 */  lwc1       $f12, 0x40($v0)
/* D9CC0 800307B0 3C018007 */  lui        $at, %hi(D_80069CC0)
/* D9CC4 800307B4 D4349CC0 */  ldc1       $f20, %lo(D_80069CC0)($at)
/* D9CC8 800307B8 46006321 */  cvt.d.s    $f12, $f12
/* D9CCC 800307BC 46346302 */  mul.d      $f12, $f12, $f20
/* D9CD0 800307C0 0C02FF68 */  jal        func_800BFDA0
/* D9CD4 800307C4 46206320 */   cvt.s.d   $f12, $f12
/* D9CD8 800307C8 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9CDC 800307CC 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9CE0 800307D0 C44C0040 */  lwc1       $f12, 0x40($v0)
/* D9CE4 800307D4 46006321 */  cvt.d.s    $f12, $f12
/* D9CE8 800307D8 46346302 */  mul.d      $f12, $f12, $f20
/* D9CEC 800307DC 3C0142C8 */  lui        $at, 0x42c8
/* D9CF0 800307E0 44811000 */  mtc1       $at, $f2
/* D9CF4 800307E4 00000000 */  nop
/* D9CF8 800307E8 46020502 */  mul.s      $f20, $f0, $f2
/* D9CFC 800307EC 0C02F784 */  jal        func_800BDE10
/* D9D00 800307F0 46206320 */   cvt.s.d   $f12, $f12
/* D9D04 800307F4 3C0142F0 */  lui        $at, 0x42f0
/* D9D08 800307F8 44811000 */  mtc1       $at, $f2
/* D9D0C 800307FC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9D10 80030800 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9D14 80030804 241000F0 */  addiu      $s0, $zero, 0xf0
/* D9D18 80030808 46020002 */  mul.s      $f0, $f0, $f2
/* D9D1C 8003080C 8C420000 */  lw         $v0, ($v0)
/* D9D20 80030810 4600A08D */  trunc.w.s  $f2, $f20
/* D9D24 80030814 44111000 */  mfc1       $s1, $f2
/* D9D28 80030818 00000000 */  nop
/* D9D2C 8003081C 262500A0 */  addiu      $a1, $s1, 0xa0
/* D9D30 80030820 00052C80 */  sll        $a1, $a1, 0x12
/* D9D34 80030824 00052C03 */  sra        $a1, $a1, 0x10
/* D9D38 80030828 8C44004C */  lw         $a0, 0x4c($v0)
/* D9D3C 8003082C 4600008D */  trunc.w.s  $f2, $f0
/* D9D40 80030830 44021000 */  mfc1       $v0, $f2
/* D9D44 80030834 00000000 */  nop
/* D9D48 80030838 02028023 */  subu       $s0, $s0, $v0
/* D9D4C 8003083C 00108480 */  sll        $s0, $s0, 0x12
/* D9D50 80030840 00108403 */  sra        $s0, $s0, 0x10
/* D9D54 80030844 0C028D89 */  jal        func_800A3624
/* D9D58 80030848 02003021 */   addu      $a2, $s0, $zero
/* D9D5C 8003084C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9D60 80030850 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9D64 80030854 240500A0 */  addiu      $a1, $zero, 0xa0
/* D9D68 80030858 8C420000 */  lw         $v0, ($v0)
/* D9D6C 8003085C 00B12823 */  subu       $a1, $a1, $s1
/* D9D70 80030860 00052C80 */  sll        $a1, $a1, 0x12
/* D9D74 80030864 8C440050 */  lw         $a0, 0x50($v0)
/* D9D78 80030868 00052C03 */  sra        $a1, $a1, 0x10
/* D9D7C 8003086C 0C028D89 */  jal        func_800A3624
/* D9D80 80030870 02003021 */   addu      $a2, $s0, $zero
/* D9D84 80030874 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D9D88 80030878 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9D8C 8003087C C4620040 */  lwc1       $f2, 0x40($v1)
/* D9D90 80030880 44800000 */  mtc1       $zero, $f0
/* D9D94 80030884 00000000 */  nop
/* D9D98 80030888 46001032 */  c.eq.s     $f2, $f0
/* D9D9C 8003088C 00000000 */  nop
/* D9DA0 80030890 45010003 */  bc1t       .L800308A0
/* D9DA4 80030894 00000000 */   nop
/* D9DA8 80030898 0800C242 */  j          .L80030908
/* D9DAC 8003089C A0600044 */   sb        $zero, 0x44($v1)
.L800308A0:
/* D9DB0 800308A0 90620044 */  lbu        $v0, 0x44($v1)
/* D9DB4 800308A4 24420001 */  addiu      $v0, $v0, 1
/* D9DB8 800308A8 A0620044 */  sb         $v0, 0x44($v1)
/* D9DBC 800308AC 3C028015 */  lui        $v0, %hi(D_80149BA4)
/* D9DC0 800308B0 8C429BA4 */  lw         $v0, %lo(D_80149BA4)($v0)
/* D9DC4 800308B4 30420001 */  andi       $v0, $v0, 1
/* D9DC8 800308B8 10400013 */  beqz       $v0, .L80030908
/* D9DCC 800308BC 240500FF */   addiu     $a1, $zero, 0xff
/* D9DD0 800308C0 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9DD4 800308C4 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9DD8 800308C8 8C420000 */  lw         $v0, ($v0)
/* D9DDC 800308CC 241000FF */  addiu      $s0, $zero, 0xff
/* D9DE0 800308D0 AFB00010 */  sw         $s0, 0x10($sp)
/* D9DE4 800308D4 8C44004C */  lw         $a0, 0x4c($v0)
/* D9DE8 800308D8 00003021 */  addu       $a2, $zero, $zero
/* D9DEC 800308DC 0C028E41 */  jal        func_800A3904
/* D9DF0 800308E0 00003821 */   addu      $a3, $zero, $zero
/* D9DF4 800308E4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9DF8 800308E8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9DFC 800308EC 8C420000 */  lw         $v0, ($v0)
/* D9E00 800308F0 240500FF */  addiu      $a1, $zero, 0xff
/* D9E04 800308F4 AFB00010 */  sw         $s0, 0x10($sp)
/* D9E08 800308F8 8C440050 */  lw         $a0, 0x50($v0)
/* D9E0C 800308FC 00003021 */  addu       $a2, $zero, $zero
/* D9E10 80030900 0800C254 */  j          .L80030950
/* D9E14 80030904 00003821 */   addu      $a3, $zero, $zero
.L80030908:
/* D9E18 80030908 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9E1C 8003090C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9E20 80030910 8C420000 */  lw         $v0, ($v0)
/* D9E24 80030914 240500FF */  addiu      $a1, $zero, 0xff
/* D9E28 80030918 241000FF */  addiu      $s0, $zero, 0xff
/* D9E2C 8003091C AFB00010 */  sw         $s0, 0x10($sp)
/* D9E30 80030920 8C44004C */  lw         $a0, 0x4c($v0)
/* D9E34 80030924 240600FF */  addiu      $a2, $zero, 0xff
/* D9E38 80030928 0C028E41 */  jal        func_800A3904
/* D9E3C 8003092C 240700FF */   addiu     $a3, $zero, 0xff
/* D9E40 80030930 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9E44 80030934 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9E48 80030938 8C420000 */  lw         $v0, ($v0)
/* D9E4C 8003093C 240500FF */  addiu      $a1, $zero, 0xff
/* D9E50 80030940 AFB00010 */  sw         $s0, 0x10($sp)
/* D9E54 80030944 8C440050 */  lw         $a0, 0x50($v0)
/* D9E58 80030948 240600FF */  addiu      $a2, $zero, 0xff
/* D9E5C 8003094C 240700FF */  addiu      $a3, $zero, 0xff
.L80030950:
/* D9E60 80030950 0C028E41 */  jal        func_800A3904
/* D9E64 80030954 00000000 */   nop
/* D9E68 80030958 8FBF0020 */  lw         $ra, 0x20($sp)
/* D9E6C 8003095C 8FB1001C */  lw         $s1, 0x1c($sp)
/* D9E70 80030960 8FB00018 */  lw         $s0, 0x18($sp)
/* D9E74 80030964 D7B40028 */  ldc1       $f20, 0x28($sp)
/* D9E78 80030968 03E00008 */  jr         $ra
/* D9E7C 8003096C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80030970_D9E80
/* D9E80 80030970 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D9E84 80030974 AFB00010 */  sw         $s0, 0x10($sp)
/* D9E88 80030978 3090FFFF */  andi       $s0, $a0, 0xffff
/* D9E8C 8003097C 02002021 */  addu       $a0, $s0, $zero
/* D9E90 80030980 AFBF0018 */  sw         $ra, 0x18($sp)
/* D9E94 80030984 0C02591A */  jal        func_80096468
/* D9E98 80030988 AFB10014 */   sw        $s1, 0x14($sp)
/* D9E9C 8003098C 0C02592F */  jal        func_800964BC
/* D9EA0 80030990 3044FFFF */   andi      $a0, $v0, 0xffff
/* D9EA4 80030994 02002021 */  addu       $a0, $s0, $zero
/* D9EA8 80030998 0C02591A */  jal        func_80096468
/* D9EAC 8003099C 00408821 */   addu      $s1, $v0, $zero
/* D9EB0 800309A0 0C02592F */  jal        func_800964BC
/* D9EB4 800309A4 3044FFFF */   andi      $a0, $v0, 0xffff
/* D9EB8 800309A8 3C038006 */  lui        $v1, %hi(D_80067E40)
/* D9EBC 800309AC 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* D9EC0 800309B0 8C630000 */  lw         $v1, ($v1)
/* D9EC4 800309B4 8C660000 */  lw         $a2, ($v1)
/* D9EC8 800309B8 00408021 */  addu       $s0, $v0, $zero
/* D9ECC 800309BC 94C500E2 */  lhu        $a1, 0xe2($a2)
/* D9ED0 800309C0 8C640028 */  lw         $a0, 0x28($v1)
/* D9ED4 800309C4 94C600E4 */  lhu        $a2, 0xe4($a2)
/* D9ED8 800309C8 00B12821 */  addu       $a1, $a1, $s1
/* D9EDC 800309CC 00052C80 */  sll        $a1, $a1, 0x12
/* D9EE0 800309D0 00052C03 */  sra        $a1, $a1, 0x10
/* D9EE4 800309D4 00D03021 */  addu       $a2, $a2, $s0
/* D9EE8 800309D8 00063480 */  sll        $a2, $a2, 0x12
/* D9EEC 800309DC 0C028D89 */  jal        func_800A3624
/* D9EF0 800309E0 00063403 */   sra       $a2, $a2, 0x10
/* D9EF4 800309E4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9EF8 800309E8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9EFC 800309EC 8C420000 */  lw         $v0, ($v0)
/* D9F00 800309F0 8C430000 */  lw         $v1, ($v0)
/* D9F04 800309F4 946500FA */  lhu        $a1, 0xfa($v1)
/* D9F08 800309F8 8C44002C */  lw         $a0, 0x2c($v0)
/* D9F0C 800309FC 946600FC */  lhu        $a2, 0xfc($v1)
/* D9F10 80030A00 00B12821 */  addu       $a1, $a1, $s1
/* D9F14 80030A04 00052C80 */  sll        $a1, $a1, 0x12
/* D9F18 80030A08 00052C03 */  sra        $a1, $a1, 0x10
/* D9F1C 80030A0C 00D03021 */  addu       $a2, $a2, $s0
/* D9F20 80030A10 00063480 */  sll        $a2, $a2, 0x12
/* D9F24 80030A14 0C028D89 */  jal        func_800A3624
/* D9F28 80030A18 00063403 */   sra       $a2, $a2, 0x10
/* D9F2C 80030A1C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9F30 80030A20 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9F34 80030A24 8C420000 */  lw         $v0, ($v0)
/* D9F38 80030A28 8C430000 */  lw         $v1, ($v0)
/* D9F3C 80030A2C 94650112 */  lhu        $a1, 0x112($v1)
/* D9F40 80030A30 8C440030 */  lw         $a0, 0x30($v0)
/* D9F44 80030A34 94660114 */  lhu        $a2, 0x114($v1)
/* D9F48 80030A38 00B12821 */  addu       $a1, $a1, $s1
/* D9F4C 80030A3C 00052C80 */  sll        $a1, $a1, 0x12
/* D9F50 80030A40 00052C03 */  sra        $a1, $a1, 0x10
/* D9F54 80030A44 00D03021 */  addu       $a2, $a2, $s0
/* D9F58 80030A48 00063480 */  sll        $a2, $a2, 0x12
/* D9F5C 80030A4C 0C028D89 */  jal        func_800A3624
/* D9F60 80030A50 00063403 */   sra       $a2, $a2, 0x10
/* D9F64 80030A54 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9F68 80030A58 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9F6C 80030A5C 8C420000 */  lw         $v0, ($v0)
/* D9F70 80030A60 8C430000 */  lw         $v1, ($v0)
/* D9F74 80030A64 9465012A */  lhu        $a1, 0x12a($v1)
/* D9F78 80030A68 8C440034 */  lw         $a0, 0x34($v0)
/* D9F7C 80030A6C 9466012C */  lhu        $a2, 0x12c($v1)
/* D9F80 80030A70 00B12821 */  addu       $a1, $a1, $s1
/* D9F84 80030A74 00052C80 */  sll        $a1, $a1, 0x12
/* D9F88 80030A78 00052C03 */  sra        $a1, $a1, 0x10
/* D9F8C 80030A7C 00D03021 */  addu       $a2, $a2, $s0
/* D9F90 80030A80 00063480 */  sll        $a2, $a2, 0x12
/* D9F94 80030A84 0C028D89 */  jal        func_800A3624
/* D9F98 80030A88 00063403 */   sra       $a2, $a2, 0x10
/* D9F9C 80030A8C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9FA0 80030A90 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9FA4 80030A94 8C420000 */  lw         $v0, ($v0)
/* D9FA8 80030A98 8C430000 */  lw         $v1, ($v0)
/* D9FAC 80030A9C 94650142 */  lhu        $a1, 0x142($v1)
/* D9FB0 80030AA0 8C440038 */  lw         $a0, 0x38($v0)
/* D9FB4 80030AA4 94660144 */  lhu        $a2, 0x144($v1)
/* D9FB8 80030AA8 00B12821 */  addu       $a1, $a1, $s1
/* D9FBC 80030AAC 00052C80 */  sll        $a1, $a1, 0x12
/* D9FC0 80030AB0 00052C03 */  sra        $a1, $a1, 0x10
/* D9FC4 80030AB4 00D03021 */  addu       $a2, $a2, $s0
/* D9FC8 80030AB8 00063480 */  sll        $a2, $a2, 0x12
/* D9FCC 80030ABC 0C028D89 */  jal        func_800A3624
/* D9FD0 80030AC0 00063403 */   sra       $a2, $a2, 0x10
/* D9FD4 80030AC4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* D9FD8 80030AC8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* D9FDC 80030ACC 8C420000 */  lw         $v0, ($v0)
/* D9FE0 80030AD0 8C430000 */  lw         $v1, ($v0)
/* D9FE4 80030AD4 9465015A */  lhu        $a1, 0x15a($v1)
/* D9FE8 80030AD8 8C44003C */  lw         $a0, 0x3c($v0)
/* D9FEC 80030ADC 9466015C */  lhu        $a2, 0x15c($v1)
/* D9FF0 80030AE0 00B12821 */  addu       $a1, $a1, $s1
/* D9FF4 80030AE4 00052C80 */  sll        $a1, $a1, 0x12
/* D9FF8 80030AE8 00052C03 */  sra        $a1, $a1, 0x10
/* D9FFC 80030AEC 00D03021 */  addu       $a2, $a2, $s0
/* DA000 80030AF0 00063480 */  sll        $a2, $a2, 0x12
/* DA004 80030AF4 0C028D89 */  jal        func_800A3624
/* DA008 80030AF8 00063403 */   sra       $a2, $a2, 0x10
/* DA00C 80030AFC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA010 80030B00 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA014 80030B04 8C420000 */  lw         $v0, ($v0)
/* DA018 80030B08 8C430000 */  lw         $v1, ($v0)
/* DA01C 80030B0C 9465009A */  lhu        $a1, 0x9a($v1)
/* DA020 80030B10 8C44001C */  lw         $a0, 0x1c($v0)
/* DA024 80030B14 9466009C */  lhu        $a2, 0x9c($v1)
/* DA028 80030B18 00B12821 */  addu       $a1, $a1, $s1
/* DA02C 80030B1C 00052C80 */  sll        $a1, $a1, 0x12
/* DA030 80030B20 00052C03 */  sra        $a1, $a1, 0x10
/* DA034 80030B24 00D03021 */  addu       $a2, $a2, $s0
/* DA038 80030B28 00063480 */  sll        $a2, $a2, 0x12
/* DA03C 80030B2C 0C028D89 */  jal        func_800A3624
/* DA040 80030B30 00063403 */   sra       $a2, $a2, 0x10
/* DA044 80030B34 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA048 80030B38 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA04C 80030B3C 8C420000 */  lw         $v0, ($v0)
/* DA050 80030B40 8C430000 */  lw         $v1, ($v0)
/* DA054 80030B44 946500B2 */  lhu        $a1, 0xb2($v1)
/* DA058 80030B48 8C440020 */  lw         $a0, 0x20($v0)
/* DA05C 80030B4C 946600B4 */  lhu        $a2, 0xb4($v1)
/* DA060 80030B50 00B12821 */  addu       $a1, $a1, $s1
/* DA064 80030B54 00052C80 */  sll        $a1, $a1, 0x12
/* DA068 80030B58 00052C03 */  sra        $a1, $a1, 0x10
/* DA06C 80030B5C 00D03021 */  addu       $a2, $a2, $s0
/* DA070 80030B60 00063480 */  sll        $a2, $a2, 0x12
/* DA074 80030B64 0C028D89 */  jal        func_800A3624
/* DA078 80030B68 00063403 */   sra       $a2, $a2, 0x10
/* DA07C 80030B6C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA080 80030B70 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA084 80030B74 8C420000 */  lw         $v0, ($v0)
/* DA088 80030B78 8C430000 */  lw         $v1, ($v0)
/* DA08C 80030B7C 946500CA */  lhu        $a1, 0xca($v1)
/* DA090 80030B80 8C440024 */  lw         $a0, 0x24($v0)
/* DA094 80030B84 946600CC */  lhu        $a2, 0xcc($v1)
/* DA098 80030B88 00B12821 */  addu       $a1, $a1, $s1
/* DA09C 80030B8C 00052C80 */  sll        $a1, $a1, 0x12
/* DA0A0 80030B90 00052C03 */  sra        $a1, $a1, 0x10
/* DA0A4 80030B94 00D03021 */  addu       $a2, $a2, $s0
/* DA0A8 80030B98 00063480 */  sll        $a2, $a2, 0x12
/* DA0AC 80030B9C 0C028D89 */  jal        func_800A3624
/* DA0B0 80030BA0 00063403 */   sra       $a2, $a2, 0x10
/* DA0B4 80030BA4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA0B8 80030BA8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA0BC 80030BAC 8C420000 */  lw         $v0, ($v0)
/* DA0C0 80030BB0 8C430000 */  lw         $v1, ($v0)
/* DA0C4 80030BB4 94650172 */  lhu        $a1, 0x172($v1)
/* DA0C8 80030BB8 8C440040 */  lw         $a0, 0x40($v0)
/* DA0CC 80030BBC 94660174 */  lhu        $a2, 0x174($v1)
/* DA0D0 80030BC0 00B12821 */  addu       $a1, $a1, $s1
/* DA0D4 80030BC4 00052C80 */  sll        $a1, $a1, 0x12
/* DA0D8 80030BC8 00052C03 */  sra        $a1, $a1, 0x10
/* DA0DC 80030BCC 00D03021 */  addu       $a2, $a2, $s0
/* DA0E0 80030BD0 00063480 */  sll        $a2, $a2, 0x12
/* DA0E4 80030BD4 0C028D89 */  jal        func_800A3624
/* DA0E8 80030BD8 00063403 */   sra       $a2, $a2, 0x10
/* DA0EC 80030BDC 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA0F0 80030BE0 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA0F4 80030BE4 8C420000 */  lw         $v0, ($v0)
/* DA0F8 80030BE8 8C430000 */  lw         $v1, ($v0)
/* DA0FC 80030BEC 9465018A */  lhu        $a1, 0x18a($v1)
/* DA100 80030BF0 8C440044 */  lw         $a0, 0x44($v0)
/* DA104 80030BF4 9466018C */  lhu        $a2, 0x18c($v1)
/* DA108 80030BF8 00B12821 */  addu       $a1, $a1, $s1
/* DA10C 80030BFC 00052C80 */  sll        $a1, $a1, 0x12
/* DA110 80030C00 00052C03 */  sra        $a1, $a1, 0x10
/* DA114 80030C04 00D03021 */  addu       $a2, $a2, $s0
/* DA118 80030C08 00063480 */  sll        $a2, $a2, 0x12
/* DA11C 80030C0C 0C028D89 */  jal        func_800A3624
/* DA120 80030C10 00063403 */   sra       $a2, $a2, 0x10
/* DA124 80030C14 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA128 80030C18 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA12C 80030C1C 8C420000 */  lw         $v0, ($v0)
/* DA130 80030C20 8C430000 */  lw         $v1, ($v0)
/* DA134 80030C24 946501A2 */  lhu        $a1, 0x1a2($v1)
/* DA138 80030C28 8C440048 */  lw         $a0, 0x48($v0)
/* DA13C 80030C2C 946601A4 */  lhu        $a2, 0x1a4($v1)
/* DA140 80030C30 00B12821 */  addu       $a1, $a1, $s1
/* DA144 80030C34 00052C80 */  sll        $a1, $a1, 0x12
/* DA148 80030C38 00052C03 */  sra        $a1, $a1, 0x10
/* DA14C 80030C3C 00D03021 */  addu       $a2, $a2, $s0
/* DA150 80030C40 00063480 */  sll        $a2, $a2, 0x12
/* DA154 80030C44 0C028D89 */  jal        func_800A3624
/* DA158 80030C48 00063403 */   sra       $a2, $a2, 0x10
/* DA15C 80030C4C 3C014000 */  lui        $at, 0x4000
/* DA160 80030C50 44812000 */  mtc1       $at, $f4
/* DA164 80030C54 44911000 */  mtc1       $s1, $f2
/* DA168 80030C58 00000000 */  nop
/* DA16C 80030C5C 468010A0 */  cvt.s.w    $f2, $f2
/* DA170 80030C60 46041083 */  div.s      $f2, $f2, $f4
/* DA174 80030C64 44900000 */  mtc1       $s0, $f0
/* DA178 80030C68 00000000 */  nop
/* DA17C 80030C6C 46800020 */  cvt.s.w    $f0, $f0
/* DA180 80030C70 46040003 */  div.s      $f0, $f0, $f4
/* DA184 80030C74 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA188 80030C78 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA18C 80030C7C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* DA190 80030C80 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* DA194 80030C84 3C018015 */  lui        $at, %hi(D_8014A064)
/* DA198 80030C88 E422A064 */  swc1       $f2, %lo(D_8014A064)($at)
/* DA19C 80030C8C 3C018015 */  lui        $at, %hi(D_8014A068)
/* DA1A0 80030C90 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* DA1A4 80030C94 A4510058 */  sh         $s1, 0x58($v0)
/* DA1A8 80030C98 A450005A */  sh         $s0, 0x5a($v0)
/* DA1AC 80030C9C 8FBF0018 */  lw         $ra, 0x18($sp)
/* DA1B0 80030CA0 8FB10014 */  lw         $s1, 0x14($sp)
/* DA1B4 80030CA4 8FB00010 */  lw         $s0, 0x10($sp)
/* DA1B8 80030CA8 03E00008 */  jr         $ra
/* DA1BC 80030CAC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80030CB0_DA1C0
/* DA1C0 80030CB0 3C028015 */  lui        $v0, %hi(D_80149BA4)
/* DA1C4 80030CB4 8C429BA4 */  lw         $v0, %lo(D_80149BA4)($v0)
/* DA1C8 80030CB8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* DA1CC 80030CBC AFBF0018 */  sw         $ra, 0x18($sp)
/* DA1D0 80030CC0 F7B60028 */  sdc1       $f22, 0x28($sp)
/* DA1D4 80030CC4 F7B40020 */  sdc1       $f20, 0x20($sp)
/* DA1D8 80030CC8 00021042 */  srl        $v0, $v0, 1
/* DA1DC 80030CCC 30420001 */  andi       $v0, $v0, 1
/* DA1E0 80030CD0 1040000D */  beqz       $v0, .L80030D08
/* DA1E4 80030CD4 00000000 */   nop
/* DA1E8 80030CD8 3C048006 */  lui        $a0, %hi(D_80067E40)
/* DA1EC 80030CDC 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* DA1F0 80030CE0 8C820000 */  lw         $v0, ($a0)
/* DA1F4 80030CE4 8C430040 */  lw         $v1, 0x40($v0)
/* DA1F8 80030CE8 9462001E */  lhu        $v0, 0x1e($v1)
/* DA1FC 80030CEC 34420400 */  ori        $v0, $v0, 0x400
/* DA200 80030CF0 A462001E */  sh         $v0, 0x1e($v1)
/* DA204 80030CF4 8C820000 */  lw         $v0, ($a0)
/* DA208 80030CF8 8C430044 */  lw         $v1, 0x44($v0)
/* DA20C 80030CFC 9462001E */  lhu        $v0, 0x1e($v1)
/* DA210 80030D00 0800C34D */  j          .L80030D34
/* DA214 80030D04 3042FBFF */   andi      $v0, $v0, 0xfbff
.L80030D08:
/* DA218 80030D08 3C048006 */  lui        $a0, %hi(D_80067E40)
/* DA21C 80030D0C 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* DA220 80030D10 8C820000 */  lw         $v0, ($a0)
/* DA224 80030D14 8C430040 */  lw         $v1, 0x40($v0)
/* DA228 80030D18 9462001E */  lhu        $v0, 0x1e($v1)
/* DA22C 80030D1C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DA230 80030D20 A462001E */  sh         $v0, 0x1e($v1)
/* DA234 80030D24 8C820000 */  lw         $v0, ($a0)
/* DA238 80030D28 8C430044 */  lw         $v1, 0x44($v0)
/* DA23C 80030D2C 9462001E */  lhu        $v0, 0x1e($v1)
/* DA240 80030D30 34420400 */  ori        $v0, $v0, 0x400
.L80030D34:
/* DA244 80030D34 A462001E */  sh         $v0, 0x1e($v1)
/* DA248 80030D38 3C038006 */  lui        $v1, %hi(D_80067E40)
/* DA24C 80030D3C 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* DA250 80030D40 9062002C */  lbu        $v0, 0x2c($v1)
/* DA254 80030D44 1040000B */  beqz       $v0, .L80030D74
/* DA258 80030D48 00000000 */   nop
/* DA25C 80030D4C C4640048 */  lwc1       $f4, 0x48($v1)
/* DA260 80030D50 3C014000 */  lui        $at, 0x4000
/* DA264 80030D54 44810000 */  mtc1       $at, $f0
/* DA268 80030D58 C462004C */  lwc1       $f2, 0x4c($v1)
/* DA26C 80030D5C 46002100 */  add.s      $f4, $f4, $f0
/* DA270 80030D60 3C013F80 */  lui        $at, 0x3f80
/* DA274 80030D64 44810000 */  mtc1       $at, $f0
/* DA278 80030D68 00000000 */  nop
/* DA27C 80030D6C 0800C367 */  j          .L80030D9C
/* DA280 80030D70 46001081 */   sub.s     $f2, $f2, $f0
.L80030D74:
/* DA284 80030D74 C4640048 */  lwc1       $f4, 0x48($v1)
/* DA288 80030D78 3C013F80 */  lui        $at, 0x3f80
/* DA28C 80030D7C 44810000 */  mtc1       $at, $f0
/* DA290 80030D80 C462004C */  lwc1       $f2, 0x4c($v1)
/* DA294 80030D84 46002100 */  add.s      $f4, $f4, $f0
/* DA298 80030D88 3C013ECC */  lui        $at, 0x3ecc
/* DA29C 80030D8C 3421CCCD */  ori        $at, $at, 0xcccd
/* DA2A0 80030D90 44810000 */  mtc1       $at, $f0
/* DA2A4 80030D94 00000000 */  nop
/* DA2A8 80030D98 46001081 */  sub.s      $f2, $f2, $f0
.L80030D9C:
/* DA2AC 80030D9C E4640048 */  swc1       $f4, 0x48($v1)
/* DA2B0 80030DA0 E462004C */  swc1       $f2, 0x4c($v1)
/* DA2B4 80030DA4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA2B8 80030DA8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA2BC 80030DAC 3C0143B4 */  lui        $at, 0x43b4
/* DA2C0 80030DB0 44812000 */  mtc1       $at, $f4
/* DA2C4 80030DB4 C4420048 */  lwc1       $f2, 0x48($v0)
/* DA2C8 80030DB8 4602203E */  c.le.s     $f4, $f2
/* DA2CC 80030DBC 00000000 */  nop
/* DA2D0 80030DC0 45000003 */  bc1f       .L80030DD0
/* DA2D4 80030DC4 00000000 */   nop
/* DA2D8 80030DC8 0800C37B */  j          .L80030DEC
/* DA2DC 80030DCC 46041001 */   sub.s     $f0, $f2, $f4
.L80030DD0:
/* DA2E0 80030DD0 44800000 */  mtc1       $zero, $f0
/* DA2E4 80030DD4 00000000 */  nop
/* DA2E8 80030DD8 4600103C */  c.lt.s     $f2, $f0
/* DA2EC 80030DDC 00000000 */  nop
/* DA2F0 80030DE0 45000003 */  bc1f       .L80030DF0
/* DA2F4 80030DE4 00000000 */   nop
/* DA2F8 80030DE8 46041000 */  add.s      $f0, $f2, $f4
.L80030DEC:
/* DA2FC 80030DEC E4400048 */  swc1       $f0, 0x48($v0)
.L80030DF0:
/* DA300 80030DF0 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA304 80030DF4 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA308 80030DF8 3C0143B4 */  lui        $at, 0x43b4
/* DA30C 80030DFC 44812000 */  mtc1       $at, $f4
/* DA310 80030E00 C442004C */  lwc1       $f2, 0x4c($v0)
/* DA314 80030E04 4602203E */  c.le.s     $f4, $f2
/* DA318 80030E08 00000000 */  nop
/* DA31C 80030E0C 45000003 */  bc1f       .L80030E1C
/* DA320 80030E10 00000000 */   nop
/* DA324 80030E14 0800C38E */  j          .L80030E38
/* DA328 80030E18 46041001 */   sub.s     $f0, $f2, $f4
.L80030E1C:
/* DA32C 80030E1C 44800000 */  mtc1       $zero, $f0
/* DA330 80030E20 00000000 */  nop
/* DA334 80030E24 4600103C */  c.lt.s     $f2, $f0
/* DA338 80030E28 00000000 */  nop
/* DA33C 80030E2C 45000003 */  bc1f       .L80030E3C
/* DA340 80030E30 00000000 */   nop
/* DA344 80030E34 46041000 */  add.s      $f0, $f2, $f4
.L80030E38:
/* DA348 80030E38 E440004C */  swc1       $f0, 0x4c($v0)
.L80030E3C:
/* DA34C 80030E3C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA350 80030E40 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA354 80030E44 3C014336 */  lui        $at, 0x4336
/* DA358 80030E48 34210AAB */  ori        $at, $at, 0xaab
/* DA35C 80030E4C 4481B000 */  mtc1       $at, $f22
/* DA360 80030E50 C4400048 */  lwc1       $f0, 0x48($v0)
/* DA364 80030E54 8C420000 */  lw         $v0, ($v0)
/* DA368 80030E58 46160002 */  mul.s      $f0, $f0, $f22
/* DA36C 80030E5C 3C013F80 */  lui        $at, 0x3f80
/* DA370 80030E60 4481A000 */  mtc1       $at, $f20
/* DA374 80030E64 8C440090 */  lw         $a0, 0x90($v0)
/* DA378 80030E68 4406A000 */  mfc1       $a2, $f20
/* DA37C 80030E6C 4407A000 */  mfc1       $a3, $f20
/* DA380 80030E70 4600008D */  trunc.w.s  $f2, $f0
/* DA384 80030E74 44051000 */  mfc1       $a1, $f2
/* DA388 80030E78 0C02915B */  jal        func_800A456C
/* DA38C 80030E7C 00000000 */   nop
/* DA390 80030E80 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA394 80030E84 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA398 80030E88 C440004C */  lwc1       $f0, 0x4c($v0)
/* DA39C 80030E8C 46160002 */  mul.s      $f0, $f0, $f22
/* DA3A0 80030E90 8C420000 */  lw         $v0, ($v0)
/* DA3A4 80030E94 4406A000 */  mfc1       $a2, $f20
/* DA3A8 80030E98 8C440094 */  lw         $a0, 0x94($v0)
/* DA3AC 80030E9C 4600008D */  trunc.w.s  $f2, $f0
/* DA3B0 80030EA0 44051000 */  mfc1       $a1, $f2
/* DA3B4 80030EA4 00000000 */  nop
/* DA3B8 80030EA8 0C02915B */  jal        func_800A456C
/* DA3BC 80030EAC 00C03821 */   addu      $a3, $a2, $zero
/* DA3C0 80030EB0 0C02591A */  jal        func_80096468
/* DA3C4 80030EB4 24040005 */   addiu     $a0, $zero, 5
/* DA3C8 80030EB8 3C014120 */  lui        $at, 0x4120
/* DA3CC 80030EBC 44810000 */  mtc1       $at, $f0
/* DA3D0 80030EC0 3042FFFF */  andi       $v0, $v0, 0xffff
/* DA3D4 80030EC4 44822000 */  mtc1       $v0, $f4
/* DA3D8 80030EC8 00000000 */  nop
/* DA3DC 80030ECC 46802120 */  cvt.s.w    $f4, $f4
/* DA3E0 80030ED0 46002103 */  div.s      $f4, $f4, $f0
/* DA3E4 80030ED4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA3E8 80030ED8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA3EC 80030EDC C4420050 */  lwc1       $f2, 0x50($v0)
/* DA3F0 80030EE0 3C014110 */  lui        $at, 0x4110
/* DA3F4 80030EE4 44810000 */  mtc1       $at, $f0
/* DA3F8 80030EE8 00000000 */  nop
/* DA3FC 80030EEC 46001080 */  add.s      $f2, $f2, $f0
/* DA400 80030EF0 3C0143B4 */  lui        $at, 0x43b4
/* DA404 80030EF4 44813000 */  mtc1       $at, $f6
/* DA408 80030EF8 3C013F00 */  lui        $at, 0x3f00
/* DA40C 80030EFC 44810000 */  mtc1       $at, $f0
/* DA410 80030F00 4602303E */  c.le.s     $f6, $f2
/* DA414 80030F04 E4420050 */  swc1       $f2, 0x50($v0)
/* DA418 80030F08 00000000 */  nop
/* DA41C 80030F0C 45000003 */  bc1f       .L80030F1C
/* DA420 80030F10 46002100 */   add.s     $f4, $f4, $f0
/* DA424 80030F14 0800C3CE */  j          .L80030F38
/* DA428 80030F18 46061001 */   sub.s     $f0, $f2, $f6
.L80030F1C:
/* DA42C 80030F1C 44800000 */  mtc1       $zero, $f0
/* DA430 80030F20 00000000 */  nop
/* DA434 80030F24 4600103C */  c.lt.s     $f2, $f0
/* DA438 80030F28 00000000 */  nop
/* DA43C 80030F2C 45000003 */  bc1f       .L80030F3C
/* DA440 80030F30 00000000 */   nop
/* DA444 80030F34 46061000 */  add.s      $f0, $f2, $f6
.L80030F38:
/* DA448 80030F38 E4400050 */  swc1       $f0, 0x50($v0)
.L80030F3C:
/* DA44C 80030F3C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA450 80030F40 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA454 80030F44 3C014336 */  lui        $at, 0x4336
/* DA458 80030F48 34210AAB */  ori        $at, $at, 0xaab
/* DA45C 80030F4C 44811000 */  mtc1       $at, $f2
/* DA460 80030F50 C4400050 */  lwc1       $f0, 0x50($v0)
/* DA464 80030F54 46020002 */  mul.s      $f0, $f0, $f2
/* DA468 80030F58 8C420000 */  lw         $v0, ($v0)
/* DA46C 80030F5C 44062000 */  mfc1       $a2, $f4
/* DA470 80030F60 8C440010 */  lw         $a0, 0x10($v0)
/* DA474 80030F64 4600008D */  trunc.w.s  $f2, $f0
/* DA478 80030F68 44051000 */  mfc1       $a1, $f2
/* DA47C 80030F6C 00000000 */  nop
/* DA480 80030F70 0C02915B */  jal        func_800A456C
/* DA484 80030F74 00C03821 */   addu      $a3, $a2, $zero
/* DA488 80030F78 3C028015 */  lui        $v0, %hi(D_80149BA4)
/* DA48C 80030F7C 8C429BA4 */  lw         $v0, %lo(D_80149BA4)($v0)
/* DA490 80030F80 30420001 */  andi       $v0, $v0, 1
/* DA494 80030F84 10400006 */  beqz       $v0, .L80030FA0
/* DA498 80030F88 240500FF */   addiu     $a1, $zero, 0xff
/* DA49C 80030F8C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA4A0 80030F90 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA4A4 80030F94 8C430000 */  lw         $v1, ($v0)
/* DA4A8 80030F98 0800C3EC */  j          .L80030FB0
/* DA4AC 80030F9C 240200FF */   addiu     $v0, $zero, 0xff
.L80030FA0:
/* DA4B0 80030FA0 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA4B4 80030FA4 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA4B8 80030FA8 8C430000 */  lw         $v1, ($v0)
/* DA4BC 80030FAC 240200C0 */  addiu      $v0, $zero, 0xc0
.L80030FB0:
/* DA4C0 80030FB0 AFA20010 */  sw         $v0, 0x10($sp)
/* DA4C4 80030FB4 8C640010 */  lw         $a0, 0x10($v1)
/* DA4C8 80030FB8 240600FF */  addiu      $a2, $zero, 0xff
/* DA4CC 80030FBC 0C028E41 */  jal        func_800A3904
/* DA4D0 80030FC0 240700FF */   addiu     $a3, $zero, 0xff
/* DA4D4 80030FC4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA4D8 80030FC8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA4DC 80030FCC 0C00C51F */  jal        func_8003147C_DA98C
/* DA4E0 80030FD0 8C440000 */   lw        $a0, ($v0)
/* DA4E4 80030FD4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA4E8 80030FD8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA4EC 80030FDC 0C00C5C1 */  jal        func_80031704_DAC14
/* DA4F0 80030FE0 8C440004 */   lw        $a0, 4($v0)
/* DA4F4 80030FE4 8FBF0018 */  lw         $ra, 0x18($sp)
/* DA4F8 80030FE8 D7B60028 */  ldc1       $f22, 0x28($sp)
/* DA4FC 80030FEC D7B40020 */  ldc1       $f20, 0x20($sp)
/* DA500 80030FF0 03E00008 */  jr         $ra
/* DA504 80030FF4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80030FF8_DA508
/* DA508 80030FF8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DA50C 80030FFC AFB10014 */  sw         $s1, 0x14($sp)
/* DA510 80031000 00008821 */  addu       $s1, $zero, $zero
/* DA514 80031004 AFB20018 */  sw         $s2, 0x18($sp)
/* DA518 80031008 2412F800 */  addiu      $s2, $zero, -0x800
/* DA51C 8003100C AFB00010 */  sw         $s0, 0x10($sp)
/* DA520 80031010 3C108006 */  lui        $s0, %hi(D_80067E5C)
/* DA524 80031014 26107E5C */  addiu      $s0, $s0, %lo(D_80067E5C)
/* DA528 80031018 AFBF001C */  sw         $ra, 0x1c($sp)
.L8003101C:
/* DA52C 8003101C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA530 80031020 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA534 80031024 8C420004 */  lw         $v0, 4($v0)
/* DA538 80031028 8E050000 */  lw         $a1, ($s0)
/* DA53C 8003102C 0C0285D4 */  jal        func_800A1750
/* DA540 80031030 8C440008 */   lw        $a0, 8($v0)
/* DA544 80031034 00403021 */  addu       $a2, $v0, $zero
/* DA548 80031038 24CA0020 */  addiu      $t2, $a2, 0x20
.L8003103C:
/* DA54C 8003103C 94C40000 */  lhu        $a0, ($a2)
/* DA550 80031040 30890001 */  andi       $t1, $a0, 1
/* DA554 80031044 3082FFFF */  andi       $v0, $a0, 0xffff
/* DA558 80031048 00021A02 */  srl        $v1, $v0, 8
/* DA55C 8003104C 306300F8 */  andi       $v1, $v1, 0xf8
/* DA560 80031050 00604021 */  addu       $t0, $v1, $zero
/* DA564 80031054 000210C2 */  srl        $v0, $v0, 3
/* DA568 80031058 304500F8 */  andi       $a1, $v0, 0xf8
/* DA56C 8003105C 00042080 */  sll        $a0, $a0, 2
/* DA570 80031060 308400F8 */  andi       $a0, $a0, 0xf8
/* DA574 80031064 00A01021 */  addu       $v0, $a1, $zero
/* DA578 80031068 00621826 */  xor        $v1, $v1, $v0
/* DA57C 8003106C 0003182B */  sltu       $v1, $zero, $v1
/* DA580 80031070 00441026 */  xor        $v0, $v0, $a0
/* DA584 80031074 0002102B */  sltu       $v0, $zero, $v0
/* DA588 80031078 00621825 */  or         $v1, $v1, $v0
/* DA58C 8003107C 1060000F */  beqz       $v1, .L800310BC
/* DA590 80031080 00803821 */   addu      $a3, $a0, $zero
/* DA594 80031084 24A30010 */  addiu      $v1, $a1, 0x10
/* DA598 80031088 00602021 */  addu       $a0, $v1, $zero
/* DA59C 8003108C 28820100 */  slti       $v0, $a0, 0x100
/* DA5A0 80031090 50400001 */  beql       $v0, $zero, .L80031098
/* DA5A4 80031094 240300FF */   addiu     $v1, $zero, 0xff
.L80031098:
/* DA5A8 80031098 00071200 */  sll        $v0, $a3, 8
/* DA5AC 8003109C 00521024 */  and        $v0, $v0, $s2
/* DA5B0 800310A0 000318C0 */  sll        $v1, $v1, 3
/* DA5B4 800310A4 306307C0 */  andi       $v1, $v1, 0x7c0
/* DA5B8 800310A8 00431025 */  or         $v0, $v0, $v1
/* DA5BC 800310AC 00081882 */  srl        $v1, $t0, 2
/* DA5C0 800310B0 00431025 */  or         $v0, $v0, $v1
/* DA5C4 800310B4 01221025 */  or         $v0, $t1, $v0
/* DA5C8 800310B8 A4C20000 */  sh         $v0, ($a2)
.L800310BC:
/* DA5CC 800310BC 24C60002 */  addiu      $a2, $a2, 2
/* DA5D0 800310C0 00CA102A */  slt        $v0, $a2, $t2
/* DA5D4 800310C4 1440FFDD */  bnez       $v0, .L8003103C
/* DA5D8 800310C8 00000000 */   nop
/* DA5DC 800310CC 26310001 */  addiu      $s1, $s1, 1
/* DA5E0 800310D0 2A22000A */  slti       $v0, $s1, 0xa
/* DA5E4 800310D4 1440FFD1 */  bnez       $v0, .L8003101C
/* DA5E8 800310D8 26100004 */   addiu     $s0, $s0, 4
/* DA5EC 800310DC 8FBF001C */  lw         $ra, 0x1c($sp)
/* DA5F0 800310E0 8FB20018 */  lw         $s2, 0x18($sp)
/* DA5F4 800310E4 8FB10014 */  lw         $s1, 0x14($sp)
/* DA5F8 800310E8 8FB00010 */  lw         $s0, 0x10($sp)
/* DA5FC 800310EC 03E00008 */  jr         $ra
/* DA600 800310F0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800310F4_DA604
/* DA604 800310F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DA608 800310F8 24040406 */  addiu      $a0, $zero, 0x406
/* DA60C 800310FC 00002821 */  addu       $a1, $zero, $zero
/* DA610 80031100 AFBF0014 */  sw         $ra, 0x14($sp)
/* DA614 80031104 0C0298D4 */  jal        func_800A6350
/* DA618 80031108 AFB00010 */   sw        $s0, 0x10($sp)
/* DA61C 8003110C 3C038006 */  lui        $v1, %hi(D_80067E40)
/* DA620 80031110 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* DA624 80031114 8C630000 */  lw         $v1, ($v1)
/* DA628 80031118 8C630090 */  lw         $v1, 0x90($v1)
/* DA62C 8003111C 00408021 */  addu       $s0, $v0, $zero
/* DA630 80031120 8C650014 */  lw         $a1, 0x14($v1)
/* DA634 80031124 02002021 */  addu       $a0, $s0, $zero
/* DA638 80031128 0C03006C */  jal        func_800C01B0
/* DA63C 8003112C 24060020 */   addiu     $a2, $zero, 0x20
/* DA640 80031130 0C0326A1 */  jal        func_800C9A84
/* DA644 80031134 02002021 */   addu      $a0, $s0, $zero
/* DA648 80031138 24040407 */  addiu      $a0, $zero, 0x407
/* DA64C 8003113C 0C0298D4 */  jal        func_800A6350
/* DA650 80031140 00002821 */   addu      $a1, $zero, $zero
/* DA654 80031144 3C038006 */  lui        $v1, %hi(D_80067E40)
/* DA658 80031148 8C637E40 */  lw         $v1, %lo(D_80067E40)($v1)
/* DA65C 8003114C 8C630000 */  lw         $v1, ($v1)
/* DA660 80031150 8C630094 */  lw         $v1, 0x94($v1)
/* DA664 80031154 00408021 */  addu       $s0, $v0, $zero
/* DA668 80031158 8C650014 */  lw         $a1, 0x14($v1)
/* DA66C 8003115C 02002021 */  addu       $a0, $s0, $zero
/* DA670 80031160 0C03006C */  jal        func_800C01B0
/* DA674 80031164 24060020 */   addiu     $a2, $zero, 0x20
/* DA678 80031168 0C0326A1 */  jal        func_800C9A84
/* DA67C 8003116C 02002021 */   addu      $a0, $s0, $zero
/* DA680 80031170 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA684 80031174 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA688 80031178 A040002B */  sb         $zero, 0x2b($v0)
/* DA68C 8003117C 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA690 80031180 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA694 80031184 A040002C */  sb         $zero, 0x2c($v0)
/* DA698 80031188 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA69C 8003118C 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA6A0 80031190 A040002D */  sb         $zero, 0x2d($v0)
/* DA6A4 80031194 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA6A8 80031198 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA6AC 8003119C A4400054 */  sh         $zero, 0x54($v0)
/* DA6B0 800311A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* DA6B4 800311A4 8FB00010 */  lw         $s0, 0x10($sp)
/* DA6B8 800311A8 03E00008 */  jr         $ra
/* DA6BC 800311AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800311B0_DA6C0
/* DA6C0 800311B0 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA6C4 800311B4 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA6C8 800311B8 3C014220 */  lui        $at, 0x4220
/* DA6CC 800311BC 44810000 */  mtc1       $at, $f0
/* DA6D0 800311C0 A040002A */  sb         $zero, 0x2a($v0)
/* DA6D4 800311C4 3C028006 */  lui        $v0, %hi(D_80067E40)
/* DA6D8 800311C8 8C427E40 */  lw         $v0, %lo(D_80067E40)($v0)
/* DA6DC 800311CC A0400044 */  sb         $zero, 0x44($v0)
/* DA6E0 800311D0 3C048006 */  lui        $a0, %hi(D_80067E40)
/* DA6E4 800311D4 8C847E40 */  lw         $a0, %lo(D_80067E40)($a0)
/* DA6E8 800311D8 3C038017 */  lui        $v1, %hi(D_8016D168)
/* DA6EC 800311DC 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* DA6F0 800311E0 A4400038 */  sh         $zero, 0x38($v0)
/* DA6F4 800311E4 8C850000 */  lw         $a1, ($a0)
/* DA6F8 800311E8 00031080 */  sll        $v0, $v1, 2
/* DA6FC 800311EC 00431021 */  addu       $v0, $v0, $v1
/* DA700 800311F0 E4800040 */  swc1       $f0, 0x40($a0)
/* DA704 800311F4 A482005C */  sh         $v0, 0x5c($a0)
/* DA708 800311F8 8CA3004C */  lw         $v1, 0x4c($a1)
/* DA70C 800311FC 9462001E */  lhu        $v0, 0x1e($v1)
/* DA710 80031200 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DA714 80031204 A462001E */  sh         $v0, 0x1e($v1)
/* DA718 80031208 8C820000 */  lw         $v0, ($a0)
/* DA71C 8003120C 8C430050 */  lw         $v1, 0x50($v0)
/* DA720 80031210 9462001E */  lhu        $v0, 0x1e($v1)
/* DA724 80031214 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DA728 80031218 A462001E */  sh         $v0, 0x1e($v1)
/* DA72C 8003121C 8C820000 */  lw         $v0, ($a0)
/* DA730 80031220 8C430054 */  lw         $v1, 0x54($v0)
/* DA734 80031224 9462001E */  lhu        $v0, 0x1e($v1)
/* DA738 80031228 34420400 */  ori        $v0, $v0, 0x400
/* DA73C 8003122C 03E00008 */  jr         $ra
/* DA740 80031230 A462001E */   sh        $v0, 0x1e($v1)
/* DA744 80031234 00000000 */  nop
/* DA748 80031238 00000000 */  nop
/* DA74C 8003123C 00000000 */  nop