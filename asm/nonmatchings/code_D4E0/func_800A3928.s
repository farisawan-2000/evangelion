.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A3928
/* E528 800A3928 00003021 */  addu       $a2, $zero, $zero
/* E52C 800A392C 240A0001 */  addiu      $t2, $zero, 1
/* E530 800A3930 30A500FF */  andi       $a1, $a1, 0xff
/* E534 800A3934 28A70002 */  slti       $a3, $a1, 2
/* E538 800A3938 24090002 */  addiu      $t1, $zero, 2
/* E53C 800A393C 24080003 */  addiu      $t0, $zero, 3
/* E540 800A3940 3084FFFF */  andi       $a0, $a0, 0xffff
/* E544 800A3944 3C03800D */  lui        $v1, %hi(D_800D3DC0)
/* E548 800A3948 24633DC0 */  addiu      $v1, $v1, %lo(D_800D3DC0)
.L800A394C:
/* E54C 800A394C 94620000 */  lhu        $v0, ($v1)
/* E550 800A3950 50AA000F */  beql       $a1, $t2, .L800A3990
/* E554 800A3954 3042FFFF */   andi      $v0, $v0, 0xffff
/* E558 800A3958 10E00005 */  beqz       $a3, .L800A3970
/* E55C 800A395C 00000000 */   nop
/* E560 800A3960 10A00009 */  beqz       $a1, .L800A3988
/* E564 800A3964 3042FFFF */   andi      $v0, $v0, 0xffff
/* E568 800A3968 08028E68 */  j          .L800A39A0
/* E56C 800A396C 00000000 */   nop
.L800A3970:
/* E570 800A3970 10A9000B */  beq        $a1, $t1, .L800A39A0
/* E574 800A3974 3042FFFF */   andi      $v0, $v0, 0xffff
/* E578 800A3978 10A80007 */  beq        $a1, $t0, .L800A3998
/* E57C 800A397C 00000000 */   nop
/* E580 800A3980 08028E68 */  j          .L800A39A0
/* E584 800A3984 00000000 */   nop
.L800A3988:
/* E588 800A3988 08028E67 */  j          .L800A399C
/* E58C 800A398C 00021080 */   sll       $v0, $v0, 2
.L800A3990:
/* E590 800A3990 08028E67 */  j          .L800A399C
/* E594 800A3994 00021040 */   sll       $v0, $v0, 1
.L800A3998:
/* E598 800A3998 00021042 */  srl        $v0, $v0, 1
.L800A399C:
/* E59C 800A399C 3042FFFF */  andi       $v0, $v0, 0xffff
.L800A39A0:
/* E5A0 800A39A0 54820003 */  bnel       $a0, $v0, .L800A39B0
/* E5A4 800A39A4 24C60001 */   addiu     $a2, $a2, 1
/* E5A8 800A39A8 08028E71 */  j          .L800A39C4
/* E5AC 800A39AC 24021033 */   addiu     $v0, $zero, 0x1033
.L800A39B0:
/* E5B0 800A39B0 28C20020 */  slti       $v0, $a2, 0x20
/* E5B4 800A39B4 1440FFE5 */  bnez       $v0, .L800A394C
/* E5B8 800A39B8 24630002 */   addiu     $v1, $v1, 2
/* E5BC 800A39BC 3C0200FC */  lui        $v0, 0xfc
/* E5C0 800A39C0 34421034 */  ori        $v0, $v0, 0x1034
.L800A39C4:
/* E5C4 800A39C4 03E00008 */  jr         $ra
/* E5C8 800A39C8 00000000 */   nop
