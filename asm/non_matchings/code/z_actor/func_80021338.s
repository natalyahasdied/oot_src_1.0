glabel func_80021338
/* 10298 80021338 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1029C 8002133C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 102A0 80021340 AFA5002C */  sw      $a1, 0x002C($sp)
/* 102A4 80021344 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 102A8 80021348 84E600B6 */  lh      $a2, 0x00B6($a3)           ## 000000B6
/* 102AC 8002134C AFA70028 */  sw      $a3, 0x0028($sp)
/* 102B0 80021350 8FA4002C */  lw      $a0, 0x002C($sp)
/* 102B4 80021354 0C023537 */  jal     func_8008D4DC
/* 102B8 80021358 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFFF4
/* 102BC 8002135C 8FA70028 */  lw      $a3, 0x0028($sp)
/* 102C0 80021360 C7A4001C */  lwc1    $f4, 0x001C($sp)
/* 102C4 80021364 C4E60050 */  lwc1    $f6, 0x0050($a3)           ## 00000050
/* 102C8 80021368 C4EA0024 */  lwc1    $f10, 0x0024($a3)          ## 00000024
/* 102CC 8002136C 46062202 */  mul.s   $f8, $f4, $f6
/* 102D0 80021370 C4E40054 */  lwc1    $f4, 0x0054($a3)           ## 00000054
/* 102D4 80021374 46085400 */  add.s   $f16, $f10, $f8
/* 102D8 80021378 C4EA0028 */  lwc1    $f10, 0x0028($a3)          ## 00000028
/* 102DC 8002137C E4F00024 */  swc1    $f16, 0x0024($a3)          ## 00000024
/* 102E0 80021380 C7B20020 */  lwc1    $f18, 0x0020($sp)
/* 102E4 80021384 46049182 */  mul.s   $f6, $f18, $f4
/* 102E8 80021388 C4F20058 */  lwc1    $f18, 0x0058($a3)          ## 00000058
/* 102EC 8002138C 46065200 */  add.s   $f8, $f10, $f6
/* 102F0 80021390 C4EA002C */  lwc1    $f10, 0x002C($a3)          ## 0000002C
/* 102F4 80021394 E4E80028 */  swc1    $f8, 0x0028($a3)           ## 00000028
/* 102F8 80021398 C7B00024 */  lwc1    $f16, 0x0024($sp)
/* 102FC 8002139C 46128102 */  mul.s   $f4, $f16, $f18
/* 10300 800213A0 46045180 */  add.s   $f6, $f10, $f4
/* 10304 800213A4 E4E6002C */  swc1    $f6, 0x002C($a3)           ## 0000002C
/* 10308 800213A8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1030C 800213AC 03E00008 */  jr      $ra
/* 10310 800213B0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


