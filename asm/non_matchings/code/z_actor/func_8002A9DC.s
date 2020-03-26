glabel func_8002A9DC
/* 1993C 8002A9DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 19940 8002A9E0 AFA5001C */  sw      $a1, 0x001C($sp)
/* 19944 8002A9E4 00052C00 */  sll     $a1, $a1, 16
/* 19948 8002A9E8 AFA60020 */  sw      $a2, 0x0020($sp)
/* 1994C 8002A9EC 30C6FFFF */  andi    $a2, $a2, 0xFFFF           ## $a2 = 00000000
/* 19950 8002A9F0 00052C03 */  sra     $a1, $a1, 16
/* 19954 8002A9F4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 19958 8002A9F8 AFA40018 */  sw      $a0, 0x0018($sp)
/* 1995C 8002A9FC 0C00A6F2 */  jal     func_80029BC8
/* 19960 8002AA00 30C4FFFF */  andi    $a0, $a2, 0xFFFF           ## $a0 = 00000000
/* 19964 8002AA04 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 19968 8002AA08 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1996C 8002AA0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 19970 8002AA10 03E00008 */  jr      $ra
/* 19974 8002AA14 00000000 */  nop


