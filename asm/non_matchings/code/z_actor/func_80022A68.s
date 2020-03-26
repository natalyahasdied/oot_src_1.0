glabel func_80022A68
/* 119C8 80022A68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 119CC 80022A6C 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 119D0 80022A70 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 119D4 80022A74 44066000 */  mfc1    $a2, $f12
/* 119D8 80022A78 0C008A8D */  jal     func_80022A34
/* 119DC 80022A7C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 119E0 80022A80 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 119E4 80022A84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 119E8 80022A88 03E00008 */  jr      $ra
/* 119EC 80022A8C 00000000 */  nop


