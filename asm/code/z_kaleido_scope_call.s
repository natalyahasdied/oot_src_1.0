.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel KaleidoScopeCall_LoadPlayer
/* 88DF0 80099E90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 88DF4 80099E94 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 88DF8 80099E98 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 88DFC 80099E9C 8C84E4BC */  lw      $a0, -0x1B44($a0)          ## 800FE4BC
/* 88E00 80099EA0 3C0E8010 */  lui     $t6, 0x8010                ## $t6 = 80100000
/* 88E04 80099EA4 25CEE49C */  addiu   $t6, $t6, 0xE49C           ## $t6 = 800FE49C
/* 88E08 80099EA8 51C40009 */  beql    $t6, $a0, .L80099ED0
/* 88E0C 80099EAC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 88E10 80099EB0 10800003 */  beq     $a0, $zero, .L80099EC0
/* 88E14 80099EB4 00000000 */  nop
/* 88E18 80099EB8 0C02672F */  jal     KaleidoManager_ClearOvl
/* 88E1C 80099EBC 00000000 */  nop
.L80099EC0:
/* 88E20 80099EC0 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 88E24 80099EC4 0C026718 */  jal     KaleidoManager_LoadOvl
/* 88E28 80099EC8 2484E49C */  addiu   $a0, $a0, 0xE49C           ## $a0 = 800FE49C
/* 88E2C 80099ECC 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80099ED0:
/* 88E30 80099ED0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 88E34 80099ED4 03E00008 */  jr      $ra
/* 88E38 80099ED8 00000000 */  nop


glabel func_80099EDC
/* 88E3C 80099EDC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 88E40 80099EE0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 88E44 80099EE4 AFA40018 */  sw      $a0, 0x0018($sp)
/* 88E48 80099EE8 3C048082 */  lui     $a0, 0x8082                ## $a0 = 80820000
/* 88E4C 80099EEC 0C02676F */  jal     KaleidoManager_GetRamAddr
/* 88E50 80099EF0 248463C0 */  addiu   $a0, $a0, 0x63C0           ## $a0 = 808263C0
/* 88E54 80099EF4 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 88E58 80099EF8 3C048082 */  lui     $a0, 0x8082                ## $a0 = 80820000
/* 88E5C 80099EFC AC22D040 */  sw      $v0, -0x2FC0($at)          ## 8011D040
/* 88E60 80099F00 0C02676F */  jal     KaleidoManager_GetRamAddr
/* 88E64 80099F04 24845A00 */  addiu   $a0, $a0, 0x5A00           ## $a0 = 80825A00
/* 88E68 80099F08 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 88E6C 80099F0C AC22D044 */  sw      $v0, -0x2FBC($at)          ## 8011D044
/* 88E70 80099F10 0C016EB3 */  jal     func_8005BACC
/* 88E74 80099F14 8FA40018 */  lw      $a0, 0x0018($sp)
/* 88E78 80099F18 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 88E7C 80099F1C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 88E80 80099F20 03E00008 */  jr      $ra
/* 88E84 80099F24 00000000 */  nop


glabel func_80099F28
/* 88E88 80099F28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 88E8C 80099F2C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 88E90 80099F30 0C016F11 */  jal     func_8005BC44
/* 88E94 80099F34 00000000 */  nop
/* 88E98 80099F38 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 88E9C 80099F3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 88EA0 80099F40 03E00008 */  jr      $ra
/* 88EA4 80099F44 00000000 */  nop


