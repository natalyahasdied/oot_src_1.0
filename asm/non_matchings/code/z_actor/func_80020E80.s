glabel func_80020E80
/* 0FDE0 80020E80 908E1D57 */  lbu     $t6, 0x1D57($a0)           ## 00001D57
/* 0FDE4 80020E84 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0FDE8 80020E88 55C00005 */  bnel    $t6, $zero, .L80020EA0
/* 0FDEC 80020E8C A0A0000A */  sb      $zero, 0x000A($a1)         ## 0000000A
/* 0FDF0 80020E90 848F1D58 */  lh      $t7, 0x1D58($a0)           ## 00001D58
/* 0FDF4 80020E94 51E00005 */  beql    $t7, $zero, .L80020EAC
/* 0FDF8 80020E98 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0FDFC 80020E9C A0A0000A */  sb      $zero, 0x000A($a1)         ## 0000000A
.L80020EA0:
/* 0FE00 80020EA0 03E00008 */  jr      $ra
/* 0FE04 80020EA4 A0A0000B */  sb      $zero, 0x000B($a1)         ## 0000000B
.L80020EA8:
/* 0FE08 80020EA8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80020EAC:
/* 0FE0C 80020EAC 03E00008 */  jr      $ra
/* 0FE10 80020EB0 00000000 */  nop


