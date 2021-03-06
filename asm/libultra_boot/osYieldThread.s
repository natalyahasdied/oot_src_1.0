.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osYieldThread
/* 05450 800058B0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 05454 800058B4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 05458 800058B8 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 0545C 800058BC AFB00018 */  sw      $s0, 0x0018($sp)
/* 05460 800058C0 3C0F8000 */  lui     $t7, 0x8000                ## $t7 = 80000000
/* 05464 800058C4 8DEF6340 */  lw      $t7, 0x6340($t7)           ## 80006340
/* 05468 800058C8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0546C 800058CC 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 05470 800058D0 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 05474 800058D4 24846338 */  addiu   $a0, $a0, 0x6338           ## $a0 = 80006338
/* 05478 800058D8 0C000A93 */  jal     __osEnqueueAndYield
/* 0547C 800058DC A5EE0010 */  sh      $t6, 0x0010($t7)           ## 80000010
/* 05480 800058E0 0C001468 */  jal     __osRestoreInt
/* 05484 800058E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05488 800058E8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0548C 800058EC 8FB00018 */  lw      $s0, 0x0018($sp)
/* 05490 800058F0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 05494 800058F4 03E00008 */  jr      $ra
/* 05498 800058F8 00000000 */  nop
/* 0549C 800058FC 00000000 */  nop
