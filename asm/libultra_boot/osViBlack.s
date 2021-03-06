.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osViBlack
/* 03780 80003BE0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03784 80003BE4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 03788 80003BE8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 0378C 80003BEC 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 03790 80003BF0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 03794 80003BF4 93AE002B */  lbu     $t6, 0x002B($sp)
/* 03798 80003BF8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 0379C 80003BFC 11C00007 */  beq     $t6, $zero, .L80003C1C
/* 037A0 80003C00 00000000 */  nop
/* 037A4 80003C04 3C0F8000 */  lui     $t7, 0x8000                ## $t7 = 80000000
/* 037A8 80003C08 8DEF64C4 */  lw      $t7, 0x64C4($t7)           ## 800064C4
/* 037AC 80003C0C 95F80000 */  lhu     $t8, 0x0000($t7)           ## 80000000
/* 037B0 80003C10 37190020 */  ori     $t9, $t8, 0x0020           ## $t9 = 00000020
/* 037B4 80003C14 10000007 */  beq     $zero, $zero, .L80003C34
/* 037B8 80003C18 A5F90000 */  sh      $t9, 0x0000($t7)           ## 80000000
.L80003C1C:
/* 037BC 80003C1C 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 037C0 80003C20 8D0864C4 */  lw      $t0, 0x64C4($t0)           ## 800064C4
/* 037C4 80003C24 2401FFDF */  addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
/* 037C8 80003C28 95090000 */  lhu     $t1, 0x0000($t0)           ## 80000000
/* 037CC 80003C2C 01215024 */  and     $t2, $t1, $at
/* 037D0 80003C30 A50A0000 */  sh      $t2, 0x0000($t0)           ## 80000000
.L80003C34:
/* 037D4 80003C34 0C001468 */  jal     __osRestoreInt
/* 037D8 80003C38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 037DC 80003C3C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 037E0 80003C40 8FB00018 */  lw      $s0, 0x0018($sp)
/* 037E4 80003C44 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 037E8 80003C48 03E00008 */  jr      $ra
/* 037EC 80003C4C 00000000 */  nop
