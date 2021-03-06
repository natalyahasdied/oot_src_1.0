.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osCreateMesgQueue
/* 03DC0 80004220 3C0E8000 */  lui     $t6, 0x8000                ## $t6 = 80000000
/* 03DC4 80004224 3C0F8000 */  lui     $t7, 0x8000                ## $t7 = 80000000
/* 03DC8 80004228 25CE6330 */  addiu   $t6, $t6, 0x6330           ## $t6 = 80006330
/* 03DCC 8000422C 25EF6330 */  addiu   $t7, $t7, 0x6330           ## $t7 = 80006330
/* 03DD0 80004230 AC8E0000 */  sw      $t6, 0x0000($a0)           ## 00000000
/* 03DD4 80004234 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 03DD8 80004238 AC800008 */  sw      $zero, 0x0008($a0)         ## 00000008
/* 03DDC 8000423C AC80000C */  sw      $zero, 0x000C($a0)         ## 0000000C
/* 03DE0 80004240 AC860010 */  sw      $a2, 0x0010($a0)           ## 00000010
/* 03DE4 80004244 03E00008 */  jr      $ra
/* 03DE8 80004248 AC850014 */  sw      $a1, 0x0014($a0)           ## 00000014
/* 03DEC 8000424C 00000000 */  nop
