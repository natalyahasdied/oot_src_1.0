.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel Yaz0_FirstDMA
/* 00B00 80000F60 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00B04 80000F64 3C058001 */  lui     $a1, 0x8001                ## $a1 = 80010000
/* 00B08 80000F68 3C078001 */  lui     $a3, 0x8001                ## $a3 = 80010000
/* 00B0C 80000F6C 24E78898 */  addiu   $a3, $a3, 0x8898           ## $a3 = 80008898
/* 00B10 80000F70 24A58490 */  addiu   $a1, $a1, 0x8490           ## $a1 = 80008490
/* 00B14 80000F74 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00B18 80000F78 3C028001 */  lui     $v0, 0x8001                ## $v0 = 80010000
/* 00B1C 80000F7C 8C428890 */  lw      $v0, -0x7770($v0)          ## 80008890
/* 00B20 80000F80 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 00B24 80000F84 244EFFE7 */  addiu   $t6, $v0, 0xFFE7           ## $t6 = 8000FFE7
/* 00B28 80000F88 AC2E889C */  sw      $t6, -0x7764($at)          ## 8000889C
/* 00B2C 80000F8C 8CE40000 */  lw      $a0, 0x0000($a3)           ## 80008898
/* 00B30 80000F90 00451823 */  subu    $v1, $v0, $a1
/* 00B34 80000F94 00603025 */  or      $a2, $v1, $zero            ## $a2 = 00000000
/* 00B38 80000F98 0083082B */  sltu    $at, $a0, $v1
/* 00B3C 80000F9C 10200003 */  beq     $at, $zero, .L80000FAC
/* 00B40 80000FA0 00000000 */  nop
/* 00B44 80000FA4 10000001 */  beq     $zero, $zero, .L80000FAC
/* 00B48 80000FA8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
.L80000FAC:
/* 00B4C 80000FAC 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 00B50 80000FB0 8C848894 */  lw      $a0, -0x776C($a0)          ## 80008894
/* 00B54 80000FB4 0C000217 */  jal     DmaMgr_DMARomToRam
/* 00B58 80000FB8 AFA6001C */  sw      $a2, 0x001C($sp)
/* 00B5C 80000FBC 3C038001 */  lui     $v1, 0x8001                ## $v1 = 80010000
/* 00B60 80000FC0 3C078001 */  lui     $a3, 0x8001                ## $a3 = 80010000
/* 00B64 80000FC4 8FA6001C */  lw      $a2, 0x001C($sp)
/* 00B68 80000FC8 24E78898 */  addiu   $a3, $a3, 0x8898           ## $a3 = 80008898
/* 00B6C 80000FCC 24638894 */  addiu   $v1, $v1, 0x8894           ## $v1 = 80008894
/* 00B70 80000FD0 8C6F0000 */  lw      $t7, 0x0000($v1)           ## 80008894
/* 00B74 80000FD4 8CF90000 */  lw      $t9, 0x0000($a3)           ## 80008898
/* 00B78 80000FD8 3C028001 */  lui     $v0, 0x8001                ## $v0 = 80010000
/* 00B7C 80000FDC 01E6C021 */  addu    $t8, $t7, $a2
/* 00B80 80000FE0 03264023 */  subu    $t0, $t9, $a2
/* 00B84 80000FE4 AC780000 */  sw      $t8, 0x0000($v1)           ## 80008894
/* 00B88 80000FE8 ACE80000 */  sw      $t0, 0x0000($a3)           ## 80008898
/* 00B8C 80000FEC 24428490 */  addiu   $v0, $v0, 0x8490           ## $v0 = 80008490
/* 00B90 80000FF0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00B94 80000FF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00B98 80000FF8 03E00008 */  jr      $ra
/* 00B9C 80000FFC 00000000 */  nop

