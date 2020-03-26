glabel func_80022EC4
/* 11E24 80022EC4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 11E28 80022EC8 AFA7002C */  sw      $a3, 0x002C($sp)
/* 11E2C 80022ECC 00073C00 */  sll     $a3, $a3, 16
/* 11E30 80022ED0 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 11E34 80022ED4 00073C03 */  sra     $a3, $a3, 16
/* 11E38 80022ED8 AFBF001C */  sw      $ra, 0x001C($sp)
/* 11E3C 80022EDC C7A40030 */  lwc1    $f4, 0x0030($sp)
/* 11E40 80022EE0 44066000 */  mfc1    $a2, $f12
/* 11E44 80022EE4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 11E48 80022EE8 0C008B9F */  jal     func_80022E7C
/* 11E4C 80022EEC E7A40010 */  swc1    $f4, 0x0010($sp)
/* 11E50 80022EF0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 11E54 80022EF4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 11E58 80022EF8 03E00008 */  jr      $ra
/* 11E5C 80022EFC 00000000 */  nop


