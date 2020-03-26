glabel func_80025B4C
/* 14AAC 80025B4C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 14AB0 80025B50 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 14AB4 80025B54 AFA5001C */  sw      $a1, 0x001C($sp)
/* 14AB8 80025B58 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 14ABC 80025B5C A08E1C24 */  sb      $t6, 0x1C24($a0)           ## 00001C24
/* 14AC0 80025B60 8FA5001C */  lw      $a1, 0x001C($sp)
/* 14AC4 80025B64 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 14AC8 80025B68 2407388B */  addiu   $a3, $zero, 0x388B         ## $a3 = 0000388B
/* 14ACC 80025B6C 0C0163FE */  jal     Audio_PlaySoundAtPosition
/* 14AD0 80025B70 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 14AD4 80025B74 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 14AD8 80025B78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 14ADC 80025B7C 03E00008 */  jr      $ra
/* 14AE0 80025B80 00000000 */  nop


