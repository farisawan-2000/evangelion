.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AFD60
/* 1A960 800AFD60 8C830040 */  lw         $v1, 0x40($a0)
/* 1A964 800AFD64 908200BD */  lbu        $v0, 0xbd($a0)
/* 1A968 800AFD68 A08000D9 */  sb         $zero, 0xd9($a0)
/* 1A96C 800AFD6C 30420040 */  andi       $v0, $v0, 0x40
/* 1A970 800AFD70 AC830094 */  sw         $v1, 0x94($a0)
/* 1A974 800AFD74 03E00008 */  jr         $ra
/* 1A978 800AFD78 A08200DA */   sb        $v0, 0xda($a0)