glabel func_80099F48
/* 88EA8 80099F48 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 88EAC 80099F4C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 88EB0 80099F50 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 88EB4 80099F54 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 88EB8 80099F58 00E12821 */  addu    $a1, $a3, $at
/* 88EBC 80099F5C 94AE0934 */  lhu     $t6, 0x0934($a1)           ## 00000934
/* 88EC0 80099F60 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 88EC4 80099F64 34210760 */  ori     $at, $at, 0x0760           ## $at = 00010760
/* 88EC8 80099F68 15C00004 */  bne     $t6, $zero, .L80099F7C
/* 88ECC 80099F6C 00E11821 */  addu    $v1, $a3, $at
/* 88ED0 80099F70 94AF0936 */  lhu     $t7, 0x0936($a1)           ## 00000936
/* 88ED4 80099F74 51E00059 */  beql    $t7, $zero, .L8009A0DC
/* 88ED8 80099F78 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80099F7C:
/* 88EDC 80099F7C 946401D4 */  lhu     $a0, 0x01D4($v1)           ## 000001D4
/* 88EE0 80099F80 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 88EE4 80099F84 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 88EE8 80099F88 14C4000F */  bne     $a2, $a0, .L80099FC8
/* 88EEC 80099F8C 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 88EF0 80099F90 0C026594 */  jal     func_80099650
/* 88EF4 80099F94 AFA3001C */  sw      $v1, 0x001C($sp)
/* 88EF8 80099F98 8FA3001C */  lw      $v1, 0x001C($sp)
/* 88EFC 80099F9C 1440004E */  bne     $v0, $zero, .L8009A0D8
/* 88F00 80099FA0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 88F04 80099FA4 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 88F08 80099FA8 8F18BA00 */  lw      $t8, -0x4600($t8)          ## 8011BA00
/* 88F0C 80099FAC A7060190 */  sh      $a2, 0x0190($t8)           ## 80120190
/* 88F10 80099FB0 946801D4 */  lhu     $t0, 0x01D4($v1)           ## 000001D4
/* 88F14 80099FB4 A46001E4 */  sh      $zero, 0x01E4($v1)         ## 000001E4
/* 88F18 80099FB8 A46001EC */  sh      $zero, 0x01EC($v1)         ## 000001EC
/* 88F1C 80099FBC 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 88F20 80099FC0 10000045 */  beq     $zero, $zero, .L8009A0D8
/* 88F24 80099FC4 A46901D4 */  sh      $t1, 0x01D4($v1)           ## 000001D4
.L80099FC8:
/* 88F28 80099FC8 14410009 */  bne     $v0, $at, .L80099FF0
/* 88F2C 80099FCC 3C0A8012 */  lui     $t2, 0x8012                ## $t2 = 80120000
/* 88F30 80099FD0 8D4ABA00 */  lw      $t2, -0x4600($t2)          ## 8011BA00
/* 88F34 80099FD4 A5460190 */  sh      $a2, 0x0190($t2)           ## 80120190
/* 88F38 80099FD8 946C01D4 */  lhu     $t4, 0x01D4($v1)           ## 000001D4
/* 88F3C 80099FDC A46001E4 */  sh      $zero, 0x01E4($v1)         ## 000001E4
/* 88F40 80099FE0 A46001EC */  sh      $zero, 0x01EC($v1)         ## 000001EC
/* 88F44 80099FE4 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 88F48 80099FE8 1000003B */  beq     $zero, $zero, .L8009A0D8
/* 88F4C 80099FEC A46D01D4 */  sh      $t5, 0x01D4($v1)           ## 000001D4
.L80099FF0:
/* 88F50 80099FF0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 88F54 80099FF4 10410004 */  beq     $v0, $at, .L8009A008
/* 88F58 80099FF8 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 88F5C 80099FFC 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 88F60 8009A000 14410009 */  bne     $v0, $at, .L8009A028
/* 88F64 8009A004 00000000 */  nop
.L8009A008:
/* 88F68 8009A008 8DCEBA00 */  lw      $t6, -0x4600($t6)          ## 8011BA00
/* 88F6C 8009A00C 24980001 */  addiu   $t8, $a0, 0x0001           ## $t8 = 00000001
/* 88F70 8009A010 85CF0190 */  lh      $t7, 0x0190($t6)           ## 80120190
/* 88F74 8009A014 29E10003 */  slti    $at, $t7, 0x0003
/* 88F78 8009A018 54200030 */  bnel    $at, $zero, .L8009A0DC
/* 88F7C 8009A01C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 88F80 8009A020 1000002D */  beq     $zero, $zero, .L8009A0D8
/* 88F84 8009A024 A47801D4 */  sh      $t8, 0x01D4($v1)           ## 000001D4
.L8009A028:
/* 88F88 8009A028 1040002B */  beq     $v0, $zero, .L8009A0D8
/* 88F8C 8009A02C 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 88F90 8009A030 8C84E4BC */  lw      $a0, -0x1B44($a0)          ## 800FE4BC
/* 88F94 8009A034 3C198010 */  lui     $t9, 0x8010                ## $t9 = 80100000
/* 88F98 8009A038 2739E480 */  addiu   $t9, $t9, 0xE480           ## $t9 = 800FE480
/* 88F9C 8009A03C 13240011 */  beq     $t9, $a0, .L8009A084
/* 88FA0 8009A040 00000000 */  nop
/* 88FA4 8009A044 10800006 */  beq     $a0, $zero, .L8009A060
/* 88FA8 8009A048 00000000 */  nop
/* 88FAC 8009A04C AFA50018 */  sw      $a1, 0x0018($sp)
/* 88FB0 8009A050 0C02672F */  jal     KaleidoManager_ClearOvl
/* 88FB4 8009A054 AFA70028 */  sw      $a3, 0x0028($sp)
/* 88FB8 8009A058 8FA50018 */  lw      $a1, 0x0018($sp)
/* 88FBC 8009A05C 8FA70028 */  lw      $a3, 0x0028($sp)
.L8009A060:
/* 88FC0 8009A060 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 88FC4 8009A064 2484E480 */  addiu   $a0, $a0, 0xE480           ## $a0 = 800FE480
/* 88FC8 8009A068 AFA50018 */  sw      $a1, 0x0018($sp)
/* 88FCC 8009A06C 0C026718 */  jal     KaleidoManager_LoadOvl
/* 88FD0 8009A070 AFA70028 */  sw      $a3, 0x0028($sp)
/* 88FD4 8009A074 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 88FD8 8009A078 8C84E4BC */  lw      $a0, -0x1B44($a0)          ## 800FE4BC
/* 88FDC 8009A07C 8FA50018 */  lw      $a1, 0x0018($sp)
/* 88FE0 8009A080 8FA70028 */  lw      $a3, 0x0028($sp)
.L8009A084:
/* 88FE4 8009A084 3C088010 */  lui     $t0, 0x8010                ## $t0 = 80100000
/* 88FE8 8009A088 2508E480 */  addiu   $t0, $t0, 0xE480           ## $t0 = 800FE480
/* 88FEC 8009A08C 15040012 */  bne     $t0, $a0, .L8009A0D8
/* 88FF0 8009A090 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 88FF4 8009A094 8F39D040 */  lw      $t9, -0x2FC0($t9)          ## 8011D040
/* 88FF8 8009A098 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 88FFC 8009A09C AFA50018 */  sw      $a1, 0x0018($sp)
/* 89000 8009A0A0 0320F809 */  jalr    $ra, $t9
/* 89004 8009A0A4 00000000 */  nop
/* 89008 8009A0A8 8FA50018 */  lw      $a1, 0x0018($sp)
/* 8900C 8009A0AC 94A90934 */  lhu     $t1, 0x0934($a1)           ## 00000934
/* 89010 8009A0B0 5520000A */  bnel    $t1, $zero, .L8009A0DC
/* 89014 8009A0B4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 89018 8009A0B8 94AA0936 */  lhu     $t2, 0x0936($a1)           ## 00000936
/* 8901C 8009A0BC 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 89020 8009A0C0 55400006 */  bnel    $t2, $zero, .L8009A0DC
/* 89024 8009A0C4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 89028 8009A0C8 0C02672F */  jal     KaleidoManager_ClearOvl
/* 8902C 8009A0CC 2484E480 */  addiu   $a0, $a0, 0xE480           ## $a0 = 800FE480
/* 89030 8009A0D0 0C0267A4 */  jal     KaleidoScopeCall_LoadPlayer
/* 89034 8009A0D4 00000000 */  nop
.L8009A0D8:
/* 89038 8009A0D8 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8009A0DC:
/* 8903C 8009A0DC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 89040 8009A0E0 03E00008 */  jr      $ra
/* 89044 8009A0E4 00000000 */  nop


