.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osSetGlobalIntMask
/* 04900 80004D60 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04904 80004D64 AFBF001C */  sw      $ra, 0x001C($sp)
/* 04908 80004D68 AFA40028 */  sw      $a0, 0x0028($sp)
/* 0490C 80004D6C 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 04910 80004D70 AFB00018 */  sw      $s0, 0x0018($sp)
/* 04914 80004D74 3C0E8000 */  lui     $t6, 0x8000                ## $t6 = 80000000
/* 04918 80004D78 8DCE6360 */  lw      $t6, 0x6360($t6)           ## 80006360
/* 0491C 80004D7C 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 04920 80004D80 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 04924 80004D84 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 04928 80004D88 01CFC025 */  or      $t8, $t6, $t7              ## $t8 = 80000000
/* 0492C 80004D8C AC386360 */  sw      $t8, 0x6360($at)           ## 80006360
/* 04930 80004D90 0C001468 */  jal     __osRestoreInt
/* 04934 80004D94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04938 80004D98 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0493C 80004D9C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 04940 80004DA0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04944 80004DA4 03E00008 */  jr      $ra
/* 04948 80004DA8 00000000 */  nop
/* 0494C 80004DAC 00000000 */  nop
