glabel func_8002ACB8
/* 19C18 8002ACB8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 19C1C 8002ACBC AFBF001C */  sw      $ra, 0x001C($sp)
/* 19C20 8002ACC0 AFA40020 */  sw      $a0, 0x0020($sp)
/* 19C24 8002ACC4 AFA50024 */  sw      $a1, 0x0024($sp)
/* 19C28 8002ACC8 8FA40020 */  lw      $a0, 0x0020($sp)
/* 19C2C 8002ACCC 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 19C30 8002ACD0 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 19C34 8002ACD4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 19C38 8002ACD8 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 19C3C 8002ACDC 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 19C40 8002ACE0 0C019142 */  jal     Math_SmoothScaleMaxMinS
/* 19C44 8002ACE4 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000002
/* 19C48 8002ACE8 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 19C4C 8002ACEC AFAF0010 */  sw      $t7, 0x0010($sp)
/* 19C50 8002ACF0 8FA40020 */  lw      $a0, 0x0020($sp)
/* 19C54 8002ACF4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 19C58 8002ACF8 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 19C5C 8002ACFC 0C019142 */  jal     Math_SmoothScaleMaxMinS
/* 19C60 8002AD00 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 19C64 8002AD04 8FA40024 */  lw      $a0, 0x0024($sp)
/* 19C68 8002AD08 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 19C6C 8002AD0C AFB80010 */  sw      $t8, 0x0010($sp)
/* 19C70 8002AD10 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 19C74 8002AD14 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 19C78 8002AD18 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 19C7C 8002AD1C 0C019142 */  jal     Math_SmoothScaleMaxMinS
/* 19C80 8002AD20 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000002
/* 19C84 8002AD24 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 19C88 8002AD28 AFB90010 */  sw      $t9, 0x0010($sp)
/* 19C8C 8002AD2C 8FA40024 */  lw      $a0, 0x0024($sp)
/* 19C90 8002AD30 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 19C94 8002AD34 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 19C98 8002AD38 0C019142 */  jal     Math_SmoothScaleMaxMinS
/* 19C9C 8002AD3C 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 19CA0 8002AD40 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 19CA4 8002AD44 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19CA8 8002AD48 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 19CAC 8002AD4C 03E00008 */  jr      $ra
/* 19CB0 8002AD50 00000000 */  nop


