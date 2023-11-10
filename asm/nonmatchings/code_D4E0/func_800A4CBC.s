glabel func_800A4CBC
/* F8BC 800A4CBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F8C0 800A4CC0 00801821 */  addu       $v1, $a0, $zero
/* F8C4 800A4CC4 AFBF0010 */  sw         $ra, 0x10($sp)
/* F8C8 800A4CC8 8C640000 */  lw         $a0, 0x0($v1)
/* F8CC 800A4CCC 24020005 */  addiu      $v0, $zero, 0x5
/* F8D0 800A4CD0 A0620020 */  sb         $v0, 0x20($v1)
/* F8D4 800A4CD4 94820002 */  lhu        $v0, 0x2($a0)
/* F8D8 800A4CD8 9483000A */  lhu        $v1, 0xA($a0)
/* F8DC 800A4CDC A4820006 */  sh         $v0, 0x6($a0)
/* F8E0 800A4CE0 0C03001C */  jal        func_800C0070
/* F8E4 800A4CE4 A483000E */   sh        $v1, 0xE($a0)
/* F8E8 800A4CE8 8FBF0010 */  lw         $ra, 0x10($sp)
/* F8EC 800A4CEC 27BD0018 */  addiu      $sp, $sp, 0x18
/* F8F0 800A4CF0 03E00008 */  jr         $ra
/* F8F4 800A4CF4 00000000 */   nop
.size func_800A4CBC, . - func_800A4CBC
