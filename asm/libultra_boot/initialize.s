.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osInitialize_Common
/* 02C10 80003070 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 02C14 80003074 AFBF001C */  sw      $ra, 0x001C($sp)
/* 02C18 80003078 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02C1C 8000307C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02C20 80003080 AFB00018 */  sw      $s0, 0x0018($sp)
/* 02C24 80003084 AFA00030 */  sw      $zero, 0x0030($sp)
/* 02C28 80003088 0C000D0C */  jal     __osGetSR              ## __osGetSR
/* 02C2C 8000308C AC2E8960 */  sw      $t6, -0x76A0($at)          ## 80008960
/* 02C30 80003090 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02C34 80003094 3C012000 */  lui     $at, 0x2000                ## $at = 20000000
/* 02C38 80003098 0C000D08 */  jal     __osSetSR              ## __osSetSR
/* 02C3C 8000309C 02012025 */  or      $a0, $s0, $at              ## $a0 = 20000000
/* 02C40 800030A0 3C040100 */  lui     $a0, 0x0100                ## $a0 = 01000000
/* 02C44 800030A4 0C0015F8 */  jal     __osSetFpcCsr              ## __osSetFpcCsr
/* 02C48 800030A8 34840800 */  ori     $a0, $a0, 0x0800           ## $a0 = 01000800
/* 02C4C 800030AC 3C041FC0 */  lui     $a0, 0x1FC0                ## $a0 = 1FC00000
/* 02C50 800030B0 348407FC */  ori     $a0, $a0, 0x07FC           ## $a0 = 1FC007FC
/* 02C54 800030B4 0C000F14 */  jal     __osSiRawReadIo
/* 02C58 800030B8 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFFC
/* 02C5C 800030BC 10400007 */  beq     $v0, $zero, .L800030DC
/* 02C60 800030C0 00000000 */  nop
.L800030C4:
/* 02C64 800030C4 3C041FC0 */  lui     $a0, 0x1FC0                ## $a0 = 1FC00000
/* 02C68 800030C8 348407FC */  ori     $a0, $a0, 0x07FC           ## $a0 = 1FC007FC
/* 02C6C 800030CC 0C000F14 */  jal     __osSiRawReadIo
/* 02C70 800030D0 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFFC
/* 02C74 800030D4 1440FFFB */  bne     $v0, $zero, .L800030C4
/* 02C78 800030D8 00000000 */  nop
.L800030DC:
/* 02C7C 800030DC 8FA50034 */  lw      $a1, 0x0034($sp)
/* 02C80 800030E0 3C041FC0 */  lui     $a0, 0x1FC0                ## $a0 = 1FC00000
/* 02C84 800030E4 348407FC */  ori     $a0, $a0, 0x07FC           ## $a0 = 1FC007FC
/* 02C88 800030E8 34AF0008 */  ori     $t7, $a1, 0x0008           ## $t7 = 00000008
/* 02C8C 800030EC 0C0016D4 */  jal     __osSiRawWriteIo
/* 02C90 800030F0 01E02825 */  or      $a1, $t7, $zero            ## $a1 = 00000008
/* 02C94 800030F4 10400009 */  beq     $v0, $zero, .L8000311C
/* 02C98 800030F8 00000000 */  nop
.L800030FC:
/* 02C9C 800030FC 8FA50034 */  lw      $a1, 0x0034($sp)
/* 02CA0 80003100 3C041FC0 */  lui     $a0, 0x1FC0                ## $a0 = 1FC00000
/* 02CA4 80003104 348407FC */  ori     $a0, $a0, 0x07FC           ## $a0 = 1FC007FC
/* 02CA8 80003108 34B80008 */  ori     $t8, $a1, 0x0008           ## $t8 = 00000008
/* 02CAC 8000310C 0C0016D4 */  jal     __osSiRawWriteIo
/* 02CB0 80003110 03002825 */  or      $a1, $t8, $zero            ## $a1 = 00000008
/* 02CB4 80003114 1440FFF9 */  bne     $v0, $zero, .L800030FC
/* 02CB8 80003118 00000000 */  nop
.L8000311C:
/* 02CBC 8000311C 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 02CC0 80003120 25082430 */  addiu   $t0, $t0, 0x2430           ## $t0 = 80002430
/* 02CC4 80003124 8D010000 */  lw      $at, 0x0000($t0)           ## 80002430
/* 02CC8 80003128 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 02CCC 8000312C 3C0D8000 */  lui     $t5, 0x8000                ## $t5 = 80000000
/* 02CD0 80003130 AF210000 */  sw      $at, 0x0000($t9)           ## 80000000
/* 02CD4 80003134 8D0B0004 */  lw      $t3, 0x0004($t0)           ## 80002434
/* 02CD8 80003138 25AD2430 */  addiu   $t5, $t5, 0x2430           ## $t5 = 80002430
/* 02CDC 8000313C 3C0C8000 */  lui     $t4, 0x8000                ## $t4 = 80000000
/* 02CE0 80003140 AF2B0004 */  sw      $t3, 0x0004($t9)           ## 80000004
/* 02CE4 80003144 8D010008 */  lw      $at, 0x0008($t0)           ## 80002438
/* 02CE8 80003148 358C0080 */  ori     $t4, $t4, 0x0080           ## $t4 = 80000080
/* 02CEC 8000314C 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 02CF0 80003150 AF210008 */  sw      $at, 0x0008($t9)           ## 80000008
/* 02CF4 80003154 8D0B000C */  lw      $t3, 0x000C($t0)           ## 8000243C
/* 02CF8 80003158 25292430 */  addiu   $t1, $t1, 0x2430           ## $t1 = 80002430
/* 02CFC 8000315C 3C0A8000 */  lui     $t2, 0x8000                ## $t2 = 80000000
/* 02D00 80003160 AF2B000C */  sw      $t3, 0x000C($t9)           ## 8000000C
/* 02D04 80003164 8DA10000 */  lw      $at, 0x0000($t5)           ## 80002430
/* 02D08 80003168 354A0100 */  ori     $t2, $t2, 0x0100           ## $t2 = 80000100
/* 02D0C 8000316C 3C0E8000 */  lui     $t6, 0x8000                ## $t6 = 80000000
/* 02D10 80003170 AD810000 */  sw      $at, 0x0000($t4)           ## 80000080
/* 02D14 80003174 8DB80004 */  lw      $t8, 0x0004($t5)           ## 80002434
/* 02D18 80003178 25CE2430 */  addiu   $t6, $t6, 0x2430           ## $t6 = 80002430
/* 02D1C 8000317C 3C0F8000 */  lui     $t7, 0x8000                ## $t7 = 80000000
/* 02D20 80003180 AD980004 */  sw      $t8, 0x0004($t4)           ## 80000084
/* 02D24 80003184 8DA10008 */  lw      $at, 0x0008($t5)           ## 80002438
/* 02D28 80003188 35EF0180 */  ori     $t7, $t7, 0x0180           ## $t7 = 80000180
/* 02D2C 8000318C 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 02D30 80003190 AD810008 */  sw      $at, 0x0008($t4)           ## 80000088
/* 02D34 80003194 8DB8000C */  lw      $t8, 0x000C($t5)           ## 8000243C
/* 02D38 80003198 24050190 */  addiu   $a1, $zero, 0x0190         ## $a1 = 00000190
/* 02D3C 8000319C AD98000C */  sw      $t8, 0x000C($t4)           ## 8000008C
/* 02D40 800031A0 8D210000 */  lw      $at, 0x0000($t1)           ## 80002430
/* 02D44 800031A4 AD410000 */  sw      $at, 0x0000($t2)           ## 80000100
/* 02D48 800031A8 8D2B0004 */  lw      $t3, 0x0004($t1)           ## 80002434
/* 02D4C 800031AC AD4B0004 */  sw      $t3, 0x0004($t2)           ## 80000104
/* 02D50 800031B0 8D210008 */  lw      $at, 0x0008($t1)           ## 80002438
/* 02D54 800031B4 AD410008 */  sw      $at, 0x0008($t2)           ## 80000108
/* 02D58 800031B8 8D2B000C */  lw      $t3, 0x000C($t1)           ## 8000243C
/* 02D5C 800031BC AD4B000C */  sw      $t3, 0x000C($t2)           ## 8000010C
/* 02D60 800031C0 8DC10000 */  lw      $at, 0x0000($t6)           ## 80002430
/* 02D64 800031C4 ADE10000 */  sw      $at, 0x0000($t7)           ## 80000180
/* 02D68 800031C8 8DD80004 */  lw      $t8, 0x0004($t6)           ## 80002434
/* 02D6C 800031CC ADF80004 */  sw      $t8, 0x0004($t7)           ## 80000184
/* 02D70 800031D0 8DC10008 */  lw      $at, 0x0008($t6)           ## 80002438
/* 02D74 800031D4 ADE10008 */  sw      $at, 0x0008($t7)           ## 80000188
/* 02D78 800031D8 8DD8000C */  lw      $t8, 0x000C($t6)           ## 8000243C
/* 02D7C 800031DC 0C000D10 */  jal     osWritebackDCache              ## osWritebackDCache
/* 02D80 800031E0 ADF8000C */  sw      $t8, 0x000C($t7)           ## 8000018C
/* 02D84 800031E4 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 02D88 800031E8 0C001068 */  jal     osInvalICache              ## osInvalICache
/* 02D8C 800031EC 24050190 */  addiu   $a1, $zero, 0x0190         ## $a1 = 00000190
/* 02D90 800031F0 0C000CC6 */  jal     __createSpeedParam
/* 02D94 800031F4 00000000 */  nop
/* 02D98 800031F8 0C00101C */  jal     osUnmapTLBAll
/* 02D9C 800031FC 00000000 */  nop
/* 02DA0 80003200 0C001614 */  jal     osMapTLBRdb              ## osMapTLBRdb
/* 02DA4 80003204 00000000 */  nop
/* 02DA8 80003208 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 02DAC 8000320C 3C058000 */  lui     $a1, 0x8000                ## $a1 = 80000000
/* 02DB0 80003210 8CA56354 */  lw      $a1, 0x6354($a1)           ## 80006354
/* 02DB4 80003214 8C846350 */  lw      $a0, 0x6350($a0)           ## 80006350
/* 02DB8 80003218 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 02DBC 8000321C 0C0008B6 */  jal     __ll_mul
/* 02DC0 80003220 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 02DC4 80003224 AFA20020 */  sw      $v0, 0x0020($sp)
/* 02DC8 80003228 AFA30024 */  sw      $v1, 0x0024($sp)
/* 02DCC 8000322C 8FA50024 */  lw      $a1, 0x0024($sp)
/* 02DD0 80003230 8FA40020 */  lw      $a0, 0x0020($sp)
/* 02DD4 80003234 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 02DD8 80003238 0C000876 */  jal     __ull_div
/* 02DDC 8000323C 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 02DE0 80003240 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 02DE4 80003244 8D08030C */  lw      $t0, 0x030C($t0)           ## 8000030C
/* 02DE8 80003248 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02DEC 8000324C AC226350 */  sw      $v0, 0x6350($at)           ## 80006350
/* 02DF0 80003250 15000005 */  bne     $t0, $zero, .L80003268
/* 02DF4 80003254 AC236354 */  sw      $v1, 0x6354($at)           ## 80006354
/* 02DF8 80003258 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 02DFC 8000325C 2484031C */  addiu   $a0, $a0, 0x031C           ## $a0 = 8000031C
/* 02E00 80003260 0C000BA0 */  jal     bzero              ## bzero
/* 02E04 80003264 24050040 */  addiu   $a1, $zero, 0x0040         ## $a1 = 00000040
.L80003268:
/* 02E08 80003268 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 02E0C 8000326C 8F390300 */  lw      $t9, 0x0300($t9)           ## 80000300
/* 02E10 80003270 17200006 */  bne     $t9, $zero, .L8000328C
/* 02E14 80003274 00000000 */  nop
/* 02E18 80003278 3C0A02F5 */  lui     $t2, 0x02F5                ## $t2 = 02F50000
/* 02E1C 8000327C 354AB2D2 */  ori     $t2, $t2, 0xB2D2           ## $t2 = 02F5B2D2
/* 02E20 80003280 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02E24 80003284 1000000F */  beq     $zero, $zero, .L800032C4
/* 02E28 80003288 AC2A6358 */  sw      $t2, 0x6358($at)           ## 80006358
.L8000328C:
/* 02E2C 8000328C 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 02E30 80003290 8D290300 */  lw      $t1, 0x0300($t1)           ## 80000300
/* 02E34 80003294 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02E38 80003298 15210006 */  bne     $t1, $at, .L800032B4
/* 02E3C 8000329C 00000000 */  nop
/* 02E40 800032A0 3C0B02E6 */  lui     $t3, 0x02E6                ## $t3 = 02E60000
/* 02E44 800032A4 356B025C */  ori     $t3, $t3, 0x025C           ## $t3 = 02E6025C
/* 02E48 800032A8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02E4C 800032AC 10000005 */  beq     $zero, $zero, .L800032C4
/* 02E50 800032B0 AC2B6358 */  sw      $t3, 0x6358($at)           ## 80006358
.L800032B4:
/* 02E54 800032B4 3C0D02E6 */  lui     $t5, 0x02E6                ## $t5 = 02E60000
/* 02E58 800032B8 35ADD354 */  ori     $t5, $t5, 0xD354           ## $t5 = 02E6D354
/* 02E5C 800032BC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02E60 800032C0 AC2D6358 */  sw      $t5, 0x6358($at)           ## 80006358
.L800032C4:
/* 02E64 800032C4 0C001640 */  jal     __osGetCause              ## __osGet$13
/* 02E68 800032C8 00000000 */  nop
/* 02E6C 800032CC 304C1000 */  andi    $t4, $v0, 0x1000           ## $t4 = 00000000
/* 02E70 800032D0 11800003 */  beq     $t4, $zero, .L800032E0
/* 02E74 800032D4 00000000 */  nop
.L800032D8:
/* 02E78 800032D8 1000FFFF */  beq     $zero, $zero, .L800032D8
/* 02E7C 800032DC 00000000 */  nop
.L800032E0:
/* 02E80 800032E0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 02E84 800032E4 3C0EA450 */  lui     $t6, 0xA450                ## $t6 = A4500000
/* 02E88 800032E8 ADCF0008 */  sw      $t7, 0x0008($t6)           ## A4500008
/* 02E8C 800032EC 24183FFF */  addiu   $t8, $zero, 0x3FFF         ## $t8 = 00003FFF
/* 02E90 800032F0 3C08A450 */  lui     $t0, 0xA450                ## $t0 = A4500000
/* 02E94 800032F4 AD180010 */  sw      $t8, 0x0010($t0)           ## A4500010
/* 02E98 800032F8 2419000F */  addiu   $t9, $zero, 0x000F         ## $t9 = 0000000F
/* 02E9C 800032FC 3C0AA450 */  lui     $t2, 0xA450                ## $t2 = A4500000
/* 02EA0 80003300 AD590014 */  sw      $t9, 0x0014($t2)           ## A4500014
/* 02EA4 80003304 8FBF001C */  lw      $ra, 0x001C($sp)
/* 02EA8 80003308 8FB00018 */  lw      $s0, 0x0018($sp)
/* 02EAC 8000330C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02EB0 80003310 03E00008 */  jr      $ra
/* 02EB4 80003314 00000000 */  nop


