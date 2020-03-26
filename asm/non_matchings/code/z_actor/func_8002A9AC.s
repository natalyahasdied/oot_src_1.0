glabel func_8002A9AC
/* 1990C 8002A9AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 19910 8002A9B0 AFA5001C */  sw      $a1, 0x001C($sp)
/* 19914 8002A9B4 00052C00 */  sll     $a1, $a1, 16
/* 19918 8002A9B8 00052C03 */  sra     $a1, $a1, 16
/* 1991C 8002A9BC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 19920 8002A9C0 0C00A25D */  jal     func_80028974
/* 19924 8002A9C4 00000000 */  nop
/* 19928 8002A9C8 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00000000
/* 1992C 8002A9CC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 19930 8002A9D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 19934 8002A9D4 03E00008 */  jr      $ra
/* 19938 8002A9D8 00000000 */  nop


