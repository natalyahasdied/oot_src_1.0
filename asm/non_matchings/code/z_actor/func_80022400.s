glabel func_80022400
/* 11360 80022400 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 11364 80022404 AFBF001C */  sw      $ra, 0x001C($sp)
/* 11368 80022408 8CEE02D0 */  lw      $t6, 0x02D0($a3)           ## 000002D0
/* 1136C 8002240C 27AF002C */  addiu   $t7, $sp, 0x002C           ## $t7 = FFFFFFFC
/* 11370 80022410 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 11374 80022414 AFA7003C */  sw      $a3, 0x003C($sp)
/* 11378 80022418 0C00887B */  jal     func_800221EC
/* 1137C 8002241C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 11380 80022420 8FA7003C */  lw      $a3, 0x003C($sp)
/* 11384 80022424 ACE202D0 */  sw      $v0, 0x02D0($a3)           ## 000002D0
/* 11388 80022428 8FBF001C */  lw      $ra, 0x001C($sp)
/* 1138C 8002242C 8FA2002C */  lw      $v0, 0x002C($sp)
/* 11390 80022430 03E00008 */  jr      $ra
/* 11394 80022434 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


