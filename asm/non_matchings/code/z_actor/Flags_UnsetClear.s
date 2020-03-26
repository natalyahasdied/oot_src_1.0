glabel Flags_UnsetClear
/* 0F5D4 80020674 8C8E1D3C */  lw      $t6, 0x1D3C($a0)           ## 00001D3C
/* 0F5D8 80020678 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0F5DC 8002067C 00AFC004 */  sllv    $t8, $t7, $a1
/* 0F5E0 80020680 0300C827 */  nor     $t9, $t8, $zero
/* 0F5E4 80020684 01D94024 */  and     $t0, $t6, $t9
/* 0F5E8 80020688 AC881D3C */  sw      $t0, 0x1D3C($a0)           ## 00001D3C
/* 0F5EC 8002068C 03E00008 */  jr      $ra
/* 0F5F0 80020690 00000000 */  nop


