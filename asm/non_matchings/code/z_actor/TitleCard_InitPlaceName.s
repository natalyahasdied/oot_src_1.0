glabel TitleCard_InitPlaceName
/* 0F724 800207C4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0F728 800207C8 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0F72C 800207CC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0F730 800207D0 AFBF001C */  sw      $ra, 0x001C($sp)
/* 0F734 800207D4 AFA60038 */  sw      $a2, 0x0038($sp)
/* 0F738 800207D8 AFA7003C */  sw      $a3, 0x003C($sp)
/* 0F73C 800207DC 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 0F740 800207E0 00441021 */  addu    $v0, $v0, $a0
/* 0F744 800207E4 8C42242C */  lw      $v0, 0x242C($v0)           ## 0001242C
/* 0F748 800207E8 8C4E0008 */  lw      $t6, 0x0008($v0)           ## 00010008
/* 0F74C 800207EC AFAE0024 */  sw      $t6, 0x0024($sp)
/* 0F750 800207F0 8C4F000C */  lw      $t7, 0x000C($v0)           ## 0001000C
/* 0F754 800207F4 01EEC823 */  subu    $t9, $t7, $t6
/* 0F758 800207F8 13200007 */  beq     $t9, $zero, .L80020818
/* 0F75C 800207FC AFB90028 */  sw      $t9, 0x0028($sp)
/* 0F760 80020800 2F212001 */  sltiu   $at, $t9, 0x2001
/* 0F764 80020804 10200004 */  beq     $at, $zero, .L80020818
/* 0F768 80020808 8FA40038 */  lw      $a0, 0x0038($sp)
/* 0F76C 8002080C 01C02825 */  or      $a1, $t6, $zero            ## $a1 = 00000000
/* 0F770 80020810 0C00037C */  jal     DmaMgr_SendRequest0
/* 0F774 80020814 03203025 */  or      $a2, $t9, $zero            ## $a2 = 00000000
.L80020818:
/* 0F778 80020818 8FA90038 */  lw      $t1, 0x0038($sp)
/* 0F77C 8002081C 240E0050 */  addiu   $t6, $zero, 0x0050         ## $t6 = 00000050
/* 0F780 80020820 AE090000 */  sw      $t1, 0x0000($s0)           ## 00000000
/* 0F784 80020824 8FAA003C */  lw      $t2, 0x003C($sp)
/* 0F788 80020828 A60A0004 */  sh      $t2, 0x0004($s0)           ## 00000004
/* 0F78C 8002082C 8FAB0040 */  lw      $t3, 0x0040($sp)
/* 0F790 80020830 A60B0006 */  sh      $t3, 0x0006($s0)           ## 00000006
/* 0F794 80020834 8FAC0044 */  lw      $t4, 0x0044($sp)
/* 0F798 80020838 A20C0008 */  sb      $t4, 0x0008($s0)           ## 00000008
/* 0F79C 8002083C 8FAD0048 */  lw      $t5, 0x0048($sp)
/* 0F7A0 80020840 A20E000A */  sb      $t6, 0x000A($s0)           ## 0000000A
/* 0F7A4 80020844 A20D0009 */  sb      $t5, 0x0009($s0)           ## 00000009
/* 0F7A8 80020848 8FAF004C */  lw      $t7, 0x004C($sp)
/* 0F7AC 8002084C A20F000B */  sb      $t7, 0x000B($s0)           ## 0000000B
/* 0F7B0 80020850 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0F7B4 80020854 8FB00018 */  lw      $s0, 0x0018($sp)
/* 0F7B8 80020858 03E00008 */  jr      $ra
/* 0F7BC 8002085C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


