glabel func_80028914
/* 17874 80028914 00047103 */  sra     $t6, $a0,  4
/* 17878 80028918 000E7840 */  sll     $t7, $t6,  1
/* 1787C 8002891C 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 17880 80028920 030FC021 */  addu    $t8, $t8, $t7
/* 17884 80028924 9718B4C8 */  lhu     $t8, -0x4B38($t8)          ## 8011B4C8
/* 17888 80028928 3099000F */  andi    $t9, $a0, 0x000F           ## $t9 = 00000000
/* 1788C 8002892C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 17890 80028930 03284804 */  sllv    $t1, $t0, $t9
/* 17894 80028934 03091024 */  and     $v0, $t8, $t1
/* 17898 80028938 03E00008 */  jr      $ra
/* 1789C 8002893C 00000000 */  nop

