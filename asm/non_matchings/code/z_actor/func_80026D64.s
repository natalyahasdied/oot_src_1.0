glabel func_80026D64
/* 15CC4 80026D64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 15CC8 80026D68 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 15CCC 80026D6C E7AC0018 */  swc1    $f12, 0x0018($sp)
/* 15CD0 80026D70 0C033733 */  jal     Math_Rand_ZeroOne              ## Rand.Next() float
/* 15CD4 80026D74 00000000 */  nop
/* 15CD8 80026D78 C7A40018 */  lwc1    $f4, 0x0018($sp)
/* 15CDC 80026D7C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 15CE0 80026D80 46040002 */  mul.s   $f0, $f0, $f4
/* 15CE4 80026D84 00000000 */  nop
/* 15CE8 80026D88 03E00008 */  jr      $ra
/* 15CEC 80026D8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


