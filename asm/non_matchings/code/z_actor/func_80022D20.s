glabel func_80022D20
/* 11C80 80022D20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 11C84 80022D24 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 11C88 80022D28 0C008B3D */  jal     func_80022CF4
/* 11C8C 80022D2C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 11C90 80022D30 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 11C94 80022D34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 11C98 80022D38 03E00008 */  jr      $ra
/* 11C9C 80022D3C 00000000 */  nop


