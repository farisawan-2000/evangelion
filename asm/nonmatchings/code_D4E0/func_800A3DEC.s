glabel func_800A3DEC
/* E9EC 800A3DEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E9F0 800A3DF0 10800019 */  beqz       $a0, .L800A3E58
/* E9F4 800A3DF4 AFBF0010 */   sw        $ra, 0x10($sp)
/* E9F8 800A3DF8 90830022 */  lbu        $v1, 0x22($a0)
/* E9FC 800A3DFC 24020001 */  addiu      $v0, $zero, 0x1
/* EA00 800A3E00 1062000F */  beq        $v1, $v0, .L800A3E40
/* EA04 800A3E04 28620002 */   slti      $v0, $v1, 0x2
/* EA08 800A3E08 50400005 */  beql       $v0, $zero, .L800A3E20
/* EA0C 800A3E0C 24020002 */   addiu     $v0, $zero, 0x2
/* EA10 800A3E10 10600007 */  beqz       $v1, .L800A3E30
/* EA14 800A3E14 00000000 */   nop
/* EA18 800A3E18 08028F96 */  j          .L800A3E58
/* EA1C 800A3E1C 00000000 */   nop
.L800A3E20:
/* EA20 800A3E20 1062000B */  beq        $v1, $v0, .L800A3E50
/* EA24 800A3E24 00000000 */   nop
/* EA28 800A3E28 08028F96 */  j          .L800A3E58
/* EA2C 800A3E2C 00000000 */   nop
.L800A3E30:
/* EA30 800A3E30 0C0326A1 */  jal        func_800C9A84
/* EA34 800A3E34 00000000 */   nop
/* EA38 800A3E38 08028F96 */  j          .L800A3E58
/* EA3C 800A3E3C 00000000 */   nop
.L800A3E40:
/* EA40 800A3E40 0C025EC3 */  jal        func_80097B0C
/* EA44 800A3E44 00000000 */   nop
/* EA48 800A3E48 08028F96 */  j          .L800A3E58
/* EA4C 800A3E4C 00000000 */   nop
.L800A3E50:
/* EA50 800A3E50 0C026187 */  jal        func_8009861C
/* EA54 800A3E54 00000000 */   nop
.L800A3E58:
/* EA58 800A3E58 8FBF0010 */  lw         $ra, 0x10($sp)
/* EA5C 800A3E5C 27BD0018 */  addiu      $sp, $sp, 0x18
/* EA60 800A3E60 03E00008 */  jr         $ra
/* EA64 800A3E64 00000000 */   nop
.size func_800A3DEC, . - func_800A3DEC