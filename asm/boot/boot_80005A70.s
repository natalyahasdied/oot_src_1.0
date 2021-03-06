.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel func_80005A70
/* 05610 80005A70 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05614 80005A74 AFA40020 */  sw      $a0, 0x0020($sp)
/* 05618 80005A78 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 0561C 80005A7C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 05620 80005A80 AFA60028 */  sw      $a2, 0x0028($sp)
/* 05624 80005A84 AFA7002C */  sw      $a3, 0x002C($sp)
/* 05628 80005A88 ADC00000 */  sw      $zero, 0x0000($t6)         ## 00000000
/* 0562C 80005A8C 8FAF0020 */  lw      $t7, 0x0020($sp)
/* 05630 80005A90 ADE00004 */  sw      $zero, 0x0004($t7)         ## 00000004
/* 05634 80005A94 8FA80020 */  lw      $t0, 0x0020($sp)
/* 05638 80005A98 8FB90034 */  lw      $t9, 0x0034($sp)
/* 0563C 80005A9C 8FB80030 */  lw      $t8, 0x0030($sp)
/* 05640 80005AA0 AD19000C */  sw      $t9, 0x000C($t0)           ## 0000000C
/* 05644 80005AA4 AD180008 */  sw      $t8, 0x0008($t0)           ## 00000008
/* 05648 80005AA8 8FAA0028 */  lw      $t2, 0x0028($sp)
/* 0564C 80005AAC 8FAB002C */  lw      $t3, 0x002C($sp)
/* 05650 80005AB0 15400003 */  bne     $t2, $zero, .L80005AC0
/* 05654 80005AB4 00000000 */  nop
/* 05658 80005AB8 11600005 */  beq     $t3, $zero, .L80005AD0
/* 0565C 80005ABC 00000000 */  nop
.L80005AC0:
/* 05660 80005AC0 8FA90020 */  lw      $t1, 0x0020($sp)
/* 05664 80005AC4 AD2A0010 */  sw      $t2, 0x0010($t1)           ## 00000010
/* 05668 80005AC8 10000006 */  beq     $zero, $zero, .L80005AE4
/* 0566C 80005ACC AD2B0014 */  sw      $t3, 0x0014($t1)           ## 00000014
.L80005AD0:
/* 05670 80005AD0 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 05674 80005AD4 8FAC0030 */  lw      $t4, 0x0030($sp)
/* 05678 80005AD8 8FAD0034 */  lw      $t5, 0x0034($sp)
/* 0567C 80005ADC ADCC0010 */  sw      $t4, 0x0010($t6)           ## 00000010
/* 05680 80005AE0 ADCD0014 */  sw      $t5, 0x0014($t6)           ## 00000014
.L80005AE4:
/* 05684 80005AE4 8FAF0038 */  lw      $t7, 0x0038($sp)
/* 05688 80005AE8 8FB80020 */  lw      $t8, 0x0020($sp)
/* 0568C 80005AEC AF0F0018 */  sw      $t7, 0x0018($t8)           ## 00000018
/* 05690 80005AF0 8FA80020 */  lw      $t0, 0x0020($sp)
/* 05694 80005AF4 8FB9003C */  lw      $t9, 0x003C($sp)
/* 05698 80005AF8 AD19001C */  sw      $t9, 0x001C($t0)           ## 0000001C
/* 0569C 80005AFC 0C0012F2 */  jal     __osInsertTimer
/* 056A0 80005B00 8FA40020 */  lw      $a0, 0x0020($sp)
/* 056A4 80005B04 3C0A8000 */  lui     $t2, 0x8000                ## $t2 = 80000000
/* 056A8 80005B08 8D4A63B0 */  lw      $t2, 0x63B0($t2)           ## 800063B0
/* 056AC 80005B0C AFA20018 */  sw      $v0, 0x0018($sp)
/* 056B0 80005B10 AFA3001C */  sw      $v1, 0x001C($sp)
/* 056B4 80005B14 8FA90020 */  lw      $t1, 0x0020($sp)
/* 056B8 80005B18 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 80000000
/* 056BC 80005B1C 15690004 */  bne     $t3, $t1, .L80005B30
/* 056C0 80005B20 00000000 */  nop
/* 056C4 80005B24 8FA40018 */  lw      $a0, 0x0018($sp)
/* 056C8 80005B28 0C0012D5 */  jal     __osSetTimerIntr
/* 056CC 80005B2C 8FA5001C */  lw      $a1, 0x001C($sp)
.L80005B30:
/* 056D0 80005B30 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 056D4 80005B34 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 056D8 80005B38 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 056DC 80005B3C 03E00008 */  jr      $ra
/* 056E0 80005B40 00000000 */  nop
/* 056E4 80005B44 00000000 */  nop
/* 056E8 80005B48 00000000 */  nop
/* 056EC 80005B4C 00000000 */  nop
