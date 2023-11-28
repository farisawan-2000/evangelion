glabel func_800462B4_ovl3
/* EF7C4 800462B4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* EF7C8 800462B8 2404017C */  addiu      $a0, $zero, 0x17C
/* EF7CC 800462BC 24050002 */  addiu      $a1, $zero, 0x2
/* EF7D0 800462C0 AFBF0058 */  sw         $ra, 0x58($sp)
/* EF7D4 800462C4 AFB10054 */  sw         $s1, 0x54($sp)
/* EF7D8 800462C8 AFB00050 */  sw         $s0, 0x50($sp)
/* EF7DC 800462CC F7B60068 */  sdc1       $f22, 0x68($sp)
/* EF7E0 800462D0 F7B40060 */  sdc1       $f20, 0x60($sp)
/* EF7E4 800462D4 0C00D925 */  jal        func_80036494_ovl3
/* EF7E8 800462D8 24060017 */   addiu     $a2, $zero, 0x17
/* EF7EC 800462DC 00408021 */  addu       $s0, $v0, $zero
/* EF7F0 800462E0 8E04000C */  lw         $a0, 0xC($s0)
/* EF7F4 800462E4 8C82000C */  lw         $v0, 0xC($a0)
/* EF7F8 800462E8 94450000 */  lhu        $a1, 0x0($v0)
/* EF7FC 800462EC 94460002 */  lhu        $a2, 0x2($v0)
/* EF800 800462F0 00052842 */  srl        $a1, $a1, 1
/* EF804 800462F4 0C02912A */  jal        func_800A44A8
/* EF808 800462F8 00063042 */   srl       $a2, $a2, 1
/* EF80C 800462FC 8E04000C */  lw         $a0, 0xC($s0)
/* EF810 80046300 3C064170 */  lui        $a2, (0x41700000 >> 16)
/* EF814 80046304 3C074000 */  lui        $a3, (0x40000000 >> 16)
/* EF818 80046308 0C02915B */  jal        func_800A456C
/* EF81C 8004630C 2405E4FB */   addiu     $a1, $zero, -0x1B05
/* EF820 80046310 8E04000C */  lw         $a0, 0xC($s0)
/* EF824 80046314 24050110 */  addiu      $a1, $zero, 0x110
/* EF828 80046318 0C028D89 */  jal        func_800A3624
/* EF82C 8004631C 240600A0 */   addiu     $a2, $zero, 0xA0
/* EF830 80046320 8E03000C */  lw         $v1, 0xC($s0)
/* EF834 80046324 9462001E */  lhu        $v0, 0x1E($v1)
/* EF838 80046328 24040024 */  addiu      $a0, $zero, 0x24
/* EF83C 8004632C 34420104 */  ori        $v0, $v0, 0x104
/* EF840 80046330 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EF844 80046334 A462001E */   sh        $v0, 0x1E($v1)
/* EF848 80046338 00408821 */  addu       $s1, $v0, $zero
/* EF84C 8004633C 3C014088 */  lui        $at, (0x4088F5C3 >> 16)
/* EF850 80046340 3421F5C3 */  ori        $at, $at, (0x4088F5C3 & 0xFFFF)
/* EF854 80046344 44810000 */  mtc1       $at, $f0
/* EF858 80046348 3C01C2DD */  lui        $at, (0xC2DD999A >> 16)
/* EF85C 8004634C 3421999A */  ori        $at, $at, (0xC2DD999A & 0xFFFF)
/* EF860 80046350 44811000 */  mtc1       $at, $f2
/* EF864 80046354 3C0140AD */  lui        $at, (0x40AD1EB8 >> 16)
/* EF868 80046358 34211EB8 */  ori        $at, $at, (0x40AD1EB8 & 0xFFFF)
/* EF86C 8004635C 44812000 */  mtc1       $at, $f4
/* EF870 80046360 3C013C75 */  lui        $at, (0x3C75C28F >> 16)
/* EF874 80046364 3421C28F */  ori        $at, $at, (0x3C75C28F & 0xFFFF)
/* EF878 80046368 44813000 */  mtc1       $at, $f6
/* EF87C 8004636C 3C014337 */  lui        $at, (0x4337428F >> 16)
/* EF880 80046370 3421428F */  ori        $at, $at, (0x4337428F & 0xFFFF)
/* EF884 80046374 44814000 */  mtc1       $at, $f8
/* EF888 80046378 02202021 */  addu       $a0, $s1, $zero
/* EF88C 8004637C 2405008D */  addiu      $a1, $zero, 0x8D
/* EF890 80046380 241000FF */  addiu      $s0, $zero, 0xFF
/* EF894 80046384 2402FFFF */  addiu      $v0, $zero, -0x1
/* EF898 80046388 AE20001C */  sw         $zero, 0x1C($s1)
/* EF89C 8004638C AE200024 */  sw         $zero, 0x24($s1)
/* EF8A0 80046390 A6300074 */  sh         $s0, 0x74($s1)
/* EF8A4 80046394 A6300076 */  sh         $s0, 0x76($s1)
/* EF8A8 80046398 A6300078 */  sh         $s0, 0x78($s1)
/* EF8AC 8004639C A630007A */  sh         $s0, 0x7A($s1)
/* EF8B0 800463A0 A6220070 */  sh         $v0, 0x70($s1)
/* EF8B4 800463A4 E6200010 */  swc1       $f0, 0x10($s1)
/* EF8B8 800463A8 E6220014 */  swc1       $f2, 0x14($s1)
/* EF8BC 800463AC E6240018 */  swc1       $f4, 0x18($s1)
/* EF8C0 800463B0 E6260028 */  swc1       $f6, 0x28($s1)
/* EF8C4 800463B4 0C00DFE6 */  jal        func_80037F98_ovl3
/* EF8C8 800463B8 E6280020 */   swc1      $f8, 0x20($s1)
/* EF8CC 800463BC 8E220004 */  lw         $v0, 0x4($s1)
/* EF8D0 800463C0 A0400067 */  sb         $zero, 0x67($v0)
/* EF8D4 800463C4 8E230004 */  lw         $v1, 0x4($s1)
/* EF8D8 800463C8 90620066 */  lbu        $v0, 0x66($v1)
/* EF8DC 800463CC 24040025 */  addiu      $a0, $zero, 0x25
/* EF8E0 800463D0 34420007 */  ori        $v0, $v0, 0x7
/* EF8E4 800463D4 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EF8E8 800463D8 A0620066 */   sb        $v0, 0x66($v1)
/* EF8EC 800463DC 00408821 */  addu       $s1, $v0, $zero
/* EF8F0 800463E0 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* EF8F4 800463E4 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* EF8F8 800463E8 4481A000 */  mtc1       $at, $f20
/* EF8FC 800463EC 02202021 */  addu       $a0, $s1, $zero
/* EF900 800463F0 24050111 */  addiu      $a1, $zero, 0x111
/* EF904 800463F4 AE200010 */  sw         $zero, 0x10($s1)
/* EF908 800463F8 AE200014 */  sw         $zero, 0x14($s1)
/* EF90C 800463FC AE200018 */  sw         $zero, 0x18($s1)
/* EF910 80046400 AE20001C */  sw         $zero, 0x1C($s1)
/* EF914 80046404 AE200020 */  sw         $zero, 0x20($s1)
/* EF918 80046408 AE200024 */  sw         $zero, 0x24($s1)
/* EF91C 8004640C A6300074 */  sh         $s0, 0x74($s1)
/* EF920 80046410 A6300076 */  sh         $s0, 0x76($s1)
/* EF924 80046414 A6300078 */  sh         $s0, 0x78($s1)
/* EF928 80046418 A630007A */  sh         $s0, 0x7A($s1)
/* EF92C 8004641C 0C00DFE6 */  jal        func_80037F98_ovl3
/* EF930 80046420 E6340028 */   swc1      $f20, 0x28($s1)
/* EF934 80046424 8E220004 */  lw         $v0, 0x4($s1)
/* EF938 80046428 A0400067 */  sb         $zero, 0x67($v0)
/* EF93C 8004642C 8E230004 */  lw         $v1, 0x4($s1)
/* EF940 80046430 90620066 */  lbu        $v0, 0x66($v1)
/* EF944 80046434 24040026 */  addiu      $a0, $zero, 0x26
/* EF948 80046438 34420007 */  ori        $v0, $v0, 0x7
/* EF94C 8004643C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EF950 80046440 A0620066 */   sb        $v0, 0x66($v1)
/* EF954 80046444 00408821 */  addu       $s1, $v0, $zero
/* EF958 80046448 02202021 */  addu       $a0, $s1, $zero
/* EF95C 8004644C 24050112 */  addiu      $a1, $zero, 0x112
/* EF960 80046450 AE200010 */  sw         $zero, 0x10($s1)
/* EF964 80046454 AE200014 */  sw         $zero, 0x14($s1)
/* EF968 80046458 AE200018 */  sw         $zero, 0x18($s1)
/* EF96C 8004645C E6340028 */  swc1       $f20, 0x28($s1)
/* EF970 80046460 AE20001C */  sw         $zero, 0x1C($s1)
/* EF974 80046464 AE200020 */  sw         $zero, 0x20($s1)
/* EF978 80046468 AE200024 */  sw         $zero, 0x24($s1)
/* EF97C 8004646C A6300074 */  sh         $s0, 0x74($s1)
/* EF980 80046470 A6300076 */  sh         $s0, 0x76($s1)
/* EF984 80046474 A6300078 */  sh         $s0, 0x78($s1)
/* EF988 80046478 0C00DFE6 */  jal        func_80037F98_ovl3
/* EF98C 8004647C A630007A */   sh        $s0, 0x7A($s1)
/* EF990 80046480 8E220004 */  lw         $v0, 0x4($s1)
/* EF994 80046484 A0400067 */  sb         $zero, 0x67($v0)
/* EF998 80046488 8E240004 */  lw         $a0, 0x4($s1)
/* EF99C 8004648C 0C028703 */  jal        func_800A1C0C
/* EF9A0 80046490 24050027 */   addiu     $a1, $zero, 0x27
/* EF9A4 80046494 8E230004 */  lw         $v1, 0x4($s1)
/* EF9A8 80046498 90620066 */  lbu        $v0, 0x66($v1)
/* EF9AC 8004649C 24040027 */  addiu      $a0, $zero, 0x27
/* EF9B0 800464A0 3442000B */  ori        $v0, $v0, 0xB
/* EF9B4 800464A4 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EF9B8 800464A8 A0620066 */   sb        $v0, 0x66($v1)
/* EF9BC 800464AC 00408821 */  addu       $s1, $v0, $zero
/* EF9C0 800464B0 3C014393 */  lui        $at, (0x43930000 >> 16)
/* EF9C4 800464B4 4481B000 */  mtc1       $at, $f22
/* EF9C8 800464B8 02202021 */  addu       $a0, $s1, $zero
/* EF9CC 800464BC 24050112 */  addiu      $a1, $zero, 0x112
/* EF9D0 800464C0 AE200010 */  sw         $zero, 0x10($s1)
/* EF9D4 800464C4 AE200018 */  sw         $zero, 0x18($s1)
/* EF9D8 800464C8 E6340028 */  swc1       $f20, 0x28($s1)
/* EF9DC 800464CC AE20001C */  sw         $zero, 0x1C($s1)
/* EF9E0 800464D0 AE200020 */  sw         $zero, 0x20($s1)
/* EF9E4 800464D4 AE200024 */  sw         $zero, 0x24($s1)
/* EF9E8 800464D8 A6300074 */  sh         $s0, 0x74($s1)
/* EF9EC 800464DC A6300076 */  sh         $s0, 0x76($s1)
/* EF9F0 800464E0 A6300078 */  sh         $s0, 0x78($s1)
/* EF9F4 800464E4 A630007A */  sh         $s0, 0x7A($s1)
/* EF9F8 800464E8 0C00DFE6 */  jal        func_80037F98_ovl3
/* EF9FC 800464EC E6360014 */   swc1      $f22, 0x14($s1)
/* EFA00 800464F0 8E220004 */  lw         $v0, 0x4($s1)
/* EFA04 800464F4 A0400067 */  sb         $zero, 0x67($v0)
/* EFA08 800464F8 8E240004 */  lw         $a0, 0x4($s1)
/* EFA0C 800464FC 0C028703 */  jal        func_800A1C0C
/* EFA10 80046500 24050026 */   addiu     $a1, $zero, 0x26
/* EFA14 80046504 8E230004 */  lw         $v1, 0x4($s1)
/* EFA18 80046508 90620066 */  lbu        $v0, 0x66($v1)
/* EFA1C 8004650C 2404002A */  addiu      $a0, $zero, 0x2A
/* EFA20 80046510 3442000B */  ori        $v0, $v0, 0xB
/* EFA24 80046514 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EFA28 80046518 A0620066 */   sb        $v0, 0x66($v1)
/* EFA2C 8004651C 00408821 */  addu       $s1, $v0, $zero
/* EFA30 80046520 02202021 */  addu       $a0, $s1, $zero
/* EFA34 80046524 2405004B */  addiu      $a1, $zero, 0x4B
/* EFA38 80046528 AE200010 */  sw         $zero, 0x10($s1)
/* EFA3C 8004652C AE200014 */  sw         $zero, 0x14($s1)
/* EFA40 80046530 AE200018 */  sw         $zero, 0x18($s1)
/* EFA44 80046534 E6340028 */  swc1       $f20, 0x28($s1)
/* EFA48 80046538 AE20001C */  sw         $zero, 0x1C($s1)
/* EFA4C 8004653C AE200020 */  sw         $zero, 0x20($s1)
/* EFA50 80046540 AE200024 */  sw         $zero, 0x24($s1)
/* EFA54 80046544 A6300074 */  sh         $s0, 0x74($s1)
/* EFA58 80046548 A6300076 */  sh         $s0, 0x76($s1)
/* EFA5C 8004654C A6300078 */  sh         $s0, 0x78($s1)
/* EFA60 80046550 A630007A */  sh         $s0, 0x7A($s1)
/* EFA64 80046554 0C00DFE6 */  jal        func_80037F98_ovl3
/* EFA68 80046558 A6200070 */   sh        $zero, 0x70($s1)
/* EFA6C 8004655C 8E220004 */  lw         $v0, 0x4($s1)
/* EFA70 80046560 A0400067 */  sb         $zero, 0x67($v0)
/* EFA74 80046564 8E230004 */  lw         $v1, 0x4($s1)
/* EFA78 80046568 90620066 */  lbu        $v0, 0x66($v1)
/* EFA7C 8004656C 34420007 */  ori        $v0, $v0, 0x7
/* EFA80 80046570 A0620066 */  sb         $v0, 0x66($v1)
/* EFA84 80046574 0C027AF5 */  jal        func_8009EBD4
/* EFA88 80046578 8E240008 */   lw        $a0, 0x8($s1)
/* EFA8C 8004657C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EFA90 80046580 2404002B */   addiu     $a0, $zero, 0x2B
/* EFA94 80046584 00408821 */  addu       $s1, $v0, $zero
/* EFA98 80046588 02202021 */  addu       $a0, $s1, $zero
/* EFA9C 8004658C 2405004C */  addiu      $a1, $zero, 0x4C
/* EFAA0 80046590 AE200010 */  sw         $zero, 0x10($s1)
/* EFAA4 80046594 AE200014 */  sw         $zero, 0x14($s1)
/* EFAA8 80046598 AE200018 */  sw         $zero, 0x18($s1)
/* EFAAC 8004659C E6340028 */  swc1       $f20, 0x28($s1)
/* EFAB0 800465A0 AE20001C */  sw         $zero, 0x1C($s1)
/* EFAB4 800465A4 AE200020 */  sw         $zero, 0x20($s1)
/* EFAB8 800465A8 AE200024 */  sw         $zero, 0x24($s1)
/* EFABC 800465AC A6300074 */  sh         $s0, 0x74($s1)
/* EFAC0 800465B0 A6300076 */  sh         $s0, 0x76($s1)
/* EFAC4 800465B4 A6300078 */  sh         $s0, 0x78($s1)
/* EFAC8 800465B8 A630007A */  sh         $s0, 0x7A($s1)
/* EFACC 800465BC 0C00DFE6 */  jal        func_80037F98_ovl3
/* EFAD0 800465C0 A6200070 */   sh        $zero, 0x70($s1)
/* EFAD4 800465C4 8E220004 */  lw         $v0, 0x4($s1)
/* EFAD8 800465C8 A0400067 */  sb         $zero, 0x67($v0)
/* EFADC 800465CC 8E230004 */  lw         $v1, 0x4($s1)
/* EFAE0 800465D0 90620066 */  lbu        $v0, 0x66($v1)
/* EFAE4 800465D4 34420007 */  ori        $v0, $v0, 0x7
/* EFAE8 800465D8 A0620066 */  sb         $v0, 0x66($v1)
/* EFAEC 800465DC 0C027AF5 */  jal        func_8009EBD4
/* EFAF0 800465E0 8E240008 */   lw        $a0, 0x8($s1)
/* EFAF4 800465E4 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EFAF8 800465E8 2404002C */   addiu     $a0, $zero, 0x2C
/* EFAFC 800465EC 00408821 */  addu       $s1, $v0, $zero
/* EFB00 800465F0 02202021 */  addu       $a0, $s1, $zero
/* EFB04 800465F4 2405004D */  addiu      $a1, $zero, 0x4D
/* EFB08 800465F8 AE200010 */  sw         $zero, 0x10($s1)
/* EFB0C 800465FC AE200014 */  sw         $zero, 0x14($s1)
/* EFB10 80046600 AE200018 */  sw         $zero, 0x18($s1)
/* EFB14 80046604 E6340028 */  swc1       $f20, 0x28($s1)
/* EFB18 80046608 AE20001C */  sw         $zero, 0x1C($s1)
/* EFB1C 8004660C AE200020 */  sw         $zero, 0x20($s1)
/* EFB20 80046610 AE200024 */  sw         $zero, 0x24($s1)
/* EFB24 80046614 A6300074 */  sh         $s0, 0x74($s1)
/* EFB28 80046618 A6300076 */  sh         $s0, 0x76($s1)
/* EFB2C 8004661C A6300078 */  sh         $s0, 0x78($s1)
/* EFB30 80046620 A630007A */  sh         $s0, 0x7A($s1)
/* EFB34 80046624 0C00DFE6 */  jal        func_80037F98_ovl3
/* EFB38 80046628 A6200070 */   sh        $zero, 0x70($s1)
/* EFB3C 8004662C 8E220004 */  lw         $v0, 0x4($s1)
/* EFB40 80046630 A0400067 */  sb         $zero, 0x67($v0)
/* EFB44 80046634 8E230004 */  lw         $v1, 0x4($s1)
/* EFB48 80046638 90620066 */  lbu        $v0, 0x66($v1)
/* EFB4C 8004663C 34420007 */  ori        $v0, $v0, 0x7
/* EFB50 80046640 A0620066 */  sb         $v0, 0x66($v1)
/* EFB54 80046644 0C027AF5 */  jal        func_8009EBD4
/* EFB58 80046648 8E240008 */   lw        $a0, 0x8($s1)
/* EFB5C 8004664C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EFB60 80046650 2404002D */   addiu     $a0, $zero, 0x2D
/* EFB64 80046654 00408821 */  addu       $s1, $v0, $zero
/* EFB68 80046658 02202021 */  addu       $a0, $s1, $zero
/* EFB6C 8004665C 2405004C */  addiu      $a1, $zero, 0x4C
/* EFB70 80046660 AE200010 */  sw         $zero, 0x10($s1)
/* EFB74 80046664 E6360014 */  swc1       $f22, 0x14($s1)
/* EFB78 80046668 AE200018 */  sw         $zero, 0x18($s1)
/* EFB7C 8004666C E6340028 */  swc1       $f20, 0x28($s1)
/* EFB80 80046670 AE20001C */  sw         $zero, 0x1C($s1)
/* EFB84 80046674 AE200020 */  sw         $zero, 0x20($s1)
/* EFB88 80046678 AE200024 */  sw         $zero, 0x24($s1)
/* EFB8C 8004667C A6300074 */  sh         $s0, 0x74($s1)
/* EFB90 80046680 A6300076 */  sh         $s0, 0x76($s1)
/* EFB94 80046684 A6300078 */  sh         $s0, 0x78($s1)
/* EFB98 80046688 A630007A */  sh         $s0, 0x7A($s1)
/* EFB9C 8004668C 0C00DFE6 */  jal        func_80037F98_ovl3
/* EFBA0 80046690 A6200070 */   sh        $zero, 0x70($s1)
/* EFBA4 80046694 8E220004 */  lw         $v0, 0x4($s1)
/* EFBA8 80046698 A0400067 */  sb         $zero, 0x67($v0)
/* EFBAC 8004669C 8E230004 */  lw         $v1, 0x4($s1)
/* EFBB0 800466A0 90620066 */  lbu        $v0, 0x66($v1)
/* EFBB4 800466A4 34420007 */  ori        $v0, $v0, 0x7
/* EFBB8 800466A8 A0620066 */  sb         $v0, 0x66($v1)
/* EFBBC 800466AC 0C027AF5 */  jal        func_8009EBD4
/* EFBC0 800466B0 8E240008 */   lw        $a0, 0x8($s1)
/* EFBC4 800466B4 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EFBC8 800466B8 2404002E */   addiu     $a0, $zero, 0x2E
/* EFBCC 800466BC 00408821 */  addu       $s1, $v0, $zero
/* EFBD0 800466C0 02202021 */  addu       $a0, $s1, $zero
/* EFBD4 800466C4 2405004D */  addiu      $a1, $zero, 0x4D
/* EFBD8 800466C8 AE200010 */  sw         $zero, 0x10($s1)
/* EFBDC 800466CC E6360014 */  swc1       $f22, 0x14($s1)
/* EFBE0 800466D0 AE200018 */  sw         $zero, 0x18($s1)
/* EFBE4 800466D4 E6340028 */  swc1       $f20, 0x28($s1)
/* EFBE8 800466D8 AE20001C */  sw         $zero, 0x1C($s1)
/* EFBEC 800466DC AE200020 */  sw         $zero, 0x20($s1)
/* EFBF0 800466E0 AE200024 */  sw         $zero, 0x24($s1)
/* EFBF4 800466E4 A6300074 */  sh         $s0, 0x74($s1)
/* EFBF8 800466E8 A6300076 */  sh         $s0, 0x76($s1)
/* EFBFC 800466EC A6300078 */  sh         $s0, 0x78($s1)
/* EFC00 800466F0 A630007A */  sh         $s0, 0x7A($s1)
/* EFC04 800466F4 0C00DFE6 */  jal        func_80037F98_ovl3
/* EFC08 800466F8 A6200070 */   sh        $zero, 0x70($s1)
/* EFC0C 800466FC 8E220004 */  lw         $v0, 0x4($s1)
/* EFC10 80046700 A0400067 */  sb         $zero, 0x67($v0)
/* EFC14 80046704 8E230004 */  lw         $v1, 0x4($s1)
/* EFC18 80046708 90620066 */  lbu        $v0, 0x66($v1)
/* EFC1C 8004670C 34420007 */  ori        $v0, $v0, 0x7
/* EFC20 80046710 A0620066 */  sb         $v0, 0x66($v1)
/* EFC24 80046714 0C027AF5 */  jal        func_8009EBD4
/* EFC28 80046718 8E240008 */   lw        $a0, 0x8($s1)
/* EFC2C 8004671C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EFC30 80046720 2404002F */   addiu     $a0, $zero, 0x2F
/* EFC34 80046724 00408821 */  addu       $s1, $v0, $zero
/* EFC38 80046728 3C014413 */  lui        $at, (0x44130000 >> 16)
/* EFC3C 8004672C 4481B000 */  mtc1       $at, $f22
/* EFC40 80046730 02202021 */  addu       $a0, $s1, $zero
/* EFC44 80046734 2405004C */  addiu      $a1, $zero, 0x4C
/* EFC48 80046738 AE200010 */  sw         $zero, 0x10($s1)
/* EFC4C 8004673C AE200018 */  sw         $zero, 0x18($s1)
/* EFC50 80046740 E6340028 */  swc1       $f20, 0x28($s1)
/* EFC54 80046744 AE20001C */  sw         $zero, 0x1C($s1)
/* EFC58 80046748 AE200020 */  sw         $zero, 0x20($s1)
/* EFC5C 8004674C AE200024 */  sw         $zero, 0x24($s1)
/* EFC60 80046750 A6300074 */  sh         $s0, 0x74($s1)
/* EFC64 80046754 A6300076 */  sh         $s0, 0x76($s1)
/* EFC68 80046758 A6300078 */  sh         $s0, 0x78($s1)
/* EFC6C 8004675C A630007A */  sh         $s0, 0x7A($s1)
/* EFC70 80046760 A6200070 */  sh         $zero, 0x70($s1)
/* EFC74 80046764 0C00DFE6 */  jal        func_80037F98_ovl3
/* EFC78 80046768 E6360014 */   swc1      $f22, 0x14($s1)
/* EFC7C 8004676C 8E220004 */  lw         $v0, 0x4($s1)
/* EFC80 80046770 A0400067 */  sb         $zero, 0x67($v0)
/* EFC84 80046774 8E230004 */  lw         $v1, 0x4($s1)
/* EFC88 80046778 90620066 */  lbu        $v0, 0x66($v1)
/* EFC8C 8004677C 34420007 */  ori        $v0, $v0, 0x7
/* EFC90 80046780 A0620066 */  sb         $v0, 0x66($v1)
/* EFC94 80046784 0C027AF5 */  jal        func_8009EBD4
/* EFC98 80046788 8E240008 */   lw        $a0, 0x8($s1)
/* EFC9C 8004678C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EFCA0 80046790 24040030 */   addiu     $a0, $zero, 0x30
/* EFCA4 80046794 00408821 */  addu       $s1, $v0, $zero
/* EFCA8 80046798 02202021 */  addu       $a0, $s1, $zero
/* EFCAC 8004679C 2405004D */  addiu      $a1, $zero, 0x4D
/* EFCB0 800467A0 AE200010 */  sw         $zero, 0x10($s1)
/* EFCB4 800467A4 E6360014 */  swc1       $f22, 0x14($s1)
/* EFCB8 800467A8 AE200018 */  sw         $zero, 0x18($s1)
/* EFCBC 800467AC E6340028 */  swc1       $f20, 0x28($s1)
/* EFCC0 800467B0 AE20001C */  sw         $zero, 0x1C($s1)
/* EFCC4 800467B4 AE200020 */  sw         $zero, 0x20($s1)
/* EFCC8 800467B8 AE200024 */  sw         $zero, 0x24($s1)
/* EFCCC 800467BC A6300074 */  sh         $s0, 0x74($s1)
/* EFCD0 800467C0 A6300076 */  sh         $s0, 0x76($s1)
/* EFCD4 800467C4 A6300078 */  sh         $s0, 0x78($s1)
/* EFCD8 800467C8 A620007A */  sh         $zero, 0x7A($s1)
/* EFCDC 800467CC 0C00DFE6 */  jal        func_80037F98_ovl3
/* EFCE0 800467D0 A6200070 */   sh        $zero, 0x70($s1)
/* EFCE4 800467D4 8E220004 */  lw         $v0, 0x4($s1)
/* EFCE8 800467D8 A0400067 */  sb         $zero, 0x67($v0)
/* EFCEC 800467DC 8E230004 */  lw         $v1, 0x4($s1)
/* EFCF0 800467E0 90620066 */  lbu        $v0, 0x66($v1)
/* EFCF4 800467E4 34420023 */  ori        $v0, $v0, 0x23
/* EFCF8 800467E8 A0620066 */  sb         $v0, 0x66($v1)
/* EFCFC 800467EC 0C027AF5 */  jal        func_8009EBD4
/* EFD00 800467F0 8E240008 */   lw        $a0, 0x8($s1)
/* EFD04 800467F4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* EFD08 800467F8 44810000 */  mtc1       $at, $f0
/* EFD0C 800467FC 3C01C2A1 */  lui        $at, (0xC2A17AE1 >> 16)
/* EFD10 80046800 34217AE1 */  ori        $at, $at, (0xC2A17AE1 & 0xFFFF)
/* EFD14 80046804 44811000 */  mtc1       $at, $f2
/* EFD18 80046808 3C01435A */  lui        $at, (0x435A7852 >> 16)
/* EFD1C 8004680C 34217852 */  ori        $at, $at, (0x435A7852 & 0xFFFF)
/* EFD20 80046810 44812000 */  mtc1       $at, $f4
/* EFD24 80046814 3C01C2F9 */  lui        $at, (0xC2F96148 >> 16)
/* EFD28 80046818 34216148 */  ori        $at, $at, (0xC2F96148 & 0xFFFF)
/* EFD2C 8004681C 44813000 */  mtc1       $at, $f6
/* EFD30 80046820 3C018015 */  lui        $at, %hi(D_8014A064)
/* EFD34 80046824 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EFD38 80046828 3C018015 */  lui        $at, %hi(D_8014A068)
/* EFD3C 8004682C AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* EFD40 80046830 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EFD44 80046834 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EFD48 80046838 3C018015 */  lui        $at, %hi(D_8014A070)
/* EFD4C 8004683C AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EFD50 80046840 3C018015 */  lui        $at, %hi(D_8014A078)
/* EFD54 80046844 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EFD58 80046848 3C018015 */  lui        $at, %hi(D_8014A084)
/* EFD5C 8004684C AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EFD60 80046850 3C018015 */  lui        $at, %hi(D_8014A074)
/* EFD64 80046854 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* EFD68 80046858 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EFD6C 8004685C E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* EFD70 80046860 3C018015 */  lui        $at, %hi(D_8014A080)
/* EFD74 80046864 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* EFD78 80046868 3C018015 */  lui        $at, %hi(D_8014A088)
/* EFD7C 8004686C 0C00E339 */  jal        func_80038CE4_ovl3
/* EFD80 80046870 E426A088 */   swc1      $f6, %lo(D_8014A088)($at)
/* EFD84 80046874 3C01412D */  lui        $at, (0x412D999A >> 16)
/* EFD88 80046878 3421999A */  ori        $at, $at, (0x412D999A & 0xFFFF)
/* EFD8C 8004687C 44810000 */  mtc1       $at, $f0
/* EFD90 80046880 3C013FFD */  lui        $at, (0x3FFD70A4 >> 16)
/* EFD94 80046884 342170A4 */  ori        $at, $at, (0x3FFD70A4 & 0xFFFF)
/* EFD98 80046888 44811000 */  mtc1       $at, $f2
/* EFD9C 8004688C 3C014162 */  lui        $at, (0x41626666 >> 16)
/* EFDA0 80046890 34216666 */  ori        $at, $at, (0x41626666 & 0xFFFF)
/* EFDA4 80046894 44812000 */  mtc1       $at, $f4
/* EFDA8 80046898 3C018015 */  lui        $at, %hi(D_8014A054)
/* EFDAC 8004689C AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EFDB0 800468A0 3C018015 */  lui        $at, %hi(D_8014A050)
/* EFDB4 800468A4 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* EFDB8 800468A8 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EFDBC 800468AC AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EFDC0 800468B0 3C018017 */  lui        $at, %hi(D_8016E568)
/* EFDC4 800468B4 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* EFDC8 800468B8 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EFDCC 800468BC E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* EFDD0 800468C0 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EFDD4 800468C4 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* EFDD8 800468C8 8FBF0058 */  lw         $ra, 0x58($sp)
/* EFDDC 800468CC 8FB10054 */  lw         $s1, 0x54($sp)
/* EFDE0 800468D0 8FB00050 */  lw         $s0, 0x50($sp)
/* EFDE4 800468D4 D7B60068 */  ldc1       $f22, 0x68($sp)
/* EFDE8 800468D8 D7B40060 */  ldc1       $f20, 0x60($sp)
/* EFDEC 800468DC 03E00008 */  jr         $ra
/* EFDF0 800468E0 27BD0070 */   addiu     $sp, $sp, 0x70
.size func_800462B4_ovl3, . - func_800462B4_ovl3
