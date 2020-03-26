glabel Actor_SetObjectDependency
/* 0FF04 80020FA4 80AE001E */  lb      $t6, 0x001E($a1)           ## 0000001E
/* 0FF08 80020FA8 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 0FF0C 80020FAC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0FF10 80020FB0 000E7900 */  sll     $t7, $t6,  4
/* 0FF14 80020FB4 01EE7821 */  addu    $t7, $t7, $t6
/* 0FF18 80020FB8 000F7880 */  sll     $t7, $t7,  2
/* 0FF1C 80020FBC 008FC021 */  addu    $t8, $a0, $t7
/* 0FF20 80020FC0 0338C821 */  addu    $t9, $t9, $t8
/* 0FF24 80020FC4 8F3917B4 */  lw      $t9, 0x17B4($t9)           ## 000117B4
/* 0FF28 80020FC8 03214021 */  addu    $t0, $t9, $at
/* 0FF2C 80020FCC 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 0FF30 80020FD0 AC280C50 */  sw      $t0, 0x0C50($at)           ## 80120C50
/* 0FF34 80020FD4 03E00008 */  jr      $ra
/* 0FF38 80020FD8 00000000 */  nop


