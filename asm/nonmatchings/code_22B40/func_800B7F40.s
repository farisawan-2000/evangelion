.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7F40
/* 22B40 800B7F40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22B44 800B7F44 00041080 */  sll        $v0, $a0, 2
/* 22B48 800B7F48 00441021 */  addu       $v0, $v0, $a0
/* 22B4C 800B7F4C 00021080 */  sll        $v0, $v0, 2
/* 22B50 800B7F50 00441023 */  subu       $v0, $v0, $a0
/* 22B54 800B7F54 00021100 */  sll        $v0, $v0, 4
/* 22B58 800B7F58 00441023 */  subu       $v0, $v0, $a0
/* 22B5C 800B7F5C 00021080 */  sll        $v0, $v0, 2
/* 22B60 800B7F60 00441023 */  subu       $v0, $v0, $a0
/* 22B64 800B7F64 00021040 */  sll        $v0, $v0, 1
/* 22B68 800B7F68 3C03800F */  lui        $v1, %hi(D_800F1830)
/* 22B6C 800B7F6C 24631830 */  addiu      $v1, $v1, %lo(D_800F1830)
/* 22B70 800B7F70 00432021 */  addu       $a0, $v0, $v1
/* 22B74 800B7F74 AFBF0010 */  sw         $ra, 0x10($sp)
/* 22B78 800B7F78 90820005 */  lbu        $v0, 5($a0)
/* 22B7C 800B7F7C 90830006 */  lbu        $v1, 6($a0)
/* 22B80 800B7F80 00023200 */  sll        $a2, $v0, 8
/* 22B84 800B7F84 2CA20020 */  sltiu      $v0, $a1, 0x20
/* 22B88 800B7F88 10400005 */  beqz       $v0, .L800B7FA0
/* 22B8C 800B7F8C 00033B00 */   sll       $a3, $v1, 0xc
/* 22B90 800B7F90 0C02E230 */  jal        func_800B88C0
/* 22B94 800B7F94 30A500FF */   andi      $a1, $a1, 0xff
/* 22B98 800B7F98 0802DFF2 */  j          .L800B7FC8
/* 22B9C 800B7F9C 00000000 */   nop
.L800B7FA0:
/* 22BA0 800B7FA0 2CA20080 */  sltiu      $v0, $a1, 0x80
/* 22BA4 800B7FA4 10400008 */  beqz       $v0, .L800B7FC8
/* 22BA8 800B7FA8 24A5FFE0 */   addiu     $a1, $a1, -0x20
/* 22BAC 800B7FAC 9483000C */  lhu        $v1, 0xc($a0)
/* 22BB0 800B7FB0 00A61025 */  or         $v0, $a1, $a2
/* 22BB4 800B7FB4 00471025 */  or         $v0, $v0, $a3
/* 22BB8 800B7FB8 00031840 */  sll        $v1, $v1, 1
/* 22BBC 800B7FBC 00641821 */  addu       $v1, $v1, $a0
/* 22BC0 800B7FC0 0C02E1E8 */  jal        func_800B87A0
/* 22BC4 800B7FC4 A4620016 */   sh        $v0, 0x16($v1)
.L800B7FC8:
/* 22BC8 800B7FC8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22BCC 800B7FCC 03E00008 */  jr         $ra
/* 22BD0 800B7FD0 27BD0018 */   addiu     $sp, $sp, 0x18
/* 22BD4 800B7FD4 00000000 */  nop
/* 22BD8 800B7FD8 00000000 */  nop
/* 22BDC 800B7FDC 00000000 */  nop
