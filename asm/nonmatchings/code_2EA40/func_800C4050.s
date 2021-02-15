.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C4050
/* 2EC50 800C4050 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 2EC54 800C4054 AFB20060 */  sw         $s2, 0x60($sp)
/* 2EC58 800C4058 00809021 */  addu       $s2, $a0, $zero
/* 2EC5C 800C405C AFB1005C */  sw         $s1, 0x5c($sp)
/* 2EC60 800C4060 00A08821 */  addu       $s1, $a1, $zero
/* 2EC64 800C4064 AFB30064 */  sw         $s3, 0x64($sp)
/* 2EC68 800C4068 00C09821 */  addu       $s3, $a2, $zero
/* 2EC6C 800C406C AFBF0068 */  sw         $ra, 0x68($sp)
/* 2EC70 800C4070 0C030635 */  jal        func_800C18D4
/* 2EC74 800C4074 AFB00058 */   sw        $s0, 0x58($sp)
/* 2EC78 800C4078 02402021 */  addu       $a0, $s2, $zero
/* 2EC7C 800C407C 0C0310E0 */  jal        func_800C4380
/* 2EC80 800C4080 02602821 */   addu      $a1, $s3, $zero
/* 2EC84 800C4084 0C030650 */  jal        func_800C1940
/* 2EC88 800C4088 00408021 */   addu      $s0, $v0, $zero
/* 2EC8C 800C408C 16000067 */  bnez       $s0, .L800C422C
/* 2EC90 800C4090 02001021 */   addu      $v0, $s0, $zero
/* 2EC94 800C4094 02202021 */  addu       $a0, $s1, $zero
/* 2EC98 800C4098 AE320004 */  sw         $s2, 4($s1)
/* 2EC9C 800C409C AE330008 */  sw         $s3, 8($s1)
/* 2ECA0 800C40A0 0C031092 */  jal        func_800C4248
/* 2ECA4 800C40A4 AE200000 */   sw        $zero, ($s1)
/* 2ECA8 800C40A8 00408021 */  addu       $s0, $v0, $zero
/* 2ECAC 800C40AC 1600005F */  bnez       $s0, .L800C422C
/* 2ECB0 800C40B0 02202021 */   addu      $a0, $s1, $zero
/* 2ECB4 800C40B4 0C031164 */  jal        func_800C4590
/* 2ECB8 800C40B8 00002821 */   addu      $a1, $zero, $zero
/* 2ECBC 800C40BC 00408021 */  addu       $s0, $v0, $zero
/* 2ECC0 800C40C0 1600005A */  bnez       $s0, .L800C422C
/* 2ECC4 800C40C4 24060001 */   addiu     $a2, $zero, 1
/* 2ECC8 800C40C8 8E240004 */  lw         $a0, 4($s1)
/* 2ECCC 800C40CC 8E250008 */  lw         $a1, 8($s1)
/* 2ECD0 800C40D0 0C031424 */  jal        func_800C5090
/* 2ECD4 800C40D4 27A70010 */   addiu     $a3, $sp, 0x10
/* 2ECD8 800C40D8 00408021 */  addu       $s0, $v0, $zero
/* 2ECDC 800C40DC 16000053 */  bnez       $s0, .L800C422C
/* 2ECE0 800C40E0 27A40010 */   addiu     $a0, $sp, 0x10
/* 2ECE4 800C40E4 27A50050 */  addiu      $a1, $sp, 0x50
/* 2ECE8 800C40E8 0C03118D */  jal        func_800C4634
/* 2ECEC 800C40EC 27A60052 */   addiu     $a2, $sp, 0x52
/* 2ECF0 800C40F0 97A3002C */  lhu        $v1, 0x2c($sp)
/* 2ECF4 800C40F4 97A20050 */  lhu        $v0, 0x50($sp)
/* 2ECF8 800C40F8 14620005 */  bne        $v1, $v0, .L800C4110
/* 2ECFC 800C40FC 27B20010 */   addiu     $s2, $sp, 0x10
/* 2ED00 800C4100 97A3002E */  lhu        $v1, 0x2e($sp)
/* 2ED04 800C4104 97A20052 */  lhu        $v0, 0x52($sp)
/* 2ED08 800C4108 1062000B */  beq        $v1, $v0, .L800C4138
/* 2ED0C 800C410C 00000000 */   nop
.L800C4110:
/* 2ED10 800C4110 02202021 */  addu       $a0, $s1, $zero
/* 2ED14 800C4114 0C031259 */  jal        func_800C4964
/* 2ED18 800C4118 02402821 */   addu      $a1, $s2, $zero
/* 2ED1C 800C411C 00408021 */  addu       $s0, $v0, $zero
/* 2ED20 800C4120 12000005 */  beqz       $s0, .L800C4138
/* 2ED24 800C4124 00000000 */   nop
/* 2ED28 800C4128 8E230000 */  lw         $v1, ($s1)
/* 2ED2C 800C412C 34630004 */  ori        $v1, $v1, 4
/* 2ED30 800C4130 0803108B */  j          .L800C422C
/* 2ED34 800C4134 AE230000 */   sw        $v1, ($s1)
.L800C4138:
/* 2ED38 800C4138 96420018 */  lhu        $v0, 0x18($s2)
/* 2ED3C 800C413C 30420001 */  andi       $v0, $v0, 1
/* 2ED40 800C4140 14400015 */  bnez       $v0, .L800C4198
/* 2ED44 800C4144 02402021 */   addu      $a0, $s2, $zero
/* 2ED48 800C4148 02202021 */  addu       $a0, $s1, $zero
/* 2ED4C 800C414C 02402821 */  addu       $a1, $s2, $zero
/* 2ED50 800C4150 27B20030 */  addiu      $s2, $sp, 0x30
/* 2ED54 800C4154 0C03119E */  jal        func_800C4678
/* 2ED58 800C4158 02403021 */   addu      $a2, $s2, $zero
/* 2ED5C 800C415C 00408021 */  addu       $s0, $v0, $zero
/* 2ED60 800C4160 12000007 */  beqz       $s0, .L800C4180
/* 2ED64 800C4164 2402000A */   addiu     $v0, $zero, 0xa
/* 2ED68 800C4168 16020030 */  bne        $s0, $v0, .L800C422C
/* 2ED6C 800C416C 02001021 */   addu      $v0, $s0, $zero
/* 2ED70 800C4170 8E220000 */  lw         $v0, ($s1)
/* 2ED74 800C4174 34420004 */  ori        $v0, $v0, 4
/* 2ED78 800C4178 0803108A */  j          .L800C4228
/* 2ED7C 800C417C AE220000 */   sw        $v0, ($s1)
.L800C4180:
/* 2ED80 800C4180 97A20048 */  lhu        $v0, 0x48($sp)
/* 2ED84 800C4184 30420001 */  andi       $v0, $v0, 1
/* 2ED88 800C4188 14400003 */  bnez       $v0, .L800C4198
/* 2ED8C 800C418C 02402021 */   addu      $a0, $s2, $zero
/* 2ED90 800C4190 0803108B */  j          .L800C422C
/* 2ED94 800C4194 2402000B */   addiu     $v0, $zero, 0xb
.L800C4198:
/* 2ED98 800C4198 2625000C */  addiu      $a1, $s1, 0xc
/* 2ED9C 800C419C 0C03006C */  jal        func_800C01B0
/* 2EDA0 800C41A0 24060020 */   addiu     $a2, $zero, 0x20
/* 2EDA4 800C41A4 8E240004 */  lw         $a0, 4($s1)
/* 2EDA8 800C41A8 8E250008 */  lw         $a1, 8($s1)
/* 2EDAC 800C41AC 9242001B */  lbu        $v0, 0x1b($s2)
/* 2EDB0 800C41B0 24060007 */  addiu      $a2, $zero, 7
/* 2EDB4 800C41B4 AE22004C */  sw         $v0, 0x4c($s1)
/* 2EDB8 800C41B8 9243001A */  lbu        $v1, 0x1a($s2)
/* 2EDBC 800C41BC 2627002C */  addiu      $a3, $s1, 0x2c
/* 2EDC0 800C41C0 24020010 */  addiu      $v0, $zero, 0x10
/* 2EDC4 800C41C4 AE220050 */  sw         $v0, 0x50($s1)
/* 2EDC8 800C41C8 24020008 */  addiu      $v0, $zero, 8
/* 2EDCC 800C41CC AE220054 */  sw         $v0, 0x54($s1)
/* 2EDD0 800C41D0 A2230064 */  sb         $v1, 0x64($s1)
/* 2EDD4 800C41D4 92220064 */  lbu        $v0, 0x64($s1)
/* 2EDD8 800C41D8 00031840 */  sll        $v1, $v1, 1
/* 2EDDC 800C41DC 24630003 */  addiu      $v1, $v1, 3
/* 2EDE0 800C41E0 AE230060 */  sw         $v1, 0x60($s1)
/* 2EDE4 800C41E4 92230064 */  lbu        $v1, 0x64($s1)
/* 2EDE8 800C41E8 24420001 */  addiu      $v0, $v0, 1
/* 2EDEC 800C41EC 000210C0 */  sll        $v0, $v0, 3
/* 2EDF0 800C41F0 000318C0 */  sll        $v1, $v1, 3
/* 2EDF4 800C41F4 AE220058 */  sw         $v0, 0x58($s1)
/* 2EDF8 800C41F8 00431021 */  addu       $v0, $v0, $v1
/* 2EDFC 800C41FC 0C031424 */  jal        func_800C5090
/* 2EE00 800C4200 AE22005C */   sw        $v0, 0x5c($s1)
/* 2EE04 800C4204 00408021 */  addu       $s0, $v0, $zero
/* 2EE08 800C4208 16000008 */  bnez       $s0, .L800C422C
/* 2EE0C 800C420C 02001021 */   addu      $v0, $s0, $zero
/* 2EE10 800C4210 0C031FA0 */  jal        func_800C7E80
/* 2EE14 800C4214 02202021 */   addu      $a0, $s1, $zero
/* 2EE18 800C4218 8E230000 */  lw         $v1, ($s1)
/* 2EE1C 800C421C 34630001 */  ori        $v1, $v1, 1
/* 2EE20 800C4220 0803108B */  j          .L800C422C
/* 2EE24 800C4224 AE230000 */   sw        $v1, ($s1)
.L800C4228:
/* 2EE28 800C4228 02001021 */  addu       $v0, $s0, $zero
.L800C422C:
/* 2EE2C 800C422C 8FBF0068 */  lw         $ra, 0x68($sp)
/* 2EE30 800C4230 8FB30064 */  lw         $s3, 0x64($sp)
/* 2EE34 800C4234 8FB20060 */  lw         $s2, 0x60($sp)
/* 2EE38 800C4238 8FB1005C */  lw         $s1, 0x5c($sp)
/* 2EE3C 800C423C 8FB00058 */  lw         $s0, 0x58($sp)
/* 2EE40 800C4240 03E00008 */  jr         $ra
/* 2EE44 800C4244 27BD0070 */   addiu     $sp, $sp, 0x70
