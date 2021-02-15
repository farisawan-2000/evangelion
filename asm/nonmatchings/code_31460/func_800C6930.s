.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C6930
/* 31530 800C6930 3C03800F */  lui        $v1, %hi(D_800F5E20)
/* 31534 800C6934 8C635E20 */  lw         $v1, %lo(D_800F5E20)($v1)
/* 31538 800C6938 10600003 */  beqz       $v1, .L800C6948
/* 3153C 800C693C 00001021 */   addu      $v0, $zero, $zero
/* 31540 800C6940 3C02800F */  lui        $v0, %hi(D_800F5E28)
/* 31544 800C6944 8C425E28 */  lw         $v0, %lo(D_800F5E28)($v0)
.L800C6948:
/* 31548 800C6948 03E00008 */  jr         $ra
/* 3154C 800C694C 00000000 */   nop
