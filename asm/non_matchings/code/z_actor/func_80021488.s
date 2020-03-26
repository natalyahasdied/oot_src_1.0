glabel func_80021488
/* 103E8 80021488 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 103EC 8002148C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 103F0 80021490 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 103F4 80021494 0C018FCD */  jal     Math_Vec3f_Pitch
/* 103F8 80021498 24C40024 */  addiu   $a0, $a2, 0x0024           ## $a0 = 00000024
/* 103FC 8002149C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 10400 800214A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 10404 800214A4 03E00008 */  jr      $ra
/* 10408 800214A8 00000000 */  nop


