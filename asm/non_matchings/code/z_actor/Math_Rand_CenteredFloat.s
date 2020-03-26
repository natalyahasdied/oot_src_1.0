glabel Math_Rand_CenteredFloat
/* 15CF0 80026D90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 15CF4 80026D94 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 15CF8 80026D98 E7AC0018 */  swc1    $f12, 0x0018($sp)
/* 15CFC 80026D9C 0C033733 */  jal     Math_Rand_ZeroOne              ## Rand.Next() float
/* 15D00 80026DA0 00000000 */  nop
/* 15D04 80026DA4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 15D08 80026DA8 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 15D0C 80026DAC C7A80018 */  lwc1    $f8, 0x0018($sp)
/* 15D10 80026DB0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 15D14 80026DB4 46040181 */  sub.s   $f6, $f0, $f4
/* 15D18 80026DB8 46083002 */  mul.s   $f0, $f6, $f8
/* 15D1C 80026DBC 00000000 */  nop
/* 15D20 80026DC0 03E00008 */  jr      $ra
/* 15D24 80026DC4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


