glabel func_8002AD54
/* 19CB4 8002AD54 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 19CB8 8002AD58 AFB00020 */  sw      $s0, 0x0020($sp)
/* 19CBC 8002AD5C 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 19CC0 8002AD60 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 19CC4 8002AD64 AFA40038 */  sw      $a0, 0x0038($sp)
/* 19CC8 8002AD68 AFA5003C */  sw      $a1, 0x003C($sp)
/* 19CCC 8002AD6C AFA70044 */  sw      $a3, 0x0044($sp)
/* 19CD0 8002AD70 8FA40038 */  lw      $a0, 0x0038($sp)
/* 19CD4 8002AD74 8FA5003C */  lw      $a1, 0x003C($sp)
/* 19CD8 8002AD78 24840038 */  addiu   $a0, $a0, 0x0038           ## $a0 = 00000038
/* 19CDC 8002AD7C 0C018FCD */  jal     Math_Vec3f_Pitch
/* 19CE0 8002AD80 AFA40028 */  sw      $a0, 0x0028($sp)
/* 19CE4 8002AD84 8FA40028 */  lw      $a0, 0x0028($sp)
/* 19CE8 8002AD88 A7A20036 */  sh      $v0, 0x0036($sp)
/* 19CEC 8002AD8C 0C018FC0 */  jal     Math_Vec3f_Yaw
/* 19CF0 8002AD90 8FA5003C */  lw      $a1, 0x003C($sp)
/* 19CF4 8002AD94 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 19CF8 8002AD98 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 19CFC 8002AD9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19D00 8002ADA0 85CF0032 */  lh      $t7, 0x0032($t6)           ## 00000032
/* 19D04 8002ADA4 AFB90010 */  sw      $t9, 0x0010($sp)
/* 19D08 8002ADA8 87A50036 */  lh      $a1, 0x0036($sp)
/* 19D0C 8002ADAC 004FC023 */  subu    $t8, $v0, $t7
/* 19D10 8002ADB0 A7B80034 */  sh      $t8, 0x0034($sp)
/* 19D14 8002ADB4 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 19D18 8002ADB8 0C019142 */  jal     Math_SmoothScaleMaxMinS
/* 19D1C 8002ADBC 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 19D20 8002ADC0 86040000 */  lh      $a0, 0x0000($s0)           ## 00000000
/* 19D24 8002ADC4 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 19D28 8002ADC8 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 19D2C 8002ADCC 2881E890 */  slti    $at, $a0, 0xE890
/* 19D30 8002ADD0 10200004 */  beq     $at, $zero, .L8002ADE4
/* 19D34 8002ADD4 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 19D38 8002ADD8 2408E890 */  addiu   $t0, $zero, 0xE890         ## $t0 = FFFFE890
/* 19D3C 8002ADDC 10000007 */  beq     $zero, $zero, .L8002ADFC
/* 19D40 8002ADE0 A6080000 */  sh      $t0, 0x0000($s0)           ## 00000000
.L8002ADE4:
/* 19D44 8002ADE4 28811771 */  slti    $at, $a0, 0x1771
/* 19D48 8002ADE8 14200003 */  bne     $at, $zero, .L8002ADF8
/* 19D4C 8002ADEC 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 19D50 8002ADF0 10000001 */  beq     $zero, $zero, .L8002ADF8
/* 19D54 8002ADF4 24031770 */  addiu   $v1, $zero, 0x1770         ## $v1 = 00001770
.L8002ADF8:
/* 19D58 8002ADF8 A6030000 */  sh      $v1, 0x0000($s0)           ## 00000000
.L8002ADFC:
/* 19D5C 8002ADFC 26040002 */  addiu   $a0, $s0, 0x0002           ## $a0 = 00000002
/* 19D60 8002AE00 87A50034 */  lh      $a1, 0x0034($sp)
/* 19D64 8002AE04 0C019142 */  jal     Math_SmoothScaleMaxMinS
/* 19D68 8002AE08 AFA90010 */  sw      $t1, 0x0010($sp)
/* 19D6C 8002AE0C 86040002 */  lh      $a0, 0x0002($s0)           ## 00000002
/* 19D70 8002AE10 240AE0C0 */  addiu   $t2, $zero, 0xE0C0         ## $t2 = FFFFE0C0
/* 19D74 8002AE14 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 19D78 8002AE18 2881E0C0 */  slti    $at, $a0, 0xE0C0
/* 19D7C 8002AE1C 10200003 */  beq     $at, $zero, .L8002AE2C
/* 19D80 8002AE20 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 19D84 8002AE24 10000007 */  beq     $zero, $zero, .L8002AE44
/* 19D88 8002AE28 A60A0002 */  sh      $t2, 0x0002($s0)           ## 00000002
.L8002AE2C:
/* 19D8C 8002AE2C 28811F41 */  slti    $at, $a0, 0x1F41
/* 19D90 8002AE30 14200003 */  bne     $at, $zero, .L8002AE40
/* 19D94 8002AE34 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 19D98 8002AE38 10000001 */  beq     $zero, $zero, .L8002AE40
/* 19D9C 8002AE3C 24031F40 */  addiu   $v1, $zero, 0x1F40         ## $v1 = 00001F40
.L8002AE40:
/* 19DA0 8002AE40 A6030002 */  sh      $v1, 0x0002($s0)           ## 00000002
.L8002AE44:
/* 19DA4 8002AE44 1040000B */  beq     $v0, $zero, .L8002AE74
/* 19DA8 8002AE48 87AB0034 */  lh      $t3, 0x0034($sp)
/* 19DAC 8002AE4C 86040002 */  lh      $a0, 0x0002($s0)           ## 00000002
/* 19DB0 8002AE50 04800003 */  bltz    $a0, .L8002AE60
/* 19DB4 8002AE54 00041823 */  subu    $v1, $zero, $a0
/* 19DB8 8002AE58 10000001 */  beq     $zero, $zero, .L8002AE60
/* 19DBC 8002AE5C 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
.L8002AE60:
/* 19DC0 8002AE60 28611F40 */  slti    $at, $v1, 0x1F40
/* 19DC4 8002AE64 50200004 */  beql    $at, $zero, .L8002AE78
/* 19DC8 8002AE68 860C0002 */  lh      $t4, 0x0002($s0)           ## 00000002
/* 19DCC 8002AE6C 10000019 */  beq     $zero, $zero, .L8002AED4
/* 19DD0 8002AE70 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002AE74:
/* 19DD4 8002AE74 860C0002 */  lh      $t4, 0x0002($s0)           ## 00000002
.L8002AE78:
/* 19DD8 8002AE78 8FA40044 */  lw      $a0, 0x0044($sp)
/* 19DDC 8002AE7C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 19DE0 8002AE80 016C2823 */  subu    $a1, $t3, $t4
/* 19DE4 8002AE84 00052C00 */  sll     $a1, $a1, 16
/* 19DE8 8002AE88 00052C03 */  sra     $a1, $a1, 16
/* 19DEC 8002AE8C AFAD0010 */  sw      $t5, 0x0010($sp)
/* 19DF0 8002AE90 0C019142 */  jal     Math_SmoothScaleMaxMinS
/* 19DF4 8002AE94 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000002
/* 19DF8 8002AE98 8FA50044 */  lw      $a1, 0x0044($sp)
/* 19DFC 8002AE9C 240ED120 */  addiu   $t6, $zero, 0xD120         ## $t6 = FFFFD120
/* 19E00 8002AEA0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 19E04 8002AEA4 84A40002 */  lh      $a0, 0x0002($a1)           ## 00000002
/* 19E08 8002AEA8 2881D120 */  slti    $at, $a0, 0xD120
/* 19E0C 8002AEAC 50200004 */  beql    $at, $zero, .L8002AEC0
/* 19E10 8002AEB0 28812EE1 */  slti    $at, $a0, 0x2EE1
/* 19E14 8002AEB4 10000007 */  beq     $zero, $zero, .L8002AED4
/* 19E18 8002AEB8 A4AE0002 */  sh      $t6, 0x0002($a1)           ## 00000002
/* 19E1C 8002AEBC 28812EE1 */  slti    $at, $a0, 0x2EE1
.L8002AEC0:
/* 19E20 8002AEC0 14200003 */  bne     $at, $zero, .L8002AED0
/* 19E24 8002AEC4 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 19E28 8002AEC8 10000001 */  beq     $zero, $zero, .L8002AED0
/* 19E2C 8002AECC 24032EE0 */  addiu   $v1, $zero, 0x2EE0         ## $v1 = 00002EE0
.L8002AED0:
/* 19E30 8002AED0 A4A30002 */  sh      $v1, 0x0002($a1)           ## 00000002
.L8002AED4:
/* 19E34 8002AED4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 19E38 8002AED8 8FB00020 */  lw      $s0, 0x0020($sp)
/* 19E3C 8002AEDC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 19E40 8002AEE0 03E00008 */  jr      $ra
/* 19E44 8002AEE4 00000000 */  nop


