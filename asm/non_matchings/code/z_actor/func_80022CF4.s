glabel func_80022CF4
/* 11C54 80022CF4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 11C58 80022CF8 AFBF001C */  sw      $ra, 0x001C($sp)
/* 11C5C 80022CFC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 11C60 80022D00 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 11C64 80022D04 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 11C68 80022D08 0C008AF5 */  jal     func_80022BD4
/* 11C6C 80022D0C E7A40010 */  swc1    $f4, 0x0010($sp)
/* 11C70 80022D10 8FBF001C */  lw      $ra, 0x001C($sp)
/* 11C74 80022D14 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 11C78 80022D18 03E00008 */  jr      $ra
/* 11C7C 80022D1C 00000000 */  nop


