glabel func_8002B2EC
/* 1A24C 8002B2EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1A250 8002B2F0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1A254 8002B2F4 240E01D7 */  addiu   $t6, $zero, 0x01D7         ## $t6 = 000001D7
/* 1A258 8002B2F8 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 1A25C 8002B2FC 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1A260 8002B300 3C058003 */  lui     $a1, 0x8003                ## $a1 = 80030000
/* 1A264 8002B304 AC2EC010 */  sw      $t6, -0x3FF0($at)          ## 800EC010
/* 1A268 8002B308 24A5B168 */  addiu   $a1, $a1, 0xB168           ## $a1 = 8002B168
/* 1A26C 8002B30C 24848C60 */  addiu   $a0, $a0, 0x8C60           ## $a0 = 80118C60
/* 1A270 8002B310 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1A274 8002B314 0C02BBE3 */  jal     func_800AEF8C
/* 1A278 8002B318 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 1A27C 8002B31C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1A280 8002B320 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1A284 8002B324 03E00008 */  jr      $ra
/* 1A288 8002B328 00000000 */  nop


