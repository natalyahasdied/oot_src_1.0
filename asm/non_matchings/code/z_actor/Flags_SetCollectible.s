glabel Flags_SetCollectible
/* 0F67C 8002071C 10A0000E */  beq     $a1, $zero, .L80020758
/* 0F680 80020720 28A10020 */  slti    $at, $a1, 0x0020
/* 0F684 80020724 50200008 */  beql    $at, $zero, .L80020748
/* 0F688 80020728 8C881D48 */  lw      $t0, 0x1D48($a0)           ## 00001D48
/* 0F68C 8002072C 8C8E1D44 */  lw      $t6, 0x1D44($a0)           ## 00001D44
/* 0F690 80020730 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0F694 80020734 00AFC004 */  sllv    $t8, $t7, $a1
/* 0F698 80020738 01D8C825 */  or      $t9, $t6, $t8              ## $t9 = 00000000
/* 0F69C 8002073C 03E00008 */  jr      $ra
/* 0F6A0 80020740 AC991D44 */  sw      $t9, 0x1D44($a0)           ## 00001D44
.L80020744:
/* 0F6A4 80020744 8C881D48 */  lw      $t0, 0x1D48($a0)           ## 00001D48
.L80020748:
/* 0F6A8 80020748 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 0F6AC 8002074C 00A95004 */  sllv    $t2, $t1, $a1
/* 0F6B0 80020750 010A5825 */  or      $t3, $t0, $t2              ## $t3 = 00000000
/* 0F6B4 80020754 AC8B1D48 */  sw      $t3, 0x1D48($a0)           ## 00001D48
.L80020758:
/* 0F6B8 80020758 03E00008 */  jr      $ra
/* 0F6BC 8002075C 00000000 */  nop

