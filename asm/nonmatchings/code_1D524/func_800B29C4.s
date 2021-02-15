.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B29C4
/* 1D5C4 800B29C4 3C038010 */  lui        $v1, %hi(D_80102BCC)
/* 1D5C8 800B29C8 8C632BCC */  lw         $v1, %lo(D_80102BCC)($v1)
/* 1D5CC 800B29CC 246200B8 */  addiu      $v0, $v1, 0xb8
/* 1D5D0 800B29D0 0044102B */  sltu       $v0, $v0, $a0
/* 1D5D4 800B29D4 1040000A */  beqz       $v0, .L800B2A00
/* 1D5D8 800B29D8 0083102B */   sltu      $v0, $a0, $v1
/* 1D5DC 800B29DC 3C02800F */  lui        $v0, %hi(D_800F1540)
/* 1D5E0 800B29E0 8C421540 */  lw         $v0, %lo(D_800F1540)($v0)
/* 1D5E4 800B29E4 10400013 */  beqz       $v0, .L800B2A34
/* 1D5E8 800B29E8 00000000 */   nop
/* 1D5EC 800B29EC 3C028010 */  lui        $v0, %hi(D_80102BC4)
/* 1D5F0 800B29F0 8C422BC4 */  lw         $v0, %lo(D_80102BC4)($v0)
/* 1D5F4 800B29F4 3C01800F */  lui        $at, %hi(D_800F1540)
/* 1D5F8 800B29F8 0802CA8F */  j          .L800B2A3C
/* 1D5FC 800B29FC AC201540 */   sw        $zero, %lo(D_800F1540)($at)
.L800B2A00:
/* 1D600 800B2A00 1040000A */  beqz       $v0, .L800B2A2C
/* 1D604 800B2A04 24020001 */   addiu     $v0, $zero, 1
/* 1D608 800B2A08 3C02800F */  lui        $v0, %hi(D_800F1540)
/* 1D60C 800B2A0C 8C421540 */  lw         $v0, %lo(D_800F1540)($v0)
/* 1D610 800B2A10 10400008 */  beqz       $v0, .L800B2A34
/* 1D614 800B2A14 00000000 */   nop
/* 1D618 800B2A18 3C028010 */  lui        $v0, %hi(D_80102BC8)
/* 1D61C 800B2A1C 8C422BC8 */  lw         $v0, %lo(D_80102BC8)($v0)
/* 1D620 800B2A20 3C01800F */  lui        $at, %hi(D_800F1540)
/* 1D624 800B2A24 0802CA8F */  j          .L800B2A3C
/* 1D628 800B2A28 AC201540 */   sw        $zero, %lo(D_800F1540)($at)
.L800B2A2C:
/* 1D62C 800B2A2C 3C01800F */  lui        $at, %hi(D_800F1540)
/* 1D630 800B2A30 AC221540 */  sw         $v0, %lo(D_800F1540)($at)
.L800B2A34:
/* 1D634 800B2A34 3C028010 */  lui        $v0, %hi(D_80102BC0)
/* 1D638 800B2A38 8C422BC0 */  lw         $v0, %lo(D_80102BC0)($v0)
.L800B2A3C:
/* 1D63C 800B2A3C 03E00008 */  jr         $ra
/* 1D640 800B2A40 00000000 */   nop
/* 1D644 800B2A44 00000000 */  nop
/* 1D648 800B2A48 00000000 */  nop
/* 1D64C 800B2A4C 00000000 */  nop
