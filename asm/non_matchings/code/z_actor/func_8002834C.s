glabel func_8002834C
/* 172AC 8002834C 90AE0011 */  lbu     $t6, 0x0011($a1)           ## 00000011
/* 172B0 80028350 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
/* 172B4 80028354 31CF0008 */  andi    $t7, $t6, 0x0008           ## $t7 = 00000000
/* 172B8 80028358 51E0000B */  beql    $t7, $zero, .L80028388
/* 172BC 8002835C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 172C0 80028360 80580833 */  lb      $t8, 0x0833($v0)           ## 00000833
/* 172C4 80028364 53000008 */  beql    $t8, $zero, .L80028388
/* 172C8 80028368 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 172CC 8002836C 80590832 */  lb      $t9, 0x0832($v0)           ## 00000832
/* 172D0 80028370 24010016 */  addiu   $at, $zero, 0x0016         ## $at = 00000016
/* 172D4 80028374 57210004 */  bnel    $t9, $at, .L80028388
/* 172D8 80028378 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 172DC 8002837C 03E00008 */  jr      $ra
/* 172E0 80028380 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80028384:
/* 172E4 80028384 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80028388:
/* 172E8 80028388 03E00008 */  jr      $ra
/* 172EC 8002838C 00000000 */  nop

