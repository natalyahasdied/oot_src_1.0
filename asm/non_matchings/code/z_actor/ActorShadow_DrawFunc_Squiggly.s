glabel ActorShadow_DrawFunc_Squiggly
/* 0DFAC 8001F04C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0DFB0 8001F050 AFBF001C */  sw      $ra, 0x001C($sp)
/* 0DFB4 8001F054 3C070405 */  lui     $a3, 0x0405                ## $a3 = 04050000
/* 0DFB8 8001F058 24E7F000 */  addiu   $a3, $a3, 0xF000           ## $a3 = 0404F000
/* 0DFBC 8001F05C 0C007B11 */  jal     func_8001EC44
/* 0DFC0 8001F060 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0DFC4 8001F064 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0DFC8 8001F068 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0DFCC 8001F06C 03E00008 */  jr      $ra
/* 0DFD0 8001F070 00000000 */  nop


