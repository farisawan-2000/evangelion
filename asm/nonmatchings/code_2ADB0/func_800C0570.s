.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C0570
/* 2B170 800C0570 90830000 */  lbu        $v1, ($a0)
/* 2B174 800C0574 80820000 */  lb         $v0, ($a0)
/* 2B178 800C0578 00052E00 */  sll        $a1, $a1, 0x18
/* 2B17C 800C057C 00052E03 */  sra        $a1, $a1, 0x18
/* 2B180 800C0580 10450008 */  beq        $v0, $a1, .L800C05A4
/* 2B184 800C0584 27BDFFF0 */   addiu     $sp, $sp, -0x10
.L800C0588:
/* 2B188 800C0588 14600003 */  bnez       $v1, .L800C0598
/* 2B18C 800C058C 24840001 */   addiu     $a0, $a0, 1
/* 2B190 800C0590 0803016A */  j          .L800C05A8
/* 2B194 800C0594 00001021 */   addu      $v0, $zero, $zero
.L800C0598:
/* 2B198 800C0598 80820000 */  lb         $v0, ($a0)
/* 2B19C 800C059C 1445FFFA */  bne        $v0, $a1, .L800C0588
/* 2B1A0 800C05A0 90830000 */   lbu       $v1, ($a0)
.L800C05A4:
/* 2B1A4 800C05A4 00801021 */  addu       $v0, $a0, $zero
.L800C05A8:
/* 2B1A8 800C05A8 03E00008 */  jr         $ra
/* 2B1AC 800C05AC 27BD0010 */   addiu     $sp, $sp, 0x10
