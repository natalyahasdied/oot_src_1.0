glabel func_80022A34
/* 11994 80022A34 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 11998 80022A38 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 1199C 80022A3C AFBF001C */  sw      $ra, 0x001C($sp)
/* 119A0 80022A40 AFA7002C */  sw      $a3, 0x002C($sp)
/* 119A4 80022A44 8FAE002C */  lw      $t6, 0x002C($sp)
/* 119A8 80022A48 44066000 */  mfc1    $a2, $f12
/* 119AC 80022A4C 44076000 */  mfc1    $a3, $f12
/* 119B0 80022A50 0C008A58 */  jal     func_80022960
/* 119B4 80022A54 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 119B8 80022A58 8FBF001C */  lw      $ra, 0x001C($sp)
/* 119BC 80022A5C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 119C0 80022A60 03E00008 */  jr      $ra
/* 119C4 80022A64 00000000 */  nop


