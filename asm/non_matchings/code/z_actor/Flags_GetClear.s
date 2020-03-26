glabel Flags_GetClear
/* 0F5A0 80020640 8C8E1D3C */  lw      $t6, 0x1D3C($a0)           ## 00001D3C
/* 0F5A4 80020644 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0F5A8 80020648 00AFC004 */  sllv    $t8, $t7, $a1
/* 0F5AC 8002064C 01D81024 */  and     $v0, $t6, $t8
/* 0F5B0 80020650 03E00008 */  jr      $ra
/* 0F5B4 80020654 00000000 */  nop


