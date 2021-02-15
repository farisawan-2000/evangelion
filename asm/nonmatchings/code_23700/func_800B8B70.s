.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B8B70
/* 23770 800B8B70 400C6000 */  mfc0       $t4, $12
/* 23774 800B8B74 3182FF01 */  andi       $v0, $t4, 0xff01
/* 23778 800B8B78 3C08800F */  lui        $t0, %hi(D_800F7BB0)
/* 2377C 800B8B7C 25087BB0 */  addiu      $t0, $t0, %lo(D_800F7BB0)
/* 23780 800B8B80 8D0B0000 */  lw         $t3, ($t0)
/* 23784 800B8B84 2401FFFF */  addiu      $at, $zero, -1
/* 23788 800B8B88 01614026 */  xor        $t0, $t3, $at
/* 2378C 800B8B8C 3108FF00 */  andi       $t0, $t0, 0xff00
/* 23790 800B8B90 00481025 */  or         $v0, $v0, $t0
/* 23794 800B8B94 3C0AA430 */  lui        $t2, %hi(D_A430000C)
/* 23798 800B8B98 8D4A000C */  lw         $t2, %lo(D_A430000C)($t2)
/* 2379C 800B8B9C 11400005 */  beqz       $t2, .L800B8BB4
/* 237A0 800B8BA0 000B4C02 */   srl       $t1, $t3, 0x10
/* 237A4 800B8BA4 2401FFFF */  addiu      $at, $zero, -1
/* 237A8 800B8BA8 01214826 */  xor        $t1, $t1, $at
/* 237AC 800B8BAC 3129003F */  andi       $t1, $t1, 0x3f
/* 237B0 800B8BB0 01495025 */  or         $t2, $t2, $t1
.L800B8BB4:
/* 237B4 800B8BB4 000A5400 */  sll        $t2, $t2, 0x10
/* 237B8 800B8BB8 004A1025 */  or         $v0, $v0, $t2
/* 237BC 800B8BBC 3C01003F */  lui        $at, 0x3f
/* 237C0 800B8BC0 00814024 */  and        $t0, $a0, $at
/* 237C4 800B8BC4 010B4024 */  and        $t0, $t0, $t3
/* 237C8 800B8BC8 000843C2 */  srl        $t0, $t0, 0xf
/* 237CC 800B8BCC 3C0A8010 */  lui        $t2, %hi(D_800FEC50)
/* 237D0 800B8BD0 01485021 */  addu       $t2, $t2, $t0
/* 237D4 800B8BD4 954AEC50 */  lhu        $t2, %lo(D_800FEC50)($t2)
/* 237D8 800B8BD8 3C01A430 */  lui        $at, %hi(D_A430000C)
/* 237DC 800B8BDC AC2A000C */  sw         $t2, %lo(D_A430000C)($at)
/* 237E0 800B8BE0 3088FF01 */  andi       $t0, $a0, 0xff01
/* 237E4 800B8BE4 3169FF00 */  andi       $t1, $t3, 0xff00
/* 237E8 800B8BE8 01094024 */  and        $t0, $t0, $t1
/* 237EC 800B8BEC 3C01FFFF */  lui        $at, 0xffff
/* 237F0 800B8BF0 342100FF */  ori        $at, $at, 0xff
/* 237F4 800B8BF4 01816024 */  and        $t4, $t4, $at
/* 237F8 800B8BF8 01886025 */  or         $t4, $t4, $t0
/* 237FC 800B8BFC 408C6000 */  mtc0       $t4, $12
/* 23800 800B8C00 00000000 */  nop
/* 23804 800B8C04 00000000 */  nop
/* 23808 800B8C08 03E00008 */  jr         $ra
/* 2380C 800B8C0C 00000000 */   nop
