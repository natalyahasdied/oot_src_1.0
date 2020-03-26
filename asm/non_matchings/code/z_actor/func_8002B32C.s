glabel func_8002B32C
/* 1A28C 8002B32C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1A290 8002B330 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1A294 8002B334 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1A298 8002B338 0C02BC05 */  jal     func_800AF014
/* 1A29C 8002B33C 24848C60 */  addiu   $a0, $a0, 0x8C60           ## $a0 = 80118C60
/* 1A2A0 8002B340 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 1A2A4 8002B344 AC20C010 */  sw      $zero, -0x3FF0($at)        ## 800EC010
/* 1A2A8 8002B348 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1A2AC 8002B34C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1A2B0 8002B350 03E00008 */  jr      $ra
/* 1A2B4 8002B354 00000000 */  nop
/* 1A2B8 8002B358 00000000 */  nop
/* 1A2BC 8002B35C 00000000 */  nop
