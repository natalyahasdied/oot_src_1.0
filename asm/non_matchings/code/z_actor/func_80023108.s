glabel func_80023108
/* 12068 80023108 AFA50004 */  sw      $a1, 0x0004($sp)
/* 1206C 8002310C 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 12070 80023110 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 12074 80023114 3C010020 */  lui     $at, 0x0020                ## $at = 00200000
/* 12078 80023118 A4850020 */  sh      $a1, 0x0020($a0)           ## 00000020
/* 1207C 8002311C 01C17825 */  or      $t7, $t6, $at              ## $t7 = 00200000
/* 12080 80023120 3C01EFE7 */  lui     $at, 0xEFE7                ## $at = EFE70000
/* 12084 80023124 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = EFE7FFFF
/* 12088 80023128 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 1208C 8002312C 01E1C824 */  and     $t9, $t7, $at
/* 12090 80023130 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 12094 80023134 03E00008 */  jr      $ra
/* 12098 80023138 00000000 */  nop


