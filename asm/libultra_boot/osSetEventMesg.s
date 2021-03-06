.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osSetEventMesg
/* 03B50 80003FB0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03B54 80003FB4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 03B58 80003FB8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 03B5C 80003FBC AFA5002C */  sw      $a1, 0x002C($sp)
/* 03B60 80003FC0 AFA60030 */  sw      $a2, 0x0030($sp)
/* 03B64 80003FC4 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 03B68 80003FC8 AFB00018 */  sw      $s0, 0x0018($sp)
/* 03B6C 80003FCC 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 03B70 80003FD0 3C188001 */  lui     $t8, 0x8001                ## $t8 = 80010000
/* 03B74 80003FD4 8FA8002C */  lw      $t0, 0x002C($sp)
/* 03B78 80003FD8 27189DE0 */  addiu   $t8, $t8, 0x9DE0           ## $t8 = 80009DE0
/* 03B7C 80003FDC 000E78C0 */  sll     $t7, $t6,  3
/* 03B80 80003FE0 01F8C821 */  addu    $t9, $t7, $t8
/* 03B84 80003FE4 AFB90020 */  sw      $t9, 0x0020($sp)
/* 03B88 80003FE8 AF280000 */  sw      $t0, 0x0000($t9)           ## 00000000
/* 03B8C 80003FEC 8FAA0020 */  lw      $t2, 0x0020($sp)
/* 03B90 80003FF0 8FA90030 */  lw      $t1, 0x0030($sp)
/* 03B94 80003FF4 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 03B98 80003FF8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 03B9C 80003FFC AD490004 */  sw      $t1, 0x0004($t2)           ## 00000004
/* 03BA0 80004000 8FAB0028 */  lw      $t3, 0x0028($sp)
/* 03BA4 80004004 15610010 */  bne     $t3, $at, .L80004048
/* 03BA8 80004008 00000000 */  nop
/* 03BAC 8000400C 3C0C8000 */  lui     $t4, 0x8000                ## $t4 = 80000000
/* 03BB0 80004010 8D8C635C */  lw      $t4, 0x635C($t4)           ## 8000635C
/* 03BB4 80004014 11800009 */  beq     $t4, $zero, .L8000403C
/* 03BB8 80004018 00000000 */  nop
/* 03BBC 8000401C 3C0D8000 */  lui     $t5, 0x8000                ## $t5 = 80000000
/* 03BC0 80004020 8DAD63A0 */  lw      $t5, 0x63A0($t5)           ## 800063A0
/* 03BC4 80004024 15A00005 */  bne     $t5, $zero, .L8000403C
/* 03BC8 80004028 00000000 */  nop
/* 03BCC 8000402C 8FA4002C */  lw      $a0, 0x002C($sp)
/* 03BD0 80004030 8FA50030 */  lw      $a1, 0x0030($sp)
/* 03BD4 80004034 0C000788 */  jal     osSendMesg              ## osSendMesg
/* 03BD8 80004038 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L8000403C:
/* 03BDC 8000403C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 03BE0 80004040 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03BE4 80004044 AC2E63A0 */  sw      $t6, 0x63A0($at)           ## 800063A0
.L80004048:
/* 03BE8 80004048 0C001468 */  jal     __osRestoreInt
/* 03BEC 8000404C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03BF0 80004050 8FBF001C */  lw      $ra, 0x001C($sp)
/* 03BF4 80004054 8FB00018 */  lw      $s0, 0x0018($sp)
/* 03BF8 80004058 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03BFC 8000405C 03E00008 */  jr      $ra
/* 03C00 80004060 00000000 */  nop
/* 03C04 80004064 00000000 */  nop
/* 03C08 80004068 00000000 */  nop
/* 03C0C 8000406C 00000000 */  nop
