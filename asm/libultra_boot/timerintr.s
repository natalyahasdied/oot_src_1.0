.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osTimerServicesInit
/* 044F0 80004950 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 044F4 80004954 240E0000 */  addiu   $t6, $zero, 0x0000         ## $t6 = 00000000
/* 044F8 80004958 240F0000 */  addiu   $t7, $zero, 0x0000         ## $t7 = 00000000
/* 044FC 8000495C AC2F9E84 */  sw      $t7, -0x617C($at)          ## 80009E84
/* 04500 80004960 AC2E9E80 */  sw      $t6, -0x6180($at)          ## 80009E80
/* 04504 80004964 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 04508 80004968 3C188000 */  lui     $t8, 0x8000                ## $t8 = 80000000
/* 0450C 8000496C 8F1863B0 */  lw      $t8, 0x63B0($t8)           ## 800063B0
/* 04510 80004970 AC209E88 */  sw      $zero, -0x6178($at)        ## 80009E88
/* 04514 80004974 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 04518 80004978 AC209E8C */  sw      $zero, -0x6174($at)        ## 80009E8C
/* 0451C 8000497C 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 04520 80004980 AF180004 */  sw      $t8, 0x0004($t8)           ## 80000004
/* 04524 80004984 8F3963B0 */  lw      $t9, 0x63B0($t9)           ## 800063B0
/* 04528 80004988 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 0452C 8000498C 240A0000 */  addiu   $t2, $zero, 0x0000         ## $t2 = 00000000
/* 04530 80004990 8F280004 */  lw      $t0, 0x0004($t9)           ## 80000004
/* 04534 80004994 240B0000 */  addiu   $t3, $zero, 0x0000         ## $t3 = 00000000
/* 04538 80004998 3C0C8000 */  lui     $t4, 0x8000                ## $t4 = 80000000
/* 0453C 8000499C AF280000 */  sw      $t0, 0x0000($t9)           ## 80000000
/* 04540 800049A0 8D2963B0 */  lw      $t1, 0x63B0($t1)           ## 800063B0
/* 04544 800049A4 3C0D8000 */  lui     $t5, 0x8000                ## $t5 = 80000000
/* 04548 800049A8 3C188000 */  lui     $t8, 0x8000                ## $t8 = 80000000
/* 0454C 800049AC AD2A0010 */  sw      $t2, 0x0010($t1)           ## 80000010
/* 04550 800049B0 AD2B0014 */  sw      $t3, 0x0014($t1)           ## 80000014
/* 04554 800049B4 8D8C63B0 */  lw      $t4, 0x63B0($t4)           ## 800063B0
/* 04558 800049B8 8D8E0010 */  lw      $t6, 0x0010($t4)           ## 80000010
/* 0455C 800049BC 8D8F0014 */  lw      $t7, 0x0014($t4)           ## 80000014
/* 04560 800049C0 AD8E0008 */  sw      $t6, 0x0008($t4)           ## 80000008
/* 04564 800049C4 AD8F000C */  sw      $t7, 0x000C($t4)           ## 8000000C
/* 04568 800049C8 8DAD63B0 */  lw      $t5, 0x63B0($t5)           ## 800063B0
/* 0456C 800049CC ADA00018 */  sw      $zero, 0x0018($t5)         ## 80000018
/* 04570 800049D0 8F1863B0 */  lw      $t8, 0x63B0($t8)           ## 800063B0
/* 04574 800049D4 03E00008 */  jr      $ra
/* 04578 800049D8 AF00001C */  sw      $zero, 0x001C($t8)         ## 8000001C

