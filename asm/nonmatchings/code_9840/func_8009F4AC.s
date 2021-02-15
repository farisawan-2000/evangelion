.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009F4AC
/* A0AC 8009F4AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A0B0 8009F4B0 10800004 */  beqz       $a0, .L8009F4C4
/* A0B4 8009F4B4 AFBF0010 */   sw        $ra, 0x10($sp)
/* A0B8 8009F4B8 A080002E */  sb         $zero, 0x2e($a0)
/* A0BC 8009F4BC 0C027BE3 */  jal        func_8009EF8C
/* A0C0 8009F4C0 A4800020 */   sh        $zero, 0x20($a0)
.L8009F4C4:
/* A0C4 8009F4C4 8FBF0010 */  lw         $ra, 0x10($sp)
/* A0C8 8009F4C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* A0CC 8009F4CC 03E00008 */  jr         $ra
/* A0D0 8009F4D0 00000000 */   nop
