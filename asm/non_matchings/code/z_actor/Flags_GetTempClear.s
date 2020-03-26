glabel Flags_GetTempClear
/* 0F5F4 80020694 8C8E1D40 */  lw      $t6, 0x1D40($a0)           ## 00001D40
/* 0F5F8 80020698 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0F5FC 8002069C 00AFC004 */  sllv    $t8, $t7, $a1
/* 0F600 800206A0 01D81024 */  and     $v0, $t6, $t8
/* 0F604 800206A4 03E00008 */  jr      $ra
/* 0F608 800206A8 00000000 */  nop