glabel Yaz0_NextDMA
/* 00BA0 80001000 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00BA4 80001004 AFBF001C */  sw      $ra, 0x001C($sp)
/* 00BA8 80001008 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00BAC 8000100C 3C0E8001 */  lui     $t6, 0x8001                ## $t6 = 80010000
/* 00BB0 80001010 8DCE8890 */  lw      $t6, -0x7770($t6)          ## 80008890
/* 00BB4 80001014 3C108001 */  lui     $s0, 0x8001                ## $s0 = 80010000
/* 00BB8 80001018 26108490 */  addiu   $s0, $s0, 0x8490           ## $s0 = 80008490
/* 00BBC 8000101C 01C43823 */  subu    $a3, $t6, $a0
/* 00BC0 80001020 30E20007 */  andi    $v0, $a3, 0x0007           ## $v0 = 00000000
/* 00BC4 80001024 10400006 */  beq     $v0, $zero, .L80001040
/* 00BC8 80001028 00E03025 */  or      $a2, $a3, $zero            ## $a2 = 00000000
/* 00BCC 8000102C 3C0F8001 */  lui     $t7, 0x8001                ## $t7 = 80010000
/* 00BD0 80001030 25EF8490 */  addiu   $t7, $t7, 0x8490           ## $t7 = 80008490
/* 00BD4 80001034 01E28023 */  subu    $s0, $t7, $v0
/* 00BD8 80001038 10000001 */  beq     $zero, $zero, .L80001040
/* 00BDC 8000103C 26100008 */  addiu   $s0, $s0, 0x0008           ## $s0 = 80008498
.L80001040:
/* 00BE0 80001040 02002825 */  or      $a1, $s0, $zero            ## $a1 = 80008498
/* 00BE4 80001044 0C001370 */  jal     bcopy              ## bcopy
/* 00BE8 80001048 AFA70028 */  sw      $a3, 0x0028($sp)
/* 00BEC 8000104C 3C188001 */  lui     $t8, 0x8001                ## $t8 = 80010000
/* 00BF0 80001050 8F188890 */  lw      $t8, -0x7770($t8)          ## 80008890
/* 00BF4 80001054 3C038001 */  lui     $v1, 0x8001                ## $v1 = 80010000
/* 00BF8 80001058 8FA70028 */  lw      $a3, 0x0028($sp)
/* 00BFC 8000105C 24638898 */  addiu   $v1, $v1, 0x8898           ## $v1 = 80008898
/* 00C00 80001060 8C620000 */  lw      $v0, 0x0000($v1)           ## 80008898
/* 00C04 80001064 0310C823 */  subu    $t9, $t8, $s0
/* 00C08 80001068 03273023 */  subu    $a2, $t9, $a3
/* 00C0C 8000106C 0046082B */  sltu    $at, $v0, $a2
/* 00C10 80001070 10200002 */  beq     $at, $zero, .L8000107C
/* 00C14 80001074 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 00C18 80001078 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
.L8000107C:
/* 00C1C 8000107C 10C00015 */  beq     $a2, $zero, .L800010D4
/* 00C20 80001080 02072821 */  addu    $a1, $s0, $a3
/* 00C24 80001084 8C848894 */  lw      $a0, -0x776C($a0)          ## 80008894
/* 00C28 80001088 AFA50020 */  sw      $a1, 0x0020($sp)
/* 00C2C 8000108C 0C000217 */  jal     DmaMgr_DMARomToRam
/* 00C30 80001090 AFA60024 */  sw      $a2, 0x0024($sp)
/* 00C34 80001094 3C028001 */  lui     $v0, 0x8001                ## $v0 = 80010000
/* 00C38 80001098 3C038001 */  lui     $v1, 0x8001                ## $v1 = 80010000
/* 00C3C 8000109C 8FA60024 */  lw      $a2, 0x0024($sp)
/* 00C40 800010A0 24638898 */  addiu   $v1, $v1, 0x8898           ## $v1 = 80008898
/* 00C44 800010A4 24428894 */  addiu   $v0, $v0, 0x8894           ## $v0 = 80008894
/* 00C48 800010A8 8C480000 */  lw      $t0, 0x0000($v0)           ## 80008894
/* 00C4C 800010AC 8C6A0000 */  lw      $t2, 0x0000($v1)           ## 80008898
/* 00C50 800010B0 8FA50020 */  lw      $a1, 0x0020($sp)
/* 00C54 800010B4 01064821 */  addu    $t1, $t0, $a2
/* 00C58 800010B8 01465823 */  subu    $t3, $t2, $a2
/* 00C5C 800010BC AC490000 */  sw      $t1, 0x0000($v0)           ## 80008894
/* 00C60 800010C0 15600004 */  bne     $t3, $zero, .L800010D4
/* 00C64 800010C4 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 80008898
/* 00C68 800010C8 00A66821 */  addu    $t5, $a1, $a2
/* 00C6C 800010CC 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 00C70 800010D0 AC2D889C */  sw      $t5, -0x7764($at)          ## 8000889C
.L800010D4:
/* 00C74 800010D4 02001025 */  or      $v0, $s0, $zero            ## $v0 = 80008498
/* 00C78 800010D8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00C7C 800010DC 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00C80 800010E0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00C84 800010E4 03E00008 */  jr      $ra
/* 00C88 800010E8 00000000 */  nop

