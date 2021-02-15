.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C0B10
/* 2B710 800C0B10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2B714 800C0B14 AFB00010 */  sw         $s0, 0x10($sp)
/* 2B718 800C0B18 00808021 */  addu       $s0, $a0, $zero
/* 2B71C 800C0B1C AFB10014 */  sw         $s1, 0x14($sp)
/* 2B720 800C0B20 3C118015 */  lui        $s1, %hi(D_80148820)
/* 2B724 800C0B24 26318820 */  addiu      $s1, $s1, %lo(D_80148820)
/* 2B728 800C0B28 02202821 */  addu       $a1, $s1, $zero
/* 2B72C 800C0B2C AFBF0018 */  sw         $ra, 0x18($sp)
/* 2B730 800C0B30 0C03006C */  jal        func_800C01B0
/* 2B734 800C0B34 24060040 */   addiu     $a2, $zero, 0x40
/* 2B738 800C0B38 3C048015 */  lui        $a0, %hi(D_80148830)
/* 2B73C 800C0B3C 8C848830 */  lw         $a0, %lo(D_80148830)($a0)
/* 2B740 800C0B40 10800005 */  beqz       $a0, .L800C0B58
/* 2B744 800C0B44 00000000 */   nop
/* 2B748 800C0B48 0C02F680 */  jal        func_800BDA00
/* 2B74C 800C0B4C 00000000 */   nop
/* 2B750 800C0B50 3C018015 */  lui        $at, %hi(D_80148830)
/* 2B754 800C0B54 AC228830 */  sw         $v0, %lo(D_80148830)($at)
.L800C0B58:
/* 2B758 800C0B58 3C048015 */  lui        $a0, %hi(D_80148838)
/* 2B75C 800C0B5C 8C848838 */  lw         $a0, %lo(D_80148838)($a0)
/* 2B760 800C0B60 10800005 */  beqz       $a0, .L800C0B78
/* 2B764 800C0B64 00000000 */   nop
/* 2B768 800C0B68 0C02F680 */  jal        func_800BDA00
/* 2B76C 800C0B6C 00000000 */   nop
/* 2B770 800C0B70 3C018015 */  lui        $at, %hi(D_80148838)
/* 2B774 800C0B74 AC228838 */  sw         $v0, %lo(D_80148838)($at)
.L800C0B78:
/* 2B778 800C0B78 3C048015 */  lui        $a0, %hi(D_80148840)
/* 2B77C 800C0B7C 8C848840 */  lw         $a0, %lo(D_80148840)($a0)
/* 2B780 800C0B80 10800005 */  beqz       $a0, .L800C0B98
/* 2B784 800C0B84 00000000 */   nop
/* 2B788 800C0B88 0C02F680 */  jal        func_800BDA00
/* 2B78C 800C0B8C 00000000 */   nop
/* 2B790 800C0B90 3C018015 */  lui        $at, %hi(D_80148840)
/* 2B794 800C0B94 AC228840 */  sw         $v0, %lo(D_80148840)($at)
.L800C0B98:
/* 2B798 800C0B98 3C048015 */  lui        $a0, %hi(D_80148848)
/* 2B79C 800C0B9C 8C848848 */  lw         $a0, %lo(D_80148848)($a0)
/* 2B7A0 800C0BA0 10800005 */  beqz       $a0, .L800C0BB8
/* 2B7A4 800C0BA4 00000000 */   nop
/* 2B7A8 800C0BA8 0C02F680 */  jal        func_800BDA00
/* 2B7AC 800C0BAC 00000000 */   nop
/* 2B7B0 800C0BB0 3C018015 */  lui        $at, %hi(D_80148848)
/* 2B7B4 800C0BB4 AC228848 */  sw         $v0, %lo(D_80148848)($at)
.L800C0BB8:
/* 2B7B8 800C0BB8 3C048015 */  lui        $a0, %hi(D_8014884C)
/* 2B7BC 800C0BBC 8C84884C */  lw         $a0, %lo(D_8014884C)($a0)
/* 2B7C0 800C0BC0 10800005 */  beqz       $a0, .L800C0BD8
/* 2B7C4 800C0BC4 00000000 */   nop
/* 2B7C8 800C0BC8 0C02F680 */  jal        func_800BDA00
/* 2B7CC 800C0BCC 00000000 */   nop
/* 2B7D0 800C0BD0 3C018015 */  lui        $at, %hi(D_8014884C)
/* 2B7D4 800C0BD4 AC22884C */  sw         $v0, %lo(D_8014884C)($at)
.L800C0BD8:
/* 2B7D8 800C0BD8 3C048015 */  lui        $a0, %hi(D_80148850)
/* 2B7DC 800C0BDC 8C848850 */  lw         $a0, %lo(D_80148850)($a0)
/* 2B7E0 800C0BE0 10800005 */  beqz       $a0, .L800C0BF8
/* 2B7E4 800C0BE4 00000000 */   nop
/* 2B7E8 800C0BE8 0C02F680 */  jal        func_800BDA00
/* 2B7EC 800C0BEC 00000000 */   nop
/* 2B7F0 800C0BF0 3C018015 */  lui        $at, %hi(D_80148850)
/* 2B7F4 800C0BF4 AC228850 */  sw         $v0, %lo(D_80148850)($at)
.L800C0BF8:
/* 2B7F8 800C0BF8 3C048015 */  lui        $a0, %hi(D_80148858)
/* 2B7FC 800C0BFC 8C848858 */  lw         $a0, %lo(D_80148858)($a0)
/* 2B800 800C0C00 10800005 */  beqz       $a0, .L800C0C18
/* 2B804 800C0C04 00000000 */   nop
/* 2B808 800C0C08 0C02F680 */  jal        func_800BDA00
/* 2B80C 800C0C0C 00000000 */   nop
/* 2B810 800C0C10 3C018015 */  lui        $at, %hi(D_80148858)
/* 2B814 800C0C14 AC228858 */  sw         $v0, %lo(D_80148858)($at)
.L800C0C18:
/* 2B818 800C0C18 3C028015 */  lui        $v0, %hi(D_80148824)
/* 2B81C 800C0C1C 8C428824 */  lw         $v0, %lo(D_80148824)($v0)
/* 2B820 800C0C20 30420001 */  andi       $v0, $v0, 1
/* 2B824 800C0C24 10400019 */  beqz       $v0, .L800C0C8C
/* 2B828 800C0C28 02202021 */   addu      $a0, $s1, $zero
/* 2B82C 800C0C2C 3C028015 */  lui        $v0, %hi(D_80148858)
/* 2B830 800C0C30 8C428858 */  lw         $v0, %lo(D_80148858)($v0)
/* 2B834 800C0C34 3C038015 */  lui        $v1, %hi(D_8014885C)
/* 2B838 800C0C38 8C63885C */  lw         $v1, %lo(D_8014885C)($v1)
/* 2B83C 800C0C3C 3C018015 */  lui        $at, %hi(D_80148838)
/* 2B840 800C0C40 AC228838 */  sw         $v0, %lo(D_80148838)($at)
/* 2B844 800C0C44 3C018015 */  lui        $at, %hi(D_8014883C)
/* 2B848 800C0C48 AC23883C */  sw         $v1, %lo(D_8014883C)($at)
/* 2B84C 800C0C4C 8E020004 */  lw         $v0, 4($s0)
/* 2B850 800C0C50 2403FFFE */  addiu      $v1, $zero, -2
/* 2B854 800C0C54 00431024 */  and        $v0, $v0, $v1
/* 2B858 800C0C58 AE020004 */  sw         $v0, 4($s0)
/* 2B85C 800C0C5C 3C028015 */  lui        $v0, %hi(D_80148824)
/* 2B860 800C0C60 8C428824 */  lw         $v0, %lo(D_80148824)($v0)
/* 2B864 800C0C64 30420004 */  andi       $v0, $v0, 4
/* 2B868 800C0C68 10400008 */  beqz       $v0, .L800C0C8C
/* 2B86C 800C0C6C 3C03A000 */   lui       $v1, 0xa000
/* 2B870 800C0C70 8E020038 */  lw         $v0, 0x38($s0)
/* 2B874 800C0C74 24420BFC */  addiu      $v0, $v0, 0xbfc
/* 2B878 800C0C78 00431025 */  or         $v0, $v0, $v1
/* 2B87C 800C0C7C 8C420000 */  lw         $v0, ($v0)
/* 2B880 800C0C80 3C018015 */  lui        $at, %hi(D_80148830)
/* 2B884 800C0C84 AC228830 */  sw         $v0, %lo(D_80148830)($at)
/* 2B888 800C0C88 02202021 */  addu       $a0, $s1, $zero
.L800C0C8C:
/* 2B88C 800C0C8C 0C031B14 */  jal        func_800C6C50
/* 2B890 800C0C90 24050040 */   addiu     $a1, $zero, 0x40
/* 2B894 800C0C94 0C031E5C */  jal        func_800C7970
/* 2B898 800C0C98 24042B00 */   addiu     $a0, $zero, 0x2b00
/* 2B89C 800C0C9C 2410FFFF */  addiu      $s0, $zero, -1
/* 2B8A0 800C0CA0 3C040400 */  lui        $a0, 0x400
.L800C0CA4:
/* 2B8A4 800C0CA4 0C031E60 */  jal        func_800C7980
/* 2B8A8 800C0CA8 34841000 */   ori       $a0, $a0, 0x1000
/* 2B8AC 800C0CAC 1050FFFD */  beq        $v0, $s0, .L800C0CA4
/* 2B8B0 800C0CB0 3C040400 */   lui       $a0, 0x400
/* 2B8B4 800C0CB4 2410FFFF */  addiu      $s0, $zero, -1
/* 2B8B8 800C0CB8 24040001 */  addiu      $a0, $zero, 1
.L800C0CBC:
/* 2B8BC 800C0CBC 3C050400 */  lui        $a1, 0x400
/* 2B8C0 800C0CC0 34A50FC0 */  ori        $a1, $a1, 0xfc0
/* 2B8C4 800C0CC4 02203021 */  addu       $a2, $s1, $zero
/* 2B8C8 800C0CC8 0C031E6C */  jal        func_800C79B0
/* 2B8CC 800C0CCC 24070040 */   addiu     $a3, $zero, 0x40
/* 2B8D0 800C0CD0 1050FFFA */  beq        $v0, $s0, .L800C0CBC
/* 2B8D4 800C0CD4 24040001 */   addiu     $a0, $zero, 1
.L800C0CD8:
/* 2B8D8 800C0CD8 0C031E50 */  jal        func_800C7940
/* 2B8DC 800C0CDC 00000000 */   nop
/* 2B8E0 800C0CE0 1440FFFD */  bnez       $v0, .L800C0CD8
/* 2B8E4 800C0CE4 24040001 */   addiu     $a0, $zero, 1
/* 2B8E8 800C0CE8 2410FFFF */  addiu      $s0, $zero, -1
.L800C0CEC:
/* 2B8EC 800C0CEC 8E260008 */  lw         $a2, 8($s1)
/* 2B8F0 800C0CF0 8E27000C */  lw         $a3, 0xc($s1)
/* 2B8F4 800C0CF4 3C050400 */  lui        $a1, 0x400
/* 2B8F8 800C0CF8 0C031E6C */  jal        func_800C79B0
/* 2B8FC 800C0CFC 34A51000 */   ori       $a1, $a1, 0x1000
/* 2B900 800C0D00 1050FFFA */  beq        $v0, $s0, .L800C0CEC
/* 2B904 800C0D04 24040001 */   addiu     $a0, $zero, 1
/* 2B908 800C0D08 8FBF0018 */  lw         $ra, 0x18($sp)
/* 2B90C 800C0D0C 8FB10014 */  lw         $s1, 0x14($sp)
/* 2B910 800C0D10 8FB00010 */  lw         $s0, 0x10($sp)
/* 2B914 800C0D14 03E00008 */  jr         $ra
/* 2B918 800C0D18 27BD0020 */   addiu     $sp, $sp, 0x20
