.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osGetThreadId
/* 03840 80003CA0 14800003 */  bne     $a0, $zero, .L80003CB0
/* 03844 80003CA4 00000000 */  nop
/* 03848 80003CA8 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 0384C 80003CAC 8C846340 */  lw      $a0, 0x6340($a0)           ## 80006340
.L80003CB0:
/* 03850 80003CB0 03E00008 */  jr      $ra
/* 03854 80003CB4 8C820014 */  lw      $v0, 0x0014($a0)           ## 80000014
/* 03858 80003CB8 00000000 */  nop
/* 0385C 80003CBC 00000000 */  nop
