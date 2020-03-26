glabel func_8002AEE8
/* 19E48 8002AEE8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 19E4C 8002AEEC AFB00018 */  sw      $s0, 0x0018($sp)
/* 19E50 8002AEF0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 19E54 8002AEF4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 19E58 8002AEF8 8E0F0024 */  lw      $t7, 0x0024($s0)           ## 00000024
/* 19E5C 8002AEFC 8C891C44 */  lw      $t1, 0x1C44($a0)           ## 00001C44
/* 19E60 8002AF00 8E0E0028 */  lw      $t6, 0x0028($s0)           ## 00000028
/* 19E64 8002AF04 AE0F0038 */  sw      $t7, 0x0038($s0)           ## 00000038
/* 19E68 8002AF08 8E0F002C */  lw      $t7, 0x002C($s0)           ## 0000002C
/* 19E6C 8002AF0C AE0E003C */  sw      $t6, 0x003C($s0)           ## 0000003C
/* 19E70 8002AF10 C604003C */  lwc1    $f4, 0x003C($s0)           ## 0000003C
/* 19E74 8002AF14 AE0F0040 */  sw      $t7, 0x0040($s0)           ## 00000040
/* 19E78 8002AF18 C7A60050 */  lwc1    $f6, 0x0050($sp)
/* 19E7C 8002AF1C 3C18800F */  lui     $t8, 0x800F                ## $t8 = 800F0000
/* 19E80 8002AF20 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 19E84 8002AF24 46062200 */  add.s   $f8, $f4, $f6
/* 19E88 8002AF28 E608003C */  swc1    $f8, 0x003C($s0)           ## 0000003C
/* 19E8C 8002AF2C 90881D6C */  lbu     $t0, 0x1D6C($a0)           ## 00001D6C
/* 19E90 8002AF30 15000004 */  bne     $t0, $zero, .L8002AF44
/* 19E94 8002AF34 00000000 */  nop
/* 19E98 8002AF38 8F18F1A0 */  lw      $t8, -0x0E60($t8)          ## 800EF1A0
/* 19E9C 8002AF3C 53000006 */  beql    $t8, $zero, .L8002AF58
/* 19EA0 8002AF40 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
.L8002AF44:
/* 19EA4 8002AF44 8F39A5D0 */  lw      $t9, -0x5A30($t9)          ## 8011A5D0
/* 19EA8 8002AF48 240100EE */  addiu   $at, $zero, 0x00EE         ## $at = 000000EE
/* 19EAC 8002AF4C 13210015 */  beq     $t9, $at, .L8002AFA4
/* 19EB0 8002AF50 00000000 */  nop
/* 19EB4 8002AF54 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
.L8002AF58:
/* 19EB8 8002AF58 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 19EBC 8002AF5C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 19EC0 8002AF60 014B1023 */  subu    $v0, $t2, $t3
/* 19EC4 8002AF64 00021400 */  sll     $v0, $v0, 16
/* 19EC8 8002AF68 00021403 */  sra     $v0, $v0, 16
/* 19ECC 8002AF6C 04400004 */  bltz    $v0, .L8002AF80
/* 19ED0 8002AF70 00021823 */  subu    $v1, $zero, $v0
/* 19ED4 8002AF74 00021C00 */  sll     $v1, $v0, 16
/* 19ED8 8002AF78 10000003 */  beq     $zero, $zero, .L8002AF88
/* 19EDC 8002AF7C 00031C03 */  sra     $v1, $v1, 16
.L8002AF80:
/* 19EE0 8002AF80 00031C00 */  sll     $v1, $v1, 16
/* 19EE4 8002AF84 00031C03 */  sra     $v1, $v1, 16
.L8002AF88:
/* 19EE8 8002AF88 28614300 */  slti    $at, $v1, 0x4300
/* 19EEC 8002AF8C 14200005 */  bne     $at, $zero, .L8002AFA4
/* 19EF0 8002AF90 00000000 */  nop
/* 19EF4 8002AF94 0C00AB2E */  jal     func_8002ACB8
/* 19EF8 8002AF98 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 19EFC 8002AF9C 1000001C */  beq     $zero, $zero, .L8002B010
/* 19F00 8002AFA0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002AFA4:
/* 19F04 8002AFA4 15000003 */  bne     $t0, $zero, .L8002AFB4
/* 19F08 8002AFA8 3C0C800F */  lui     $t4, 0x800F                ## $t4 = 800F0000
/* 19F0C 8002AFAC 8D8CF1A0 */  lw      $t4, -0x0E60($t4)          ## 800EF1A0
/* 19F10 8002AFB0 1180000D */  beq     $t4, $zero, .L8002AFE8
.L8002AFB4:
/* 19F14 8002AFB4 3C0D8012 */  lui     $t5, 0x8012                ## $t5 = 80120000
/* 19F18 8002AFB8 8DADA5D0 */  lw      $t5, -0x5A30($t5)          ## 8011A5D0
/* 19F1C 8002AFBC 240100EE */  addiu   $at, $zero, 0x00EE         ## $at = 000000EE
/* 19F20 8002AFC0 55A1000A */  bnel    $t5, $at, .L8002AFEC
/* 19F24 8002AFC4 8D390038 */  lw      $t9, 0x0038($t1)           ## 00000038
/* 19F28 8002AFC8 8C8F00E0 */  lw      $t7, 0x00E0($a0)           ## 000000E0
/* 19F2C 8002AFCC 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFEC
/* 19F30 8002AFD0 ACAF0000 */  sw      $t7, 0x0000($a1)           ## FFFFFFEC
/* 19F34 8002AFD4 8C8E00E4 */  lw      $t6, 0x00E4($a0)           ## 000000E4
/* 19F38 8002AFD8 ACAE0004 */  sw      $t6, 0x0004($a1)           ## FFFFFFF0
/* 19F3C 8002AFDC 8C8F00E8 */  lw      $t7, 0x00E8($a0)           ## 000000E8
/* 19F40 8002AFE0 10000008 */  beq     $zero, $zero, .L8002B004
/* 19F44 8002AFE4 ACAF0008 */  sw      $t7, 0x0008($a1)           ## FFFFFFF4
.L8002AFE8:
/* 19F48 8002AFE8 8D390038 */  lw      $t9, 0x0038($t1)           ## 00000038
.L8002AFEC:
/* 19F4C 8002AFEC 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFEC
/* 19F50 8002AFF0 ACB90000 */  sw      $t9, 0x0000($a1)           ## FFFFFFEC
/* 19F54 8002AFF4 8D38003C */  lw      $t8, 0x003C($t1)           ## 0000003C
/* 19F58 8002AFF8 ACB80004 */  sw      $t8, 0x0004($a1)           ## FFFFFFF0
/* 19F5C 8002AFFC 8D390040 */  lw      $t9, 0x0040($t1)           ## 00000040
/* 19F60 8002B000 ACB90008 */  sw      $t9, 0x0008($a1)           ## FFFFFFF4
.L8002B004:
/* 19F64 8002B004 0C00AB55 */  jal     func_8002AD54
/* 19F68 8002B008 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19F6C 8002B00C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002B010:
/* 19F70 8002B010 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19F74 8002B014 8FB00018 */  lw      $s0, 0x0018($sp)
/* 19F78 8002B018 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 19F7C 8002B01C 03E00008 */  jr      $ra
/* 19F80 8002B020 00000000 */  nop


