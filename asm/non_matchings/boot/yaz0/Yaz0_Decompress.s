glabel Yaz0_Decompress
/* 00DF4 80001254 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DF8 80001258 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00DFC 8000125C AFA5001C */  sw      $a1, 0x001C($sp)
/* 00E00 80001260 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 00E04 80001264 AC248894 */  sw      $a0, -0x776C($at)          ## 80008894
/* 00E08 80001268 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 00E0C 8000126C AC268898 */  sw      $a2, -0x7768($at)          ## 80008898
/* 00E10 80001270 3C0E8001 */  lui     $t6, 0x8001                ## $t6 = 80010000
/* 00E14 80001274 25CE8890 */  addiu   $t6, $t6, 0x8890           ## $t6 = 80008890
/* 00E18 80001278 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 00E1C 8000127C 0C0003D8 */  jal     Yaz0_FirstDMA
/* 00E20 80001280 AC2E8890 */  sw      $t6, -0x7770($at)          ## 80008890
/* 00E24 80001284 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 00E28 80001288 0C00043B */  jal     Yaz0_DecompressImpl
/* 00E2C 8000128C 8FA5001C */  lw      $a1, 0x001C($sp)
/* 00E30 80001290 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00E34 80001294 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E38 80001298 03E00008 */  jr      $ra
/* 00E3C 8000129C 00000000 */  nop
