.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osCreateViManager
/* 05740 80005BA0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 05744 80005BA4 AFB00020 */  sw      $s0, 0x0020($sp)
/* 05748 80005BA8 3C108000 */  lui     $s0, 0x8000                ## $s0 = 80000000
/* 0574C 80005BAC 26106530 */  addiu   $s0, $s0, 0x6530           ## $s0 = 80006530
/* 05750 80005BB0 8E0E0000 */  lw      $t6, 0x0000($s0)           ## 80006530
/* 05754 80005BB4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 05758 80005BB8 AFA40030 */  sw      $a0, 0x0030($sp)
/* 0575C 80005BBC 55C00054 */  bnel    $t6, $zero, .L80005D10
/* 05760 80005BC0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 05764 80005BC4 0C001254 */  jal     __osTimerServicesInit
/* 05768 80005BC8 00000000 */  nop
/* 0576C 80005BCC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05770 80005BD0 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 05774 80005BD4 3C058001 */  lui     $a1, 0x8001                ## $a1 = 80010000
/* 05778 80005BD8 AC20654C */  sw      $zero, 0x654C($at)         ## 8000654C
/* 0577C 80005BDC 24A5B0E8 */  addiu   $a1, $a1, 0xB0E8           ## $a1 = 8000B0E8
/* 05780 80005BE0 2484B0D0 */  addiu   $a0, $a0, 0xB0D0           ## $a0 = 8000B0D0
/* 05784 80005BE4 0C001088 */  jal     osCreateMesgQueue              ## osCreateMesgQueue
/* 05788 80005BE8 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0578C 80005BEC 3C068001 */  lui     $a2, 0x8001                ## $a2 = 80010000
/* 05790 80005BF0 3C078001 */  lui     $a3, 0x8001                ## $a3 = 80010000
/* 05794 80005BF4 24E7B118 */  addiu   $a3, $a3, 0xB118           ## $a3 = 8000B118
/* 05798 80005BF8 24C6B100 */  addiu   $a2, $a2, 0xB100           ## $a2 = 8000B100
/* 0579C 80005BFC 240F000D */  addiu   $t7, $zero, 0x000D         ## $t7 = 0000000D
/* 057A0 80005C00 2418000E */  addiu   $t8, $zero, 0x000E         ## $t8 = 0000000E
/* 057A4 80005C04 3C058001 */  lui     $a1, 0x8001                ## $a1 = 80010000
/* 057A8 80005C08 A4CF0000 */  sh      $t7, 0x0000($a2)           ## 8000B100
/* 057AC 80005C0C A0C00002 */  sb      $zero, 0x0002($a2)         ## 8000B102
/* 057B0 80005C10 ACC00004 */  sw      $zero, 0x0004($a2)         ## 8000B104
/* 057B4 80005C14 A4F80000 */  sh      $t8, 0x0000($a3)           ## 8000B118
/* 057B8 80005C18 A0E00002 */  sb      $zero, 0x0002($a3)         ## 8000B11A
/* 057BC 80005C1C ACE00004 */  sw      $zero, 0x0004($a3)         ## 8000B11C
/* 057C0 80005C20 24A5B0D0 */  addiu   $a1, $a1, 0xB0D0           ## $a1 = 8000B0D0
/* 057C4 80005C24 0C000FEC */  jal     osSetEventMesg
/* 057C8 80005C28 24040007 */  addiu   $a0, $zero, 0x0007         ## $a0 = 00000007
/* 057CC 80005C2C 3C078001 */  lui     $a3, 0x8001                ## $a3 = 80010000
/* 057D0 80005C30 3C058001 */  lui     $a1, 0x8001                ## $a1 = 80010000
/* 057D4 80005C34 24E6B118 */  addiu   $a2, $a3, 0xB118           ## $a2 = 8000B118
/* 057D8 80005C38 24A5B0D0 */  addiu   $a1, $a1, 0xB0D0           ## $a1 = 8000B0D0
/* 057DC 80005C3C 0C000FEC */  jal     osSetEventMesg
/* 057E0 80005C40 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 057E4 80005C44 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 057E8 80005C48 AFB90028 */  sw      $t9, 0x0028($sp)
/* 057EC 80005C4C 0C001158 */  jal     osGetThreadPri
/* 057F0 80005C50 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 057F4 80005C54 8FA80030 */  lw      $t0, 0x0030($sp)
/* 057F8 80005C58 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 057FC 80005C5C 0048082A */  slt     $at, $v0, $t0
/* 05800 80005C60 10200003 */  beq     $at, $zero, .L80005C70
/* 05804 80005C64 01002825 */  or      $a1, $t0, $zero            ## $a1 = 00000000
/* 05808 80005C68 0C001120 */  jal     osSetThreadPri              ## osSetThreadPri
/* 0580C 80005C6C AFA20028 */  sw      $v0, 0x0028($sp)
.L80005C70:
/* 05810 80005C70 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 05814 80005C74 00000000 */  nop
/* 05818 80005C78 8FAB0030 */  lw      $t3, 0x0030($sp)
/* 0581C 80005C7C 3C038001 */  lui     $v1, 0x8001                ## $v1 = 80010000
/* 05820 80005C80 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 05824 80005C84 3C0A8001 */  lui     $t2, 0x8001                ## $t2 = 80010000
/* 05828 80005C88 24849F20 */  addiu   $a0, $a0, 0x9F20           ## $a0 = 80009F20
/* 0582C 80005C8C 2463B0D0 */  addiu   $v1, $v1, 0xB0D0           ## $v1 = 8000B0D0
/* 05830 80005C90 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 05834 80005C94 254AB0D0 */  addiu   $t2, $t2, 0xB0D0           ## $t2 = 8000B0D0
/* 05838 80005C98 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 0583C 80005C9C AFA2002C */  sw      $v0, 0x002C($sp)
/* 05840 80005CA0 AE090000 */  sw      $t1, 0x0000($s0)           ## 80006530
/* 05844 80005CA4 AE040004 */  sw      $a0, 0x0004($s0)           ## 80006534
/* 05848 80005CA8 AE030008 */  sw      $v1, 0x0008($s0)           ## 80006538
/* 0584C 80005CAC AE03000C */  sw      $v1, 0x000C($s0)           ## 8000653C
/* 05850 80005CB0 AE000010 */  sw      $zero, 0x0010($s0)         ## 80006540
/* 05854 80005CB4 AE000014 */  sw      $zero, 0x0014($s0)         ## 80006544
/* 05858 80005CB8 AE000018 */  sw      $zero, 0x0018($s0)         ## 80006548
/* 0585C 80005CBC 24C65D20 */  addiu   $a2, $a2, 0x5D20           ## $a2 = 80005D20
/* 05860 80005CC0 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 05864 80005CC4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 05868 80005CC8 02003825 */  or      $a3, $s0, $zero            ## $a3 = 80006530
/* 0586C 80005CCC 0C000BC8 */  jal     osCreateThread              ## osCreateThread
/* 05870 80005CD0 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 05874 80005CD4 0C001470 */  jal     func_800051C0
/* 05878 80005CD8 00000000 */  nop
/* 0587C 80005CDC 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 05880 80005CE0 0C0017B0 */  jal     osStartThread              ## osStartThread
/* 05884 80005CE4 24849F20 */  addiu   $a0, $a0, 0x9F20           ## $a0 = 80009F20
/* 05888 80005CE8 0C001468 */  jal     __osRestoreInt
/* 0588C 80005CEC 8FA4002C */  lw      $a0, 0x002C($sp)
/* 05890 80005CF0 8FAC0028 */  lw      $t4, 0x0028($sp)
/* 05894 80005CF4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 05898 80005CF8 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0589C 80005CFC 51810004 */  beql    $t4, $at, .L80005D10
/* 058A0 80005D00 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 058A4 80005D04 0C001120 */  jal     osSetThreadPri              ## osSetThreadPri
/* 058A8 80005D08 01802825 */  or      $a1, $t4, $zero            ## $a1 = 00000000
/* 058AC 80005D0C 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80005D10:
/* 058B0 80005D10 8FB00020 */  lw      $s0, 0x0020($sp)
/* 058B4 80005D14 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 058B8 80005D18 03E00008 */  jr      $ra
/* 058BC 80005D1C 00000000 */  nop


