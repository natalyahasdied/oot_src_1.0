glabel func_80022AD0
/* 11A30 80022AD0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 11A34 80022AD4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 11A38 80022AD8 AFA40018 */  sw      $a0, 0x0018($sp)
/* 11A3C 80022ADC 0C037519 */  jal     func_800DD464
/* 11A40 80022AE0 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 11A44 80022AE4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 11A48 80022AE8 14410003 */  bne     $v0, $at, .L80022AF8
/* 11A4C 80022AEC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 11A50 80022AF0 10000002 */  beq     $zero, $zero, .L80022AFC
/* 11A54 80022AF4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80022AF8:
/* 11A58 80022AF8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80022AFC:
/* 11A5C 80022AFC 03E00008 */  jr      $ra
/* 11A60 80022B00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


