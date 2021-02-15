.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009F4E8
/* A0E8 8009F4E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A0EC 8009F4EC 10800009 */  beqz       $a0, .L8009F514
/* A0F0 8009F4F0 AFBF0010 */   sw        $ra, 0x10($sp)
/* A0F4 8009F4F4 9082002D */  lbu        $v0, 0x2d($a0)
/* A0F8 8009F4F8 10400006 */  beqz       $v0, .L8009F514
/* A0FC 8009F4FC 240200FF */   addiu     $v0, $zero, 0xff
/* A100 8009F500 84830020 */  lh         $v1, 0x20($a0)
/* A104 8009F504 10620003 */  beq        $v1, $v0, .L8009F514
/* A108 8009F508 A080002D */   sb        $zero, 0x2d($a0)
/* A10C 8009F50C 0C027C6D */  jal        func_8009F1B4
/* A110 8009F510 00000000 */   nop
.L8009F514:
/* A114 8009F514 8FBF0010 */  lw         $ra, 0x10($sp)
/* A118 8009F518 27BD0018 */  addiu      $sp, $sp, 0x18
/* A11C 8009F51C 03E00008 */  jr         $ra
/* A120 8009F520 00000000 */   nop
