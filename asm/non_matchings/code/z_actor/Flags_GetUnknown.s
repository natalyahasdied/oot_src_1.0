glabel Flags_GetUnknown
/* 0F4B4 80020554 28A10020 */  slti    $at, $a1, 0x0020
/* 0F4B8 80020558 10200005 */  beq     $at, $zero, .L80020570
/* 0F4BC 8002055C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0F4C0 80020560 8C8E1D30 */  lw      $t6, 0x1D30($a0)           ## 00001D30
/* 0F4C4 80020564 00AFC004 */  sllv    $t8, $t7, $a1
/* 0F4C8 80020568 03E00008 */  jr      $ra
/* 0F4CC 8002056C 01D81024 */  and     $v0, $t6, $t8
.L80020570:
/* 0F4D0 80020570 8C991D34 */  lw      $t9, 0x1D34($a0)           ## 00001D34
/* 0F4D4 80020574 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0F4D8 80020578 00A84804 */  sllv    $t1, $t0, $a1
/* 0F4DC 8002057C 03291024 */  and     $v0, $t9, $t1
/* 0F4E0 80020580 03E00008 */  jr      $ra
/* 0F4E4 80020584 00000000 */  nop

