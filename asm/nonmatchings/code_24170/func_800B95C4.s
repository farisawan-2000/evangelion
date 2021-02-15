.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B95C4
/* 241C4 800B95C4 3C02800F */  lui        $v0, %hi(D_800F5E60)
/* 241C8 800B95C8 8C425E60 */  lw         $v0, %lo(D_800F5E60)($v0)
/* 241CC 800B95CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 241D0 800B95D0 1440000F */  bnez       $v0, .L800B9610
/* 241D4 800B95D4 AFBF0018 */   sw        $ra, 0x18($sp)
/* 241D8 800B95D8 24020001 */  addiu      $v0, $zero, 1
/* 241DC 800B95DC 3C01800F */  lui        $at, %hi(D_800F5E60)
/* 241E0 800B95E0 AC225E60 */  sw         $v0, %lo(D_800F5E60)($at)
/* 241E4 800B95E4 3C048015 */  lui        $a0, %hi(D_8014A2A8)
/* 241E8 800B95E8 2484A2A8 */  addiu      $a0, $a0, %lo(D_8014A2A8)
/* 241EC 800B95EC 3C058015 */  lui        $a1, %hi(D_80148810)
/* 241F0 800B95F0 24A58810 */  addiu      $a1, $a1, %lo(D_80148810)
/* 241F4 800B95F4 0C0301A4 */  jal        func_800C0690
/* 241F8 800B95F8 24060001 */   addiu     $a2, $zero, 1
/* 241FC 800B95FC 3C048015 */  lui        $a0, %hi(D_8014A2A8)
/* 24200 800B9600 2484A2A8 */  addiu      $a0, $a0, %lo(D_8014A2A8)
/* 24204 800B9604 00002821 */  addu       $a1, $zero, $zero
/* 24208 800B9608 0C03024C */  jal        func_800C0930
/* 2420C 800B960C 00003021 */   addu      $a2, $zero, $zero
.L800B9610:
/* 24210 800B9610 3C048015 */  lui        $a0, %hi(D_8014A2A8)
/* 24214 800B9614 2484A2A8 */  addiu      $a0, $a0, %lo(D_8014A2A8)
/* 24218 800B9618 27A50010 */  addiu      $a1, $sp, 0x10
/* 2421C 800B961C 0C030200 */  jal        func_800C0800
/* 24220 800B9620 24060001 */   addiu     $a2, $zero, 1
/* 24224 800B9624 8FBF0018 */  lw         $ra, 0x18($sp)
/* 24228 800B9628 03E00008 */  jr         $ra
/* 2422C 800B962C 27BD0020 */   addiu     $sp, $sp, 0x20
