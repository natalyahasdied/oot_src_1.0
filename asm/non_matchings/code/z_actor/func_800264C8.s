glabel func_800264C8
/* 15428 800264C8 AFA40000 */  sw      $a0, 0x0000($sp)
/* 1542C 800264CC 90A30011 */  lbu     $v1, 0x0011($a1)           ## 00000011
/* 15430 800264D0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 15434 800264D4 306E0002 */  andi    $t6, $v1, 0x0002           ## $t6 = 00000000
/* 15438 800264D8 11C0000A */  beq     $t6, $zero, .L80026504
/* 1543C 800264DC 00000000 */  nop
/* 15440 800264E0 8CA40008 */  lw      $a0, 0x0008($a1)           ## 00000008
/* 15444 800264E4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 15448 800264E8 3078FFFD */  andi    $t8, $v1, 0xFFFD           ## $t8 = 00000000
/* 1544C 800264EC 908F0002 */  lbu     $t7, 0x0002($a0)           ## 00000002
/* 15450 800264F0 15E10004 */  bne     $t7, $at, .L80026504
/* 15454 800264F4 00000000 */  nop
/* 15458 800264F8 A0B80011 */  sb      $t8, 0x0011($a1)           ## 00000011
/* 1545C 800264FC 03E00008 */  jr      $ra
/* 15460 80026500 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
.L80026504:
/* 15464 80026504 03E00008 */  jr      $ra
/* 15468 80026508 00000000 */  nop

