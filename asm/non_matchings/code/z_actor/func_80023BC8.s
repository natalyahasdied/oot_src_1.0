glabel func_80023BC8
/* 12B28 80023BC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 12B2C 80023BCC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 12B30 80023BD0 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 12B34 80023BD4 8CC68BF0 */  lw      $a2, -0x7410($a2)          ## 80118BF0
/* 12B38 80023BD8 0C019984 */  jal     func_80066610
/* 12B3C 80023BDC 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 12B40 80023BE0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 12B44 80023BE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 12B48 80023BE8 03E00008 */  jr      $ra
/* 12B4C 80023BEC 00000000 */  nop


