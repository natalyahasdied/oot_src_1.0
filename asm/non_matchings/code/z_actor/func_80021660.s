glabel func_80021660
/* 105C0 80021660 8C82066C */  lw      $v0, 0x066C($a0)           ## 0000066C
/* 105C4 80021664 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 105C8 80021668 00027200 */  sll     $t6, $v0,  8
/* 105CC 8002166C 05C10004 */  bgez    $t6, .L80021680
/* 105D0 80021670 00027900 */  sll     $t7, $v0,  4
/* 105D4 80021674 44810000 */  mtc1    $at, $f0                   ## $f0 = 8.00
/* 105D8 80021678 03E00008 */  jr      $ra
/* 105DC 8002167C 00000000 */  nop
.L80021680:
/* 105E0 80021680 05E1000F */  bgez    $t7, .L800216C0
/* 105E4 80021684 3C088012 */  lui     $t0, 0x8012                ## $t0 = 80120000
/* 105E8 80021688 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 105EC 8002168C 8F18BA00 */  lw      $t8, -0x4600($t8)          ## 8011BA00
/* 105F0 80021690 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 105F4 80021694 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 105F8 80021698 8719006E */  lh      $t9, 0x006E($t8)           ## 8012006E
/* 105FC 8002169C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 10600 800216A0 C43064A8 */  lwc1    $f16, 0x64A8($at)          ## 801064A8
/* 10604 800216A4 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 10608 800216A8 00000000 */  nop
/* 1060C 800216AC 468021A0 */  cvt.s.w $f6, $f4
/* 10610 800216B0 46083283 */  div.s   $f10, $f6, $f8
/* 10614 800216B4 46105002 */  mul.s   $f0, $f10, $f16
/* 10618 800216B8 03E00008 */  jr      $ra
/* 1061C 800216BC 00000000 */  nop
.L800216C0:
/* 10620 800216C0 8D08BA00 */  lw      $t0, -0x4600($t0)          ## 8011BA00
/* 10624 800216C4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 10628 800216C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 1062C 800216CC 8509006E */  lh      $t1, 0x006E($t0)           ## 8012006E
/* 10630 800216D0 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 10634 800216D4 00000000 */  nop
/* 10638 800216D8 46809120 */  cvt.s.w $f4, $f18
/* 1063C 800216DC 46062003 */  div.s   $f0, $f4, $f6
/* 10640 800216E0 03E00008 */  jr      $ra
/* 10644 800216E4 00000000 */  nop


