.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osSiRawWriteIo
/* 056F0 80005B50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 056F4 80005B54 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 056F8 80005B58 AFA40018 */  sw      $a0, 0x0018($sp)
/* 056FC 80005B5C 0C0010C0 */  jal     __osSiDeviceBusy
/* 05700 80005B60 AFA5001C */  sw      $a1, 0x001C($sp)
/* 05704 80005B64 10400003 */  beq     $v0, $zero, .L80005B74
/* 05708 80005B68 8FAE001C */  lw      $t6, 0x001C($sp)
/* 0570C 80005B6C 10000006 */  beq     $zero, $zero, .L80005B88
/* 05710 80005B70 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80005B74:
/* 05714 80005B74 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 05718 80005B78 3C01A000 */  lui     $at, 0xA000                ## $at = A0000000
/* 0571C 80005B7C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 05720 80005B80 01E1C025 */  or      $t8, $t7, $at              ## $t8 = A0000000
/* 05724 80005B84 AF0E0000 */  sw      $t6, 0x0000($t8)           ## A0000000
.L80005B88:
/* 05728 80005B88 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0572C 80005B8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05730 80005B90 03E00008 */  jr      $ra
/* 05734 80005B94 00000000 */  nop
/* 05738 80005B98 00000000 */  nop
/* 0573C 80005B9C 00000000 */  nop
