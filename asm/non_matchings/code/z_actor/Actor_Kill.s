glabel Actor_Kill
/* 0FE14 80020EB4 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 0FE18 80020EB8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0FE1C 80020EBC AC800134 */  sw      $zero, 0x0134($a0)         ## 00000134
/* 0FE20 80020EC0 01C17824 */  and     $t7, $t6, $at
/* 0FE24 80020EC4 AC800130 */  sw      $zero, 0x0130($a0)         ## 00000130
/* 0FE28 80020EC8 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 0FE2C 80020ECC 03E00008 */  jr      $ra
/* 0FE30 80020ED0 00000000 */  nop