glabel func_8009A0E8
/* 89048 8009A0E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 8904C 8009A0EC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 89050 8009A0F0 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 89054 8009A0F4 8DCEBA00 */  lw      $t6, -0x4600($t6)          ## 8011BA00
/* 89058 8009A0F8 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 8905C 8009A0FC 00441021 */  addu    $v0, $v0, $a0
/* 89060 8009A100 85CF0190 */  lh      $t7, 0x0190($t6)           ## 80120190
/* 89064 8009A104 29E10003 */  slti    $at, $t7, 0x0003
/* 89068 8009A108 54200014 */  bnel    $at, $zero, .L8009A15C
/* 8906C 8009A10C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 89070 8009A110 94420934 */  lhu     $v0, 0x0934($v0)           ## 00010934
/* 89074 8009A114 28410004 */  slti    $at, $v0, 0x0004
/* 89078 8009A118 14200002 */  bne     $at, $zero, .L8009A124
/* 8907C 8009A11C 28410008 */  slti    $at, $v0, 0x0008
/* 89080 8009A120 14200004 */  bne     $at, $zero, .L8009A134
.L8009A124:
/* 89084 8009A124 2841000B */  slti    $at, $v0, 0x000B
/* 89088 8009A128 1420000B */  bne     $at, $zero, .L8009A158
/* 8908C 8009A12C 28410013 */  slti    $at, $v0, 0x0013
/* 89090 8009A130 10200009 */  beq     $at, $zero, .L8009A158
.L8009A134:
/* 89094 8009A134 3C198010 */  lui     $t9, 0x8010                ## $t9 = 80100000
/* 89098 8009A138 8F39E4BC */  lw      $t9, -0x1B44($t9)          ## 800FE4BC
/* 8909C 8009A13C 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 890A0 8009A140 2718E480 */  addiu   $t8, $t8, 0xE480           ## $t8 = 800FE480
/* 890A4 8009A144 17190004 */  bne     $t8, $t9, .L8009A158
/* 890A8 8009A148 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 890AC 8009A14C 8F39D044 */  lw      $t9, -0x2FBC($t9)          ## 8011D044
/* 890B0 8009A150 0320F809 */  jalr    $ra, $t9
/* 890B4 8009A154 00000000 */  nop
.L8009A158:
/* 890B8 8009A158 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8009A15C:
/* 890BC 8009A15C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 890C0 8009A160 03E00008 */  jr      $ra
/* 890C4 8009A164 00000000 */  nop
/* 890C8 8009A168 00000000 */  nop
/* 890CC 8009A16C 00000000 */  nop
