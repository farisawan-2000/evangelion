.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80097670
/* 2270 80097670 27BDF7E0 */  addiu      $sp, $sp, -0x820
/* 2274 80097674 AFBF0818 */  sw         $ra, 0x818($sp)
/* 2278 80097678 0C02D8D0 */  jal        func_800B6340
/* 227C 8009767C 00000000 */   nop
/* 2280 80097680 3C04800D */  lui        $a0, %hi(D_800D38D0)
/* 2284 80097684 248438D0 */  addiu      $a0, $a0, %lo(D_800D38D0)
/* 2288 80097688 0C02DA48 */  jal        func_800B6920
/* 228C 8009768C 24050002 */   addiu     $a1, $zero, 2
/* 2290 80097690 3C028000 */  lui        $v0, 0x8000
/* 2294 80097694 34420400 */  ori        $v0, $v0, 0x400
/* 2298 80097698 3C04800B */  lui        $a0, %hi(D_800B6860)
/* 229C 8009769C 24846860 */  addiu      $a0, $a0, %lo(D_800B6860)
/* 22A0 800976A0 3C018015 */  lui        $at, %hi(D_80149EC8)
/* 22A4 800976A4 AC229EC8 */  sw         $v0, %lo(D_80149EC8)($at)
/* 22A8 800976A8 0C02DA08 */  jal        func_800B6820
/* 22AC 800976AC 00000000 */   nop
/* 22B0 800976B0 3C02800D */  lui        $v0, %hi(D_800D38A0)
/* 22B4 800976B4 244238A0 */  addiu      $v0, $v0, %lo(D_800D38A0)
/* 22B8 800976B8 3C018015 */  lui        $at, %hi(D_8014A2C4)
/* 22BC 800976BC AC22A2C4 */  sw         $v0, %lo(D_8014A2C4)($at)
/* 22C0 800976C0 0C02D92D */  jal        func_800B64B4
/* 22C4 800976C4 00000000 */   nop
/* 22C8 800976C8 27A40010 */  addiu      $a0, $sp, 0x10
/* 22CC 800976CC 24050018 */  addiu      $a1, $zero, 0x18
/* 22D0 800976D0 3C02DE00 */  lui        $v0, 0xde00
/* 22D4 800976D4 AFA20010 */  sw         $v0, 0x10($sp)
/* 22D8 800976D8 3C02000D */  lui        $v0, 0xd
/* 22DC 800976DC 244238E0 */  addiu      $v0, $v0, 0x38e0
/* 22E0 800976E0 AFA20014 */  sw         $v0, 0x14($sp)
/* 22E4 800976E4 3C02E900 */  lui        $v0, 0xe900
/* 22E8 800976E8 AFA20018 */  sw         $v0, 0x18($sp)
/* 22EC 800976EC 3C02DF00 */  lui        $v0, 0xdf00
/* 22F0 800976F0 00003021 */  addu       $a2, $zero, $zero
/* 22F4 800976F4 00003821 */  addu       $a3, $zero, $zero
/* 22F8 800976F8 AFA0001C */  sw         $zero, 0x1c($sp)
/* 22FC 800976FC AFA20020 */  sw         $v0, 0x20($sp)
/* 2300 80097700 0C02D99B */  jal        func_800B666C
/* 2304 80097704 AFA00024 */   sw        $zero, 0x24($sp)
/* 2308 80097708 0C02DA20 */  jal        func_800B6880
/* 230C 8009770C 00000000 */   nop
/* 2310 80097710 8FBF0818 */  lw         $ra, 0x818($sp)
/* 2314 80097714 27BD0820 */  addiu      $sp, $sp, 0x820
/* 2318 80097718 03E00008 */  jr         $ra
/* 231C 8009771C 00000000 */   nop
