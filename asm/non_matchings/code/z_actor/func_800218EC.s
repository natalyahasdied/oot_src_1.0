glabel func_800218EC
/* 1084C 800218EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 10850 800218F0 AFA60028 */  sw      $a2, 0x0028($sp)
/* 10854 800218F4 30C600FF */  andi    $a2, $a2, 0x00FF           ## $a2 = 00000000
/* 10858 800218F8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1085C 800218FC 8C8E1C44 */  lw      $t6, 0x1C44($a0)           ## 00001C44
/* 10860 80021900 0C008632 */  jal     func_800218C8
/* 10864 80021904 AFAE001C */  sw      $t6, 0x001C($sp)
/* 10868 80021908 8FB8001C */  lw      $t8, 0x001C($sp)
/* 1086C 8002190C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 10870 80021910 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 10874 80021914 A70F045A */  sh      $t7, 0x045A($t8)           ## 0000045A
/* 10878 80021918 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1087C 8002191C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 10880 80021920 03E00008 */  jr      $ra
/* 10884 80021924 00000000 */  nop


