.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009FD78
/* A978 8009FD78 93A30013 */  lbu        $v1, 0x13($sp)
/* A97C 8009FD7C 90820066 */  lbu        $v0, 0x66($a0)
/* A980 8009FD80 A0850060 */  sb         $a1, 0x60($a0)
/* A984 8009FD84 A0860061 */  sb         $a2, 0x61($a0)
/* A988 8009FD88 A0870062 */  sb         $a3, 0x62($a0)
/* A98C 8009FD8C 34420020 */  ori        $v0, $v0, 0x20
/* A990 8009FD90 A0830063 */  sb         $v1, 0x63($a0)
/* A994 8009FD94 03E00008 */  jr         $ra
/* A998 8009FD98 A0820066 */   sb        $v0, 0x66($a0)
