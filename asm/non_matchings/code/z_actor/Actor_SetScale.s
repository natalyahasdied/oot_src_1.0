glabel Actor_SetScale
/* 0FEE8 80020F88 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 0FEEC 80020F8C 00000000 */  nop
/* 0FEF0 80020F90 E48C0058 */  swc1    $f12, 0x0058($a0)          ## 00000058
/* 0FEF4 80020F94 E48C0054 */  swc1    $f12, 0x0054($a0)          ## 00000054
/* 0FEF8 80020F98 E48C0050 */  swc1    $f12, 0x0050($a0)          ## 00000050
/* 0FEFC 80020F9C 03E00008 */  jr      $ra
/* 0FF00 80020FA0 00000000 */  nop


