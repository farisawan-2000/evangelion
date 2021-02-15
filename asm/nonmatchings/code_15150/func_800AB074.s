.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AB074
/* 15C74 800AB074 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 15C78 800AB078 AFB00010 */  sw         $s0, 0x10($sp)
/* 15C7C 800AB07C 3C108015 */  lui        $s0, %hi(D_80149E18)
/* 15C80 800AB080 26109E18 */  addiu      $s0, $s0, %lo(D_80149E18)
/* 15C84 800AB084 02002021 */  addu       $a0, $s0, $zero
/* 15C88 800AB088 AFBF0014 */  sw         $ra, 0x14($sp)
/* 15C8C 800AB08C 0C030134 */  jal        func_800C04D0
/* 15C90 800AB090 24050038 */   addiu     $a1, $zero, 0x38
/* 15C94 800AB094 3C048010 */  lui        $a0, %hi(D_800FB26C)
/* 15C98 800AB098 2484B26C */  addiu      $a0, $a0, %lo(D_800FB26C)
/* 15C9C 800AB09C 02002821 */  addu       $a1, $s0, $zero
/* 15CA0 800AB0A0 0C03006C */  jal        func_800C01B0
/* 15CA4 800AB0A4 24060008 */   addiu     $a2, $zero, 8
/* 15CA8 800AB0A8 3C048010 */  lui        $a0, %hi(D_800FB260)
/* 15CAC 800AB0AC 2484B260 */  addiu      $a0, $a0, %lo(D_800FB260)
/* 15CB0 800AB0B0 26050008 */  addiu      $a1, $s0, 8
/* 15CB4 800AB0B4 0C03006C */  jal        func_800C01B0
/* 15CB8 800AB0B8 24060008 */   addiu     $a2, $zero, 8
/* 15CBC 800AB0BC 24040002 */  addiu      $a0, $zero, 2
/* 15CC0 800AB0C0 26100019 */  addiu      $s0, $s0, 0x19
/* 15CC4 800AB0C4 24030050 */  addiu      $v1, $zero, 0x50
/* 15CC8 800AB0C8 24020070 */  addiu      $v0, $zero, 0x70
/* 15CCC 800AB0CC 3C018015 */  lui        $at, %hi(D_80149E2A)
/* 15CD0 800AB0D0 A0229E2A */  sb         $v0, %lo(D_80149E2A)($at)
/* 15CD4 800AB0D4 24020001 */  addiu      $v0, $zero, 1
/* 15CD8 800AB0D8 3C018015 */  lui        $at, %hi(D_80149E28)
/* 15CDC 800AB0DC A0209E28 */  sb         $zero, %lo(D_80149E28)($at)
/* 15CE0 800AB0E0 3C018015 */  lui        $at, %hi(D_80149E29)
/* 15CE4 800AB0E4 A0239E29 */  sb         $v1, %lo(D_80149E29)($at)
/* 15CE8 800AB0E8 3C018015 */  lui        $at, %hi(D_80149E2B)
/* 15CEC 800AB0EC A0239E2B */  sb         $v1, %lo(D_80149E2B)($at)
/* 15CF0 800AB0F0 3C018015 */  lui        $at, %hi(D_80149E2C)
/* 15CF4 800AB0F4 A0209E2C */  sb         $zero, %lo(D_80149E2C)($at)
/* 15CF8 800AB0F8 3C018015 */  lui        $at, %hi(D_80149E2D)
/* 15CFC 800AB0FC A0229E2D */  sb         $v0, %lo(D_80149E2D)($at)
/* 15D00 800AB100 3C018015 */  lui        $at, %hi(D_80149E2E)
/* 15D04 800AB104 A0229E2E */  sb         $v0, %lo(D_80149E2E)($at)
.L800AB108:
/* 15D08 800AB108 A2000000 */  sb         $zero, ($s0)
/* 15D0C 800AB10C 2484FFFF */  addiu      $a0, $a0, -1
/* 15D10 800AB110 0481FFFD */  bgez       $a0, .L800AB108
/* 15D14 800AB114 2610FFFF */   addiu     $s0, $s0, -1
/* 15D18 800AB118 2404000F */  addiu      $a0, $zero, 0xf
/* 15D1C 800AB11C 3C028015 */  lui        $v0, %hi(D_80149E41)
/* 15D20 800AB120 24429E41 */  addiu      $v0, $v0, %lo(D_80149E41)
.L800AB124:
/* 15D24 800AB124 A0400000 */  sb         $zero, ($v0)
/* 15D28 800AB128 2484FFFF */  addiu      $a0, $a0, -1
/* 15D2C 800AB12C 0481FFFD */  bgez       $a0, .L800AB124
/* 15D30 800AB130 2442FFFF */   addiu     $v0, $v0, -1
/* 15D34 800AB134 3C018015 */  lui        $at, %hi(D_80149E42)
/* 15D38 800AB138 A0209E42 */  sb         $zero, %lo(D_80149E42)($at)
/* 15D3C 800AB13C 3C018015 */  lui        $at, %hi(D_80149E43)
/* 15D40 800AB140 A0209E43 */  sb         $zero, %lo(D_80149E43)($at)
/* 15D44 800AB144 8FBF0014 */  lw         $ra, 0x14($sp)
/* 15D48 800AB148 8FB00010 */  lw         $s0, 0x10($sp)
/* 15D4C 800AB14C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 15D50 800AB150 03E00008 */  jr         $ra
/* 15D54 800AB154 00000000 */   nop
