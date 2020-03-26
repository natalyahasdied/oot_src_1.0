glabel func_8001EC44
/* 0DBA4 8001EC44 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 0DBA8 8001EC48 AFB0001C */  sw      $s0, 0x001C($sp)
/* 0DBAC 8001EC4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0DBB0 8001EC50 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0DBB4 8001EC54 AFB10020 */  sw      $s1, 0x0020($sp)
/* 0DBB8 8001EC58 AFA5009C */  sw      $a1, 0x009C($sp)
/* 0DBBC 8001EC5C AFA600A0 */  sw      $a2, 0x00A0($sp)
/* 0DBC0 8001EC60 AFA700A4 */  sw      $a3, 0x00A4($sp)
/* 0DBC4 8001EC64 8E0E0078 */  lw      $t6, 0x0078($s0)           ## 00000078
/* 0DBC8 8001EC68 51C000DE */  beql    $t6, $zero, .L8001EFE4
/* 0DBCC 8001EC6C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0DBD0 8001EC70 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 0DBD4 8001EC74 C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 0DBD8 8001EC78 3C01C248 */  lui     $at, 0xC248                ## $at = C2480000
/* 0DBDC 8001EC7C 44814000 */  mtc1    $at, $f8                   ## $f8 = -50.00
/* 0DBE0 8001EC80 46062001 */  sub.s   $f0, $f4, $f6
/* 0DBE4 8001EC84 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 0DBE8 8001EC88 4600403E */  c.le.s  $f8, $f0
/* 0DBEC 8001EC8C 00000000 */  nop
/* 0DBF0 8001EC90 450200D4 */  bc1fl   .L8001EFE4
/* 0DBF4 8001EC94 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0DBF8 8001EC98 44815000 */  mtc1    $at, $f10                  ## $f10 = 500.00
/* 0DBFC 8001EC9C 8FAF00A0 */  lw      $t7, 0x00A0($sp)
/* 0DC00 8001ECA0 460A003C */  c.lt.s  $f0, $f10
/* 0DC04 8001ECA4 00000000 */  nop
/* 0DC08 8001ECA8 450200CE */  bc1fl   .L8001EFE4
/* 0DC0C 8001ECAC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0DC10 8001ECB0 8DF10000 */  lw      $s1, 0x0000($t7)           ## 00000000
/* 0DC14 8001ECB4 2405002C */  addiu   $a1, $zero, 0x002C         ## $a1 = 0000002C
/* 0DC18 8001ECB8 8E2402C0 */  lw      $a0, 0x02C0($s1)           ## 000002C0
/* 0DC1C 8001ECBC 0C01F7EF */  jal     func_8007DFBC
/* 0DC20 8001ECC0 E7A00094 */  swc1    $f0, 0x0094($sp)
/* 0DC24 8001ECC4 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 0DC28 8001ECC8 C7A00094 */  lwc1    $f0, 0x0094($sp)
/* 0DC2C 8001ECCC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0DC30 8001ECD0 AE3802C0 */  sw      $t8, 0x02C0($s1)           ## 000002C0
/* 0DC34 8001ECD4 3C19FCFF */  lui     $t9, 0xFCFF                ## $t9 = FCFF0000
/* 0DC38 8001ECD8 3C08FFFD */  lui     $t0, 0xFFFD                ## $t0 = FFFD0000
/* 0DC3C 8001ECDC 3508FE38 */  ori     $t0, $t0, 0xFE38           ## $t0 = FFFDFE38
/* 0DC40 8001ECE0 373997FF */  ori     $t9, $t9, 0x97FF           ## $t9 = FCFF97FF
/* 0DC44 8001ECE4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0DC48 8001ECE8 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 0DC4C 8001ECEC 4602003C */  c.lt.s  $f0, $f2
/* 0DC50 8001ECF0 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 0DC54 8001ECF4 45020004 */  bc1fl   .L8001ED08
/* 0DC58 8001ECF8 44816000 */  mtc1    $at, $f12                  ## $f12 = 150.00
/* 0DC5C 8001ECFC 1000000B */  beq     $zero, $zero, .L8001ED2C
/* 0DC60 8001ED00 46001006 */  mov.s   $f0, $f2
/* 0DC64 8001ED04 44816000 */  mtc1    $at, $f12                  ## $f12 = 150.00
.L8001ED08:
/* 0DC68 8001ED08 00000000 */  nop
/* 0DC6C 8001ED0C 4600603C */  c.lt.s  $f12, $f0
/* 0DC70 8001ED10 00000000 */  nop
/* 0DC74 8001ED14 45020004 */  bc1fl   .L8001ED28
/* 0DC78 8001ED18 46000086 */  mov.s   $f2, $f0
/* 0DC7C 8001ED1C 10000002 */  beq     $zero, $zero, .L8001ED28
/* 0DC80 8001ED20 46006086 */  mov.s   $f2, $f12
/* 0DC84 8001ED24 46000086 */  mov.s   $f2, $f0
.L8001ED28:
/* 0DC88 8001ED28 46001006 */  mov.s   $f0, $f2
.L8001ED2C:
/* 0DC8C 8001ED2C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0DC90 8001ED30 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 0DC94 8001ED34 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 0DC98 8001ED38 C4326470 */  lwc1    $f18, 0x6470($at)          ## 80106470
/* 0DC9C 8001ED3C 8FA400A8 */  lw      $a0, 0x00A8($sp)
/* 0DCA0 8001ED40 46120102 */  mul.s   $f4, $f0, $f18
/* 0DCA4 8001ED44 46048301 */  sub.s   $f12, $f16, $f4
/* 0DCA8 8001ED48 1080003D */  beq     $a0, $zero, .L8001EE40
/* 0DCAC 8001ED4C 46006086 */  mov.s   $f2, $f12
/* 0DCB0 8001ED50 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 0DCB4 8001ED54 3C0AFA00 */  lui     $t2, 0xFA00                ## $t2 = FA000000
/* 0DCB8 8001ED58 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 0DCBC 8001ED5C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 0DCC0 8001ED60 AE2902C0 */  sw      $t1, 0x02C0($s1)           ## 000002C0
/* 0DCC4 8001ED64 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0DCC8 8001ED68 908C0000 */  lbu     $t4, 0x0000($a0)           ## 00000000
/* 0DCCC 8001ED6C 908F0001 */  lbu     $t7, 0x0001($a0)           ## 00000001
/* 0DCD0 8001ED70 90890002 */  lbu     $t1, 0x0002($a0)           ## 00000002
/* 0DCD4 8001ED74 000C6E00 */  sll     $t5, $t4, 24
/* 0DCD8 8001ED78 920C00C8 */  lbu     $t4, 0x00C8($s0)           ## 000000C8
/* 0DCDC 8001ED7C 000FC400 */  sll     $t8, $t7, 16
/* 0DCE0 8001ED80 01B8C825 */  or      $t9, $t5, $t8              ## $t9 = 00000008
/* 0DCE4 8001ED84 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 0DCE8 8001ED88 00095200 */  sll     $t2, $t1,  8
/* 0DCEC 8001ED8C 032A5825 */  or      $t3, $t9, $t2              ## $t3 = FA000008
/* 0DCF0 8001ED90 05810004 */  bgez    $t4, .L8001EDA4
/* 0DCF4 8001ED94 46803220 */  cvt.s.w $f8, $f6
/* 0DCF8 8001ED98 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 0DCFC 8001ED9C 00000000 */  nop
/* 0DD00 8001EDA0 460A4200 */  add.s   $f8, $f8, $f10
.L8001EDA4:
/* 0DD04 8001EDA4 46024482 */  mul.s   $f18, $f8, $f2
/* 0DD08 8001EDA8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0DD0C 8001EDAC 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0DD10 8001EDB0 444EF800 */  cfc1    $t6, $f31
/* 0DD14 8001EDB4 44CFF800 */  ctc1    $t7, $f31
/* 0DD18 8001EDB8 00000000 */  nop
/* 0DD1C 8001EDBC 46009424 */  cvt.w.s $f16, $f18
/* 0DD20 8001EDC0 444FF800 */  cfc1    $t7, $f31
/* 0DD24 8001EDC4 00000000 */  nop
/* 0DD28 8001EDC8 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 0DD2C 8001EDCC 51E00013 */  beql    $t7, $zero, .L8001EE1C
/* 0DD30 8001EDD0 440F8000 */  mfc1    $t7, $f16
/* 0DD34 8001EDD4 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 0DD38 8001EDD8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0DD3C 8001EDDC 46109401 */  sub.s   $f16, $f18, $f16
/* 0DD40 8001EDE0 44CFF800 */  ctc1    $t7, $f31
/* 0DD44 8001EDE4 00000000 */  nop
/* 0DD48 8001EDE8 46008424 */  cvt.w.s $f16, $f16
/* 0DD4C 8001EDEC 444FF800 */  cfc1    $t7, $f31
/* 0DD50 8001EDF0 00000000 */  nop
/* 0DD54 8001EDF4 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 0DD58 8001EDF8 15E00005 */  bne     $t7, $zero, .L8001EE10
/* 0DD5C 8001EDFC 00000000 */  nop
/* 0DD60 8001EE00 440F8000 */  mfc1    $t7, $f16
/* 0DD64 8001EE04 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0DD68 8001EE08 10000007 */  beq     $zero, $zero, .L8001EE28
/* 0DD6C 8001EE0C 01E17825 */  or      $t7, $t7, $at              ## $t7 = 80000000
.L8001EE10:
/* 0DD70 8001EE10 10000005 */  beq     $zero, $zero, .L8001EE28
/* 0DD74 8001EE14 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 0DD78 8001EE18 440F8000 */  mfc1    $t7, $f16
.L8001EE1C:
/* 0DD7C 8001EE1C 00000000 */  nop
/* 0DD80 8001EE20 05E0FFFB */  bltz    $t7, .L8001EE10
/* 0DD84 8001EE24 00000000 */  nop
.L8001EE28:
/* 0DD88 8001EE28 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 000000FF
/* 0DD8C 8001EE2C 44CEF800 */  ctc1    $t6, $f31
/* 0DD90 8001EE30 01784025 */  or      $t0, $t3, $t8              ## $t0 = FA0000FF
/* 0DD94 8001EE34 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 0DD98 8001EE38 10000033 */  beq     $zero, $zero, .L8001EF08
/* 0DD9C 8001EE3C 8E040078 */  lw      $a0, 0x0078($s0)           ## 00000078
.L8001EE40:
/* 0DDA0 8001EE40 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 0DDA4 8001EE44 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 0DDA8 8001EE48 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 0DDAC 8001EE4C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 0DDB0 8001EE50 AE2902C0 */  sw      $t1, 0x02C0($s1)           ## 000002C0
/* 0DDB4 8001EE54 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0DDB8 8001EE58 920A00C8 */  lbu     $t2, 0x00C8($s0)           ## 000000C8
/* 0DDBC 8001EE5C 448A2000 */  mtc1    $t2, $f4                   ## $f4 = -166153499473114484112975882535043072.00
/* 0DDC0 8001EE60 05410004 */  bgez    $t2, .L8001EE74
/* 0DDC4 8001EE64 468021A0 */  cvt.s.w $f6, $f4
/* 0DDC8 8001EE68 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 0DDCC 8001EE6C 00000000 */  nop
/* 0DDD0 8001EE70 460A3180 */  add.s   $f6, $f6, $f10
.L8001EE74:
/* 0DDD4 8001EE74 46023202 */  mul.s   $f8, $f6, $f2
/* 0DDD8 8001EE78 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0DDDC 8001EE7C 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0DDE0 8001EE80 444CF800 */  cfc1    $t4, $f31
/* 0DDE4 8001EE84 44CEF800 */  ctc1    $t6, $f31
/* 0DDE8 8001EE88 00000000 */  nop
/* 0DDEC 8001EE8C 460044A4 */  cvt.w.s $f18, $f8
/* 0DDF0 8001EE90 444EF800 */  cfc1    $t6, $f31
/* 0DDF4 8001EE94 00000000 */  nop
/* 0DDF8 8001EE98 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 0DDFC 8001EE9C 51C00013 */  beql    $t6, $zero, .L8001EEEC
/* 0DE00 8001EEA0 440E9000 */  mfc1    $t6, $f18
/* 0DE04 8001EEA4 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 0DE08 8001EEA8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0DE0C 8001EEAC 46124481 */  sub.s   $f18, $f8, $f18
/* 0DE10 8001EEB0 44CEF800 */  ctc1    $t6, $f31
/* 0DE14 8001EEB4 00000000 */  nop
/* 0DE18 8001EEB8 460094A4 */  cvt.w.s $f18, $f18
/* 0DE1C 8001EEBC 444EF800 */  cfc1    $t6, $f31
/* 0DE20 8001EEC0 00000000 */  nop
/* 0DE24 8001EEC4 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 0DE28 8001EEC8 15C00005 */  bne     $t6, $zero, .L8001EEE0
/* 0DE2C 8001EECC 00000000 */  nop
/* 0DE30 8001EED0 440E9000 */  mfc1    $t6, $f18
/* 0DE34 8001EED4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0DE38 8001EED8 10000007 */  beq     $zero, $zero, .L8001EEF8
/* 0DE3C 8001EEDC 01C17025 */  or      $t6, $t6, $at              ## $t6 = 80000000
.L8001EEE0:
/* 0DE40 8001EEE0 10000005 */  beq     $zero, $zero, .L8001EEF8
/* 0DE44 8001EEE4 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 0DE48 8001EEE8 440E9000 */  mfc1    $t6, $f18
.L8001EEEC:
/* 0DE4C 8001EEEC 00000000 */  nop
/* 0DE50 8001EEF0 05C0FFFB */  bltz    $t6, .L8001EEE0
/* 0DE54 8001EEF4 00000000 */  nop
.L8001EEF8:
/* 0DE58 8001EEF8 44CCF800 */  ctc1    $t4, $f31
/* 0DE5C 8001EEFC 31CD00FF */  andi    $t5, $t6, 0x00FF           ## $t5 = 000000FF
/* 0DE60 8001EF00 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 0DE64 8001EF04 8E040078 */  lw      $a0, 0x0078($s0)           ## 00000078
.L8001EF08:
/* 0DE68 8001EF08 8E050024 */  lw      $a1, 0x0024($s0)           ## 00000024
/* 0DE6C 8001EF0C 8E060080 */  lw      $a2, 0x0080($s0)           ## 00000080
/* 0DE70 8001EF10 8E07002C */  lw      $a3, 0x002C($s0)           ## 0000002C
/* 0DE74 8001EF14 27AB0050 */  addiu   $t3, $sp, 0x0050           ## $t3 = FFFFFFB8
/* 0DE78 8001EF18 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 0DE7C 8001EF1C 0C00AD9A */  jal     func_8002B668
/* 0DE80 8001EF20 E7AC002C */  swc1    $f12, 0x002C($sp)
/* 0DE84 8001EF24 0C02A9D9 */  jal     Matrix_Put
/* 0DE88 8001EF28 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFB8
/* 0DE8C 8001EF2C 8FB800A4 */  lw      $t8, 0x00A4($sp)
/* 0DE90 8001EF30 3C080405 */  lui     $t0, 0x0405                ## $t0 = 04050000
/* 0DE94 8001EF34 2508E740 */  addiu   $t0, $t0, 0xE740           ## $t0 = 0404E740
/* 0DE98 8001EF38 5308000B */  beql    $t8, $t0, .L8001EF68
/* 0DE9C 8001EF3C C7A6002C */  lwc1    $f6, 0x002C($sp)
/* 0DEA0 8001EF40 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 0DEA4 8001EF44 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 0DEA8 8001EF48 C42A6474 */  lwc1    $f10, 0x6474($at)          ## 80106474
/* 0DEAC 8001EF4C 44898000 */  mtc1    $t1, $f16                  ## $f16 = 0.00
/* 0DEB0 8001EF50 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0DEB4 8001EF54 46808120 */  cvt.s.w $f4, $f16
/* 0DEB8 8001EF58 460A2302 */  mul.s   $f12, $f4, $f10
/* 0DEBC 8001EF5C 0C02AAE5 */  jal     Matrix_RotateY
/* 0DEC0 8001EF60 00000000 */  nop
/* 0DEC4 8001EF64 C7A6002C */  lwc1    $f6, 0x002C($sp)
.L8001EF68:
/* 0DEC8 8001EF68 C60800C4 */  lwc1    $f8, 0x00C4($s0)           ## 000000C4
/* 0DECC 8001EF6C C6120050 */  lwc1    $f18, 0x0050($s0)          ## 00000050
/* 0DED0 8001EF70 C6100058 */  lwc1    $f16, 0x0058($s0)          ## 00000058
/* 0DED4 8001EF74 46083082 */  mul.s   $f2, $f6, $f8
/* 0DED8 8001EF78 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0DEDC 8001EF7C 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 0DEE0 8001EF80 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0DEE4 8001EF84 46029302 */  mul.s   $f12, $f18, $f2
/* 0DEE8 8001EF88 00000000 */  nop
/* 0DEEC 8001EF8C 46028102 */  mul.s   $f4, $f16, $f2
/* 0DEF0 8001EF90 44062000 */  mfc1    $a2, $f4
/* 0DEF4 8001EF94 0C02AA3F */  jal     Matrix_Scale
/* 0DEF8 8001EF98 00000000 */  nop
/* 0DEFC 8001EF9C 8E3002C0 */  lw      $s0, 0x02C0($s1)           ## 000002C0
/* 0DF00 8001EFA0 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 0DF04 8001EFA4 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 0DF08 8001EFA8 26190008 */  addiu   $t9, $s0, 0x0008           ## $t9 = 00000008
/* 0DF0C 8001EFAC AE3902C0 */  sw      $t9, 0x02C0($s1)           ## 000002C0
/* 0DF10 8001EFB0 AE0A0000 */  sw      $t2, 0x0000($s0)           ## 00000000
/* 0DF14 8001EFB4 8FAC00A0 */  lw      $t4, 0x00A0($sp)
/* 0DF18 8001EFB8 0C02AE40 */  jal     Matrix_NewMtx
/* 0DF1C 8001EFBC 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 0DF20 8001EFC0 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 0DF24 8001EFC4 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 0DF28 8001EFC8 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 0DF2C 8001EFCC 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 0DF30 8001EFD0 AE2E02C0 */  sw      $t6, 0x02C0($s1)           ## 000002C0
/* 0DF34 8001EFD4 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 0DF38 8001EFD8 8FAD00A4 */  lw      $t5, 0x00A4($sp)
/* 0DF3C 8001EFDC AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 0DF40 8001EFE0 8FBF0024 */  lw      $ra, 0x0024($sp)
.L8001EFE4:
/* 0DF44 8001EFE4 8FB0001C */  lw      $s0, 0x001C($sp)
/* 0DF48 8001EFE8 8FB10020 */  lw      $s1, 0x0020($sp)
/* 0DF4C 8001EFEC 03E00008 */  jr      $ra
/* 0DF50 8001EFF0 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000


