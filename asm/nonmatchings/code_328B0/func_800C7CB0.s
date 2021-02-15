.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C7CB0
/* 328B0 800C7CB0 40085000 */  mfc0       $t0, $10
/* 328B4 800C7CB4 2409001F */  addiu      $t1, $zero, 0x1f
/* 328B8 800C7CB8 40890000 */  mtc0       $t1, $0
/* 328BC 800C7CBC 40802800 */  mtc0       $zero, $5
/* 328C0 800C7CC0 240A0017 */  addiu      $t2, $zero, 0x17
/* 328C4 800C7CC4 3C09C000 */  lui        $t1, 0xc000
/* 328C8 800C7CC8 40895000 */  mtc0       $t1, $10
/* 328CC 800C7CCC 3C098000 */  lui        $t1, 0x8000
/* 328D0 800C7CD0 00095982 */  srl        $t3, $t1, 6
/* 328D4 800C7CD4 016A5825 */  or         $t3, $t3, $t2
/* 328D8 800C7CD8 408B1000 */  mtc0       $t3, $2
/* 328DC 800C7CDC 24090001 */  addiu      $t1, $zero, 1
/* 328E0 800C7CE0 40891800 */  mtc0       $t1, $3
/* 328E4 800C7CE4 00000000 */  nop
/* 328E8 800C7CE8 42000002 */  tlbwi
/* 328EC 800C7CEC 00000000 */  nop
/* 328F0 800C7CF0 00000000 */  nop
/* 328F4 800C7CF4 00000000 */  nop
/* 328F8 800C7CF8 00000000 */  nop
/* 328FC 800C7CFC 40885000 */  mtc0       $t0, $10
/* 32900 800C7D00 03E00008 */  jr         $ra
/* 32904 800C7D04 00000000 */   nop
/* 32908 800C7D08 00000000 */  nop
/* 3290C 800C7D0C 00000000 */  nop
