.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C0FF0
/* 2BBF0 800C0FF0 03E00008 */  jr         $ra
/* 2BBF4 800C0FF4 24820078 */   addiu     $v0, $a0, 0x78
