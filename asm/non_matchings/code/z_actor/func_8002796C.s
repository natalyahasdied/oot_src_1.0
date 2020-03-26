glabel func_8002796C
/* 168CC 8002796C 8C8302C4 */  lw      $v1, 0x02C4($a0)           ## 000002C4
/* 168D0 80027970 3C0EDF00 */  lui     $t6, 0xDF00                ## $t6 = DF000000
/* 168D4 80027974 2463FFF0 */  addiu   $v1, $v1, 0xFFF0           ## $v1 = FFFFFFF0
/* 168D8 80027978 AC8302C4 */  sw      $v1, 0x02C4($a0)           ## 000002C4
/* 168DC 8002797C AC6E0000 */  sw      $t6, 0x0000($v1)           ## FFFFFFF0
/* 168E0 80027980 AC600004 */  sw      $zero, 0x0004($v1)         ## FFFFFFF4
/* 168E4 80027984 00601025 */  or      $v0, $v1, $zero            ## $v0 = FFFFFFF0
/* 168E8 80027988 03E00008 */  jr      $ra
/* 168EC 8002798C 00000000 */  nop


