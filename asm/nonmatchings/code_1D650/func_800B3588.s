glabel func_800B3588
/* 1E188 800B3588 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E18C 800B358C 24020004 */  addiu      $v0, $zero, 0x4
/* 1E190 800B3590 10A20013 */  beq        $a1, $v0, .L800B35E0
/* 1E194 800B3594 AFBF0010 */   sw        $ra, 0x10($sp)
/* 1E198 800B3598 28A20005 */  slti       $v0, $a1, 0x5
/* 1E19C 800B359C 10400005 */  beqz       $v0, .L800B35B4
/* 1E1A0 800B35A0 24020003 */   addiu     $v0, $zero, 0x3
/* 1E1A4 800B35A4 10A20008 */  beq        $a1, $v0, .L800B35C8
/* 1E1A8 800B35A8 00000000 */   nop
/* 1E1AC 800B35AC 0802CD85 */  j          .L800B3614
/* 1E1B0 800B35B0 00000000 */   nop
.L800B35B4:
/* 1E1B4 800B35B4 24020009 */  addiu      $v0, $zero, 0x9
/* 1E1B8 800B35B8 50A20014 */  beql       $a1, $v0, .L800B360C
/* 1E1BC 800B35BC 24020001 */   addiu     $v0, $zero, 0x1
/* 1E1C0 800B35C0 0802CD85 */  j          .L800B3614
/* 1E1C4 800B35C4 00000000 */   nop
.L800B35C8:
/* 1E1C8 800B35C8 8C820080 */  lw         $v0, 0x80($a0)
/* 1E1CC 800B35CC 50400002 */  beql       $v0, $zero, .L800B35D8
/* 1E1D0 800B35D0 AC86007C */   sw        $a2, 0x7C($a0)
/* 1E1D4 800B35D4 AC460000 */  sw         $a2, 0x0($v0)
.L800B35D8:
/* 1E1D8 800B35D8 0802CD87 */  j          .L800B361C
/* 1E1DC 800B35DC AC860080 */   sw        $a2, 0x80($a0)
.L800B35E0:
/* 1E1E0 800B35E0 24050004 */  addiu      $a1, $zero, 0x4
/* 1E1E4 800B35E4 24030001 */  addiu      $v1, $zero, 0x1
/* 1E1E8 800B35E8 24020001 */  addiu      $v0, $zero, 0x1
/* 1E1EC 800B35EC AC830078 */  sw         $v1, 0x78($a0)
/* 1E1F0 800B35F0 AC800084 */  sw         $zero, 0x84($a0)
/* 1E1F4 800B35F4 A482005A */  sh         $v0, 0x5A($a0)
/* 1E1F8 800B35F8 AC800074 */  sw         $zero, 0x74($a0)
/* 1E1FC 800B35FC AC80004C */  sw         $zero, 0x4C($a0)
/* 1E200 800B3600 AC830050 */  sw         $v1, 0x50($a0)
/* 1E204 800B3604 0802CD85 */  j          .L800B3614
/* 1E208 800B3608 AC800048 */   sw        $zero, 0x48($a0)
.L800B360C:
/* 1E20C 800B360C 0802CD87 */  j          .L800B361C
/* 1E210 800B3610 AC820084 */   sw        $v0, 0x84($a0)
.L800B3614:
/* 1E214 800B3614 0C02CF8A */  jal        func_800B3E28
/* 1E218 800B3618 00000000 */   nop
.L800B361C:
/* 1E21C 800B361C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1E220 800B3620 00001021 */  addu       $v0, $zero, $zero
/* 1E224 800B3624 03E00008 */  jr         $ra
/* 1E228 800B3628 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B3588, . - func_800B3588
