.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A8788
/* 13388 800A8788 30A500FF */  andi       $a1, $a1, 0xff
/* 1338C 800A878C 3C028010 */  lui        $v0, %hi(D_801001CA)
/* 13390 800A8790 244201CA */  addiu      $v0, $v0, %lo(D_801001CA)
/* 13394 800A8794 00053840 */  sll        $a3, $a1, 1
/* 13398 800A8798 00E23021 */  addu       $a2, $a3, $v0
/* 1339C 800A879C 94C30000 */  lhu        $v1, ($a2)
/* 133A0 800A87A0 3068FFFF */  andi       $t0, $v1, 0xffff
/* 133A4 800A87A4 2D020064 */  sltiu      $v0, $t0, 0x64
/* 133A8 800A87A8 1040000F */  beqz       $v0, .L800A87E8
/* 133AC 800A87AC 24620001 */   addiu     $v0, $v1, 1
/* 133B0 800A87B0 3C038010 */  lui        $v1, %hi(D_80100038)
/* 133B4 800A87B4 24630038 */  addiu      $v1, $v1, %lo(D_80100038)
/* 133B8 800A87B8 A4C20000 */  sh         $v0, ($a2)
/* 133BC 800A87BC 00E51021 */  addu       $v0, $a3, $a1
/* 133C0 800A87C0 000210C0 */  sll        $v0, $v0, 3
/* 133C4 800A87C4 00451021 */  addu       $v0, $v0, $a1
/* 133C8 800A87C8 00021100 */  sll        $v0, $v0, 4
/* 133CC 800A87CC 00431021 */  addu       $v0, $v0, $v1
/* 133D0 800A87D0 00081880 */  sll        $v1, $t0, 2
/* 133D4 800A87D4 00621821 */  addu       $v1, $v1, $v0
/* 133D8 800A87D8 2402FFFF */  addiu      $v0, $zero, -1
/* 133DC 800A87DC AC640000 */  sw         $a0, ($v1)
/* 133E0 800A87E0 A4820014 */  sh         $v0, 0x14($a0)
/* 133E4 800A87E4 AC800018 */  sw         $zero, 0x18($a0)
.L800A87E8:
/* 133E8 800A87E8 03E00008 */  jr         $ra
/* 133EC 800A87EC 00000000 */   nop
