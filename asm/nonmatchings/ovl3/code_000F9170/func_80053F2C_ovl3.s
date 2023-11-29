glabel func_80053F2C_ovl3
/* FD43C 80053F2C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* FD440 80053F30 AFBF0028 */  sw         $ra, 0x28($sp)
/* FD444 80053F34 AFB10024 */  sw         $s1, 0x24($sp)
/* FD448 80053F38 0C00E109 */  jal        func_80038424_ovl3
/* FD44C 80053F3C AFB00020 */   sw        $s0, 0x20($sp)
/* FD450 80053F40 24040011 */  addiu      $a0, $zero, 0x11
/* FD454 80053F44 24050001 */  addiu      $a1, $zero, 0x1
/* FD458 80053F48 0C00D925 */  jal        func_80036494_ovl3
/* FD45C 80053F4C 24060050 */   addiu     $a2, $zero, 0x50
/* FD460 80053F50 00408821 */  addu       $s1, $v0, $zero
/* FD464 80053F54 8E24000C */  lw         $a0, 0xC($s1)
/* FD468 80053F58 24050038 */  addiu      $a1, $zero, 0x38
/* FD46C 80053F5C 0C028F9A */  jal        func_800A3E68
/* FD470 80053F60 2406004E */   addiu     $a2, $zero, 0x4E
/* FD474 80053F64 8E24000C */  lw         $a0, 0xC($s1)
/* FD478 80053F68 24050040 */  addiu      $a1, $zero, 0x40
/* FD47C 80053F6C 0C028D89 */  jal        func_800A3624
/* FD480 80053F70 24060040 */   addiu     $a2, $zero, 0x40
/* FD484 80053F74 8E23000C */  lw         $v1, 0xC($s1)
/* FD488 80053F78 24020035 */  addiu      $v0, $zero, 0x35
/* FD48C 80053F7C A462001C */  sh         $v0, 0x1C($v1)
/* FD490 80053F80 8E23000C */  lw         $v1, 0xC($s1)
/* FD494 80053F84 9462001E */  lhu        $v0, 0x1E($v1)
/* FD498 80053F88 34420104 */  ori        $v0, $v0, 0x104
/* FD49C 80053F8C A462001E */  sh         $v0, 0x1E($v1)
/* FD4A0 80053F90 8E23000C */  lw         $v1, 0xC($s1)
/* FD4A4 80053F94 2404000A */  addiu      $a0, $zero, 0xA
/* FD4A8 80053F98 9462001E */  lhu        $v0, 0x1E($v1)
/* FD4AC 80053F9C 24050004 */  addiu      $a1, $zero, 0x4
/* FD4B0 80053FA0 240600C7 */  addiu      $a2, $zero, 0xC7
/* FD4B4 80053FA4 3042FFBF */  andi       $v0, $v0, 0xFFBF
/* FD4B8 80053FA8 0C00D925 */  jal        func_80036494_ovl3
/* FD4BC 80053FAC A462001E */   sh        $v0, 0x1E($v1)
/* FD4C0 80053FB0 00408821 */  addu       $s1, $v0, $zero
/* FD4C4 80053FB4 8E24000C */  lw         $a0, 0xC($s1)
/* FD4C8 80053FB8 8C82000C */  lw         $v0, 0xC($a0)
/* FD4CC 80053FBC 94450000 */  lhu        $a1, 0x0($v0)
/* FD4D0 80053FC0 94460002 */  lhu        $a2, 0x2($v0)
/* FD4D4 80053FC4 00052842 */  srl        $a1, $a1, 1
/* FD4D8 80053FC8 0C02912A */  jal        func_800A44A8
/* FD4DC 80053FCC 00063042 */   srl       $a2, $a2, 1
/* FD4E0 80053FD0 8E24000C */  lw         $a0, 0xC($s1)
/* FD4E4 80053FD4 24050280 */  addiu      $a1, $zero, 0x280
/* FD4E8 80053FD8 0C028D89 */  jal        func_800A3624
/* FD4EC 80053FDC 24060190 */   addiu     $a2, $zero, 0x190
/* FD4F0 80053FE0 8E23000C */  lw         $v1, 0xC($s1)
/* FD4F4 80053FE4 2402004B */  addiu      $v0, $zero, 0x4B
/* FD4F8 80053FE8 A462001C */  sh         $v0, 0x1C($v1)
/* FD4FC 80053FEC 8E23000C */  lw         $v1, 0xC($s1)
/* FD500 80053FF0 2404000B */  addiu      $a0, $zero, 0xB
/* FD504 80053FF4 9462001E */  lhu        $v0, 0x1E($v1)
/* FD508 80053FF8 24050002 */  addiu      $a1, $zero, 0x2
/* FD50C 80053FFC 240600C8 */  addiu      $a2, $zero, 0xC8
/* FD510 80054000 34420004 */  ori        $v0, $v0, 0x4
/* FD514 80054004 0C00D925 */  jal        func_80036494_ovl3
/* FD518 80054008 A462001E */   sh        $v0, 0x1E($v1)
/* FD51C 8005400C 00408821 */  addu       $s1, $v0, $zero
/* FD520 80054010 8E24000C */  lw         $a0, 0xC($s1)
/* FD524 80054014 8C82000C */  lw         $v0, 0xC($a0)
/* FD528 80054018 94450000 */  lhu        $a1, 0x0($v0)
/* FD52C 8005401C 94460002 */  lhu        $a2, 0x2($v0)
/* FD530 80054020 00052842 */  srl        $a1, $a1, 1
/* FD534 80054024 0C02912A */  jal        func_800A44A8
/* FD538 80054028 00063042 */   srl       $a2, $a2, 1
/* FD53C 8005402C 8E24000C */  lw         $a0, 0xC($s1)
/* FD540 80054030 24050168 */  addiu      $a1, $zero, 0x168
/* FD544 80054034 0C028D89 */  jal        func_800A3624
/* FD548 80054038 240602F8 */   addiu     $a2, $zero, 0x2F8
/* FD54C 8005403C 240200FF */  addiu      $v0, $zero, 0xFF
/* FD550 80054040 AFA20010 */  sw         $v0, 0x10($sp)
/* FD554 80054044 8E24000C */  lw         $a0, 0xC($s1)
/* FD558 80054048 240500FF */  addiu      $a1, $zero, 0xFF
/* FD55C 8005404C 240600FF */  addiu      $a2, $zero, 0xFF
/* FD560 80054050 0C028E41 */  jal        func_800A3904
/* FD564 80054054 240700FF */   addiu     $a3, $zero, 0xFF
/* FD568 80054058 8E22000C */  lw         $v0, 0xC($s1)
/* FD56C 8005405C 2410004A */  addiu      $s0, $zero, 0x4A
/* FD570 80054060 A450001C */  sh         $s0, 0x1C($v0)
/* FD574 80054064 8E23000C */  lw         $v1, 0xC($s1)
/* FD578 80054068 2404000C */  addiu      $a0, $zero, 0xC
/* FD57C 8005406C 9462001E */  lhu        $v0, 0x1E($v1)
/* FD580 80054070 24050002 */  addiu      $a1, $zero, 0x2
/* FD584 80054074 240600C9 */  addiu      $a2, $zero, 0xC9
/* FD588 80054078 34420004 */  ori        $v0, $v0, 0x4
/* FD58C 8005407C 0C00D925 */  jal        func_80036494_ovl3
/* FD590 80054080 A462001E */   sh        $v0, 0x1E($v1)
/* FD594 80054084 00408821 */  addu       $s1, $v0, $zero
/* FD598 80054088 8E24000C */  lw         $a0, 0xC($s1)
/* FD59C 8005408C 8C82000C */  lw         $v0, 0xC($a0)
/* FD5A0 80054090 94450000 */  lhu        $a1, 0x0($v0)
/* FD5A4 80054094 94460002 */  lhu        $a2, 0x2($v0)
/* FD5A8 80054098 00052842 */  srl        $a1, $a1, 1
/* FD5AC 8005409C 0C02912A */  jal        func_800A44A8
/* FD5B0 800540A0 00063042 */   srl       $a2, $a2, 1
/* FD5B4 800540A4 8E24000C */  lw         $a0, 0xC($s1)
/* FD5B8 800540A8 24050398 */  addiu      $a1, $zero, 0x398
/* FD5BC 800540AC 0C028D89 */  jal        func_800A3624
/* FD5C0 800540B0 240602F8 */   addiu     $a2, $zero, 0x2F8
/* FD5C4 800540B4 24020040 */  addiu      $v0, $zero, 0x40
/* FD5C8 800540B8 AFA20010 */  sw         $v0, 0x10($sp)
/* FD5CC 800540BC 8E24000C */  lw         $a0, 0xC($s1)
/* FD5D0 800540C0 240500FF */  addiu      $a1, $zero, 0xFF
/* FD5D4 800540C4 240600FF */  addiu      $a2, $zero, 0xFF
/* FD5D8 800540C8 0C028E41 */  jal        func_800A3904
/* FD5DC 800540CC 240700FF */   addiu     $a3, $zero, 0xFF
/* FD5E0 800540D0 8E22000C */  lw         $v0, 0xC($s1)
/* FD5E4 800540D4 A450001C */  sh         $s0, 0x1C($v0)
/* FD5E8 800540D8 8E23000C */  lw         $v1, 0xC($s1)
/* FD5EC 800540DC 9462001E */  lhu        $v0, 0x1E($v1)
/* FD5F0 800540E0 34420004 */  ori        $v0, $v0, 0x4
/* FD5F4 800540E4 A462001E */  sh         $v0, 0x1E($v1)
/* FD5F8 800540E8 8FBF0028 */  lw         $ra, 0x28($sp)
/* FD5FC 800540EC 8FB10024 */  lw         $s1, 0x24($sp)
/* FD600 800540F0 8FB00020 */  lw         $s0, 0x20($sp)
/* FD604 800540F4 03E00008 */  jr         $ra
/* FD608 800540F8 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_80053F2C_ovl3, . - func_80053F2C_ovl3
