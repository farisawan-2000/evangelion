# Handwritten function
glabel __osRestoreInt
/* 313B0 800C67B0 40086000 */  mfc0       $t0, $12 # handwritten instruction
/* 313B4 800C67B4 01044025 */  or         $t0, $t0, $a0
/* 313B8 800C67B8 40886000 */  mtc0       $t0, $12 # handwritten instruction
/* 313BC 800C67BC 00000000 */  nop
/* 313C0 800C67C0 00000000 */  nop
/* 313C4 800C67C4 03E00008 */  jr         $ra
/* 313C8 800C67C8 00000000 */   nop
/* 313CC 800C67CC 00000000 */  nop
.size __osRestoreInt, . - __osRestoreInt
