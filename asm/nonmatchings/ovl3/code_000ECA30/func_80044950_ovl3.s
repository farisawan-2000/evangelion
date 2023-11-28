glabel func_80044950_ovl3
/* EDE60 80044950 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* EDE64 80044954 AFBF001C */  sw         $ra, 0x1C($sp)
/* EDE68 80044958 0C00E109 */  jal        func_80038424_ovl3
/* EDE6C 8004495C AFB00018 */   sw        $s0, 0x18($sp)
/* EDE70 80044960 3C048033 */  lui        $a0, (0x80335040 >> 16)
/* EDE74 80044964 34845040 */  ori        $a0, $a0, (0x80335040 & 0xFFFF)
/* EDE78 80044968 24050124 */  addiu      $a1, $zero, 0x124
/* EDE7C 8004496C 24060009 */  addiu      $a2, $zero, 0x9
/* EDE80 80044970 0C00D9E0 */  jal        func_80036780_ovl3
/* EDE84 80044974 2407003F */   addiu     $a3, $zero, 0x3F
/* EDE88 80044978 8C44000C */  lw         $a0, 0xC($v0)
/* EDE8C 8004497C 24050040 */  addiu      $a1, $zero, 0x40
/* EDE90 80044980 0C028D89 */  jal        func_800A3624
/* EDE94 80044984 240600C0 */   addiu     $a2, $zero, 0xC0
/* EDE98 80044988 2404012F */  addiu      $a0, $zero, 0x12F
/* EDE9C 8004498C 24050006 */  addiu      $a1, $zero, 0x6
/* EDEA0 80044990 0C00D925 */  jal        func_80036494_ovl3
/* EDEA4 80044994 24060039 */   addiu     $a2, $zero, 0x39
/* EDEA8 80044998 00402021 */  addu       $a0, $v0, $zero
/* EDEAC 8004499C 8C83000C */  lw         $v1, 0xC($a0)
/* EDEB0 800449A0 9462001E */  lhu        $v0, 0x1E($v1)
/* EDEB4 800449A4 00008021 */  addu       $s0, $zero, $zero
/* EDEB8 800449A8 34420040 */  ori        $v0, $v0, 0x40
/* EDEBC 800449AC A462001E */  sh         $v0, 0x1E($v1)
/* EDEC0 800449B0 8C84000C */  lw         $a0, 0xC($a0)
/* EDEC4 800449B4 24050340 */  addiu      $a1, $zero, 0x340
/* EDEC8 800449B8 0C028D89 */  jal        func_800A3624
/* EDECC 800449BC 24060160 */   addiu     $a2, $zero, 0x160
/* EDED0 800449C0 320600FF */  andi       $a2, $s0, 0xFF
.L800449C4_ovl3:
/* EDED4 800449C4 24C4012D */  addiu      $a0, $a2, 0x12D
/* EDED8 800449C8 00002821 */  addu       $a1, $zero, $zero
/* EDEDC 800449CC 0C00D925 */  jal        func_80036494_ovl3
/* EDEE0 800449D0 24C6003A */   addiu     $a2, $a2, 0x3A
/* EDEE4 800449D4 8C44000C */  lw         $a0, 0xC($v0)
/* EDEE8 800449D8 24050100 */  addiu      $a1, $zero, 0x100
/* EDEEC 800449DC 240600E0 */  addiu      $a2, $zero, 0xE0
/* EDEF0 800449E0 0C028D89 */  jal        func_800A3624
/* EDEF4 800449E4 26100001 */   addiu     $s0, $s0, 0x1
/* EDEF8 800449E8 320200FF */  andi       $v0, $s0, 0xFF
/* EDEFC 800449EC 2C420002 */  sltiu      $v0, $v0, 0x2
/* EDF00 800449F0 1440FFF4 */  bnez       $v0, .L800449C4_ovl3
/* EDF04 800449F4 320600FF */   andi      $a2, $s0, 0xFF
/* EDF08 800449F8 27A40010 */  addiu      $a0, $sp, 0x10
/* EDF0C 800449FC 240520C9 */  addiu      $a1, $zero, 0x20C9
/* EDF10 80044A00 24060002 */  addiu      $a2, $zero, 0x2
/* EDF14 80044A04 3C028007 */  lui        $v0, %hi(D_80069070_ovl3)
/* EDF18 80044A08 24429070 */  addiu      $v0, $v0, %lo(D_80069070_ovl3)
/* EDF1C 80044A0C AFA20010 */  sw         $v0, 0x10($sp)
/* EDF20 80044A10 2402FFFE */  addiu      $v0, $zero, -0x2
/* EDF24 80044A14 A3A20014 */  sb         $v0, 0x14($sp)
/* EDF28 80044A18 24020001 */  addiu      $v0, $zero, 0x1
/* EDF2C 80044A1C A3A20016 */  sb         $v0, 0x16($sp)
/* EDF30 80044A20 24020003 */  addiu      $v0, $zero, 0x3
/* EDF34 80044A24 A3A00015 */  sb         $zero, 0x15($sp)
/* EDF38 80044A28 0C00DE82 */  jal        func_80037A08_ovl3
/* EDF3C 80044A2C A3A20017 */   sb        $v0, 0x17($sp)
/* EDF40 80044A30 8FBF001C */  lw         $ra, 0x1C($sp)
/* EDF44 80044A34 8FB00018 */  lw         $s0, 0x18($sp)
/* EDF48 80044A38 03E00008 */  jr         $ra
/* EDF4C 80044A3C 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_80044950_ovl3, . - func_80044950_ovl3