glabel Yaz0_DecompressImpl
/* 00C8C 800010EC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00C90 800010F0 AFB1001C */  sw      $s1, 0x001C($sp)
/* 00C94 800010F4 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00C98 800010F8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00C9C 800010FC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00CA0 80001100 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00CA4 80001104 AFB40028 */  sw      $s4, 0x0028($sp)
/* 00CA8 80001108 AFB30024 */  sw      $s3, 0x0024($sp)
/* 00CAC 8000110C AFB20020 */  sw      $s2, 0x0020($sp)
/* 00CB0 80001110 8E2E0004 */  lw      $t6, 0x0004($s1)           ## 00000004
/* 00CB4 80001114 3C138001 */  lui     $s3, 0x8001                ## $s3 = 80010000
/* 00CB8 80001118 3C128001 */  lui     $s2, 0x8001                ## $s2 = 80010000
/* 00CBC 8000111C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00CC0 80001120 26310010 */  addiu   $s1, $s1, 0x0010           ## $s1 = 00000010
/* 00CC4 80001124 2652889C */  addiu   $s2, $s2, 0x889C           ## $s2 = 8000889C
/* 00CC8 80001128 26738898 */  addiu   $s3, $s3, 0x8898           ## $s3 = 80008898
/* 00CCC 8000112C 8FA70030 */  lw      $a3, 0x0030($sp)
/* 00CD0 80001130 01D0A021 */  addu    $s4, $t6, $s0
.L80001134:
/* 00CD4 80001134 54C0000F */  bnel    $a2, $zero, .L80001174
/* 00CD8 80001138 30F90080 */  andi    $t9, $a3, 0x0080           ## $t9 = 00000000
/* 00CDC 8000113C 8E4F0000 */  lw      $t7, 0x0000($s2)           ## 8000889C
/* 00CE0 80001140 01F1082B */  sltu    $at, $t7, $s1
/* 00CE4 80001144 50200008 */  beql    $at, $zero, .L80001168
/* 00CE8 80001148 92270000 */  lbu     $a3, 0x0000($s1)           ## 00000010
/* 00CEC 8000114C 8E780000 */  lw      $t8, 0x0000($s3)           ## 80008898
/* 00CF0 80001150 53000005 */  beql    $t8, $zero, .L80001168
/* 00CF4 80001154 92270000 */  lbu     $a3, 0x0000($s1)           ## 00000010
/* 00CF8 80001158 0C000400 */  jal     Yaz0_NextDMA
/* 00CFC 8000115C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000010
/* 00D00 80001160 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 00D04 80001164 92270000 */  lbu     $a3, 0x0000($s1)           ## 00000000
.L80001168:
/* 00D08 80001168 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00D0C 8000116C 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00D10 80001170 30F90080 */  andi    $t9, $a3, 0x0080           ## $t9 = 00000000
.L80001174:
/* 00D14 80001174 13200006 */  beq     $t9, $zero, .L80001190
/* 00D18 80001178 00073840 */  sll     $a3, $a3,  1
/* 00D1C 8000117C 92280000 */  lbu     $t0, 0x0000($s1)           ## 00000001
/* 00D20 80001180 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00D24 80001184 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
/* 00D28 80001188 10000027 */  beq     $zero, $zero, .L80001228
/* 00D2C 8000118C A208FFFF */  sb      $t0, -0x0001($s0)          ## 00000000
.L80001190:
/* 00D30 80001190 92230000 */  lbu     $v1, 0x0000($s1)           ## 00000002
/* 00D34 80001194 92290001 */  lbu     $t1, 0x0001($s1)           ## 00000003
/* 00D38 80001198 26310002 */  addiu   $s1, $s1, 0x0002           ## $s1 = 00000004
/* 00D3C 8000119C 306A000F */  andi    $t2, $v1, 0x000F           ## $t2 = 00000000
/* 00D40 800011A0 000A5A00 */  sll     $t3, $t2,  8
/* 00D44 800011A4 00032903 */  sra     $a1, $v1,  4
/* 00D48 800011A8 012B2025 */  or      $a0, $t1, $t3              ## $a0 = 00000000
/* 00D4C 800011AC 14A00005 */  bne     $a1, $zero, .L800011C4
/* 00D50 800011B0 02041023 */  subu    $v0, $s0, $a0
/* 00D54 800011B4 92230000 */  lbu     $v1, 0x0000($s1)           ## 00000004
/* 00D58 800011B8 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000005
/* 00D5C 800011BC 10000002 */  beq     $zero, $zero, .L800011C8
/* 00D60 800011C0 24630012 */  addiu   $v1, $v1, 0x0012           ## $v1 = 00000012
.L800011C4:
/* 00D64 800011C4 24A30002 */  addiu   $v1, $a1, 0x0002           ## $v1 = 00000002
.L800011C8:
/* 00D68 800011C8 30650003 */  andi    $a1, $v1, 0x0003           ## $a1 = 00000002
/* 00D6C 800011CC 00052823 */  subu    $a1, $zero, $a1
/* 00D70 800011D0 10A00009 */  beq     $a1, $zero, .L800011F8
/* 00D74 800011D4 00A32021 */  addu    $a0, $a1, $v1
.L800011D8:
/* 00D78 800011D8 904CFFFF */  lbu     $t4, -0x0001($v0)          ## FFFFFFFF
/* 00D7C 800011DC 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = 00000001
/* 00D80 800011E0 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000002
/* 00D84 800011E4 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00D88 800011E8 1483FFFB */  bne     $a0, $v1, .L800011D8
/* 00D8C 800011EC A20CFFFF */  sb      $t4, -0x0001($s0)          ## 00000001
/* 00D90 800011F0 1060000D */  beq     $v1, $zero, .L80001228
/* 00D94 800011F4 00000000 */  nop
.L800011F8:
/* 00D98 800011F8 904DFFFF */  lbu     $t5, -0x0001($v0)          ## 00000000
/* 00D9C 800011FC 2463FFFC */  addiu   $v1, $v1, 0xFFFC           ## $v1 = FFFFFFFD
/* 00DA0 80001200 26100004 */  addiu   $s0, $s0, 0x0004           ## $s0 = 00000006
/* 00DA4 80001204 A20DFFFC */  sb      $t5, -0x0004($s0)          ## 00000002
/* 00DA8 80001208 904E0000 */  lbu     $t6, 0x0000($v0)           ## 00000001
/* 00DAC 8000120C 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000005
/* 00DB0 80001210 A20EFFFD */  sb      $t6, -0x0003($s0)          ## 00000003
/* 00DB4 80001214 904FFFFD */  lbu     $t7, -0x0003($v0)          ## 00000002
/* 00DB8 80001218 A20FFFFE */  sb      $t7, -0x0002($s0)          ## 00000004
/* 00DBC 8000121C 9058FFFE */  lbu     $t8, -0x0002($v0)          ## 00000003
/* 00DC0 80001220 1460FFF5 */  bne     $v1, $zero, .L800011F8
/* 00DC4 80001224 A218FFFF */  sb      $t8, -0x0001($s0)          ## 00000005
.L80001228:
/* 00DC8 80001228 1614FFC2 */  bne     $s0, $s4, .L80001134
/* 00DCC 8000122C 24C6FFFF */  addiu   $a2, $a2, 0xFFFF           ## $a2 = 00000007
/* 00DD0 80001230 AFA70030 */  sw      $a3, 0x0030($sp)
/* 00DD4 80001234 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00DD8 80001238 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00DDC 8000123C 8FB1001C */  lw      $s1, 0x001C($sp)
/* 00DE0 80001240 8FB20020 */  lw      $s2, 0x0020($sp)
/* 00DE4 80001244 8FB30024 */  lw      $s3, 0x0024($sp)
/* 00DE8 80001248 8FB40028 */  lw      $s4, 0x0028($sp)
/* 00DEC 8000124C 03E00008 */  jr      $ra
/* 00DF0 80001250 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000

glabel Yaz0_Decompress
/* 00DF4 80001254 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DF8 80001258 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00DFC 8000125C AFA5001C */  sw      $a1, 0x001C($sp)
/* 00E00 80001260 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 00E04 80001264 AC248894 */  sw      $a0, -0x776C($at)          ## 80008894
/* 00E08 80001268 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 00E0C 8000126C AC268898 */  sw      $a2, -0x7768($at)          ## 80008898
/* 00E10 80001270 3C0E8001 */  lui     $t6, 0x8001                ## $t6 = 80010000
/* 00E14 80001274 25CE8890 */  addiu   $t6, $t6, 0x8890           ## $t6 = 80008890
/* 00E18 80001278 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 00E1C 8000127C 0C0003D8 */  jal     Yaz0_FirstDMA
/* 00E20 80001280 AC2E8890 */  sw      $t6, -0x7770($at)          ## 80008890
/* 00E24 80001284 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 00E28 80001288 0C00043B */  jal     Yaz0_DecompressImpl
/* 00E2C 8000128C 8FA5001C */  lw      $a1, 0x001C($sp)
/* 00E30 80001290 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00E34 80001294 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E38 80001298 03E00008 */  jr      $ra
/* 00E3C 8000129C 00000000 */  nop
