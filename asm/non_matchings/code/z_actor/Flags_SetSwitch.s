glabel Flags_SetSwitch
/* 0F430 800204D0 28A10020 */  slti    $at, $a1, 0x0020
/* 0F434 800204D4 50200008 */  beql    $at, $zero, .L800204F8
/* 0F438 800204D8 8C881D2C */  lw      $t0, 0x1D2C($a0)           ## 00001D2C
/* 0F43C 800204DC 8C8E1D28 */  lw      $t6, 0x1D28($a0)           ## 00001D28
/* 0F440 800204E0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0F444 800204E4 00AFC004 */  sllv    $t8, $t7, $a1
/* 0F448 800204E8 01D8C825 */  or      $t9, $t6, $t8              ## $t9 = 00000000
/* 0F44C 800204EC 03E00008 */  jr      $ra
/* 0F450 800204F0 AC991D28 */  sw      $t9, 0x1D28($a0)           ## 00001D28
.L800204F4:
/* 0F454 800204F4 8C881D2C */  lw      $t0, 0x1D2C($a0)           ## 00001D2C
.L800204F8:
/* 0F458 800204F8 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 0F45C 800204FC 00A95004 */  sllv    $t2, $t1, $a1
/* 0F460 80020500 010A5825 */  or      $t3, $t0, $t2              ## $t3 = 00000000
/* 0F464 80020504 AC8B1D2C */  sw      $t3, 0x1D2C($a0)           ## 00001D2C
/* 0F468 80020508 03E00008 */  jr      $ra
/* 0F46C 8002050C 00000000 */  nop

