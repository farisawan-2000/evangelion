.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD208
/* 27E08 800BD208 ACA00000 */  sw         $zero, ($a1)
/* 27E0C 800BD20C 8C860000 */  lw         $a2, ($a0)
/* 27E10 800BD210 3C077FFF */  lui        $a3, 0x7fff
/* 27E14 800BD214 10C0000E */  beqz       $a2, .L800BD250
/* 27E18 800BD218 34E7FFFF */   ori       $a3, $a3, 0xffff
.L800BD21C:
/* 27E1C 800BD21C 8CC20010 */  lw         $v0, 0x10($a2)
/* 27E20 800BD220 8C830020 */  lw         $v1, 0x20($a0)
/* 27E24 800BD224 00431023 */  subu       $v0, $v0, $v1
/* 27E28 800BD228 0047102A */  slt        $v0, $v0, $a3
/* 27E2C 800BD22C 10400005 */  beqz       $v0, .L800BD244
/* 27E30 800BD230 00000000 */   nop
/* 27E34 800BD234 ACA60000 */  sw         $a2, ($a1)
/* 27E38 800BD238 8CC30010 */  lw         $v1, 0x10($a2)
/* 27E3C 800BD23C 8C820020 */  lw         $v0, 0x20($a0)
/* 27E40 800BD240 00623823 */  subu       $a3, $v1, $v0
.L800BD244:
/* 27E44 800BD244 8CC60000 */  lw         $a2, ($a2)
/* 27E48 800BD248 14C0FFF4 */  bnez       $a2, .L800BD21C
/* 27E4C 800BD24C 00000000 */   nop
.L800BD250:
/* 27E50 800BD250 8CA20000 */  lw         $v0, ($a1)
/* 27E54 800BD254 03E00008 */  jr         $ra
/* 27E58 800BD258 8C420010 */   lw        $v0, 0x10($v0)
/* 27E5C 800BD25C 00000000 */  nop
