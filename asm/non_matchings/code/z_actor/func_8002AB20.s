glabel func_8002AB20
/* 19A80 8002AB20 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 19A84 8002AB24 AFB00018 */  sw      $s0, 0x0018($sp)
/* 19A88 8002AB28 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 19A8C 8002AB2C AFBF001C */  sw      $ra, 0x001C($sp)
/* 19A90 8002AB30 AFA40030 */  sw      $a0, 0x0030($sp)
/* 19A94 8002AB34 AFA60038 */  sw      $a2, 0x0038($sp)
/* 19A98 8002AB38 AFA7003C */  sw      $a3, 0x003C($sp)
/* 19A9C 8002AB3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19AA0 8002AB40 0C008A4C */  jal     func_80022930
/* 19AA4 8002AB44 8FA50030 */  lw      $a1, 0x0030($sp)
/* 19AA8 8002AB48 10400005 */  beq     $v0, $zero, .L8002AB60
/* 19AAC 8002AB4C 8FA3003C */  lw      $v1, 0x003C($sp)
/* 19AB0 8002AB50 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 19AB4 8002AB54 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 19AB8 8002AB58 10000052 */  beq     $zero, $zero, .L8002ACA4
/* 19ABC 8002AB5C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002AB60:
/* 19AC0 8002AB60 8C6F0000 */  lw      $t7, 0x0000($v1)           ## 00000000
/* 19AC4 8002AB64 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 19AC8 8002AB68 8FA40030 */  lw      $a0, 0x0030($sp)
/* 19ACC 8002AB6C 15E1000A */  bne     $t7, $at, .L8002AB98
/* 19AD0 8002AB70 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 19AD4 8002AB74 8FA40030 */  lw      $a0, 0x0030($sp)
/* 19AD8 8002AB78 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 19ADC 8002AB7C 0C00AA8F */  jal     func_8002AA3C
/* 19AE0 8002AB80 87A6003A */  lh      $a2, 0x003A($sp)
/* 19AE4 8002AB84 10400002 */  beq     $v0, $zero, .L8002AB90
/* 19AE8 8002AB88 8FA3003C */  lw      $v1, 0x003C($sp)
/* 19AEC 8002AB8C AC600000 */  sw      $zero, 0x0000($v1)         ## 00000000
.L8002AB90:
/* 19AF0 8002AB90 10000044 */  beq     $zero, $zero, .L8002ACA4
/* 19AF4 8002AB94 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002AB98:
/* 19AF8 8002AB98 27A6002C */  addiu   $a2, $sp, 0x002C           ## $a2 = FFFFFFFC
/* 19AFC 8002AB9C 0C008AC5 */  jal     func_80022B14
/* 19B00 8002ABA0 27A7002A */  addiu   $a3, $sp, 0x002A           ## $a3 = FFFFFFFA
/* 19B04 8002ABA4 87A2002C */  lh      $v0, 0x002C($sp)
/* 19B08 8002ABA8 04400007 */  bltz    $v0, .L8002ABC8
/* 19B0C 8002ABAC 28410141 */  slti    $at, $v0, 0x0141
/* 19B10 8002ABB0 10200005 */  beq     $at, $zero, .L8002ABC8
/* 19B14 8002ABB4 87A2002A */  lh      $v0, 0x002A($sp)
/* 19B18 8002ABB8 04400003 */  bltz    $v0, .L8002ABC8
/* 19B1C 8002ABBC 284100F1 */  slti    $at, $v0, 0x00F1
/* 19B20 8002ABC0 54200004 */  bnel    $at, $zero, .L8002ABD4
/* 19B24 8002ABC4 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
.L8002ABC8:
/* 19B28 8002ABC8 10000036 */  beq     $zero, $zero, .L8002ACA4
/* 19B2C 8002ABCC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 19B30 8002ABD0 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
.L8002ABD4:
/* 19B34 8002ABD4 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 19B38 8002ABD8 03191023 */  subu    $v0, $t8, $t9
/* 19B3C 8002ABDC 00021400 */  sll     $v0, $v0, 16
/* 19B40 8002ABE0 00021403 */  sra     $v0, $v0, 16
/* 19B44 8002ABE4 04400004 */  bltz    $v0, .L8002ABF8
/* 19B48 8002ABE8 00021823 */  subu    $v1, $zero, $v0
/* 19B4C 8002ABEC 00021C00 */  sll     $v1, $v0, 16
/* 19B50 8002ABF0 10000003 */  beq     $zero, $zero, .L8002AC00
/* 19B54 8002ABF4 00031C03 */  sra     $v1, $v1, 16
.L8002ABF8:
/* 19B58 8002ABF8 00031C00 */  sll     $v1, $v1, 16
/* 19B5C 8002ABFC 00031C03 */  sra     $v1, $v1, 16
.L8002AC00:
/* 19B60 8002AC00 28614300 */  slti    $at, $v1, 0x4300
/* 19B64 8002AC04 54200004 */  bnel    $at, $zero, .L8002AC18
/* 19B68 8002AC08 3C0146C8 */  lui     $at, 0x46C8                ## $at = 46C80000
/* 19B6C 8002AC0C 10000025 */  beq     $zero, $zero, .L8002ACA4
/* 19B70 8002AC10 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 19B74 8002AC14 3C0146C8 */  lui     $at, 0x46C8                ## $at = 46C80000
.L8002AC18:
/* 19B78 8002AC18 44812000 */  mtc1    $at, $f4                   ## $f4 = 25600.00
/* 19B7C 8002AC1C C600008C */  lwc1    $f0, 0x008C($s0)           ## 0000008C
/* 19B80 8002AC20 3C0145C8 */  lui     $at, 0x45C8                ## $at = 45C80000
/* 19B84 8002AC24 4600203C */  c.lt.s  $f4, $f0
/* 19B88 8002AC28 00000000 */  nop
/* 19B8C 8002AC2C 45020007 */  bc1fl   .L8002AC4C
/* 19B90 8002AC30 44813000 */  mtc1    $at, $f6                   ## $f6 = 6400.00
/* 19B94 8002AC34 9208010C */  lbu     $t0, 0x010C($s0)           ## 0000010C
/* 19B98 8002AC38 55000004 */  bnel    $t0, $zero, .L8002AC4C
/* 19B9C 8002AC3C 44813000 */  mtc1    $at, $f6                   ## $f6 = 6400.00
/* 19BA0 8002AC40 10000018 */  beq     $zero, $zero, .L8002ACA4
/* 19BA4 8002AC44 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 19BA8 8002AC48 44813000 */  mtc1    $at, $f6                   ## $f6 = 6400.00
.L8002AC4C:
/* 19BAC 8002AC4C 8FA50030 */  lw      $a1, 0x0030($sp)
/* 19BB0 8002AC50 3C0642A0 */  lui     $a2, 0x42A0                ## $a2 = 42A00000
/* 19BB4 8002AC54 4606003E */  c.le.s  $f0, $f6
/* 19BB8 8002AC58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19BBC 8002AC5C 45000009 */  bc1f    .L8002AC84
/* 19BC0 8002AC60 00000000 */  nop
/* 19BC4 8002AC64 0C008A9A */  jal     func_80022A68
/* 19BC8 8002AC68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19BCC 8002AC6C 1040000C */  beq     $v0, $zero, .L8002ACA0
/* 19BD0 8002AC70 8FA40030 */  lw      $a0, 0x0030($sp)
/* 19BD4 8002AC74 0C00AA6B */  jal     func_8002A9AC
/* 19BD8 8002AC78 87A5003A */  lh      $a1, 0x003A($sp)
/* 19BDC 8002AC7C 10000008 */  beq     $zero, $zero, .L8002ACA0
/* 19BE0 8002AC80 A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
.L8002AC84:
/* 19BE4 8002AC84 0C008AA4 */  jal     func_80022A90
/* 19BE8 8002AC88 8FA50030 */  lw      $a1, 0x0030($sp)
/* 19BEC 8002AC8C 10400004 */  beq     $v0, $zero, .L8002ACA0
/* 19BF0 8002AC90 8FA40030 */  lw      $a0, 0x0030($sp)
/* 19BF4 8002AC94 0C00AA6B */  jal     func_8002A9AC
/* 19BF8 8002AC98 87A5003A */  lh      $a1, 0x003A($sp)
/* 19BFC 8002AC9C A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
.L8002ACA0:
/* 19C00 8002ACA0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002ACA4:
/* 19C04 8002ACA4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19C08 8002ACA8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 19C0C 8002ACAC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 19C10 8002ACB0 03E00008 */  jr      $ra
/* 19C14 8002ACB4 00000000 */  nop


