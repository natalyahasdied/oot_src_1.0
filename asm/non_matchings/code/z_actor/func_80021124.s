glabel func_80021124
/* 10084 80021124 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 10088 80021128 8DCEBA00 */  lw      $t6, -0x4600($t6)          ## 8011BA00
/* 1008C 8002112C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 10090 80021130 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 10094 80021134 85CF0110 */  lh      $t7, 0x0110($t6)           ## 80120110
/* 10098 80021138 C48A005C */  lwc1    $f10, 0x005C($a0)          ## 0000005C
/* 1009C 8002113C C492009C */  lwc1    $f18, 0x009C($a0)          ## 0000009C
/* 100A0 80021140 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 100A4 80021144 00000000 */  nop
/* 100A8 80021148 468021A0 */  cvt.s.w $f6, $f4
/* 100AC 8002114C 46083002 */  mul.s   $f0, $f6, $f8
/* 100B0 80021150 C4860024 */  lwc1    $f6, 0x0024($a0)           ## 00000024
/* 100B4 80021154 46005402 */  mul.s   $f16, $f10, $f0
/* 100B8 80021158 C48A0060 */  lwc1    $f10, 0x0060($a0)          ## 00000060
/* 100BC 8002115C 46128100 */  add.s   $f4, $f16, $f18
/* 100C0 80021160 46005402 */  mul.s   $f16, $f10, $f0
/* 100C4 80021164 C49200A0 */  lwc1    $f18, 0x00A0($a0)          ## 000000A0
/* 100C8 80021168 C48A0064 */  lwc1    $f10, 0x0064($a0)          ## 00000064
/* 100CC 8002116C 46043200 */  add.s   $f8, $f6, $f4
/* 100D0 80021170 C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000028
/* 100D4 80021174 46128180 */  add.s   $f6, $f16, $f18
/* 100D8 80021178 46005402 */  mul.s   $f16, $f10, $f0
/* 100DC 8002117C C49200A4 */  lwc1    $f18, 0x00A4($a0)          ## 000000A4
/* 100E0 80021180 E4880024 */  swc1    $f8, 0x0024($a0)           ## 00000024
/* 100E4 80021184 46062200 */  add.s   $f8, $f4, $f6
/* 100E8 80021188 C486002C */  lwc1    $f6, 0x002C($a0)           ## 0000002C
/* 100EC 8002118C 46128100 */  add.s   $f4, $f16, $f18
/* 100F0 80021190 E4880028 */  swc1    $f8, 0x0028($a0)           ## 00000028
/* 100F4 80021194 46043200 */  add.s   $f8, $f6, $f4
/* 100F8 80021198 E488002C */  swc1    $f8, 0x002C($a0)           ## 0000002C
/* 100FC 8002119C 03E00008 */  jr      $ra
/* 10100 800211A0 00000000 */  nop


