glabel func_8002764C
/* 165AC 8002764C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 165B0 80027650 AFA60038 */  sw      $a2, 0x0038($sp)
/* 165B4 80027654 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 165B8 80027658 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 165BC 8002765C AFA40030 */  sw      $a0, 0x0030($sp)
/* 165C0 80027660 AFA50034 */  sw      $a1, 0x0034($sp)
/* 165C4 80027664 AFA7003C */  sw      $a3, 0x003C($sp)
/* 165C8 80027668 87AE0042 */  lh      $t6, 0x0042($sp)
/* 165CC 8002766C 51C00004 */  beql    $t6, $zero, .L80027680
/* 165D0 80027670 84CF0000 */  lh      $t7, 0x0000($a2)           ## 00000000
/* 165D4 80027674 10000073 */  beq     $zero, $zero, .L80027844
/* 165D8 80027678 01C01025 */  or      $v0, $t6, $zero            ## $v0 = 00000000
/* 165DC 8002767C 84CF0000 */  lh      $t7, 0x0000($a2)           ## 00000000
.L80027680:
/* 165E0 80027680 8FA40030 */  lw      $a0, 0x0030($sp)
/* 165E4 80027684 24C50018 */  addiu   $a1, $a2, 0x0018           ## $a1 = 00000018
/* 165E8 80027688 11E00003 */  beq     $t7, $zero, .L80027698
/* 165EC 8002768C 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 165F0 80027690 1000006C */  beq     $zero, $zero, .L80027844
/* 165F4 80027694 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80027698:
/* 165F8 80027698 AFA40020 */  sw      $a0, 0x0020($sp)
/* 165FC 8002769C AFA5001C */  sw      $a1, 0x001C($sp)
/* 16600 800276A0 0C018F86 */  jal     Math_Vec3f_DistXYZ
/* 16604 800276A4 AFA60034 */  sw      $a2, 0x0034($sp)
/* 16608 800276A8 C7A40038 */  lwc1    $f4, 0x0038($sp)
/* 1660C 800276AC 8FA40020 */  lw      $a0, 0x0020($sp)
/* 16610 800276B0 8FA5001C */  lw      $a1, 0x001C($sp)
/* 16614 800276B4 4600203C */  c.lt.s  $f4, $f0
/* 16618 800276B8 8FA60034 */  lw      $a2, 0x0034($sp)
/* 1661C 800276BC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 16620 800276C0 45000004 */  bc1f    .L800276D4
/* 16624 800276C4 00000000 */  nop
/* 16628 800276C8 A4C00004 */  sh      $zero, 0x0004($a2)         ## 00000004
/* 1662C 800276CC 1000005D */  beq     $zero, $zero, .L80027844
/* 16630 800276D0 A4C00006 */  sh      $zero, 0x0006($a2)         ## 00000006
.L800276D4:
/* 16634 800276D4 0C018FC0 */  jal     Math_Vec3f_Yaw
/* 16638 800276D8 AFA60034 */  sw      $a2, 0x0034($sp)
/* 1663C 800276DC 8FB80030 */  lw      $t8, 0x0030($sp)
/* 16640 800276E0 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 16644 800276E4 00027C00 */  sll     $t7, $v0, 16
/* 16648 800276E8 871900B6 */  lh      $t9, 0x00B6($t8)           ## 000000B6
/* 1664C 800276EC 468042A0 */  cvt.s.w $f10, $f8
/* 16650 800276F0 00026400 */  sll     $t4, $v0, 16
/* 16654 800276F4 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 16658 800276F8 8FA60034 */  lw      $a2, 0x0034($sp)
/* 1665C 800276FC 000C6C03 */  sra     $t5, $t4, 16
/* 16660 80027700 46803020 */  cvt.s.w $f0, $f6
/* 16664 80027704 000FC403 */  sra     $t8, $t7, 16
/* 16668 80027708 87A8003E */  lh      $t0, 0x003E($sp)
/* 1666C 8002770C 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 16670 80027710 46005401 */  sub.s   $f16, $f10, $f0
/* 16674 80027714 4600848D */  trunc.w.s $f18, $f16
/* 16678 80027718 44099000 */  mfc1    $t1, $f18
/* 1667C 8002771C 00000000 */  nop
/* 16680 80027720 00095400 */  sll     $t2, $t1, 16
/* 16684 80027724 000A5C03 */  sra     $t3, $t2, 16
/* 16688 80027728 0562000C */  bltzl   $t3, .L8002775C
/* 1668C 8002772C 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 16690 80027730 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 16694 80027734 00000000 */  nop
/* 16698 80027738 468021A0 */  cvt.s.w $f6, $f4
/* 1669C 8002773C 46003201 */  sub.s   $f8, $f6, $f0
/* 166A0 80027740 4600428D */  trunc.w.s $f10, $f8
/* 166A4 80027744 44035000 */  mfc1    $v1, $f10
/* 166A8 80027748 00000000 */  nop
/* 166AC 8002774C 00031C00 */  sll     $v1, $v1, 16
/* 166B0 80027750 1000000D */  beq     $zero, $zero, .L80027788
/* 166B4 80027754 00031C03 */  sra     $v1, $v1, 16
/* 166B8 80027758 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
.L8002775C:
/* 166BC 8002775C 00000000 */  nop
/* 166C0 80027760 468084A0 */  cvt.s.w $f18, $f16
/* 166C4 80027764 46009101 */  sub.s   $f4, $f18, $f0
/* 166C8 80027768 4600218D */  trunc.w.s $f6, $f4
/* 166CC 8002776C 44033000 */  mfc1    $v1, $f6
/* 166D0 80027770 00000000 */  nop
/* 166D4 80027774 00031C00 */  sll     $v1, $v1, 16
/* 166D8 80027778 00031C03 */  sra     $v1, $v1, 16
/* 166DC 8002777C 00031823 */  subu    $v1, $zero, $v1
/* 166E0 80027780 00031C00 */  sll     $v1, $v1, 16
/* 166E4 80027784 00031C03 */  sra     $v1, $v1, 16
.L80027788:
/* 166E8 80027788 0103082A */  slt     $at, $t0, $v1
/* 166EC 8002778C 54200005 */  bnel    $at, $zero, .L800277A4
/* 166F0 80027790 84C30004 */  lh      $v1, 0x0004($a2)           ## 00000004
/* 166F4 80027794 A4C00004 */  sh      $zero, 0x0004($a2)         ## 00000004
/* 166F8 80027798 1000002A */  beq     $zero, $zero, .L80027844
/* 166FC 8002779C A4C00006 */  sh      $zero, 0x0006($a2)         ## 00000006
/* 16700 800277A0 84C30004 */  lh      $v1, 0x0004($a2)           ## 00000004
.L800277A4:
/* 16704 800277A4 14600003 */  bne     $v1, $zero, .L800277B4
/* 16708 800277A8 2469FFFF */  addiu   $t1, $v1, 0xFFFF           ## $t1 = FFFFFFFF
/* 1670C 800277AC 10000003 */  beq     $zero, $zero, .L800277BC
/* 16710 800277B0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800277B4:
/* 16714 800277B4 A4C90004 */  sh      $t1, 0x0004($a2)           ## 00000004
/* 16718 800277B8 84C20004 */  lh      $v0, 0x0004($a2)           ## 00000004
.L800277BC:
/* 1671C 800277BC 50400004 */  beql    $v0, $zero, .L800277D0
/* 16720 800277C0 84C20006 */  lh      $v0, 0x0006($a2)           ## 00000006
/* 16724 800277C4 1000001F */  beq     $zero, $zero, .L80027844
/* 16728 800277C8 84C20002 */  lh      $v0, 0x0002($a2)           ## 00000002
/* 1672C 800277CC 84C20006 */  lh      $v0, 0x0006($a2)           ## 00000006
.L800277D0:
/* 16730 800277D0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 16734 800277D4 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 16738 800277D8 10400005 */  beq     $v0, $zero, .L800277F0
/* 1673C 800277DC 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 16740 800277E0 1041000C */  beq     $v0, $at, .L80027814
/* 16744 800277E4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 16748 800277E8 54410016 */  bnel    $v0, $at, .L80027844
/* 1674C 800277EC 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L800277F0:
/* 16750 800277F0 0C018EFC */  jal     Math_Rand_S16Offset
/* 16754 800277F4 AFA60034 */  sw      $a2, 0x0034($sp)
/* 16758 800277F8 8FA60034 */  lw      $a2, 0x0034($sp)
/* 1675C 800277FC 84CA0006 */  lh      $t2, 0x0006($a2)           ## 00000006
/* 16760 80027800 A4C20004 */  sh      $v0, 0x0004($a2)           ## 00000004
/* 16764 80027804 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 16768 80027808 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 1676C 8002780C 1000000D */  beq     $zero, $zero, .L80027844
/* 16770 80027810 A4CB0006 */  sh      $t3, 0x0006($a2)           ## 00000006
.L80027814:
/* 16774 80027814 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 16778 80027818 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 1677C 8002781C 0C018EFC */  jal     Math_Rand_S16Offset
/* 16780 80027820 AFA60034 */  sw      $a2, 0x0034($sp)
/* 16784 80027824 8FA60034 */  lw      $a2, 0x0034($sp)
/* 16788 80027828 84CC0006 */  lh      $t4, 0x0006($a2)           ## 00000006
/* 1678C 8002782C A4C20004 */  sh      $v0, 0x0004($a2)           ## 00000004
/* 16790 80027830 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
/* 16794 80027834 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 16798 80027838 10000002 */  beq     $zero, $zero, .L80027844
/* 1679C 8002783C A4CD0006 */  sh      $t5, 0x0006($a2)           ## 00000006
/* 167A0 80027840 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80027844:
/* 167A4 80027844 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 167A8 80027848 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 167AC 8002784C 03E00008 */  jr      $ra
/* 167B0 80027850 00000000 */  nop

