glabel func_80022D40
/* 11CA0 80022D40 AFA50004 */  sw      $a1, 0x0004($sp)
/* 11CA4 80022D44 8C8E0118 */  lw      $t6, 0x0118($a0)           ## 00000118
/* 11CA8 80022D48 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 11CAC 80022D4C 15C00003 */  bne     $t6, $zero, .L80022D5C
/* 11CB0 80022D50 00000000 */  nop
/* 11CB4 80022D54 03E00008 */  jr      $ra
/* 11CB8 80022D58 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80022D5C:
/* 11CBC 80022D5C 03E00008 */  jr      $ra
/* 11CC0 80022D60 00000000 */  nop


