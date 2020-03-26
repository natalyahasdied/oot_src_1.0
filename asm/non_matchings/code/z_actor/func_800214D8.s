glabel func_800214D8
/* 10438 800214D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1043C 800214DC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 10440 800214E0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 10444 800214E4 0C018F86 */  jal     Math_Vec3f_DistXYZ
/* 10448 800214E8 24C40024 */  addiu   $a0, $a2, 0x0024           ## $a0 = 00000024
/* 1044C 800214EC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 10450 800214F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 10454 800214F4 03E00008 */  jr      $ra
/* 10458 800214F8 00000000 */  nop


