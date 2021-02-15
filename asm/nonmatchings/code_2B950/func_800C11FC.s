.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C11FC
/* 2BDFC 800C11FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2BE00 800C1200 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2BE04 800C1204 00808821 */  addu       $s1, $a0, $zero
/* 2BE08 800C1208 AFBF0020 */  sw         $ra, 0x20($sp)
/* 2BE0C 800C120C AFB00018 */  sw         $s0, 0x18($sp)
/* 2BE10 800C1210 8E300274 */  lw         $s0, 0x274($s1)
/* 2BE14 800C1214 AE200274 */  sw         $zero, 0x274($s1)
/* 2BE18 800C1218 8E020004 */  lw         $v0, 4($s0)
/* 2BE1C 800C121C AFA00010 */  sw         $zero, 0x10($sp)
/* 2BE20 800C1220 30420010 */  andi       $v0, $v0, 0x10
/* 2BE24 800C1224 10400014 */  beqz       $v0, .L800C1278
/* 2BE28 800C1228 AFA00014 */   sw        $zero, 0x14($sp)
/* 2BE2C 800C122C 0C03035C */  jal        func_800C0D70
/* 2BE30 800C1230 26040010 */   addiu     $a0, $s0, 0x10
/* 2BE34 800C1234 50400011 */  beql       $v0, $zero, .L800C127C
/* 2BE38 800C1238 02202021 */   addu      $a0, $s1, $zero
/* 2BE3C 800C123C 8E020004 */  lw         $v0, 4($s0)
/* 2BE40 800C1240 8E030008 */  lw         $v1, 8($s0)
/* 2BE44 800C1244 34420020 */  ori        $v0, $v0, 0x20
/* 2BE48 800C1248 30630007 */  andi       $v1, $v1, 7
/* 2BE4C 800C124C AE020004 */  sw         $v0, 4($s0)
/* 2BE50 800C1250 24020003 */  addiu      $v0, $zero, 3
/* 2BE54 800C1254 1462000F */  bne        $v1, $v0, .L800C1294
/* 2BE58 800C1258 00000000 */   nop
/* 2BE5C 800C125C 8E220268 */  lw         $v0, 0x268($s1)
/* 2BE60 800C1260 AE020000 */  sw         $v0, ($s0)
/* 2BE64 800C1264 8E220270 */  lw         $v0, 0x270($s1)
/* 2BE68 800C1268 1440000A */  bnez       $v0, .L800C1294
/* 2BE6C 800C126C AE300268 */   sw        $s0, 0x268($s1)
/* 2BE70 800C1270 080304A5 */  j          .L800C1294
/* 2BE74 800C1274 AE300270 */   sw        $s0, 0x270($s1)
.L800C1278:
/* 2BE78 800C1278 02202021 */  addu       $a0, $s1, $zero
.L800C127C:
/* 2BE7C 800C127C 8E020004 */  lw         $v0, 4($s0)
/* 2BE80 800C1280 02002821 */  addu       $a1, $s0, $zero
/* 2BE84 800C1284 2403FFFD */  addiu      $v1, $zero, -3
/* 2BE88 800C1288 00431024 */  and        $v0, $v0, $v1
/* 2BE8C 800C128C 0C0304F4 */  jal        func_800C13D0
/* 2BE90 800C1290 ACA20004 */   sw        $v0, 4($a1)
.L800C1294:
/* 2BE94 800C1294 8E220274 */  lw         $v0, 0x274($s1)
/* 2BE98 800C1298 8E230278 */  lw         $v1, 0x278($s1)
/* 2BE9C 800C129C 2C420001 */  sltiu      $v0, $v0, 1
/* 2BEA0 800C12A0 14600002 */  bnez       $v1, .L800C12AC
/* 2BEA4 800C12A4 00028040 */   sll       $s0, $v0, 1
/* 2BEA8 800C12A8 36100001 */  ori        $s0, $s0, 1
.L800C12AC:
/* 2BEAC 800C12AC 02202021 */  addu       $a0, $s1, $zero
/* 2BEB0 800C12B0 27A50010 */  addiu      $a1, $sp, 0x10
/* 2BEB4 800C12B4 27A60014 */  addiu      $a2, $sp, 0x14
/* 2BEB8 800C12B8 0C03056F */  jal        func_800C15BC
/* 2BEBC 800C12BC 02003821 */   addu      $a3, $s0, $zero
/* 2BEC0 800C12C0 10500005 */  beq        $v0, $s0, .L800C12D8
/* 2BEC4 800C12C4 00000000 */   nop
/* 2BEC8 800C12C8 8FA50010 */  lw         $a1, 0x10($sp)
/* 2BECC 800C12CC 8FA60014 */  lw         $a2, 0x14($sp)
/* 2BED0 800C12D0 0C03052D */  jal        func_800C14B4
/* 2BED4 800C12D4 02202021 */   addu      $a0, $s1, $zero
.L800C12D8:
/* 2BED8 800C12D8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 2BEDC 800C12DC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2BEE0 800C12E0 8FB00018 */  lw         $s0, 0x18($sp)
/* 2BEE4 800C12E4 03E00008 */  jr         $ra
/* 2BEE8 800C12E8 27BD0028 */   addiu     $sp, $sp, 0x28
