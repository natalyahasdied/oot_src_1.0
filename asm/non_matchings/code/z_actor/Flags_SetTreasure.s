glabel Flags_SetTreasure
/* 0F584 80020624 8C8E1D38 */  lw      $t6, 0x1D38($a0)           ## 00001D38
/* 0F588 80020628 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0F58C 8002062C 00AFC004 */  sllv    $t8, $t7, $a1
/* 0F590 80020630 01D8C825 */  or      $t9, $t6, $t8              ## $t9 = 00000000
/* 0F594 80020634 AC991D38 */  sw      $t9, 0x1D38($a0)           ## 00001D38
/* 0F598 80020638 03E00008 */  jr      $ra
/* 0F59C 8002063C 00000000 */  nop


