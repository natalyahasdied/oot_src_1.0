glabel func_80022E7C
/* 11DDC 80022E7C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 11DE0 80022E80 AFA70034 */  sw      $a3, 0x0034($sp)
/* 11DE4 80022E84 00073C00 */  sll     $a3, $a3, 16
/* 11DE8 80022E88 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 11DEC 80022E8C 00073C03 */  sra     $a3, $a3, 16
/* 11DF0 80022E90 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 11DF4 80022E94 C7A40038 */  lwc1    $f4, 0x0038($sp)
/* 11DF8 80022E98 8FAF003C */  lw      $t7, 0x003C($sp)
/* 11DFC 80022E9C 44066000 */  mfc1    $a2, $f12
/* 11E00 80022EA0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 11E04 80022EA4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 11E08 80022EA8 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 11E0C 80022EAC 0C008B8F */  jal     func_80022E3C
/* 11E10 80022EB0 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 11E14 80022EB4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 11E18 80022EB8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 11E1C 80022EBC 03E00008 */  jr      $ra
/* 11E20 80022EC0 00000000 */  nop


