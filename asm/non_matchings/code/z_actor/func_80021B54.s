glabel func_80021B54
/* 10AB4 80021B54 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 10AB8 80021B58 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 10ABC 80021B5C AFA40018 */  sw      $a0, 0x0018($sp)
/* 10AC0 80021B60 AFA5001C */  sw      $a1, 0x001C($sp)
/* 10AC4 80021B64 AFA60020 */  sw      $a2, 0x0020($sp)
/* 10AC8 80021B68 AFA70024 */  sw      $a3, 0x0024($sp)
/* 10ACC 80021B6C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 10AD0 80021B70 0C00852B */  jal     func_800214AC
/* 10AD4 80021B74 8FA5001C */  lw      $a1, 0x001C($sp)
/* 10AD8 80021B78 C7A40020 */  lwc1    $f4, 0x0020($sp)
/* 10ADC 80021B7C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 10AE0 80021B80 4604003C */  c.lt.s  $f0, $f4
/* 10AE4 80021B84 00000000 */  nop
/* 10AE8 80021B88 45020013 */  bc1fl   .L80021BD8
/* 10AEC 80021B8C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 10AF0 80021B90 0C0084ED */  jal     func_800213B4
/* 10AF4 80021B94 8FA5001C */  lw      $a1, 0x001C($sp)
/* 10AF8 80021B98 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 10AFC 80021B9C 87B80026 */  lh      $t8, 0x0026($sp)
/* 10B00 80021BA0 85CF00B6 */  lh      $t7, 0x00B6($t6)           ## 000000B6
/* 10B04 80021BA4 004F1823 */  subu    $v1, $v0, $t7
/* 10B08 80021BA8 00031C00 */  sll     $v1, $v1, 16
/* 10B0C 80021BAC 00031C03 */  sra     $v1, $v1, 16
/* 10B10 80021BB0 04600003 */  bltz    $v1, .L80021BC0
/* 10B14 80021BB4 00031023 */  subu    $v0, $zero, $v1
/* 10B18 80021BB8 10000001 */  beq     $zero, $zero, .L80021BC0
/* 10B1C 80021BBC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80021BC0:
/* 10B20 80021BC0 0058082A */  slt     $at, $v0, $t8
/* 10B24 80021BC4 50200004 */  beql    $at, $zero, .L80021BD8
/* 10B28 80021BC8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 10B2C 80021BCC 10000002 */  beq     $zero, $zero, .L80021BD8
/* 10B30 80021BD0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 10B34 80021BD4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80021BD8:
/* 10B38 80021BD8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 10B3C 80021BDC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 10B40 80021BE0 03E00008 */  jr      $ra
/* 10B44 80021BE4 00000000 */  nop


