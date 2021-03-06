glabel func_80026984
/* 158E4 80026984 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 158E8 80026988 F7BA0030 */  sdc1    $f26, 0x0030($sp)
/* 158EC 8002698C F7B80028 */  sdc1    $f24, 0x0028($sp)
/* 158F0 80026990 F7B60020 */  sdc1    $f22, 0x0020($sp)
/* 158F4 80026994 AFB10040 */  sw      $s1, 0x0040($sp)
/* 158F8 80026998 AFB0003C */  sw      $s0, 0x003C($sp)
/* 158FC 8002699C 4486B000 */  mtc1    $a2, $f22                  ## $f22 = 0.00
/* 15900 800269A0 4487C000 */  mtc1    $a3, $f24                  ## $f24 = 0.00
/* 15904 800269A4 4480D000 */  mtc1    $zero, $f26                ## $f26 = 0.00
/* 15908 800269A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1590C 800269AC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 15910 800269B0 AFBF0044 */  sw      $ra, 0x0044($sp)
/* 15914 800269B4 F7B40018 */  sdc1    $f20, 0x0018($sp)
/* 15918 800269B8 4600D506 */  mov.s   $f20, $f26
/* 1591C 800269BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 15920 800269C0 0C018F86 */  jal     Math_Vec3f_DistXYZ
/* 15924 800269C4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 15928 800269C8 C7A40058 */  lwc1    $f4, 0x0058($sp)
/* 1592C 800269CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 15930 800269D0 4600203E */  c.le.s  $f4, $f0
/* 15934 800269D4 00000000 */  nop
/* 15938 800269D8 45000017 */  bc1f    .L80026A38
/* 1593C 800269DC 00000000 */  nop
/* 15940 800269E0 8E050000 */  lw      $a1, 0x0000($s0)           ## 00000000
/* 15944 800269E4 4406B000 */  mfc1    $a2, $f22
/* 15948 800269E8 4407C000 */  mfc1    $a3, $f24
/* 1594C 800269EC E7BA0010 */  swc1    $f26, 0x0010($sp)
/* 15950 800269F0 0C01905E */  jal     Math_SmoothScaleMaxMinF
/* 15954 800269F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 15958 800269F8 8E050004 */  lw      $a1, 0x0004($s0)           ## 00000004
/* 1595C 800269FC 4406B000 */  mfc1    $a2, $f22
/* 15960 80026A00 4407C000 */  mfc1    $a3, $f24
/* 15964 80026A04 46000506 */  mov.s   $f20, $f0
/* 15968 80026A08 E7BA0010 */  swc1    $f26, 0x0010($sp)
/* 1596C 80026A0C 0C01905E */  jal     Math_SmoothScaleMaxMinF
/* 15970 80026A10 26240004 */  addiu   $a0, $s1, 0x0004           ## $a0 = 00000004
/* 15974 80026A14 8E050008 */  lw      $a1, 0x0008($s0)           ## 00000008
/* 15978 80026A18 4406B000 */  mfc1    $a2, $f22
/* 1597C 80026A1C 4407C000 */  mfc1    $a3, $f24
/* 15980 80026A20 4600A500 */  add.s   $f20, $f20, $f0
/* 15984 80026A24 E7BA0010 */  swc1    $f26, 0x0010($sp)
/* 15988 80026A28 0C01905E */  jal     Math_SmoothScaleMaxMinF
/* 1598C 80026A2C 26240008 */  addiu   $a0, $s1, 0x0008           ## $a0 = 00000008
/* 15990 80026A30 1000001D */  beq     $zero, $zero, .L80026AA8
/* 15994 80026A34 4600A500 */  add.s   $f20, $f20, $f0
.L80026A38:
/* 15998 80026A38 0C018F86 */  jal     Math_Vec3f_DistXYZ
/* 1599C 80026A3C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 159A0 80026A40 C7A6005C */  lwc1    $f6, 0x005C($sp)
/* 159A4 80026A44 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 159A8 80026A48 4600303C */  c.lt.s  $f6, $f0
/* 159AC 80026A4C 00000000 */  nop
/* 159B0 80026A50 45020016 */  bc1fl   .L80026AAC
/* 159B4 80026A54 4600A006 */  mov.s   $f0, $f20
/* 159B8 80026A58 8E050000 */  lw      $a1, 0x0000($s0)           ## 00000000
/* 159BC 80026A5C 4406B000 */  mfc1    $a2, $f22
/* 159C0 80026A60 4407C000 */  mfc1    $a3, $f24
/* 159C4 80026A64 0C01905E */  jal     Math_SmoothScaleMaxMinF
/* 159C8 80026A68 E7BA0010 */  swc1    $f26, 0x0010($sp)
/* 159CC 80026A6C 8E050004 */  lw      $a1, 0x0004($s0)           ## 00000004
/* 159D0 80026A70 4406B000 */  mfc1    $a2, $f22
/* 159D4 80026A74 4407C000 */  mfc1    $a3, $f24
/* 159D8 80026A78 46000506 */  mov.s   $f20, $f0
/* 159DC 80026A7C E7BA0010 */  swc1    $f26, 0x0010($sp)
/* 159E0 80026A80 0C01905E */  jal     Math_SmoothScaleMaxMinF
/* 159E4 80026A84 26240004 */  addiu   $a0, $s1, 0x0004           ## $a0 = 00000004
/* 159E8 80026A88 8E050008 */  lw      $a1, 0x0008($s0)           ## 00000008
/* 159EC 80026A8C 4406B000 */  mfc1    $a2, $f22
/* 159F0 80026A90 4407C000 */  mfc1    $a3, $f24
/* 159F4 80026A94 4600A500 */  add.s   $f20, $f20, $f0
/* 159F8 80026A98 E7BA0010 */  swc1    $f26, 0x0010($sp)
/* 159FC 80026A9C 0C01905E */  jal     Math_SmoothScaleMaxMinF
/* 15A00 80026AA0 26240008 */  addiu   $a0, $s1, 0x0008           ## $a0 = 00000008
/* 15A04 80026AA4 4600A500 */  add.s   $f20, $f20, $f0
.L80026AA8:
/* 15A08 80026AA8 4600A006 */  mov.s   $f0, $f20
.L80026AAC:
/* 15A0C 80026AAC 8FBF0044 */  lw      $ra, 0x0044($sp)
/* 15A10 80026AB0 D7B40018 */  ldc1    $f20, 0x0018($sp)
/* 15A14 80026AB4 D7B60020 */  ldc1    $f22, 0x0020($sp)
/* 15A18 80026AB8 D7B80028 */  ldc1    $f24, 0x0028($sp)
/* 15A1C 80026ABC D7BA0030 */  ldc1    $f26, 0x0030($sp)
/* 15A20 80026AC0 8FB0003C */  lw      $s0, 0x003C($sp)
/* 15A24 80026AC4 8FB10040 */  lw      $s1, 0x0040($sp)
/* 15A28 80026AC8 03E00008 */  jr      $ra
/* 15A2C 80026ACC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


