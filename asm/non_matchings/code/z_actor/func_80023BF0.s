glabel func_80023BF0
/* 12B50 80023BF0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 12B54 80023BF4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 12B58 80023BF8 908E1C27 */  lbu     $t6, 0x1C27($a0)           ## 00001C27
/* 12B5C 80023BFC 51C00004 */  beql    $t6, $zero, .L80023C10
/* 12B60 80023C00 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 12B64 80023C04 0C01C952 */  jal     func_80072548
/* 12B68 80023C08 A0801C27 */  sb      $zero, 0x1C27($a0)         ## 00001C27
/* 12B6C 80023C0C 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80023C10:
/* 12B70 80023C10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 12B74 80023C14 03E00008 */  jr      $ra
/* 12B78 80023C18 00000000 */  nop


