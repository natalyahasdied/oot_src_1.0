glabel Flags_SetClear
/* 0F5B8 80020658 8C8E1D3C */  lw      $t6, 0x1D3C($a0)           ## 00001D3C
/* 0F5BC 8002065C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0F5C0 80020660 00AFC004 */  sllv    $t8, $t7, $a1
/* 0F5C4 80020664 01D8C825 */  or      $t9, $t6, $t8              ## $t9 = 00000000
/* 0F5C8 80020668 AC991D3C */  sw      $t9, 0x1D3C($a0)           ## 00001D3C
/* 0F5CC 8002066C 03E00008 */  jr      $ra
/* 0F5D0 80020670 00000000 */  nop


