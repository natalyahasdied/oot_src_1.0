glabel func_8001FACC
/* 0EA2C 8001FACC 27BDFF20 */  addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
/* 0EA30 8001FAD0 AFB1004C */  sw      $s1, 0x004C($sp)
/* 0EA34 8001FAD4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0EA38 8001FAD8 AFBF006C */  sw      $ra, 0x006C($sp)
/* 0EA3C 8001FADC AFBE0068 */  sw      $s8, 0x0068($sp)
/* 0EA40 8001FAE0 AFB70064 */  sw      $s7, 0x0064($sp)
/* 0EA44 8001FAE4 AFB60060 */  sw      $s6, 0x0060($sp)
/* 0EA48 8001FAE8 AFB5005C */  sw      $s5, 0x005C($sp)
/* 0EA4C 8001FAEC AFB40058 */  sw      $s4, 0x0058($sp)
/* 0EA50 8001FAF0 AFB30054 */  sw      $s3, 0x0054($sp)
/* 0EA54 8001FAF4 AFB20050 */  sw      $s2, 0x0050($sp)
/* 0EA58 8001FAF8 AFB00048 */  sw      $s0, 0x0048($sp)
/* 0EA5C 8001FAFC F7BC0040 */  sdc1    $f28, 0x0040($sp)
/* 0EA60 8001FB00 F7BA0038 */  sdc1    $f26, 0x0038($sp)
/* 0EA64 8001FB04 F7B80030 */  sdc1    $f24, 0x0030($sp)
/* 0EA68 8001FB08 F7B60028 */  sdc1    $f22, 0x0028($sp)
/* 0EA6C 8001FB0C F7B40020 */  sdc1    $f20, 0x0020($sp)
/* 0EA70 8001FB10 AFA500E4 */  sw      $a1, 0x00E4($sp)
/* 0EA74 8001FB14 8E32003C */  lw      $s2, 0x003C($s1)           ## 0000003C
/* 0EA78 8001FB18 86220048 */  lh      $v0, 0x0048($s1)           ## 00000048
/* 0EA7C 8001FB1C 8FAE00E4 */  lw      $t6, 0x00E4($sp)
/* 0EA80 8001FB20 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 0EA84 8001FB24 104000FC */  beq     $v0, $zero, .L8001FF18
/* 0EA88 8001FB28 8DD50000 */  lw      $s5, 0x0000($t6)           ## 00000000
/* 0EA8C 8001FB2C 8DD31C44 */  lw      $s3, 0x1C44($t6)           ## 00001C44
/* 0EA90 8001FB30 A7AF00CA */  sh      $t7, 0x00CA($sp)
/* 0EA94 8001FB34 9238004B */  lbu     $t8, 0x004B($s1)           ## 0000004B
/* 0EA98 8001FB38 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0EA9C 8001FB3C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1.00
/* 0EAA0 8001FB40 13000004 */  beq     $t8, $zero, .L8001FB54
/* 0EAA4 8001FB44 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 0EAA8 8001FB48 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0EAAC 8001FB4C 10000002 */  beq     $zero, $zero, .L8001FB58
/* 0EAB0 8001FB50 AFB900B4 */  sw      $t9, 0x00B4($sp)
.L8001FB54:
/* 0EAB4 8001FB54 AFA800B4 */  sw      $t0, 0x00B4($sp)
.L8001FB58:
/* 0EAB8 8001FB58 1240000F */  beq     $s2, $zero, .L8001FB98
/* 0EABC 8001FB5C 244AFF88 */  addiu   $t2, $v0, 0xFF88           ## $t2 = FFFFFF88
/* 0EAC0 8001FB60 2630000C */  addiu   $s0, $s1, 0x000C           ## $s0 = 0000000C
/* 0EAC4 8001FB64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000000C
/* 0EAC8 8001FB68 26450038 */  addiu   $a1, $s2, 0x0038           ## $a1 = 00000038
/* 0EACC 8001FB6C 0C018F2B */  jal     Math_Vec3f_Copy              ## Vec3f_Copy
/* 0EAD0 8001FB70 AFB100E0 */  sw      $s1, 0x00E0($sp)
/* 0EAD4 8001FB74 8FA900E0 */  lw      $t1, 0x00E0($sp)
/* 0EAD8 8001FB78 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 0EADC 8001FB7C 44812000 */  mtc1    $at, $f4                   ## $f4 = 500.00
/* 0EAE0 8001FB80 C5260044 */  lwc1    $f6, 0x0044($t1)           ## 00000044
/* 0EAE4 8001FB84 3C0143D2 */  lui     $at, 0x43D2                ## $at = 43D20000
/* 0EAE8 8001FB88 44815000 */  mtc1    $at, $f10                  ## $f10 = 420.00
/* 0EAEC 8001FB8C 46062201 */  sub.s   $f8, $f4, $f6
/* 0EAF0 8001FB90 1000000A */  beq     $zero, $zero, .L8001FBBC
/* 0EAF4 8001FB94 460A4503 */  div.s   $f20, $f8, $f10
.L8001FB98:
/* 0EAF8 8001FB98 A62A0048 */  sh      $t2, 0x0048($s1)           ## 00000048
/* 0EAFC 8001FB9C 86220048 */  lh      $v0, 0x0048($s1)           ## 00000048
/* 0EB00 8001FBA0 2630000C */  addiu   $s0, $s1, 0x000C           ## $s0 = 0000000C
/* 0EB04 8001FBA4 04430004 */  bgezl   $v0, .L8001FBB8
/* 0EB08 8001FBA8 A7A200CA */  sh      $v0, 0x00CA($sp)
/* 0EB0C 8001FBAC A6200048 */  sh      $zero, 0x0048($s1)         ## 00000048
/* 0EB10 8001FBB0 86220048 */  lh      $v0, 0x0048($s1)           ## 00000048
/* 0EB14 8001FBB4 A7A200CA */  sh      $v0, 0x00CA($sp)
.L8001FBB8:
/* 0EB18 8001FBB8 AFB100E0 */  sw      $s1, 0x00E0($sp)
.L8001FBBC:
/* 0EB1C 8001FBBC 8FA400E4 */  lw      $a0, 0x00E4($sp)
/* 0EB20 8001FBC0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000000C
/* 0EB24 8001FBC4 27A600B8 */  addiu   $a2, $sp, 0x00B8           ## $a2 = FFFFFFD8
/* 0EB28 8001FBC8 0C007DE8 */  jal     func_8001F7A0
/* 0EB2C 8001FBCC 27A700B0 */  addiu   $a3, $sp, 0x00B0           ## $a3 = FFFFFFD0
/* 0EB30 8001FBD0 C7A000B8 */  lwc1    $f0, 0x00B8($sp)
/* 0EB34 8001FBD4 C7AE00B0 */  lwc1    $f14, 0x00B0($sp)
/* 0EB38 8001FBD8 3C01C3A0 */  lui     $at, 0xC3A0                ## $at = C3A00000
/* 0EB3C 8001FBDC 44811000 */  mtc1    $at, $f2                   ## $f2 = -320.00
/* 0EB40 8001FBE0 460E0402 */  mul.s   $f16, $f0, $f14
/* 0EB44 8001FBE4 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 0EB48 8001FBE8 44819000 */  mtc1    $at, $f18                  ## $f18 = 160.00
/* 0EB4C 8001FBEC 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 0EB50 8001FBF0 46128102 */  mul.s   $f4, $f16, $f18
/* 0EB54 8001FBF4 00000000 */  nop
/* 0EB58 8001FBF8 46142002 */  mul.s   $f0, $f4, $f20
/* 0EB5C 8001FBFC 4602003C */  c.lt.s  $f0, $f2
/* 0EB60 8001FC00 00000000 */  nop
/* 0EB64 8001FC04 45000003 */  bc1f    .L8001FC14
/* 0EB68 8001FC08 00000000 */  nop
/* 0EB6C 8001FC0C 1000000B */  beq     $zero, $zero, .L8001FC3C
/* 0EB70 8001FC10 E7A200B8 */  swc1    $f2, 0x00B8($sp)
.L8001FC14:
/* 0EB74 8001FC14 44816000 */  mtc1    $at, $f12                  ## $f12 = 320.00
/* 0EB78 8001FC18 00000000 */  nop
/* 0EB7C 8001FC1C 4600603C */  c.lt.s  $f12, $f0
/* 0EB80 8001FC20 00000000 */  nop
/* 0EB84 8001FC24 45020004 */  bc1fl   .L8001FC38
/* 0EB88 8001FC28 46000086 */  mov.s   $f2, $f0
/* 0EB8C 8001FC2C 10000002 */  beq     $zero, $zero, .L8001FC38
/* 0EB90 8001FC30 46006086 */  mov.s   $f2, $f12
/* 0EB94 8001FC34 46000086 */  mov.s   $f2, $f0
.L8001FC38:
/* 0EB98 8001FC38 E7A200B8 */  swc1    $f2, 0x00B8($sp)
.L8001FC3C:
/* 0EB9C 8001FC3C C7A000BC */  lwc1    $f0, 0x00BC($sp)
/* 0EBA0 8001FC40 3C01C370 */  lui     $at, 0xC370                ## $at = C3700000
/* 0EBA4 8001FC44 44811000 */  mtc1    $at, $f2                   ## $f2 = -240.00
/* 0EBA8 8001FC48 460E0182 */  mul.s   $f6, $f0, $f14
/* 0EBAC 8001FC4C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 0EBB0 8001FC50 44814000 */  mtc1    $at, $f8                   ## $f8 = 120.00
/* 0EBB4 8001FC54 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 0EBB8 8001FC58 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 0EBBC 8001FC5C 46083282 */  mul.s   $f10, $f6, $f8
/* 0EBC0 8001FC60 00000000 */  nop
/* 0EBC4 8001FC64 46145002 */  mul.s   $f0, $f10, $f20
/* 0EBC8 8001FC68 4602003C */  c.lt.s  $f0, $f2
/* 0EBCC 8001FC6C 00000000 */  nop
/* 0EBD0 8001FC70 45000003 */  bc1f    .L8001FC80
/* 0EBD4 8001FC74 00000000 */  nop
/* 0EBD8 8001FC78 1000000B */  beq     $zero, $zero, .L8001FCA8
/* 0EBDC 8001FC7C E7A200BC */  swc1    $f2, 0x00BC($sp)
.L8001FC80:
/* 0EBE0 8001FC80 44816000 */  mtc1    $at, $f12                  ## $f12 = 240.00
/* 0EBE4 8001FC84 00000000 */  nop
/* 0EBE8 8001FC88 4600603C */  c.lt.s  $f12, $f0
/* 0EBEC 8001FC8C 00000000 */  nop
/* 0EBF0 8001FC90 45020004 */  bc1fl   .L8001FCA4
/* 0EBF4 8001FC94 46000086 */  mov.s   $f2, $f0
/* 0EBF8 8001FC98 10000002 */  beq     $zero, $zero, .L8001FCA4
/* 0EBFC 8001FC9C 46006086 */  mov.s   $f2, $f12
/* 0EC00 8001FCA0 46000086 */  mov.s   $f2, $f0
.L8001FCA4:
/* 0EC04 8001FCA4 E7A200BC */  swc1    $f2, 0x00BC($sp)
.L8001FCA8:
/* 0EC08 8001FCA8 C7B000C0 */  lwc1    $f16, 0x00C0($sp)
/* 0EC0C 8001FCAC 8FA400E0 */  lw      $a0, 0x00E0($sp)
/* 0EC10 8001FCB0 46148482 */  mul.s   $f18, $f16, $f20
/* 0EC14 8001FCB4 E7B200C0 */  swc1    $f18, 0x00C0($sp)
/* 0EC18 8001FCB8 808B004C */  lb      $t3, 0x004C($a0)           ## 0000004C
/* 0EC1C 8001FCBC 256CFFFF */  addiu   $t4, $t3, 0xFFFF           ## $t4 = FFFFFFFF
/* 0EC20 8001FCC0 A08C004C */  sb      $t4, 0x004C($a0)           ## 0000004C
/* 0EC24 8001FCC4 8085004C */  lb      $a1, 0x004C($a0)           ## 0000004C
/* 0EC28 8001FCC8 04A30004 */  bgezl   $a1, .L8001FCDC
/* 0EC2C 8001FCCC C7A400C0 */  lwc1    $f4, 0x00C0($sp)
/* 0EC30 8001FCD0 A08D004C */  sb      $t5, 0x004C($a0)           ## 0000004C
/* 0EC34 8001FCD4 8085004C */  lb      $a1, 0x004C($a0)           ## 0000004C
/* 0EC38 8001FCD8 C7A400C0 */  lwc1    $f4, 0x00C0($sp)
.L8001FCDC:
/* 0EC3C 8001FCDC 8FA600B8 */  lw      $a2, 0x00B8($sp)
/* 0EC40 8001FCE0 8FA700BC */  lw      $a3, 0x00BC($sp)
/* 0EC44 8001FCE4 0C007E01 */  jal     func_8001F804
/* 0EC48 8001FCE8 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 0EC4C 8001FCEC 8E6E066C */  lw      $t6, 0x066C($s3)           ## 0000066C
/* 0EC50 8001FCF0 24050039 */  addiu   $a1, $zero, 0x0039         ## $a1 = 00000039
/* 0EC54 8001FCF4 31CF0040 */  andi    $t7, $t6, 0x0040           ## $t7 = 00000000
/* 0EC58 8001FCF8 11E00004 */  beq     $t7, $zero, .L8001FD0C
/* 0EC5C 8001FCFC 00000000 */  nop
/* 0EC60 8001FD00 8E780654 */  lw      $t8, 0x0654($s3)           ## 00000654
/* 0EC64 8001FD04 12580083 */  beq     $s2, $t8, .L8001FF14
/* 0EC68 8001FD08 00000000 */  nop
.L8001FD0C:
/* 0EC6C 8001FD0C 0C01F7EF */  jal     func_8007DFBC
/* 0EC70 8001FD10 8EA402B0 */  lw      $a0, 0x02B0($s5)           ## 000002B0
/* 0EC74 8001FD14 AEA202B0 */  sw      $v0, 0x02B0($s5)           ## 000002B0
/* 0EC78 8001FD18 8FA800B4 */  lw      $t0, 0x00B4($sp)
/* 0EC7C 8001FD1C 8FB900E0 */  lw      $t9, 0x00E0($sp)
/* 0EC80 8001FD20 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0EC84 8001FD24 1900007B */  blez    $t0, .L8001FF14
/* 0EC88 8001FD28 8325004C */  lb      $a1, 0x004C($t9)           ## 0000004C
/* 0EC8C 8001FD2C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 0EC90 8001FD30 4481E000 */  mtc1    $at, $f28                  ## $f28 = 120.00
/* 0EC94 8001FD34 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 0EC98 8001FD38 C43A6490 */  lwc1    $f26, 0x6490($at)          ## 80106490
/* 0EC9C 8001FD3C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 0ECA0 8001FD40 3C17DA38 */  lui     $s7, 0xDA38                ## $s7 = DA380000
/* 0ECA4 8001FD44 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 0ECA8 8001FD48 36F70003 */  ori     $s7, $s7, 0x0003           ## $s7 = DA380003
/* 0ECAC 8001FD4C C4366494 */  lwc1    $f22, 0x6494($at)          ## 80106494
/* 0ECB0 8001FD50 3C1EDE00 */  lui     $s8, 0xDE00                ## $s8 = DE000000
/* 0ECB4 8001FD54 24160004 */  addiu   $s6, $zero, 0x0004         ## $s6 = 00000004
.L8001FD58:
/* 0ECB8 8001FD58 8FA900E0 */  lw      $t1, 0x00E0($sp)
/* 0ECBC 8001FD5C 00055080 */  sll     $t2, $a1,  2
/* 0ECC0 8001FD60 01455021 */  addu    $t2, $t2, $a1
/* 0ECC4 8001FD64 000A5080 */  sll     $t2, $t2,  2
/* 0ECC8 8001FD68 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 0ECCC 8001FD6C 012A1021 */  addu    $v0, $t1, $t2
/* 0ECD0 8001FD70 C446005C */  lwc1    $f6, 0x005C($v0)           ## 0000005C
/* 0ECD4 8001FD74 44814000 */  mtc1    $at, $f8                   ## $f8 = 500.00
/* 0ECD8 8001FD78 87A300CA */  lh      $v1, 0x00CA($sp)
/* 0ECDC 8001FD7C 24530050 */  addiu   $s3, $v0, 0x0050           ## $s3 = 00000050
/* 0ECE0 8001FD80 4608303C */  c.lt.s  $f6, $f8
/* 0ECE4 8001FD84 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0ECE8 8001FD88 45020056 */  bc1fl   .L8001FEE4
/* 0ECEC 8001FD8C 2463FFAB */  addiu   $v1, $v1, 0xFFAB           ## $v1 = FFFFFFAB
/* 0ECF0 8001FD90 C66C000C */  lwc1    $f12, 0x000C($s3)          ## 0000005C
/* 0ECF4 8001FD94 3C140405 */  lui     $s4, 0x0405                ## $s4 = 04050000
/* 0ECF8 8001FD98 4406A000 */  mfc1    $a2, $f20
/* 0ECFC 8001FD9C 461C603E */  c.le.s  $f12, $f28
/* 0ED00 8001FDA0 26942980 */  addiu   $s4, $s4, 0x2980           ## $s4 = 04052980
/* 0ED04 8001FDA4 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 0ED08 8001FDA8 45020004 */  bc1fl   .L8001FDBC
/* 0ED0C 8001FDAC 461C6281 */  sub.s   $f10, $f12, $f28
/* 0ED10 8001FDB0 10000005 */  beq     $zero, $zero, .L8001FDC8
/* 0ED14 8001FDB4 4600D606 */  mov.s   $f24, $f26
/* 0ED18 8001FDB8 461C6281 */  sub.s   $f10, $f12, $f28
.L8001FDBC:
/* 0ED1C 8001FDBC C4306498 */  lwc1    $f16, 0x6498($at)          ## 80106498
/* 0ED20 8001FDC0 46105482 */  mul.s   $f18, $f10, $f16
/* 0ED24 8001FDC4 461A9600 */  add.s   $f24, $f18, $f26
.L8001FDC8:
/* 0ED28 8001FDC8 C66C0000 */  lwc1    $f12, 0x0000($s3)          ## 00000050
/* 0ED2C 8001FDCC C66E0004 */  lwc1    $f14, 0x0004($s3)          ## 00000054
/* 0ED30 8001FDD0 AFA500A8 */  sw      $a1, 0x00A8($sp)
/* 0ED34 8001FDD4 AFA400AC */  sw      $a0, 0x00AC($sp)
/* 0ED38 8001FDD8 0C02A9FD */  jal     Matrix_Translate
/* 0ED3C 8001FDDC A7A300CA */  sh      $v1, 0x00CA($sp)
/* 0ED40 8001FDE0 4600C306 */  mov.s   $f12, $f24
/* 0ED44 8001FDE4 4600D386 */  mov.s   $f14, $f26
/* 0ED48 8001FDE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0ED4C 8001FDEC 0C02AA3F */  jal     Matrix_Scale
/* 0ED50 8001FDF0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0ED54 8001FDF4 8EB002B0 */  lw      $s0, 0x02B0($s5)           ## 000002B0
/* 0ED58 8001FDF8 3C0CFA00 */  lui     $t4, 0xFA00                ## $t4 = FA000000
/* 0ED5C 8001FDFC 260B0008 */  addiu   $t3, $s0, 0x0008           ## $t3 = 00000014
/* 0ED60 8001FE00 AEAB02B0 */  sw      $t3, 0x02B0($s5)           ## 000002B0
/* 0ED64 8001FE04 AE0C0000 */  sw      $t4, 0x0000($s0)           ## 0000000C
/* 0ED68 8001FE08 92790011 */  lbu     $t9, 0x0011($s3)           ## 00000061
/* 0ED6C 8001FE0C 926E0010 */  lbu     $t6, 0x0010($s3)           ## 00000060
/* 0ED70 8001FE10 926B0012 */  lbu     $t3, 0x0012($s3)           ## 00000062
/* 0ED74 8001FE14 93B800CB */  lbu     $t8, 0x00CB($sp)
/* 0ED78 8001FE18 00194400 */  sll     $t0, $t9, 16
/* 0ED7C 8001FE1C 000E7E00 */  sll     $t7, $t6, 24
/* 0ED80 8001FE20 01E84825 */  or      $t1, $t7, $t0              ## $t1 = 00000000
/* 0ED84 8001FE24 000B6200 */  sll     $t4, $t3,  8
/* 0ED88 8001FE28 012C6825 */  or      $t5, $t1, $t4              ## $t5 = FA000000
/* 0ED8C 8001FE2C 01B8C825 */  or      $t9, $t5, $t8              ## $t9 = FA000000
/* 0ED90 8001FE30 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000010
/* 0ED94 8001FE34 8FAF00E0 */  lw      $t7, 0x00E0($sp)
/* 0ED98 8001FE38 91E8004B */  lbu     $t0, 0x004B($t7)           ## 0000004B
/* 0ED9C 8001FE3C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 0EDA0 8001FE40 C428649C */  lwc1    $f8, 0x649C($at)           ## 8010649C
/* 0EDA4 8001FE44 310A007F */  andi    $t2, $t0, 0x007F           ## $t2 = 00000000
/* 0EDA8 8001FE48 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 0EDAC 8001FE4C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0EDB0 8001FE50 468021A0 */  cvt.s.w $f6, $f4
/* 0EDB4 8001FE54 46083302 */  mul.s   $f12, $f6, $f8
/* 0EDB8 8001FE58 0C02AB53 */  jal     Matrix_RotateZ
/* 0EDBC 8001FE5C 00000000 */  nop
/* 0EDC0 8001FE60 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 0EDC4 8001FE64 4600B306 */  mov.s   $f12, $f22
.L8001FE68:
/* 0EDC8 8001FE68 0C02AB53 */  jal     Matrix_RotateZ
/* 0EDCC 8001FE6C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0EDD0 8001FE70 0C02A9BB */  jal     Matrix_Push
/* 0EDD4 8001FE74 00000000 */  nop
/* 0EDD8 8001FE78 C66C000C */  lwc1    $f12, 0x000C($s3)          ## 0000005C
/* 0EDDC 8001FE7C 4406A000 */  mfc1    $a2, $f20
/* 0EDE0 8001FE80 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0EDE4 8001FE84 0C02A9FD */  jal     Matrix_Translate
/* 0EDE8 8001FE88 46006386 */  mov.s   $f14, $f12
/* 0EDEC 8001FE8C 8EB102B0 */  lw      $s1, 0x02B0($s5)           ## 000002B0
/* 0EDF0 8001FE90 262B0008 */  addiu   $t3, $s1, 0x0008           ## $t3 = 00000008
/* 0EDF4 8001FE94 AEAB02B0 */  sw      $t3, 0x02B0($s5)           ## 000002B0
/* 0EDF8 8001FE98 AE370000 */  sw      $s7, 0x0000($s1)           ## 00000000
/* 0EDFC 8001FE9C 8FA900E4 */  lw      $t1, 0x00E4($sp)
/* 0EE00 8001FEA0 0C02AE40 */  jal     Matrix_NewMtx
/* 0EE04 8001FEA4 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 0EE08 8001FEA8 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 0EE0C 8001FEAC 8EB002B0 */  lw      $s0, 0x02B0($s5)           ## 000002B0
/* 0EE10 8001FEB0 260C0008 */  addiu   $t4, $s0, 0x0008           ## $t4 = 00000014
/* 0EE14 8001FEB4 AEAC02B0 */  sw      $t4, 0x02B0($s5)           ## 000002B0
/* 0EE18 8001FEB8 AE140004 */  sw      $s4, 0x0004($s0)           ## 00000010
/* 0EE1C 8001FEBC AE1E0000 */  sw      $s8, 0x0000($s0)           ## 0000000C
/* 0EE20 8001FEC0 0C02A9C9 */  jal     Matrix_Pull
/* 0EE24 8001FEC4 00000000 */  nop
/* 0EE28 8001FEC8 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 0EE2C 8001FECC 5656FFE6 */  bnel    $s2, $s6, .L8001FE68
/* 0EE30 8001FED0 4600B306 */  mov.s   $f12, $f22
/* 0EE34 8001FED4 8FA500A8 */  lw      $a1, 0x00A8($sp)
/* 0EE38 8001FED8 8FA400AC */  lw      $a0, 0x00AC($sp)
/* 0EE3C 8001FEDC 87A300CA */  lh      $v1, 0x00CA($sp)
/* 0EE40 8001FEE0 2463FFAB */  addiu   $v1, $v1, 0xFFAB           ## $v1 = FFFFFFAB
.L8001FEE4:
/* 0EE44 8001FEE4 00031C00 */  sll     $v1, $v1, 16
/* 0EE48 8001FEE8 00031C03 */  sra     $v1, $v1, 16
/* 0EE4C 8001FEEC 04610002 */  bgez    $v1, .L8001FEF8
/* 0EE50 8001FEF0 24A50001 */  addiu   $a1, $a1, 0x0001           ## $a1 = 00000001
/* 0EE54 8001FEF4 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8001FEF8:
/* 0EE58 8001FEF8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0EE5C 8001FEFC 00A1001A */  div     $zero, $a1, $at
/* 0EE60 8001FF00 8FAE00B4 */  lw      $t6, 0x00B4($sp)
/* 0EE64 8001FF04 00002810 */  mfhi    $a1
/* 0EE68 8001FF08 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000001
/* 0EE6C 8001FF0C 148EFF92 */  bne     $a0, $t6, .L8001FD58
/* 0EE70 8001FF10 A7A300CA */  sh      $v1, 0x00CA($sp)
.L8001FF14:
/* 0EE74 8001FF14 8FB100E0 */  lw      $s1, 0x00E0($sp)
.L8001FF18:
/* 0EE78 8001FF18 8E320094 */  lw      $s2, 0x0094($s1)           ## 00000094
/* 0EE7C 8001FF1C 3C17DA38 */  lui     $s7, 0xDA38                ## $s7 = DA380000
/* 0EE80 8001FF20 36F70003 */  ori     $s7, $s7, 0x0003           ## $s7 = DA380003
/* 0EE84 8001FF24 12400067 */  beq     $s2, $zero, .L800200C4
/* 0EE88 8001FF28 3C1EDE00 */  lui     $s8, 0xDE00                ## $s8 = DE000000
/* 0EE8C 8001FF2C 8E4D0004 */  lw      $t5, 0x0004($s2)           ## 00000005
/* 0EE90 8001FF30 3C08800F */  lui     $t0, 0x800F                ## $t0 = 800F0000
/* 0EE94 8001FF34 25088214 */  addiu   $t0, $t0, 0x8214           ## $t0 = sNaviColorList
/* 0EE98 8001FF38 000DC100 */  sll     $t8, $t5,  4
/* 0EE9C 8001FF3C 07020062 */  bltzl   $t8, .L800200C8
/* 0EEA0 8001FF40 8FBF006C */  lw      $ra, 0x006C($sp)
/* 0EEA4 8001FF44 92590002 */  lbu     $t9, 0x0002($s2)           ## 00000003
/* 0EEA8 8001FF48 8EA402D0 */  lw      $a0, 0x02D0($s5)           ## 000002D0
/* 0EEAC 8001FF4C 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 0EEB0 8001FF50 001978C0 */  sll     $t7, $t9,  3
/* 0EEB4 8001FF54 0C01F7EF */  jal     func_8007DFBC
/* 0EEB8 8001FF58 01E88821 */  addu    $s1, $t7, $t0
/* 0EEBC 8001FF5C AEA202D0 */  sw      $v0, 0x02D0($s5)           ## 000002D0
/* 0EEC0 8001FF60 C6500054 */  lwc1    $f16, 0x0054($s2)          ## 00000055
/* 0EEC4 8001FF64 C64A004C */  lwc1    $f10, 0x004C($s2)          ## 0000004D
/* 0EEC8 8001FF68 C644003C */  lwc1    $f4, 0x003C($s2)           ## 0000003D
/* 0EECC 8001FF6C 3C014188 */  lui     $at, 0x4188                ## $at = 41880000
/* 0EED0 8001FF70 46105482 */  mul.s   $f18, $f10, $f16
/* 0EED4 8001FF74 44814000 */  mtc1    $at, $f8                   ## $f8 = 17.00
/* 0EED8 8001FF78 8E460040 */  lw      $a2, 0x0040($s2)           ## 00000041
/* 0EEDC 8001FF7C C64C0038 */  lwc1    $f12, 0x0038($s2)          ## 00000039
/* 0EEE0 8001FF80 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0EEE4 8001FF84 46122180 */  add.s   $f6, $f4, $f18
/* 0EEE8 8001FF88 0C02A9FD */  jal     Matrix_Translate
/* 0EEEC 8001FF8C 46083380 */  add.s   $f14, $f6, $f8
/* 0EEF0 8001FF90 8FAA00E4 */  lw      $t2, 0x00E4($sp)
/* 0EEF4 8001FF94 3C0B0001 */  lui     $t3, 0x0001                ## $t3 = 00010000
/* 0EEF8 8001FF98 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 0EEFC 8001FF9C 016A5821 */  addu    $t3, $t3, $t2
/* 0EF00 8001FFA0 8D6B1DE4 */  lw      $t3, 0x1DE4($t3)           ## 00011DE4
/* 0EF04 8001FFA4 000B4880 */  sll     $t1, $t3,  2
/* 0EF08 8001FFA8 012B4823 */  subu    $t1, $t1, $t3
/* 0EF0C 8001FFAC 00094900 */  sll     $t1, $t1,  4
/* 0EF10 8001FFB0 012B4823 */  subu    $t1, $t1, $t3
/* 0EF14 8001FFB4 000948C0 */  sll     $t1, $t1,  3
/* 0EF18 8001FFB8 012B4823 */  subu    $t1, $t1, $t3
/* 0EF1C 8001FFBC 000948C0 */  sll     $t1, $t1,  3
/* 0EF20 8001FFC0 312CFFFF */  andi    $t4, $t1, 0xFFFF           ## $t4 = 00000000
/* 0EF24 8001FFC4 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 0EF28 8001FFC8 05810004 */  bgez    $t4, .L8001FFDC
/* 0EF2C 8001FFCC 46805420 */  cvt.s.w $f16, $f10
/* 0EF30 8001FFD0 44812000 */  mtc1    $at, $f4                   ## $f4 = 4294967296.00
/* 0EF34 8001FFD4 00000000 */  nop
/* 0EF38 8001FFD8 46048400 */  add.s   $f16, $f16, $f4
.L8001FFDC:
/* 0EF3C 8001FFDC 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 0EF40 8001FFE0 C43264A0 */  lwc1    $f18, 0x64A0($at)          ## 801064A0
/* 0EF44 8001FFE4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0EF48 8001FFE8 46128302 */  mul.s   $f12, $f16, $f18
/* 0EF4C 8001FFEC 0C02AAE5 */  jal     Matrix_RotateY
/* 0EF50 8001FFF0 00000000 */  nop
/* 0EF54 8001FFF4 3C028012 */  lui     $v0, 0x8012                ## $v0 = 80120000
/* 0EF58 8001FFF8 8C42BA00 */  lw      $v0, -0x4600($v0)          ## 8011BA00
/* 0EF5C 8001FFFC 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0EF60 80020000 44810000 */  mtc1    $at, $f0                   ## $f0 = 1000.00
/* 0EF64 80020004 844F0D0E */  lh      $t7, 0x0D0E($v0)           ## 80120D0E
/* 0EF68 80020008 844E0D0A */  lh      $t6, 0x0D0A($v0)           ## 80120D0A
/* 0EF6C 8002000C 84580D0C */  lh      $t8, 0x0D0C($v0)           ## 80120D0C
/* 0EF70 80020010 25E80032 */  addiu   $t0, $t7, 0x0032           ## $t0 = 00000032
/* 0EF74 80020014 44888000 */  mtc1    $t0, $f16                  ## $f16 = 0.00
/* 0EF78 80020018 25CD0023 */  addiu   $t5, $t6, 0x0023           ## $t5 = 00000023
/* 0EF7C 8002001C 448D3000 */  mtc1    $t5, $f6                   ## $f6 = 0.00
/* 0EF80 80020020 468084A0 */  cvt.s.w $f18, $f16
/* 0EF84 80020024 2719003C */  addiu   $t9, $t8, 0x003C           ## $t9 = 0000003C
/* 0EF88 80020028 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 0EF8C 8002002C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0EF90 80020030 46803220 */  cvt.s.w $f8, $f6
/* 0EF94 80020034 46009183 */  div.s   $f6, $f18, $f0
/* 0EF98 80020038 46805120 */  cvt.s.w $f4, $f10
/* 0EF9C 8002003C 46002383 */  div.s   $f14, $f4, $f0
/* 0EFA0 80020040 44063000 */  mfc1    $a2, $f6
/* 0EFA4 80020044 0C02AA3F */  jal     Matrix_Scale
/* 0EFA8 80020048 46004303 */  div.s   $f12, $f8, $f0
/* 0EFAC 8002004C 8EB002D0 */  lw      $s0, 0x02D0($s5)           ## 000002D0
/* 0EFB0 80020050 3C0BFA00 */  lui     $t3, 0xFA00                ## $t3 = FA000000
/* 0EFB4 80020054 260A0008 */  addiu   $t2, $s0, 0x0008           ## $t2 = 00000014
/* 0EFB8 80020058 AEAA02D0 */  sw      $t2, 0x02D0($s5)           ## 000002D0
/* 0EFBC 8002005C AE0B0000 */  sw      $t3, 0x0000($s0)           ## 0000000C
/* 0EFC0 80020060 92380001 */  lbu     $t8, 0x0001($s1)           ## 00000001
/* 0EFC4 80020064 922C0000 */  lbu     $t4, 0x0000($s1)           ## 00000000
/* 0EFC8 80020068 922A0002 */  lbu     $t2, 0x0002($s1)           ## 00000002
/* 0EFCC 8002006C 0018CC00 */  sll     $t9, $t8, 16
/* 0EFD0 80020070 000C7600 */  sll     $t6, $t4, 24
/* 0EFD4 80020074 01D97825 */  or      $t7, $t6, $t9              ## $t7 = 00000000
/* 0EFD8 80020078 000A5A00 */  sll     $t3, $t2,  8
/* 0EFDC 8002007C 01EB4825 */  or      $t1, $t7, $t3              ## $t1 = FA000000
/* 0EFE0 80020080 352C00FF */  ori     $t4, $t1, 0x00FF           ## $t4 = FA0000FF
/* 0EFE4 80020084 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000010
/* 0EFE8 80020088 8EB202D0 */  lw      $s2, 0x02D0($s5)           ## 000002D0
/* 0EFEC 8002008C 264D0008 */  addiu   $t5, $s2, 0x0008           ## $t5 = 00000009
/* 0EFF0 80020090 AEAD02D0 */  sw      $t5, 0x02D0($s5)           ## 000002D0
/* 0EFF4 80020094 AE570000 */  sw      $s7, 0x0000($s2)           ## 00000001
/* 0EFF8 80020098 8FB800E4 */  lw      $t8, 0x00E4($sp)
/* 0EFFC 8002009C 0C02AE40 */  jal     Matrix_NewMtx
/* 0F000 800200A0 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 0F004 800200A4 AE420004 */  sw      $v0, 0x0004($s2)           ## 00000005
/* 0F008 800200A8 8EB002D0 */  lw      $s0, 0x02D0($s5)           ## 000002D0
/* 0F00C 800200AC 3C190401 */  lui     $t9, 0x0401                ## $t9 = 04010000
/* 0F010 800200B0 2739CC10 */  addiu   $t9, $t9, 0xCC10           ## $t9 = 0400CC10
/* 0F014 800200B4 260E0008 */  addiu   $t6, $s0, 0x0008           ## $t6 = 00000014
/* 0F018 800200B8 AEAE02D0 */  sw      $t6, 0x02D0($s5)           ## 000002D0
/* 0F01C 800200BC AE190004 */  sw      $t9, 0x0004($s0)           ## 00000010
/* 0F020 800200C0 AE1E0000 */  sw      $s8, 0x0000($s0)           ## 0000000C
.L800200C4:
/* 0F024 800200C4 8FBF006C */  lw      $ra, 0x006C($sp)
.L800200C8:
/* 0F028 800200C8 D7B40020 */  ldc1    $f20, 0x0020($sp)
/* 0F02C 800200CC D7B60028 */  ldc1    $f22, 0x0028($sp)
/* 0F030 800200D0 D7B80030 */  ldc1    $f24, 0x0030($sp)
/* 0F034 800200D4 D7BA0038 */  ldc1    $f26, 0x0038($sp)
/* 0F038 800200D8 D7BC0040 */  ldc1    $f28, 0x0040($sp)
/* 0F03C 800200DC 8FB00048 */  lw      $s0, 0x0048($sp)
/* 0F040 800200E0 8FB1004C */  lw      $s1, 0x004C($sp)
/* 0F044 800200E4 8FB20050 */  lw      $s2, 0x0050($sp)
/* 0F048 800200E8 8FB30054 */  lw      $s3, 0x0054($sp)
/* 0F04C 800200EC 8FB40058 */  lw      $s4, 0x0058($sp)
/* 0F050 800200F0 8FB5005C */  lw      $s5, 0x005C($sp)
/* 0F054 800200F4 8FB60060 */  lw      $s6, 0x0060($sp)
/* 0F058 800200F8 8FB70064 */  lw      $s7, 0x0064($sp)
/* 0F05C 800200FC 8FBE0068 */  lw      $s8, 0x0068($sp)
/* 0F060 80020100 03E00008 */  jr      $ra
/* 0F064 80020104 27BD00E0 */  addiu   $sp, $sp, 0x00E0           ## $sp = 00000000