glabel func_80005D20
/* 058C0 80005D20 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 058C4 80005D24 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 058C8 80005D28 AFB70030 */  sw      $s7, 0x0030($sp)
/* 058CC 80005D2C 0080B825 */  or      $s7, $a0, $zero            ## $s7 = 00000000
/* 058D0 80005D30 AFB6002C */  sw      $s6, 0x002C($sp)
/* 058D4 80005D34 AFB50028 */  sw      $s5, 0x0028($sp)
/* 058D8 80005D38 AFB40024 */  sw      $s4, 0x0024($sp)
/* 058DC 80005D3C AFB30020 */  sw      $s3, 0x0020($sp)
/* 058E0 80005D40 AFB2001C */  sw      $s2, 0x001C($sp)
/* 058E4 80005D44 AFB10018 */  sw      $s1, 0x0018($sp)
/* 058E8 80005D48 AFB00014 */  sw      $s0, 0x0014($sp)
/* 058EC 80005D4C 0C0017AC */  jal     func_80005EB0
/* 058F0 80005D50 AFA00044 */  sw      $zero, 0x0044($sp)
/* 058F4 80005D54 94430002 */  lhu     $v1, 0x0002($v0)           ## 00000002
/* 058F8 80005D58 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 058FC 80005D5C 2416000E */  addiu   $s6, $zero, 0x000E         ## $s6 = 0000000E
/* 05900 80005D60 14600004 */  bne     $v1, $zero, .L80005D74
/* 05904 80005D64 A423B130 */  sh      $v1, -0x4ED0($at)          ## 8000B130
/* 05908 80005D68 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 0590C 80005D6C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 05910 80005D70 A423B130 */  sh      $v1, -0x4ED0($at)          ## 8000B130
.L80005D74:
/* 05914 80005D74 3C138001 */  lui     $s3, 0x8001                ## $s3 = 80010000
/* 05918 80005D78 3C128001 */  lui     $s2, 0x8001                ## $s2 = 80010000
/* 0591C 80005D7C 3C118001 */  lui     $s1, 0x8001                ## $s1 = 80010000
/* 05920 80005D80 26319E80 */  addiu   $s1, $s1, 0x9E80           ## $s1 = 80009E80
/* 05924 80005D84 26529E88 */  addiu   $s2, $s2, 0x9E88           ## $s2 = 80009E88
/* 05928 80005D88 26739E8C */  addiu   $s3, $s3, 0x9E8C           ## $s3 = 80009E8C
/* 0592C 80005D8C 2415000D */  addiu   $s5, $zero, 0x000D         ## $s5 = 0000000D
/* 05930 80005D90 27B40044 */  addiu   $s4, $sp, 0x0044           ## $s4 = FFFFFFF4
.L80005D94:
/* 05934 80005D94 8EE4000C */  lw      $a0, 0x000C($s7)           ## 0000000C
.L80005D98:
/* 05938 80005D98 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF4
/* 0593C 80005D9C 0C00080C */  jal     osRecvMesg              ## osRecvMesg
/* 05940 80005DA0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 05944 80005DA4 8FAE0044 */  lw      $t6, 0x0044($sp)
/* 05948 80005DA8 95C30000 */  lhu     $v1, 0x0000($t6)           ## 00000000
/* 0594C 80005DAC 10750005 */  beq     $v1, $s5, .L80005DC4
/* 05950 80005DB0 00000000 */  nop
/* 05954 80005DB4 1076002A */  beq     $v1, $s6, .L80005E60
/* 05958 80005DB8 00000000 */  nop
/* 0595C 80005DBC 1000FFF6 */  beq     $zero, $zero, .L80005D98
/* 05960 80005DC0 8EE4000C */  lw      $a0, 0x000C($s7)           ## 0000000C
.L80005DC4:
/* 05964 80005DC4 0C0014C0 */  jal     __osViSwapContext
/* 05968 80005DC8 00000000 */  nop
/* 0596C 80005DCC 3C038001 */  lui     $v1, 0x8001                ## $v1 = 80010000
/* 05970 80005DD0 9463B130 */  lhu     $v1, -0x4ED0($v1)          ## 8000B130
/* 05974 80005DD4 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 05978 80005DD8 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = 8000FFFF
/* 0597C 80005DDC 306FFFFF */  andi    $t7, $v1, 0xFFFF           ## $t7 = 0000FFFF
/* 05980 80005DE0 15E0000E */  bne     $t7, $zero, .L80005E1C
/* 05984 80005DE4 A42FB130 */  sh      $t7, -0x4ED0($at)          ## 8000B130
/* 05988 80005DE8 0C0017AC */  jal     func_80005EB0
/* 0598C 80005DEC 00000000 */  nop
/* 05990 80005DF0 8C580010 */  lw      $t8, 0x0010($v0)           ## 00000010
/* 05994 80005DF4 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 05998 80005DF8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0599C 80005DFC 53000005 */  beql    $t8, $zero, .L80005E14
/* 059A0 80005E00 96030002 */  lhu     $v1, 0x0002($s0)           ## 00000002
/* 059A4 80005E04 8C440010 */  lw      $a0, 0x0010($v0)           ## 00000010
/* 059A8 80005E08 0C000788 */  jal     osSendMesg              ## osSendMesg
/* 059AC 80005E0C 8C450014 */  lw      $a1, 0x0014($v0)           ## 00000014
/* 059B0 80005E10 96030002 */  lhu     $v1, 0x0002($s0)           ## 00000002
.L80005E14:
/* 059B4 80005E14 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 059B8 80005E18 A423B130 */  sh      $v1, -0x4ED0($at)          ## 8000B130
.L80005E1C:
/* 059BC 80005E1C 8E790000 */  lw      $t9, 0x0000($s3)           ## 80009E8C
/* 059C0 80005E20 8E500000 */  lw      $s0, 0x0000($s2)           ## 80009E88
/* 059C4 80005E24 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 059C8 80005E28 0C001354 */  jal     osGetCount              ## osGetCount
/* 059CC 80005E2C AE680000 */  sw      $t0, 0x0000($s3)           ## 80009E8C
/* 059D0 80005E30 8E2D0004 */  lw      $t5, 0x0004($s1)           ## 80009E84
/* 059D4 80005E34 00508023 */  subu    $s0, $v0, $s0
/* 059D8 80005E38 8E2C0000 */  lw      $t4, 0x0000($s1)           ## 80009E80
/* 059DC 80005E3C 020D7821 */  addu    $t7, $s0, $t5
/* 059E0 80005E40 240A0000 */  addiu   $t2, $zero, 0x0000         ## $t2 = 00000000
/* 059E4 80005E44 01ED082B */  sltu    $at, $t7, $t5
/* 059E8 80005E48 002A7021 */  addu    $t6, $at, $t2
/* 059EC 80005E4C 01CC7021 */  addu    $t6, $t6, $t4
/* 059F0 80005E50 AE420000 */  sw      $v0, 0x0000($s2)           ## 80009E88
/* 059F4 80005E54 AE2E0000 */  sw      $t6, 0x0000($s1)           ## 80009E80
/* 059F8 80005E58 1000FFCE */  beq     $zero, $zero, .L80005D94
/* 059FC 80005E5C AE2F0004 */  sw      $t7, 0x0004($s1)           ## 80009E84
.L80005E60:
/* 05A00 80005E60 0C001277 */  jal     __osTimerInterrupt
/* 05A04 80005E64 00000000 */  nop
/* 05A08 80005E68 1000FFCB */  beq     $zero, $zero, .L80005D98
/* 05A0C 80005E6C 8EE4000C */  lw      $a0, 0x000C($s7)           ## 0000000C
/* 05A10 80005E70 00000000 */  nop
/* 05A14 80005E74 00000000 */  nop
/* 05A18 80005E78 00000000 */  nop
/* 05A1C 80005E7C 00000000 */  nop
/* 05A20 80005E80 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 05A24 80005E84 8FB00014 */  lw      $s0, 0x0014($sp)
/* 05A28 80005E88 8FB10018 */  lw      $s1, 0x0018($sp)
/* 05A2C 80005E8C 8FB2001C */  lw      $s2, 0x001C($sp)
/* 05A30 80005E90 8FB30020 */  lw      $s3, 0x0020($sp)
/* 05A34 80005E94 8FB40024 */  lw      $s4, 0x0024($sp)
/* 05A38 80005E98 8FB50028 */  lw      $s5, 0x0028($sp)
/* 05A3C 80005E9C 8FB6002C */  lw      $s6, 0x002C($sp)
/* 05A40 80005EA0 8FB70030 */  lw      $s7, 0x0030($sp)
/* 05A44 80005EA4 03E00008 */  jr      $ra
/* 05A48 80005EA8 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 05A4C 80005EAC 00000000 */  nop


