glabel func_8002AA18
/* 19978 8002AA18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1997C 8002AA1C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 19980 8002AA20 AFA60020 */  sw      $a2, 0x0020($sp)
/* 19984 8002AA24 0C00A896 */  jal     func_8002A258
/* 19988 8002AA28 94A6010E */  lhu     $a2, 0x010E($a1)           ## 0000010E
/* 1998C 8002AA2C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 19990 8002AA30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 19994 8002AA34 03E00008 */  jr      $ra
/* 19998 8002AA38 00000000 */  nop


