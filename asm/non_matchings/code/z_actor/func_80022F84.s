glabel func_80022F84
/* 11EE4 80022F84 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 11EE8 80022F88 3C078010 */  lui     $a3, 0x8010                ## $a3 = 80100000
/* 11EEC 80022F8C 24E743A0 */  addiu   $a3, $a3, 0x43A0           ## $a3 = 801043A0
/* 11EF0 80022F90 AFBF001C */  sw      $ra, 0x001C($sp)
/* 11EF4 80022F94 AFA40020 */  sw      $a0, 0x0020($sp)
/* 11EF8 80022F98 AFA50024 */  sw      $a1, 0x0024($sp)
/* 11EFC 80022F9C 8FA50020 */  lw      $a1, 0x0020($sp)
/* 11F00 80022FA0 3C0E8010 */  lui     $t6, 0x8010                ## $t6 = 80100000
/* 11F04 80022FA4 25CE43A8 */  addiu   $t6, $t6, 0x43A8           ## $t6 = 801043A8
/* 11F08 80022FA8 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 11F0C 80022FAC 97A40026 */  lhu     $a0, 0x0026($sp)
/* 11F10 80022FB0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 11F14 80022FB4 AFA70010 */  sw      $a3, 0x0010($sp)
/* 11F18 80022FB8 0C03201B */  jal     Audio_PlaySoundGeneral
/* 11F1C 80022FBC 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 11F20 80022FC0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 11F24 80022FC4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 11F28 80022FC8 03E00008 */  jr      $ra
/* 11F2C 80022FCC 00000000 */  nop


