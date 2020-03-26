glabel KaleidoManager_GetRamAddr
/* 88D1C 80099DBC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 88D20 80099DC0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 88D24 80099DC4 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 88D28 80099DC8 3C088010 */  lui     $t0, %hi(gKaleidoMgrCurOvl)                ## $t0 = 80100000
/* 88D2C 80099DCC 8D08E4BC */  lw      $t0, %lo(gKaleidoMgrCurOvl)($t0)          ## 800FE4BC
/* 88D30 80099DD0 3C068010 */  lui     $a2, %hi(gKaleidoMgrOverlayTable)              ## $a2 = 80100000
/* 88D34 80099DD4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 88D38 80099DD8 15000019 */  bne     $t0, $zero, .L80099E40
/* 88D3C 80099DDC 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 88D40 80099DE0 8CC6E48C */  lw      $a2, %lo(gKaleidoMgrOverlayTable + 0xC)($a2)          ## 800FE48C
/* 88D44 80099DE4 3C088010 */  lui     $t0, %hi(gKaleidoMgrOverlayTable)               ## $t0 = 80100000
/* 88D48 80099DE8 3C048010 */  lui     $a0, %hi(gKaleidoMgrOverlayTable)                ## $a0 = 80100000
/* 88D4C 80099DEC 2508E480 */  addiu   $t0, $t0, %lo(gKaleidoMgrOverlayTable)           ## $t0 = 800FE480
/* 88D50 80099DF0 8C84E490 */  lw      $a0, %lo(gKaleidoMgrOverlayTable + 0x10)($a0)          ## 800FE490
/* 88D54 80099DF4 00C01825 */  or      $v1, $a2, $zero            ## $v1 = 80100000
/* 88D58 80099DF8 00A3082B */  sltu    $at, $a1, $v1
.L80099DFC:
/* 88D5C 80099DFC 1420000C */  bne     $at, $zero, .L80099E30
/* 88D60 80099E00 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 88D64 80099E04 0085082B */  sltu    $at, $a0, $a1
/* 88D68 80099E08 14200009 */  bne     $at, $zero, .L80099E30
/* 88D6C 80099E0C 00000000 */  nop
/* 88D70 80099E10 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 88D74 80099E14 2484E480 */  addiu   $a0, $a0, 0xE480           ## $a0 = 800FE480
/* 88D78 80099E18 AFA50020 */  sw      $a1, 0x0020($sp)
/* 88D7C 80099E1C 0C026718 */  jal     KaleidoManager_LoadOvl
/* 88D80 80099E20 AFA8001C */  sw      $t0, 0x001C($sp)
/* 88D84 80099E24 8FA50020 */  lw      $a1, 0x0020($sp)
/* 88D88 80099E28 10000005 */  beq     $zero, $zero, .L80099E40
/* 88D8C 80099E2C 8FA8001C */  lw      $t0, 0x001C($sp)
.L80099E30:
/* 88D90 80099E30 5447FFF2 */  bnel    $v0, $a3, .L80099DFC
/* 88D94 80099E34 00A3082B */  sltu    $at, $a1, $v1
/* 88D98 80099E38 1000000F */  beq     $zero, $zero, .L80099E78
/* 88D9C 80099E3C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80099E40:
/* 88DA0 80099E40 11000009 */  beq     $t0, $zero, .L80099E68
/* 88DA4 80099E44 00000000 */  nop
/* 88DA8 80099E48 8D0E000C */  lw      $t6, 0x000C($t0)           ## 0000000C
/* 88DAC 80099E4C 00AE082B */  sltu    $at, $a1, $t6
/* 88DB0 80099E50 14200005 */  bne     $at, $zero, .L80099E68
/* 88DB4 80099E54 00000000 */  nop
/* 88DB8 80099E58 8D0F0010 */  lw      $t7, 0x0010($t0)           ## 00000010
/* 88DBC 80099E5C 00AF082B */  sltu    $at, $a1, $t7
/* 88DC0 80099E60 54200004 */  bnel    $at, $zero, .L80099E74
/* 88DC4 80099E64 8D180014 */  lw      $t8, 0x0014($t0)           ## 00000014
.L80099E68:
/* 88DC8 80099E68 10000003 */  beq     $zero, $zero, .L80099E78
/* 88DCC 80099E6C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 88DD0 80099E70 8D180014 */  lw      $t8, 0x0014($t0)           ## 00000014
.L80099E74:
/* 88DD4 80099E74 00B81021 */  addu    $v0, $a1, $t8
.L80099E78:
/* 88DD8 80099E78 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 88DDC 80099E7C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 88DE0 80099E80 03E00008 */  jr      $ra
/* 88DE4 80099E84 00000000 */  nop
/* 88DE8 80099E88 00000000 */  nop
/* 88DEC 80099E8C 00000000 */  nop
