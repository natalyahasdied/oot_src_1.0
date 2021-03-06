.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osDestroyThread
/* 02910 80002D70 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 02914 80002D74 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 02918 80002D78 AFA40038 */  sw      $a0, 0x0038($sp)
/* 0291C 80002D7C AFB20020 */  sw      $s2, 0x0020($sp)
/* 02920 80002D80 AFB1001C */  sw      $s1, 0x001C($sp)
/* 02924 80002D84 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 02928 80002D88 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0292C 80002D8C 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 02930 80002D90 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02934 80002D94 15C00005 */  bne     $t6, $zero, .L80002DAC
/* 02938 80002D98 00000000 */  nop
/* 0293C 80002D9C 3C0F8000 */  lui     $t7, 0x8000                ## $t7 = 80000000
/* 02940 80002DA0 8DEF6340 */  lw      $t7, 0x6340($t7)           ## 80006340
/* 02944 80002DA4 10000009 */  beq     $zero, $zero, .L80002DCC
/* 02948 80002DA8 AFAF0038 */  sw      $t7, 0x0038($sp)
.L80002DAC:
/* 0294C 80002DAC 8FB80038 */  lw      $t8, 0x0038($sp)
/* 02950 80002DB0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02954 80002DB4 97190010 */  lhu     $t9, 0x0010($t8)           ## 00000010
/* 02958 80002DB8 13210004 */  beq     $t9, $at, .L80002DCC
/* 0295C 80002DBC 00000000 */  nop
/* 02960 80002DC0 8F040008 */  lw      $a0, 0x0008($t8)           ## 00000008
/* 02964 80002DC4 0C000B4C */  jal     __osDequeueThread              ## __osDequeueThread
/* 02968 80002DC8 03002825 */  or      $a1, $t8, $zero            ## $a1 = 00000000
.L80002DCC:
/* 0296C 80002DCC 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 02970 80002DD0 8D08633C */  lw      $t0, 0x633C($t0)           ## 8000633C
/* 02974 80002DD4 8FA90038 */  lw      $t1, 0x0038($sp)
/* 02978 80002DD8 15090005 */  bne     $t0, $t1, .L80002DF0
/* 0297C 80002DDC 00000000 */  nop
/* 02980 80002DE0 8D0A000C */  lw      $t2, 0x000C($t0)           ## 8000000C
/* 02984 80002DE4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02988 80002DE8 10000013 */  beq     $zero, $zero, .L80002E38
/* 0298C 80002DEC AC2A633C */  sw      $t2, 0x633C($at)           ## 8000633C
.L80002DF0:
/* 02990 80002DF0 3C118000 */  lui     $s1, 0x8000                ## $s1 = 80000000
/* 02994 80002DF4 8E31633C */  lw      $s1, 0x633C($s1)           ## 8000633C
/* 02998 80002DF8 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0299C 80002DFC 8E2B0004 */  lw      $t3, 0x0004($s1)           ## 80000004
/* 029A0 80002E00 1161000D */  beq     $t3, $at, .L80002E38
/* 029A4 80002E04 00000000 */  nop
.L80002E08:
/* 029A8 80002E08 8E32000C */  lw      $s2, 0x000C($s1)           ## 8000000C
/* 029AC 80002E0C 8FAC0038 */  lw      $t4, 0x0038($sp)
/* 029B0 80002E10 164C0004 */  bne     $s2, $t4, .L80002E24
/* 029B4 80002E14 00000000 */  nop
/* 029B8 80002E18 8D8D000C */  lw      $t5, 0x000C($t4)           ## 0000000C
/* 029BC 80002E1C 10000006 */  beq     $zero, $zero, .L80002E38
/* 029C0 80002E20 AE2D000C */  sw      $t5, 0x000C($s1)           ## 8000000C
.L80002E24:
/* 029C4 80002E24 02408825 */  or      $s1, $s2, $zero            ## $s1 = 00000000
/* 029C8 80002E28 8E2E0004 */  lw      $t6, 0x0004($s1)           ## 00000004
/* 029CC 80002E2C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 029D0 80002E30 15C1FFF5 */  bne     $t6, $at, .L80002E08
/* 029D4 80002E34 00000000 */  nop
.L80002E38:
/* 029D8 80002E38 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 029DC 80002E3C 8F396340 */  lw      $t9, 0x6340($t9)           ## 80006340
/* 029E0 80002E40 8FAF0038 */  lw      $t7, 0x0038($sp)
/* 029E4 80002E44 15F90003 */  bne     $t7, $t9, .L80002E54
/* 029E8 80002E48 00000000 */  nop
/* 029EC 80002E4C 0C000AE9 */  jal     __osDispatchThread
/* 029F0 80002E50 00000000 */  nop
.L80002E54:
/* 029F4 80002E54 0C001468 */  jal     __osRestoreInt
/* 029F8 80002E58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029FC 80002E5C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 02A00 80002E60 8FB00018 */  lw      $s0, 0x0018($sp)
/* 02A04 80002E64 8FB1001C */  lw      $s1, 0x001C($sp)
/* 02A08 80002E68 8FB20020 */  lw      $s2, 0x0020($sp)
/* 02A0C 80002E6C 03E00008 */  jr      $ra
/* 02A10 80002E70 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02A14 80002E74 00000000 */  nop
/* 02A18 80002E78 00000000 */  nop
/* 02A1C 80002E7C 00000000 */  nop
