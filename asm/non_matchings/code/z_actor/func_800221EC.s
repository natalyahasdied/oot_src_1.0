glabel func_800221EC
/* 1114C 800221EC 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 11150 800221F0 AFB10058 */  sw      $s1, 0x0058($sp)
/* 11154 800221F4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 11158 800221F8 AFBF005C */  sw      $ra, 0x005C($sp)
/* 1115C 800221FC AFB00054 */  sw      $s0, 0x0054($sp)
/* 11160 80022200 AFA5006C */  sw      $a1, 0x006C($sp)
/* 11164 80022204 AFA60070 */  sw      $a2, 0x0070($sp)
/* 11168 80022208 AFA70074 */  sw      $a3, 0x0074($sp)
/* 1116C 8002220C 8FAE0074 */  lw      $t6, 0x0074($sp)
/* 11170 80022210 8DD002C4 */  lw      $s0, 0x02C4($t6)           ## 000002C4
/* 11174 80022214 2610FFE0 */  addiu   $s0, $s0, 0xFFE0           ## $s0 = FFFFFFE0
/* 11178 80022218 ADD002C4 */  sw      $s0, 0x02C4($t6)           ## 000002C4
/* 1117C 8002221C 8FAF006C */  lw      $t7, 0x006C($sp)
/* 11180 80022220 AFB00064 */  sw      $s0, 0x0064($sp)
/* 11184 80022224 C6240000 */  lwc1    $f4, 0x0000($s1)           ## 00000000
/* 11188 80022228 C5E00000 */  lwc1    $f0, 0x0000($t7)           ## 00000000
/* 1118C 8002222C 8FB80074 */  lw      $t8, 0x0074($sp)
/* 11190 80022230 46002032 */  c.eq.s  $f4, $f0
/* 11194 80022234 00000000 */  nop
/* 11198 80022238 4502000C */  bc1fl   .L8002226C
/* 1119C 8002223C 46000386 */  mov.s   $f14, $f0
/* 111A0 80022240 C6260008 */  lwc1    $f6, 0x0008($s1)           ## 00000008
/* 111A4 80022244 C5E80008 */  lwc1    $f8, 0x0008($t7)           ## 00000008
/* 111A8 80022248 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 111AC 8002224C 46083032 */  c.eq.s  $f6, $f8
/* 111B0 80022250 00000000 */  nop
/* 111B4 80022254 45020005 */  bc1fl   .L8002226C
/* 111B8 80022258 46000386 */  mov.s   $f14, $f0
/* 111BC 8002225C C42A64AC */  lwc1    $f10, 0x64AC($at)          ## 801064AC
/* 111C0 80022260 10000002 */  beq     $zero, $zero, .L8002226C
/* 111C4 80022264 460A0380 */  add.s   $f14, $f0, $f10
/* 111C8 80022268 46000386 */  mov.s   $f14, $f0
.L8002226C:
/* 111CC 8002226C 8F1002C4 */  lw      $s0, 0x02C4($t8)           ## 000002C4
/* 111D0 80022270 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 111D4 80022274 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 111D8 80022278 2606FFF0 */  addiu   $a2, $s0, 0xFFF0           ## $a2 = FFFFFFD0
/* 111DC 8002227C AF0602C4 */  sw      $a2, 0x02C4($t8)           ## 000002C4
/* 111E0 80022280 8FB9007C */  lw      $t9, 0x007C($sp)
/* 111E4 80022284 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 111E8 80022288 44077000 */  mfc1    $a3, $f14
/* 111EC 8002228C AF260000 */  sw      $a2, 0x0000($t9)           ## 00000000
/* 111F0 80022290 8FAA006C */  lw      $t2, 0x006C($sp)
/* 111F4 80022294 8FAB0070 */  lw      $t3, 0x0070($sp)
/* 111F8 80022298 240C0010 */  addiu   $t4, $zero, 0x0010         ## $t4 = 00000010
/* 111FC 8002229C C5520004 */  lwc1    $f18, 0x0004($t2)          ## 00000004
/* 11200 800222A0 240D0010 */  addiu   $t5, $zero, 0x0010         ## $t5 = 00000010
/* 11204 800222A4 8FA50064 */  lw      $a1, 0x0064($sp)
/* 11208 800222A8 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 1120C 800222AC C5440008 */  lwc1    $f4, 0x0008($t2)           ## 00000008
/* 11210 800222B0 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 11214 800222B4 24848C20 */  addiu   $a0, $a0, 0x8C20           ## $a0 = 80118C20
/* 11218 800222B8 E7A40014 */  swc1    $f4, 0x0014($sp)
/* 1121C 800222BC C6260000 */  lwc1    $f6, 0x0000($s1)           ## 00000000
/* 11220 800222C0 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 11224 800222C4 C6280004 */  lwc1    $f8, 0x0004($s1)           ## 00000004
/* 11228 800222C8 E7A8001C */  swc1    $f8, 0x001C($sp)
/* 1122C 800222CC C62A0008 */  lwc1    $f10, 0x0008($s1)          ## 00000008
/* 11230 800222D0 E7B0002C */  swc1    $f16, 0x002C($sp)
/* 11234 800222D4 E7B00024 */  swc1    $f16, 0x0024($sp)
/* 11238 800222D8 E7B20028 */  swc1    $f18, 0x0028($sp)
/* 1123C 800222DC E7AA0020 */  swc1    $f10, 0x0020($sp)
/* 11240 800222E0 C5600000 */  lwc1    $f0, 0x0000($t3)           ## 00000000
/* 11244 800222E4 E7A00030 */  swc1    $f0, 0x0030($sp)
/* 11248 800222E8 C5620004 */  lwc1    $f2, 0x0004($t3)           ## 00000004
/* 1124C 800222EC E7A20034 */  swc1    $f2, 0x0034($sp)
/* 11250 800222F0 C56C0008 */  lwc1    $f12, 0x0008($t3)          ## 00000008
/* 11254 800222F4 AFAD004C */  sw      $t5, 0x004C($sp)
/* 11258 800222F8 AFAC0048 */  sw      $t4, 0x0048($sp)
/* 1125C 800222FC E7A0003C */  swc1    $f0, 0x003C($sp)
/* 11260 80022300 E7A20040 */  swc1    $f2, 0x0040($sp)
/* 11264 80022304 E7AC0038 */  swc1    $f12, 0x0038($sp)
/* 11268 80022308 0C034576 */  jal     func_800D15D8
/* 1126C 8002230C E7AC0044 */  swc1    $f12, 0x0044($sp)
/* 11270 80022310 8FA30078 */  lw      $v1, 0x0078($sp)
/* 11274 80022314 8FA80064 */  lw      $t0, 0x0064($sp)
/* 11278 80022318 8FA9007C */  lw      $t1, 0x007C($sp)
/* 1127C 8002231C 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000000
/* 11280 80022320 3C0EDC08 */  lui     $t6, 0xDC08                ## $t6 = DC080000
/* 11284 80022324 35CE000A */  ori     $t6, $t6, 0x000A           ## $t6 = DC08000A
/* 11288 80022328 ACAE0000 */  sw      $t6, 0x0000($a1)           ## 00000000
/* 1128C 8002232C ACA80004 */  sw      $t0, 0x0004($a1)           ## 00000004
/* 11290 80022330 24630008 */  addiu   $v1, $v1, 0x0008           ## $v1 = 00000008
/* 11294 80022334 00603025 */  or      $a2, $v1, $zero            ## $a2 = 00000008
/* 11298 80022338 3C0FDC08 */  lui     $t7, 0xDC08                ## $t7 = DC080000
/* 1129C 8002233C 35EF030A */  ori     $t7, $t7, 0x030A           ## $t7 = DC08030A
/* 112A0 80022340 25180010 */  addiu   $t8, $t0, 0x0010           ## $t8 = 00000010
/* 112A4 80022344 ACD80004 */  sw      $t8, 0x0004($a2)           ## 0000000C
/* 112A8 80022348 ACCF0000 */  sw      $t7, 0x0000($a2)           ## 00000008
/* 112AC 8002234C 24630008 */  addiu   $v1, $v1, 0x0008           ## $v1 = 00000010
/* 112B0 80022350 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 112B4 80022354 3C01F200 */  lui     $at, 0xF200                ## $at = F2000000
/* 112B8 80022358 00603825 */  or      $a3, $v1, $zero            ## $a3 = 00000010
/* 112BC 8002235C 8C8A0004 */  lw      $t2, 0x0004($a0)           ## 00000004
/* 112C0 80022360 8C8E0000 */  lw      $t6, 0x0000($a0)           ## 00000000
/* 112C4 80022364 24630008 */  addiu   $v1, $v1, 0x0008           ## $v1 = 00000018
/* 112C8 80022368 314B0FFF */  andi    $t3, $t2, 0x0FFF           ## $t3 = 00000000
/* 112CC 8002236C 31CF0FFF */  andi    $t7, $t6, 0x0FFF           ## $t7 = 0000000A
/* 112D0 80022370 000FC300 */  sll     $t8, $t7, 12
/* 112D4 80022374 01616025 */  or      $t4, $t3, $at              ## $t4 = F2000000
/* 112D8 80022378 0198C825 */  or      $t9, $t4, $t8              ## $t9 = F2000010
/* 112DC 8002237C ACF90000 */  sw      $t9, 0x0000($a3)           ## 00000010
/* 112E0 80022380 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 112E4 80022384 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 112E8 80022388 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000018
/* 112EC 8002238C 8C8A0004 */  lw      $t2, 0x0004($a0)           ## 00000004
/* 112F0 80022390 8C8C0000 */  lw      $t4, 0x0000($a0)           ## 00000000
/* 112F4 80022394 254D003C */  addiu   $t5, $t2, 0x003C           ## $t5 = 0000003C
/* 112F8 80022398 2599003C */  addiu   $t9, $t4, 0x003C           ## $t9 = F200003C
/* 112FC 8002239C 332A0FFF */  andi    $t2, $t9, 0x0FFF           ## $t2 = 0000003C
/* 11300 800223A0 31AE0FFF */  andi    $t6, $t5, 0x0FFF           ## $t6 = 0000003C
/* 11304 800223A4 01C17825 */  or      $t7, $t6, $at              ## $t7 = 0100003C
/* 11308 800223A8 000A5B00 */  sll     $t3, $t2, 12
/* 1130C 800223AC 01EB6825 */  or      $t5, $t7, $t3              ## $t5 = 0100003C
/* 11310 800223B0 ACED0004 */  sw      $t5, 0x0004($a3)           ## 00000014
/* 11314 800223B4 8FBF005C */  lw      $ra, 0x005C($sp)
/* 11318 800223B8 8FB00054 */  lw      $s0, 0x0054($sp)
/* 1131C 800223BC 8FB10058 */  lw      $s1, 0x0058($sp)
/* 11320 800223C0 03E00008 */  jr      $ra
/* 11324 800223C4 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000


