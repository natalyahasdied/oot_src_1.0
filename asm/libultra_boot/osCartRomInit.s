.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osCartRomInit
/* 05220 80005680 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05224 80005684 AFBF001C */  sw      $ra, 0x001C($sp)
/* 05228 80005688 0C00076C */  jal     __osPiGetAccess
/* 0522C 8000568C AFB00018 */  sw      $s0, 0x0018($sp)
/* 05230 80005690 3C0E8000 */  lui     $t6, 0x8000                ## $t6 = 80000000
/* 05234 80005694 8DCE6520 */  lw      $t6, 0x6520($t6)           ## 80006520
/* 05238 80005698 3C108001 */  lui     $s0, 0x8001                ## $s0 = 80010000
/* 0523C 8000569C 26109EA0 */  addiu   $s0, $s0, 0x9EA0           ## $s0 = 80009EA0
/* 05240 800056A0 15C00006 */  bne     $t6, $zero, .L800056BC
/* 05244 800056A4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05248 800056A8 0C00077D */  jal     __osPiRelAccess
/* 0524C 800056AC 00000000 */  nop
/* 05250 800056B0 3C108001 */  lui     $s0, 0x8001                ## $s0 = 80010000
/* 05254 800056B4 10000042 */  beq     $zero, $zero, .L800057C0
/* 05258 800056B8 26029EA0 */  addiu   $v0, $s0, 0x9EA0           ## $v0 = 80009EA0
.L800056BC:
/* 0525C 800056BC AC206520 */  sw      $zero, 0x6520($at)         ## 00006520
/* 05260 800056C0 3C0FB000 */  lui     $t7, 0xB000                ## $t7 = B0000000
/* 05264 800056C4 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 05268 800056C8 A2000004 */  sb      $zero, 0x0004($s0)         ## 80010004
/* 0526C 800056CC AE0F000C */  sw      $t7, 0x000C($s0)           ## 8001000C
/* 05270 800056D0 A2000009 */  sb      $zero, 0x0009($s0)         ## 80010009
/* 05274 800056D4 AE000010 */  sw      $zero, 0x0010($s0)         ## 80010010
/* 05278 800056D8 24849EB4 */  addiu   $a0, $a0, 0x9EB4           ## $a0 = 80009EB4
/* 0527C 800056DC 0C000BA0 */  jal     bzero              ## bzero
/* 05280 800056E0 24050060 */  addiu   $a1, $zero, 0x0060         ## $a1 = 00000060
/* 05284 800056E4 3C03A460 */  lui     $v1, 0xA460                ## $v1 = A4600000
/* 05288 800056E8 34630010 */  ori     $v1, $v1, 0x0010           ## $v1 = A4600010
/* 0528C 800056EC 8C620000 */  lw      $v0, 0x0000($v1)           ## A4600010
/* 05290 800056F0 3C07A460 */  lui     $a3, 0xA460                ## $a3 = A4600000
/* 05294 800056F4 34E70014 */  ori     $a3, $a3, 0x0014           ## $a3 = A4600014
/* 05298 800056F8 30580003 */  andi    $t8, $v0, 0x0003           ## $t8 = 00000000
/* 0529C 800056FC 13000005 */  beq     $t8, $zero, .L80005714
/* 052A0 80005700 3C08A460 */  lui     $t0, 0xA460                ## $t0 = A4600000
/* 052A4 80005704 8C620000 */  lw      $v0, 0x0000($v1)           ## A4600010
.L80005708:
/* 052A8 80005708 30590003 */  andi    $t9, $v0, 0x0003           ## $t9 = 00000000
/* 052AC 8000570C 5720FFFE */  bnel    $t9, $zero, .L80005708
/* 052B0 80005710 8C620000 */  lw      $v0, 0x0000($v1)           ## A4600010
.L80005714:
/* 052B4 80005714 8CE30000 */  lw      $v1, 0x0000($a3)           ## A4600014
/* 052B8 80005718 3508001C */  ori     $t0, $t0, 0x001C           ## $t0 = A460001C
/* 052BC 8000571C 3C09A460 */  lui     $t1, 0xA460                ## $t1 = A4600000
/* 052C0 80005720 8D040000 */  lw      $a0, 0x0000($t0)           ## A460001C
/* 052C4 80005724 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = A4600020
/* 052C8 80005728 3C0AA460 */  lui     $t2, 0xA460                ## $t2 = A4600000
/* 052CC 8000572C 8D250000 */  lw      $a1, 0x0000($t1)           ## A4600020
/* 052D0 80005730 354A0018 */  ori     $t2, $t2, 0x0018           ## $t2 = A4600018
/* 052D4 80005734 8D460000 */  lw      $a2, 0x0000($t2)           ## A4600018
/* 052D8 80005738 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 052DC 8000573C ACEB0000 */  sw      $t3, 0x0000($a3)           ## A4600014
/* 052E0 80005740 AD000000 */  sw      $zero, 0x0000($t0)         ## A460001C
/* 052E4 80005744 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 052E8 80005748 AD2C0000 */  sw      $t4, 0x0000($t1)           ## A4600020
/* 052EC 8000574C AD4B0000 */  sw      $t3, 0x0000($t2)           ## A4600018
/* 052F0 80005750 8E0D000C */  lw      $t5, 0x000C($s0)           ## 8001000C
/* 052F4 80005754 3C01A000 */  lui     $at, 0xA000                ## $at = A0000000
/* 052F8 80005758 01A17025 */  or      $t6, $t5, $at              ## $t6 = A0000000
/* 052FC 8000575C 8DC20000 */  lw      $v0, 0x0000($t6)           ## A0000000
/* 05300 80005760 0002C402 */  srl     $t8, $v0, 16
/* 05304 80005764 00026502 */  srl     $t4, $v0, 20
/* 05308 80005768 3319000F */  andi    $t9, $t8, 0x000F           ## $t9 = 00000000
/* 0530C 8000576C 318D000F */  andi    $t5, $t4, 0x000F           ## $t5 = 00000003
/* 05310 80005770 00027A02 */  srl     $t7, $v0,  8
/* 05314 80005774 A2190006 */  sb      $t9, 0x0006($s0)           ## 80010006
/* 05318 80005778 A20D0007 */  sb      $t5, 0x0007($s0)           ## 80010007
/* 0531C 8000577C A20F0008 */  sb      $t7, 0x0008($s0)           ## 80010008
/* 05320 80005780 A2020005 */  sb      $v0, 0x0005($s0)           ## 80010005
/* 05324 80005784 ACE30000 */  sw      $v1, 0x0000($a3)           ## A4600014
/* 05328 80005788 AD040000 */  sw      $a0, 0x0000($t0)           ## A460001C
/* 0532C 8000578C AD250000 */  sw      $a1, 0x0000($t1)           ## A4600020
/* 05330 80005790 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 05334 80005794 AD460000 */  sw      $a2, 0x0000($t2)           ## A4600018
/* 05338 80005798 3C038000 */  lui     $v1, 0x8000                ## $v1 = 80000000
/* 0533C 8000579C 2463638C */  addiu   $v1, $v1, 0x638C           ## $v1 = 8000638C
/* 05340 800057A0 8C780000 */  lw      $t8, 0x0000($v1)           ## 8000638C
/* 05344 800057A4 AC700000 */  sw      $s0, 0x0000($v1)           ## 8000638C
/* 05348 800057A8 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 0534C 800057AC 0C001468 */  jal     __osRestoreInt
/* 05350 800057B0 AE180000 */  sw      $t8, 0x0000($s0)           ## 80010000
/* 05354 800057B4 0C00077D */  jal     __osPiRelAccess
/* 05358 800057B8 00000000 */  nop
/* 0535C 800057BC 02001025 */  or      $v0, $s0, $zero            ## $v0 = 80010000
.L800057C0:
/* 05360 800057C0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 05364 800057C4 8FB00018 */  lw      $s0, 0x0018($sp)
/* 05368 800057C8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0536C 800057CC 03E00008 */  jr      $ra
/* 05370 800057D0 00000000 */  nop
/* 05374 800057D4 00000000 */  nop
/* 05378 800057D8 00000000 */  nop
/* 0537C 800057DC 00000000 */  nop
