glabel func_800A3624
/* E224 800A3624 90830020 */  lbu        $v1, 0x20($a0)
/* E228 800A3628 2C620007 */  sltiu      $v0, $v1, 0x7
/* E22C 800A362C 10400014 */  beqz       $v0, .L800A3680
/* E230 800A3630 00031080 */   sll       $v0, $v1, 2
/* E234 800A3634 3C018010 */  lui        $at, %hi(jtbl_800F9E50)
/* E238 800A3638 00220821 */  addu       $at, $at, $v0
/* E23C 800A363C 8C229E50 */  lw         $v0, %lo(jtbl_800F9E50)($at)
/* E240 800A3640 00400008 */  jr         $v0
/* E244 800A3644 00000000 */   nop
glabel .L800A3648
/* E248 800A3648 8C820000 */  lw         $v0, 0x0($a0)
/* E24C 800A364C A4450018 */  sh         $a1, 0x18($v0)
/* E250 800A3650 8C820000 */  lw         $v0, 0x0($a0)
/* E254 800A3654 08028DA0 */  j          .L800A3680
/* E258 800A3658 A4460020 */   sh        $a2, 0x20($v0)
glabel .L800A365C
/* E25C 800A365C 8C820008 */  lw         $v0, 0x8($a0)
/* E260 800A3660 A4450010 */  sh         $a1, 0x10($v0)
/* E264 800A3664 8C820008 */  lw         $v0, 0x8($a0)
/* E268 800A3668 08028DA0 */  j          .L800A3680
/* E26C 800A366C A4460012 */   sh        $a2, 0x12($v0)
glabel .L800A3670
/* E270 800A3670 8C820000 */  lw         $v0, 0x0($a0)
/* E274 800A3674 A4450004 */  sh         $a1, 0x4($v0)
/* E278 800A3678 8C820000 */  lw         $v0, 0x0($a0)
/* E27C 800A367C A446000C */  sh         $a2, 0xC($v0)
.L800A3680:
/* E280 800A3680 03E00008 */  jr         $ra
/* E284 800A3684 00000000 */   nop
.size func_800A3624, . - func_800A3624