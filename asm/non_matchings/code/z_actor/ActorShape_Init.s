glabel ActorShape_Init
/* 0DB80 8001EC20 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 0DB84 8001EC24 44877000 */  mtc1    $a3, $f14                  ## $f14 = 0.00
/* 0DB88 8001EC28 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 0DB8C 8001EC2C E48C0008 */  swc1    $f12, 0x0008($a0)          ## 00000008
/* 0DB90 8001EC30 AC86000C */  sw      $a2, 0x000C($a0)           ## 0000000C
/* 0DB94 8001EC34 E48E0010 */  swc1    $f14, 0x0010($a0)          ## 00000010
/* 0DB98 8001EC38 A08E0014 */  sb      $t6, 0x0014($a0)           ## 00000014
/* 0DB9C 8001EC3C 03E00008 */  jr      $ra
/* 0DBA0 8001EC40 00000000 */  nop

