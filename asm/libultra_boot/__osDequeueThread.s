.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osDequeueThread
/* 028D0 80002D30 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 028D4 80002D34 8CC70000 */  lw      $a3, 0x0000($a2)           ## 00000000
/* 028D8 80002D38 27BDFFF8 */  addiu   $sp, $sp, 0xFFF8           ## $sp = FFFFFFF8
/* 028DC 80002D3C 10E0000A */  beq     $a3, $zero, .L80002D68
/* 028E0 80002D40 00000000 */  nop
.L80002D44:
/* 028E4 80002D44 14E50004 */  bne     $a3, $a1, .L80002D58
/* 028E8 80002D48 00000000 */  nop
/* 028EC 80002D4C 8CAE0000 */  lw      $t6, 0x0000($a1)           ## 00000000
/* 028F0 80002D50 10000005 */  beq     $zero, $zero, .L80002D68
/* 028F4 80002D54 ACCE0000 */  sw      $t6, 0x0000($a2)           ## 00000000
.L80002D58:
/* 028F8 80002D58 00E03025 */  or      $a2, $a3, $zero            ## $a2 = 00000000
/* 028FC 80002D5C 8CC70000 */  lw      $a3, 0x0000($a2)           ## 00000000
/* 02900 80002D60 14E0FFF8 */  bne     $a3, $zero, .L80002D44
/* 02904 80002D64 00000000 */  nop
.L80002D68:
/* 02908 80002D68 03E00008 */  jr      $ra
/* 0290C 80002D6C 27BD0008 */  addiu   $sp, $sp, 0x0008           ## $sp = 00000000
