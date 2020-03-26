glabel func_80027070
/* 15FD0 80027070 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 15FD4 80027074 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 15FD8 80027078 0C01446E */  jal     func_800511B8
/* 15FDC 8002707C 00000000 */  nop
/* 15FE0 80027080 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 15FE4 80027084 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 15FE8 80027088 03E00008 */  jr      $ra
/* 15FEC 8002708C 00000000 */  nop


