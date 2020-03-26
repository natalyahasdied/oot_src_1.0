glabel func_800223C8
/* 11328 800223C8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1132C 800223CC AFBF001C */  sw      $ra, 0x001C($sp)
/* 11330 800223D0 8CEE02C0 */  lw      $t6, 0x02C0($a3)           ## 000002C0
/* 11334 800223D4 27AF002C */  addiu   $t7, $sp, 0x002C           ## $t7 = FFFFFFFC
/* 11338 800223D8 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1133C 800223DC AFA7003C */  sw      $a3, 0x003C($sp)
/* 11340 800223E0 0C00887B */  jal     func_800221EC
/* 11344 800223E4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 11348 800223E8 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1134C 800223EC ACE202C0 */  sw      $v0, 0x02C0($a3)           ## 000002C0
/* 11350 800223F0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 11354 800223F4 8FA2002C */  lw      $v0, 0x002C($sp)
/* 11358 800223F8 03E00008 */  jr      $ra
/* 1135C 800223FC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