glabel __osTimerInterrupt
/* 0457C 800049DC 3C0E8000 */  lui     $t6, 0x8000                ## $t6 = 80000000
/* 04580 800049E0 8DCE63B0 */  lw      $t6, 0x63B0($t6)           ## 800063B0
/* 04584 800049E4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04588 800049E8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0458C 800049EC 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 80000000
/* 04590 800049F0 11EE0054 */  beq     $t7, $t6, .L80004B44
/* 04594 800049F4 00000000 */  nop
.L800049F8:
/* 04598 800049F8 3C188000 */  lui     $t8, 0x8000                ## $t8 = 80000000
/* 0459C 800049FC 8F1863B0 */  lw      $t8, 0x63B0($t8)           ## 800063B0
/* 045A0 80004A00 8F190000 */  lw      $t9, 0x0000($t8)           ## 80000000
/* 045A4 80004A04 17380006 */  bne     $t9, $t8, .L80004A20
/* 045A8 80004A08 AFB90024 */  sw      $t9, 0x0024($sp)
/* 045AC 80004A0C 0C00136C */  jal     __osSetCompare              ## __osSetCompare
/* 045B0 80004A10 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 045B4 80004A14 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 045B8 80004A18 1000004A */  beq     $zero, $zero, .L80004B44
/* 045BC 80004A1C AC209E90 */  sw      $zero, -0x6170($at)        ## 80009E90
.L80004A20:
/* 045C0 80004A20 0C001354 */  jal     osGetCount              ## osGetCount
/* 045C4 80004A24 00000000 */  nop
/* 045C8 80004A28 AFA20020 */  sw      $v0, 0x0020($sp)
/* 045CC 80004A2C 3C098001 */  lui     $t1, 0x8001                ## $t1 = 80010000
/* 045D0 80004A30 8D299E90 */  lw      $t1, -0x6170($t1)          ## 80009E90
/* 045D4 80004A34 8FA80020 */  lw      $t0, 0x0020($sp)
/* 045D8 80004A38 8FAF0024 */  lw      $t7, 0x0024($sp)
/* 045DC 80004A3C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 045E0 80004A40 01095023 */  subu    $t2, $t0, $t1
/* 045E4 80004A44 AFAA001C */  sw      $t2, 0x001C($sp)
/* 045E8 80004A48 AC289E90 */  sw      $t0, -0x6170($at)          ## 80009E90
/* 045EC 80004A4C 8DEE0010 */  lw      $t6, 0x0010($t7)           ## 00000010
/* 045F0 80004A50 8FAB001C */  lw      $t3, 0x001C($sp)
/* 045F4 80004A54 240C0000 */  addiu   $t4, $zero, 0x0000         ## $t4 = 00000000
/* 045F8 80004A58 01E0C825 */  or      $t9, $t7, $zero            ## $t9 = 00000000
/* 045FC 80004A5C 01CC082B */  sltu    $at, $t6, $t4
/* 04600 80004A60 8DEF0014 */  lw      $t7, 0x0014($t7)           ## 00000014
/* 04604 80004A64 14200016 */  bne     $at, $zero, .L80004AC0
/* 04608 80004A68 01606825 */  or      $t5, $t3, $zero            ## $t5 = 00000000
/* 0460C 80004A6C 018E082B */  sltu    $at, $t4, $t6
/* 04610 80004A70 14200003 */  bne     $at, $zero, .L80004A80
/* 04614 80004A74 01AF082B */  sltu    $at, $t5, $t7
/* 04618 80004A78 10200011 */  beq     $at, $zero, .L80004AC0
/* 0461C 80004A7C 00000000 */  nop
.L80004A80:
/* 04620 80004A80 27380010 */  addiu   $t8, $t9, 0x0010           ## $t8 = 00000010
/* 04624 80004A84 AFB80018 */  sw      $t8, 0x0018($sp)
/* 04628 80004A88 8F2B0014 */  lw      $t3, 0x0014($t9)           ## 00000014
/* 0462C 80004A8C 8F2A0010 */  lw      $t2, 0x0010($t9)           ## 00000010
/* 04630 80004A90 016D082B */  sltu    $at, $t3, $t5
/* 04634 80004A94 014C4023 */  subu    $t0, $t2, $t4
/* 04638 80004A98 01014023 */  subu    $t0, $t0, $at
/* 0463C 80004A9C 016D4823 */  subu    $t1, $t3, $t5
/* 04640 80004AA0 AF290014 */  sw      $t1, 0x0014($t9)           ## 00000014
/* 04644 80004AA4 AF280010 */  sw      $t0, 0x0010($t9)           ## 00000010
/* 04648 80004AA8 8FAE0024 */  lw      $t6, 0x0024($sp)
/* 0464C 80004AAC 8DC40010 */  lw      $a0, 0x0010($t6)           ## 00000010
/* 04650 80004AB0 0C0012D5 */  jal     __osSetTimerIntr
/* 04654 80004AB4 8DC50014 */  lw      $a1, 0x0014($t6)           ## 00000014
/* 04658 80004AB8 10000022 */  beq     $zero, $zero, .L80004B44
/* 0465C 80004ABC 00000000 */  nop
.L80004AC0:
/* 04660 80004AC0 8FAF0024 */  lw      $t7, 0x0024($sp)
/* 04664 80004AC4 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 04668 80004AC8 8DEA0004 */  lw      $t2, 0x0004($t7)           ## 00000004
/* 0466C 80004ACC AD580000 */  sw      $t8, 0x0000($t2)           ## 00000000
/* 04670 80004AD0 8FAB0024 */  lw      $t3, 0x0024($sp)
/* 04674 80004AD4 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 00000004
/* 04678 80004AD8 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 00000000
/* 0467C 80004ADC ADAC0004 */  sw      $t4, 0x0004($t5)           ## 00000004
/* 04680 80004AE0 8FA80024 */  lw      $t0, 0x0024($sp)
/* 04684 80004AE4 AD000000 */  sw      $zero, 0x0000($t0)         ## 00000000
/* 04688 80004AE8 8FA90024 */  lw      $t1, 0x0024($sp)
/* 0468C 80004AEC AD200004 */  sw      $zero, 0x0004($t1)         ## 00000004
/* 04690 80004AF0 8FB90024 */  lw      $t9, 0x0024($sp)
/* 04694 80004AF4 8F2E0018 */  lw      $t6, 0x0018($t9)           ## 00000018
/* 04698 80004AF8 11C00005 */  beq     $t6, $zero, .L80004B10
/* 0469C 80004AFC 00000000 */  nop
/* 046A0 80004B00 01C02025 */  or      $a0, $t6, $zero            ## $a0 = 00000000
/* 046A4 80004B04 8F25001C */  lw      $a1, 0x001C($t9)           ## 0000001C
/* 046A8 80004B08 0C000788 */  jal     osSendMesg              ## osSendMesg
/* 046AC 80004B0C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L80004B10:
/* 046B0 80004B10 8FAF0024 */  lw      $t7, 0x0024($sp)
/* 046B4 80004B14 8DF80008 */  lw      $t8, 0x0008($t7)           ## 00000008
/* 046B8 80004B18 8DF9000C */  lw      $t9, 0x000C($t7)           ## 0000000C
/* 046BC 80004B1C 17000003 */  bne     $t8, $zero, .L80004B2C
/* 046C0 80004B20 00000000 */  nop
/* 046C4 80004B24 1320FFB4 */  beq     $t9, $zero, .L800049F8
/* 046C8 80004B28 00000000 */  nop
.L80004B2C:
/* 046CC 80004B2C ADF80010 */  sw      $t8, 0x0010($t7)           ## 00000010
/* 046D0 80004B30 ADF90014 */  sw      $t9, 0x0014($t7)           ## 00000014
/* 046D4 80004B34 0C0012F2 */  jal     __osInsertTimer
/* 046D8 80004B38 8FA40024 */  lw      $a0, 0x0024($sp)
/* 046DC 80004B3C 1000FFAE */  beq     $zero, $zero, .L800049F8
/* 046E0 80004B40 00000000 */  nop
.L80004B44:
/* 046E4 80004B44 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 046E8 80004B48 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 046EC 80004B4C 03E00008 */  jr      $ra
/* 046F0 80004B50 00000000 */  nop


