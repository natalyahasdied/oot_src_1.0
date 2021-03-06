.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osGetHWIntrRoutine
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
/* 05C4C 800060AC 00000000 */  nop
