glabel func_800288B4
/* 17814 800288B4 00047103 */  sra     $t6, $a0,  4
/* 17818 800288B8 000E7840 */  sll     $t7, $t6,  1
/* 1781C 800288BC 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 17820 800288C0 030FC021 */  addu    $t8, $t8, $t7
/* 17824 800288C4 9718B4A4 */  lhu     $t8, -0x4B5C($t8)          ## 8011B4A4
/* 17828 800288C8 3099000F */  andi    $t9, $a0, 0x000F           ## $t9 = 00000000
/* 1782C 800288CC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 17830 800288D0 03284804 */  sllv    $t1, $t0, $t9
/* 17834 800288D4 03091024 */  and     $v0, $t8, $t1
/* 17838 800288D8 03E00008 */  jr      $ra
/* 1783C 800288DC 00000000 */  nop


