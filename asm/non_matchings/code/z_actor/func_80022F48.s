glabel func_80022F48
/* 11EA8 80022F48 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 11EAC 80022F4C AFA7002C */  sw      $a3, 0x002C($sp)
/* 11EB0 80022F50 00073C00 */  sll     $a3, $a3, 16
/* 11EB4 80022F54 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 11EB8 80022F58 00073C03 */  sra     $a3, $a3, 16
/* 11EBC 80022F5C AFBF001C */  sw      $ra, 0x001C($sp)
/* 11EC0 80022F60 C7A40030 */  lwc1    $f4, 0x0030($sp)
/* 11EC4 80022F64 44066000 */  mfc1    $a2, $f12
/* 11EC8 80022F68 AFA00014 */  sw      $zero, 0x0014($sp)
/* 11ECC 80022F6C 0C008BC0 */  jal     func_80022F00
/* 11ED0 80022F70 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 11ED4 80022F74 8FBF001C */  lw      $ra, 0x001C($sp)
/* 11ED8 80022F78 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 11EDC 80022F7C 03E00008 */  jr      $ra
/* 11EE0 80022F80 00000000 */  nop