glabel __osSetTimerIntr
/* 046F4 80004B54 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 046F8 80004B58 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 046FC 80004B5C AFA40028 */  sw      $a0, 0x0028($sp)
/* 04700 80004B60 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 04704 80004B64 AFA5002C */  sw      $a1, 0x002C($sp)
/* 04708 80004B68 0C001354 */  jal     osGetCount              ## osGetCount
/* 0470C 80004B6C AFA2001C */  sw      $v0, 0x001C($sp)
/* 04710 80004B70 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 04714 80004B74 AC229E90 */  sw      $v0, -0x6170($at)          ## 80009E90
/* 04718 80004B78 3C0E8001 */  lui     $t6, 0x8001                ## $t6 = 80010000
/* 0471C 80004B7C 8DCE9E90 */  lw      $t6, -0x6170($t6)          ## 80009E90
/* 04720 80004B80 8FA9002C */  lw      $t1, 0x002C($sp)
/* 04724 80004B84 8FA80028 */  lw      $t0, 0x0028($sp)
/* 04728 80004B88 01C0C825 */  or      $t9, $t6, $zero            ## $t9 = 80010000
/* 0472C 80004B8C 03295821 */  addu    $t3, $t9, $t1
/* 04730 80004B90 24180000 */  addiu   $t8, $zero, 0x0000         ## $t8 = 00000000
/* 04734 80004B94 0169082B */  sltu    $at, $t3, $t1
/* 04738 80004B98 00385021 */  addu    $t2, $at, $t8
/* 0473C 80004B9C 01485021 */  addu    $t2, $t2, $t0
/* 04740 80004BA0 AFAA0020 */  sw      $t2, 0x0020($sp)
/* 04744 80004BA4 AFAB0024 */  sw      $t3, 0x0024($sp)
/* 04748 80004BA8 0C00136C */  jal     __osSetCompare              ## __osSetCompare
/* 0474C 80004BAC 01602025 */  or      $a0, $t3, $zero            ## $a0 = 00000000
/* 04750 80004BB0 0C001468 */  jal     __osRestoreInt
/* 04754 80004BB4 8FA4001C */  lw      $a0, 0x001C($sp)
/* 04758 80004BB8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0475C 80004BBC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04760 80004BC0 03E00008 */  jr      $ra
/* 04764 80004BC4 00000000 */  nop


