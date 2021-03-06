.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osViGetNextFramebuffer
/* 03060 800034C0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03064 800034C4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 03068 800034C8 0C00144C */  jal     __osDisableInt
/* 0306C 800034CC AFB00018 */  sw      $s0, 0x0018($sp)
/* 03070 800034D0 3C0E8000 */  lui     $t6, 0x8000                ## $t6 = 80000000
/* 03074 800034D4 8DCE64C4 */  lw      $t6, 0x64C4($t6)           ## 800064C4
/* 03078 800034D8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 0307C 800034DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03080 800034E0 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80000004
/* 03084 800034E4 0C001468 */  jal     __osRestoreInt
/* 03088 800034E8 AFAF0020 */  sw      $t7, 0x0020($sp)
/* 0308C 800034EC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 03090 800034F0 8FA20020 */  lw      $v0, 0x0020($sp)
/* 03094 800034F4 8FB00018 */  lw      $s0, 0x0018($sp)
/* 03098 800034F8 03E00008 */  jr      $ra
/* 0309C 800034FC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
