glabel func_800214AC
/* 1040C 800214AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 10410 800214B0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 10414 800214B4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 10418 800214B8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 1041C 800214BC 24C40024 */  addiu   $a0, $a2, 0x0024           ## $a0 = 00000024
/* 10420 800214C0 0C018F86 */  jal     Math_Vec3f_DistXYZ
/* 10424 800214C4 24E50024 */  addiu   $a1, $a3, 0x0024           ## $a1 = 00000024
/* 10428 800214C8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1042C 800214CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 10430 800214D0 03E00008 */  jr      $ra
/* 10434 800214D4 00000000 */  nop


