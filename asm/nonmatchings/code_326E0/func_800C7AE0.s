glabel func_800C7AE0
/* 326E0 800C7AE0 00001821 */  addu       $v1, $zero, $zero
/* 326E4 800C7AE4 24050400 */  addiu      $a1, $zero, 0x400
/* 326E8 800C7AE8 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* 326EC 800C7AEC 00851024 */  and        $v0, $a0, $a1
.L800C7AF0:
/* 326F0 800C7AF0 10400006 */  beqz       $v0, .L800C7B0C
/* 326F4 800C7AF4 00031840 */   sll       $v1, $v1, 1
/* 326F8 800C7AF8 30620020 */  andi       $v0, $v1, 0x20
/* 326FC 800C7AFC 50400006 */  beql       $v0, $zero, .L800C7B18
/* 32700 800C7B00 24630001 */   addiu     $v1, $v1, 0x1
/* 32704 800C7B04 08031EC6 */  j          .L800C7B18
/* 32708 800C7B08 38630014 */   xori      $v1, $v1, 0x14
.L800C7B0C:
/* 3270C 800C7B0C 30620020 */  andi       $v0, $v1, 0x20
/* 32710 800C7B10 54400001 */  bnel       $v0, $zero, .L800C7B18
/* 32714 800C7B14 38630015 */   xori      $v1, $v1, 0x15
.L800C7B18:
/* 32718 800C7B18 00052842 */  srl        $a1, $a1, 1
/* 3271C 800C7B1C 14A0FFF4 */  bnez       $a1, .L800C7AF0
/* 32720 800C7B20 00851024 */   and       $v0, $a0, $a1
/* 32724 800C7B24 24050005 */  addiu      $a1, $zero, 0x5
/* 32728 800C7B28 00031840 */  sll        $v1, $v1, 1
.L800C7B2C:
/* 3272C 800C7B2C 30620020 */  andi       $v0, $v1, 0x20
/* 32730 800C7B30 54400001 */  bnel       $v0, $zero, .L800C7B38
/* 32734 800C7B34 38630015 */   xori      $v1, $v1, 0x15
.L800C7B38:
/* 32738 800C7B38 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 3273C 800C7B3C 54A0FFFB */  bnel       $a1, $zero, .L800C7B2C
/* 32740 800C7B40 00031840 */   sll       $v1, $v1, 1
/* 32744 800C7B44 03E00008 */  jr         $ra
/* 32748 800C7B48 3062001F */   andi      $v0, $v1, 0x1F
.size func_800C7AE0, . - func_800C7AE0
