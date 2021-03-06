.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osSiRawReadIo
/* 037F0 80003C50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 037F4 80003C54 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 037F8 80003C58 AFA40018 */  sw      $a0, 0x0018($sp)
/* 037FC 80003C5C 0C0010C0 */  jal     __osSiDeviceBusy
/* 03800 80003C60 AFA5001C */  sw      $a1, 0x001C($sp)
/* 03804 80003C64 10400003 */  beq     $v0, $zero, .L80003C74
/* 03808 80003C68 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 0380C 80003C6C 10000007 */  beq     $zero, $zero, .L80003C8C
/* 03810 80003C70 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80003C74:
/* 03814 80003C74 3C01A000 */  lui     $at, 0xA000                ## $at = A0000000
/* 03818 80003C78 01C17825 */  or      $t7, $t6, $at              ## $t7 = A0000000
/* 0381C 80003C7C 8DF80000 */  lw      $t8, 0x0000($t7)           ## A0000000
/* 03820 80003C80 8FB9001C */  lw      $t9, 0x001C($sp)
/* 03824 80003C84 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 03828 80003C88 AF380000 */  sw      $t8, 0x0000($t9)           ## 00000000
.L80003C8C:
/* 0382C 80003C8C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 03830 80003C90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03834 80003C94 03E00008 */  jr      $ra
/* 03838 80003C98 00000000 */  nop
/* 0383C 80003C9C 00000000 */  nop