glabel __createSpeedParam
/* 02EB8 80003318 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 02EBC 8000331C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02EC0 80003320 A02E8974 */  sb      $t6, -0x768C($at)          ## 80008974
/* 02EC4 80003324 3C0FA460 */  lui     $t7, 0xA460                ## $t7 = A4600000
/* 02EC8 80003328 8DF80014 */  lw      $t8, 0x0014($t7)           ## A4600014
/* 02ECC 8000332C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02ED0 80003330 3C19A460 */  lui     $t9, 0xA460                ## $t9 = A4600000
/* 02ED4 80003334 A0388975 */  sb      $t8, -0x768B($at)          ## 80008975
/* 02ED8 80003338 8F280018 */  lw      $t0, 0x0018($t9)           ## A4600018
/* 02EDC 8000333C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02EE0 80003340 3C09A460 */  lui     $t1, 0xA460                ## $t1 = A4600000
/* 02EE4 80003344 A0288978 */  sb      $t0, -0x7688($at)          ## 80008978
/* 02EE8 80003348 8D2A001C */  lw      $t2, 0x001C($t1)           ## A460001C
/* 02EEC 8000334C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02EF0 80003350 3C0BA460 */  lui     $t3, 0xA460                ## $t3 = A4600000
/* 02EF4 80003354 A02A8976 */  sb      $t2, -0x768A($at)          ## 80008976
/* 02EF8 80003358 8D6C0020 */  lw      $t4, 0x0020($t3)           ## A4600020
/* 02EFC 8000335C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02F00 80003360 240D0007 */  addiu   $t5, $zero, 0x0007         ## $t5 = 00000007
/* 02F04 80003364 A02C8977 */  sb      $t4, -0x7689($at)          ## 80008977
/* 02F08 80003368 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02F0C 8000336C A02D89EC */  sb      $t5, -0x7614($at)          ## 800089EC
/* 02F10 80003370 3C0EA460 */  lui     $t6, 0xA460                ## $t6 = A4600000
/* 02F14 80003374 8DCF0024 */  lw      $t7, 0x0024($t6)           ## A4600024
/* 02F18 80003378 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02F1C 8000337C 3C18A460 */  lui     $t8, 0xA460                ## $t8 = A4600000
/* 02F20 80003380 A02F89ED */  sb      $t7, -0x7613($at)          ## 800089ED
/* 02F24 80003384 8F190028 */  lw      $t9, 0x0028($t8)           ## A4600028
/* 02F28 80003388 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02F2C 8000338C 3C08A460 */  lui     $t0, 0xA460                ## $t0 = A4600000
/* 02F30 80003390 A03989F0 */  sb      $t9, -0x7610($at)          ## 800089F0
/* 02F34 80003394 8D09002C */  lw      $t1, 0x002C($t0)           ## A460002C
/* 02F38 80003398 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02F3C 8000339C 3C0AA460 */  lui     $t2, 0xA460                ## $t2 = A4600000
/* 02F40 800033A0 A02989EE */  sb      $t1, -0x7612($at)          ## 800089EE
/* 02F44 800033A4 8D4B0030 */  lw      $t3, 0x0030($t2)           ## A4600030
/* 02F48 800033A8 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02F4C 800033AC 03E00008 */  jr      $ra
/* 02F50 800033B0 A02B89EF */  sb      $t3, -0x7611($at)          ## 800089EF
/* 02F54 800033B4 00000000 */  nop
/* 02F58 800033B8 00000000 */  nop
/* 02F5C 800033BC 00000000 */  nop
/* 02F60 800033C0 00000000 */  nop
/* 02F64 800033C4 00000000 */  nop
/* 02F68 800033C8 00000000 */  nop
/* 02F6C 800033CC 00000000 */  nop
/* 02F70 800033D0 00000000 */  nop
/* 02F74 800033D4 00000000 */  nop
/* 02F78 800033D8 00000000 */  nop
/* 02F7C 800033DC 00000000 */  nop
/* 02F80 800033E0 00000000 */  nop
/* 02F84 800033E4 00000000 */  nop
/* 02F88 800033E8 00000000 */  nop
/* 02F8C 800033EC 00000000 */  nop
/* 02F90 800033F0 00000000 */  nop
/* 02F94 800033F4 00000000 */  nop
/* 02F98 800033F8 00000000 */  nop
/* 02F9C 800033FC 00000000 */  nop
/* 02FA0 80003400 00000000 */  nop
/* 02FA4 80003404 00000000 */  nop
/* 02FA8 80003408 00000000 */  nop
/* 02FAC 8000340C 00000000 */  nop
/* 02FB0 80003410 00000000 */  nop
/* 02FB4 80003414 00000000 */  nop
/* 02FB8 80003418 00000000 */  nop
/* 02FBC 8000341C 00000000 */  nop