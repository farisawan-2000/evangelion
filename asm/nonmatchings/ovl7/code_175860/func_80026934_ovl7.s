glabel func_80026934_ovl7
/* 176374 80026934 8C820014 */  lw         $v0, 0x14($a0)
/* 176378 80026938 30A500FF */  andi       $a1, $a1, 0xFF
/* 17637C 8002693C 00052840 */  sll        $a1, $a1, 1
/* 176380 80026940 00451021 */  addu       $v0, $v0, $a1
/* 176384 80026944 94430000 */  lhu        $v1, 0x0($v0)
/* 176388 80026948 3063FFFE */  andi       $v1, $v1, 0xFFFE
/* 17638C 8002694C 03E00008 */  jr         $ra
/* 176390 80026950 A4430000 */   sh        $v1, 0x0($v0)
.size func_80026934_ovl7, . - func_80026934_ovl7