glabel func_80005EB0
/* 05A50 80005EB0 3C028000 */  lui     $v0, 0x8000                ## $v0 = 80000000
/* 05A54 80005EB4 03E00008 */  jr      $ra
/* 05A58 80005EB8 8C4264C0 */  lw      $v0, 0x64C0($v0)           ## 800064C0
/* 05A5C 80005EBC 00000000 */  nop


glabel osStartThread
/* 05A60 80005EC0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 05A64 80005EC4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 05A68 80005EC8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 05A6C 80005ECC AFB10018 */  sw      $s1, 0x0018($sp)
/* 05A70 80005ED0 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 05A74 80005ED4 AFB00014 */  sw      $s0, 0x0014($sp)
/* 05A78 80005ED8 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 05A7C 80005EDC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 05A80 80005EE0 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 05A84 80005EE4 95D10010 */  lhu     $s1, 0x0010($t6)           ## 00000010
/* 05A88 80005EE8 1221000C */  beq     $s1, $at, .L80005F1C
/* 05A8C 80005EEC 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 05A90 80005EF0 1621002A */  bne     $s1, $at, .L80005F9C
/* 05A94 80005EF4 00000000 */  nop
/* 05A98 80005EF8 8FB80028 */  lw      $t8, 0x0028($sp)
/* 05A9C 80005EFC 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 05AA0 80005F00 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 05AA4 80005F04 A70F0010 */  sh      $t7, 0x0010($t8)           ## 00000010
/* 05AA8 80005F08 8FA50028 */  lw      $a1, 0x0028($sp)
/* 05AAC 80005F0C 0C000AD3 */  jal     __osEnqueueThread
/* 05AB0 80005F10 24846338 */  addiu   $a0, $a0, 0x6338           ## $a0 = 80006338
/* 05AB4 80005F14 10000021 */  beq     $zero, $zero, .L80005F9C
/* 05AB8 80005F18 00000000 */  nop
.L80005F1C:
/* 05ABC 80005F1C 8FB90028 */  lw      $t9, 0x0028($sp)
/* 05AC0 80005F20 8F280008 */  lw      $t0, 0x0008($t9)           ## 00000008
/* 05AC4 80005F24 11000005 */  beq     $t0, $zero, .L80005F3C
/* 05AC8 80005F28 00000000 */  nop
/* 05ACC 80005F2C 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 05AD0 80005F30 25296338 */  addiu   $t1, $t1, 0x6338           ## $t1 = 80006338
/* 05AD4 80005F34 1509000A */  bne     $t0, $t1, .L80005F60
/* 05AD8 80005F38 00000000 */  nop
.L80005F3C:
/* 05ADC 80005F3C 8FAB0028 */  lw      $t3, 0x0028($sp)
/* 05AE0 80005F40 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 05AE4 80005F44 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 05AE8 80005F48 A56A0010 */  sh      $t2, 0x0010($t3)           ## 00000010
/* 05AEC 80005F4C 8FA50028 */  lw      $a1, 0x0028($sp)
/* 05AF0 80005F50 0C000AD3 */  jal     __osEnqueueThread
/* 05AF4 80005F54 24846338 */  addiu   $a0, $a0, 0x6338           ## $a0 = 80006338
/* 05AF8 80005F58 10000010 */  beq     $zero, $zero, .L80005F9C
/* 05AFC 80005F5C 00000000 */  nop
.L80005F60:
/* 05B00 80005F60 8FAD0028 */  lw      $t5, 0x0028($sp)
/* 05B04 80005F64 240C0008 */  addiu   $t4, $zero, 0x0008         ## $t4 = 00000008
/* 05B08 80005F68 A5AC0010 */  sh      $t4, 0x0010($t5)           ## 00000010
/* 05B0C 80005F6C 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 05B10 80005F70 8DC40008 */  lw      $a0, 0x0008($t6)           ## 00000008
/* 05B14 80005F74 0C000AD3 */  jal     __osEnqueueThread
/* 05B18 80005F78 01C02825 */  or      $a1, $t6, $zero            ## $a1 = 00000000
/* 05B1C 80005F7C 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 05B20 80005F80 0C000AE5 */  jal     __osPopThread
/* 05B24 80005F84 8DE40008 */  lw      $a0, 0x0008($t7)           ## 00000008
/* 05B28 80005F88 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 05B2C 80005F8C 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 05B30 80005F90 24846338 */  addiu   $a0, $a0, 0x6338           ## $a0 = 80006338
/* 05B34 80005F94 0C000AD3 */  jal     __osEnqueueThread
/* 05B38 80005F98 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L80005F9C:
/* 05B3C 80005F9C 3C188000 */  lui     $t8, 0x8000                ## $t8 = 80000000
/* 05B40 80005FA0 8F186340 */  lw      $t8, 0x6340($t8)           ## 80006340
/* 05B44 80005FA4 17000005 */  bne     $t8, $zero, .L80005FBC
/* 05B48 80005FA8 00000000 */  nop
/* 05B4C 80005FAC 0C000AE9 */  jal     __osDispatchThread
/* 05B50 80005FB0 00000000 */  nop
/* 05B54 80005FB4 1000000F */  beq     $zero, $zero, .L80005FF4
/* 05B58 80005FB8 00000000 */  nop
.L80005FBC:
/* 05B5C 80005FBC 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 05B60 80005FC0 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 05B64 80005FC4 8D296338 */  lw      $t1, 0x6338($t1)           ## 80006338
/* 05B68 80005FC8 8F396340 */  lw      $t9, 0x6340($t9)           ## 80006340
/* 05B6C 80005FCC 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80000004
/* 05B70 80005FD0 8F280004 */  lw      $t0, 0x0004($t9)           ## 80000004
/* 05B74 80005FD4 010A082A */  slt     $at, $t0, $t2
/* 05B78 80005FD8 10200006 */  beq     $at, $zero, .L80005FF4
/* 05B7C 80005FDC 00000000 */  nop
/* 05B80 80005FE0 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 05B84 80005FE4 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 05B88 80005FE8 A72B0010 */  sh      $t3, 0x0010($t9)           ## 80000010
/* 05B8C 80005FEC 0C000A93 */  jal     __osEnqueueAndYield
/* 05B90 80005FF0 24846338 */  addiu   $a0, $a0, 0x6338           ## $a0 = 80006338
.L80005FF4:
/* 05B94 80005FF4 0C001468 */  jal     __osRestoreInt
/* 05B98 80005FF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B9C 80005FFC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 05BA0 80006000 8FB00014 */  lw      $s0, 0x0014($sp)
/* 05BA4 80006004 8FB10018 */  lw      $s1, 0x0018($sp)
/* 05BA8 80006008 03E00008 */  jr      $ra
/* 05BAC 8000600C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


glabel func_80006010
/* 05BB0 80006010 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 05BB4 80006014 AFBF001C */  sw      $ra, 0x001C($sp)
/* 05BB8 80006018 AFA40028 */  sw      $a0, 0x0028($sp)
/* 05BBC 8000601C AFA5002C */  sw      $a1, 0x002C($sp)
/* 05BC0 80006020 AFA60030 */  sw      $a2, 0x0030($sp)
/* 05BC4 80006024 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 05BC8 80006028 AFB00018 */  sw      $s0, 0x0018($sp)
/* 05BCC 8000602C 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 05BD0 80006030 8FAE002C */  lw      $t6, 0x002C($sp)
/* 05BD4 80006034 8FA80028 */  lw      $t0, 0x0028($sp)
/* 05BD8 80006038 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05BDC 8000603C 000FC0C0 */  sll     $t8, $t7,  3
/* 05BE0 80006040 00380821 */  addu    $at, $at, $t8
/* 05BE4 80006044 AC2E6300 */  sw      $t6, 0x6300($at)           ## 80006300
/* 05BE8 80006048 8FB90030 */  lw      $t9, 0x0030($sp)
/* 05BEC 8000604C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05BF0 80006050 000848C0 */  sll     $t1, $t0,  3
/* 05BF4 80006054 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 05BF8 80006058 00290821 */  addu    $at, $at, $t1
/* 05BFC 8000605C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C00 80006060 0C001468 */  jal     __osRestoreInt
/* 05C04 80006064 AC396304 */  sw      $t9, 0x6304($at)           ## 80006304
/* 05C08 80006068 8FBF001C */  lw      $ra, 0x001C($sp)
/* 05C0C 8000606C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 05C10 80006070 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 05C14 80006074 03E00008 */  jr      $ra
/* 05C18 80006078 00000000 */  nop
/* 05C1C 8000607C 00000000 */  nop


glabel func_80006080
/* 05C20 80006080 000470C0 */  sll     $t6, $a0,  3
/* 05C24 80006084 3C0F8000 */  lui     $t7, 0x8000                ## $t7 = 80000000
/* 05C28 80006088 01EE7821 */  addu    $t7, $t7, $t6
/* 05C2C 8000608C 8DEF6300 */  lw      $t7, 0x6300($t7)           ## 80006300
/* 05C30 80006090 0004C0C0 */  sll     $t8, $a0,  3
/* 05C34 80006094 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 05C38 80006098 0338C821 */  addu    $t9, $t9, $t8
/* 05C3C 8000609C ACAF0000 */  sw      $t7, 0x0000($a1)           ## 00000000
/* 05C40 800060A0 8F396304 */  lw      $t9, 0x6304($t9)           ## 80006304
/* 05C44 800060A4 03E00008 */  jr      $ra
/* 05C48 800060A8 ACD90000 */  sw      $t9, 0x0000($a2)           ## 00000000

.incbin "baserom/boot", 0x5C4C, 0x784
