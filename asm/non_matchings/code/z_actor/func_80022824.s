glabel func_80022824
/* 11784 80022824 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 11788 80022828 00000000 */  nop
/* 1178C 8002282C 808E001F */  lb      $t6, 0x001F($a0)           ## 0000001F
/* 11790 80022830 3C01800F */  lui     $at, %hi(D_800E8288)                ## $at = 800F0000
/* 11794 80022834 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 11798 80022838 000E78C0 */  sll     $t7, $t6,  3
/* 1179C 8002283C 002F0821 */  addu    $at, $at, $t7
/* 117A0 80022840 C4248288 */  lwc1    $f4, %lo(D_800E8288)($at)          ## 800E8288
/* 117A4 80022844 4604603C */  c.lt.s  $f12, $f4
/* 117A8 80022848 00000000 */  nop
/* 117AC 8002284C 45000002 */  bc1f    .L80022858
/* 117B0 80022850 00000000 */  nop
/* 117B4 80022854 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80022858:
/* 117B8 80022858 03E00008 */  jr      $ra
/* 117BC 8002285C 00000000 */  nop


