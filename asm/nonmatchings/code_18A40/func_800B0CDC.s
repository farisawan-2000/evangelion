.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B0CDC
/* 1B8DC 800B0CDC 00001021 */  addu       $v0, $zero, $zero
/* 1B8E0 800B0CE0 AC800038 */  sw         $zero, 0x38($a0)
/* 1B8E4 800B0CE4 AC800034 */  sw         $zero, 0x34($a0)
/* 1B8E8 800B0CE8 AC800074 */  sw         $zero, 0x74($a0)
/* 1B8EC 800B0CEC AC800078 */  sw         $zero, 0x78($a0)
/* 1B8F0 800B0CF0 AC800044 */  sw         $zero, 0x44($a0)
/* 1B8F4 800B0CF4 03E00008 */  jr         $ra
/* 1B8F8 800B0CF8 AC800008 */   sw        $zero, 8($a0)
