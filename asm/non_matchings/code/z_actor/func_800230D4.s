glabel func_800230D4
/* 12034 800230D4 AFA50004 */  sw      $a1, 0x0004($sp)
/* 12038 800230D8 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 1203C 800230DC 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 12040 800230E0 3C010010 */  lui     $at, 0x0010                ## $at = 00100000
/* 12044 800230E4 A4850020 */  sh      $a1, 0x0020($a0)           ## 00000020
/* 12048 800230E8 01C17825 */  or      $t7, $t6, $at              ## $t7 = 00100000
/* 1204C 800230EC 3C01EFD7 */  lui     $at, 0xEFD7                ## $at = EFD70000
/* 12050 800230F0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = EFD7FFFF
/* 12054 800230F4 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 12058 800230F8 01E1C824 */  and     $t9, $t7, $at
/* 1205C 800230FC AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 12060 80023100 03E00008 */  jr      $ra
/* 12064 80023104 00000000 */  nop


