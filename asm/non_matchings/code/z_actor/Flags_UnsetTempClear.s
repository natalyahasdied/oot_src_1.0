glabel Flags_UnsetTempClear
/* 0F628 800206C8 8C8E1D40 */  lw      $t6, 0x1D40($a0)           ## 00001D40
/* 0F62C 800206CC 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0F630 800206D0 00AFC004 */  sllv    $t8, $t7, $a1
/* 0F634 800206D4 0300C827 */  nor     $t9, $t8, $zero
/* 0F638 800206D8 01D94024 */  and     $t0, $t6, $t9
/* 0F63C 800206DC AC881D40 */  sw      $t0, 0x1D40($a0)           ## 00001D40
/* 0F640 800206E0 03E00008 */  jr      $ra
/* 0F644 800206E4 00000000 */  nop