glabel __osInsertTimer
/* 04768 80004BC8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0476C 80004BCC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 04770 80004BD0 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 04774 80004BD4 AFA40038 */  sw      $a0, 0x0038($sp)
/* 04778 80004BD8 3C0E8000 */  lui     $t6, 0x8000                ## $t6 = 80000000
/* 0477C 80004BDC 8DCE63B0 */  lw      $t6, 0x63B0($t6)           ## 800063B0
/* 04780 80004BE0 AFA20024 */  sw      $v0, 0x0024($sp)
/* 04784 80004BE4 8FB80038 */  lw      $t8, 0x0038($sp)
/* 04788 80004BE8 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 80000000
/* 0478C 80004BEC AFAF0034 */  sw      $t7, 0x0034($sp)
/* 04790 80004BF0 8F090014 */  lw      $t1, 0x0014($t8)           ## 00000014
/* 04794 80004BF4 8F080010 */  lw      $t0, 0x0010($t8)           ## 00000010
/* 04798 80004BF8 AFA9002C */  sw      $t1, 0x002C($sp)
/* 0479C 80004BFC 11EE0029 */  beq     $t7, $t6, .L80004CA4
/* 047A0 80004C00 AFA80028 */  sw      $t0, 0x0028($sp)
/* 047A4 80004C04 8DEA0010 */  lw      $t2, 0x0010($t7)           ## 00000010
/* 047A8 80004C08 8DEB0014 */  lw      $t3, 0x0014($t7)           ## 00000014
/* 047AC 80004C0C 010A082B */  sltu    $at, $t0, $t2
/* 047B0 80004C10 14200024 */  bne     $at, $zero, .L80004CA4
/* 047B4 80004C14 0148082B */  sltu    $at, $t2, $t0
/* 047B8 80004C18 14200003 */  bne     $at, $zero, .L80004C28
/* 047BC 80004C1C 0169082B */  sltu    $at, $t3, $t1
/* 047C0 80004C20 10200020 */  beq     $at, $zero, .L80004CA4
/* 047C4 80004C24 00000000 */  nop
.L80004C28:
/* 047C8 80004C28 27B90028 */  addiu   $t9, $sp, 0x0028           ## $t9 = FFFFFFF0
/* 047CC 80004C2C 8FB80034 */  lw      $t8, 0x0034($sp)
/* 047D0 80004C30 AFB90020 */  sw      $t9, 0x0020($sp)
/* 047D4 80004C34 8F2D0004 */  lw      $t5, 0x0004($t9)           ## FFFFFFF4
/* 047D8 80004C38 8F2C0000 */  lw      $t4, 0x0000($t9)           ## FFFFFFF0
/* 047DC 80004C3C 8F0F0014 */  lw      $t7, 0x0014($t8)           ## 00000014
/* 047E0 80004C40 8F0E0010 */  lw      $t6, 0x0010($t8)           ## 00000010
/* 047E4 80004C44 3C188000 */  lui     $t8, 0x8000                ## $t8 = 80000000
/* 047E8 80004C48 01AF082B */  sltu    $at, $t5, $t7
/* 047EC 80004C4C 018E4023 */  subu    $t0, $t4, $t6
/* 047F0 80004C50 01014023 */  subu    $t0, $t0, $at
/* 047F4 80004C54 01AF4823 */  subu    $t1, $t5, $t7
/* 047F8 80004C58 AF290004 */  sw      $t1, 0x0004($t9)           ## FFFFFFF4
/* 047FC 80004C5C AF280000 */  sw      $t0, 0x0000($t9)           ## FFFFFFF0
/* 04800 80004C60 8FAA0034 */  lw      $t2, 0x0034($sp)
/* 04804 80004C64 8F1863B0 */  lw      $t8, 0x63B0($t8)           ## 800063B0
/* 04808 80004C68 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 00000000
/* 0480C 80004C6C 1178000D */  beq     $t3, $t8, .L80004CA4
/* 04810 80004C70 AFAB0034 */  sw      $t3, 0x0034($sp)
/* 04814 80004C74 8FAC0028 */  lw      $t4, 0x0028($sp)
/* 04818 80004C78 8D6E0010 */  lw      $t6, 0x0010($t3)           ## 00000010
/* 0481C 80004C7C 8FAD002C */  lw      $t5, 0x002C($sp)
/* 04820 80004C80 8D6F0014 */  lw      $t7, 0x0014($t3)           ## 00000014
/* 04824 80004C84 01CC082B */  sltu    $at, $t6, $t4
/* 04828 80004C88 1420FFE7 */  bne     $at, $zero, .L80004C28
/* 0482C 80004C8C 00000000 */  nop
/* 04830 80004C90 018E082B */  sltu    $at, $t4, $t6
/* 04834 80004C94 14200003 */  bne     $at, $zero, .L80004CA4
/* 04838 80004C98 01ED082B */  sltu    $at, $t7, $t5
/* 0483C 80004C9C 1420FFE2 */  bne     $at, $zero, .L80004C28
/* 04840 80004CA0 00000000 */  nop
.L80004CA4:
/* 04844 80004CA4 8FB90038 */  lw      $t9, 0x0038($sp)
/* 04848 80004CA8 8FA80028 */  lw      $t0, 0x0028($sp)
/* 0484C 80004CAC 8FA9002C */  lw      $t1, 0x002C($sp)
/* 04850 80004CB0 3C188000 */  lui     $t8, 0x8000                ## $t8 = 80000000
/* 04854 80004CB4 AF280010 */  sw      $t0, 0x0010($t9)           ## 00000000
/* 04858 80004CB8 AF290014 */  sw      $t1, 0x0014($t9)           ## 00000004
/* 0485C 80004CBC 8F1863B0 */  lw      $t8, 0x63B0($t8)           ## 800063B0
/* 04860 80004CC0 8FAA0034 */  lw      $t2, 0x0034($sp)
/* 04864 80004CC4 1158000D */  beq     $t2, $t8, .L80004CFC
/* 04868 80004CC8 00000000 */  nop
/* 0486C 80004CCC 254B0010 */  addiu   $t3, $t2, 0x0010           ## $t3 = 00000010
/* 04870 80004CD0 AFAB001C */  sw      $t3, 0x001C($sp)
/* 04874 80004CD4 8D4D0014 */  lw      $t5, 0x0014($t2)           ## 00000014
/* 04878 80004CD8 8D4C0010 */  lw      $t4, 0x0010($t2)           ## 00000010
/* 0487C 80004CDC 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 04880 80004CE0 8FAF002C */  lw      $t7, 0x002C($sp)
/* 04884 80004CE4 018E4023 */  subu    $t0, $t4, $t6
/* 04888 80004CE8 01AF082B */  sltu    $at, $t5, $t7
/* 0488C 80004CEC 01014023 */  subu    $t0, $t0, $at
/* 04890 80004CF0 01AF4823 */  subu    $t1, $t5, $t7
/* 04894 80004CF4 AD490014 */  sw      $t1, 0x0014($t2)           ## 00000014
/* 04898 80004CF8 AD480010 */  sw      $t0, 0x0010($t2)           ## 00000010
.L80004CFC:
/* 0489C 80004CFC 8FB90034 */  lw      $t9, 0x0034($sp)
/* 048A0 80004D00 8FB80038 */  lw      $t8, 0x0038($sp)
/* 048A4 80004D04 AF190000 */  sw      $t9, 0x0000($t8)           ## 80000000
/* 048A8 80004D08 8FAB0034 */  lw      $t3, 0x0034($sp)
/* 048AC 80004D0C 8FAD0038 */  lw      $t5, 0x0038($sp)
/* 048B0 80004D10 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 00000014
/* 048B4 80004D14 ADAC0004 */  sw      $t4, 0x0004($t5)           ## 00000004
/* 048B8 80004D18 8FAF0034 */  lw      $t7, 0x0034($sp)
/* 048BC 80004D1C 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 048C0 80004D20 8DE80004 */  lw      $t0, 0x0004($t7)           ## 00000004
/* 048C4 80004D24 AD0E0000 */  sw      $t6, 0x0000($t0)           ## 00000000
/* 048C8 80004D28 8FAA0034 */  lw      $t2, 0x0034($sp)
/* 048CC 80004D2C 8FA90038 */  lw      $t1, 0x0038($sp)
/* 048D0 80004D30 AD490004 */  sw      $t1, 0x0004($t2)           ## 00000004
/* 048D4 80004D34 0C001468 */  jal     __osRestoreInt
/* 048D8 80004D38 8FA40024 */  lw      $a0, 0x0024($sp)
/* 048DC 80004D3C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 048E0 80004D40 8FA20028 */  lw      $v0, 0x0028($sp)
/* 048E4 80004D44 8FA3002C */  lw      $v1, 0x002C($sp)
/* 048E8 80004D48 03E00008 */  jr      $ra
/* 048EC 80004D4C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
