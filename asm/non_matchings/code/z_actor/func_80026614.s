glabel func_80026614
/* 15574 80026614 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 15578 80026618 F7BC0048 */  sdc1    $f28, 0x0048($sp)
/* 1557C 8002661C AFB3005C */  sw      $s3, 0x005C($sp)
/* 15580 80026620 4486E000 */  mtc1    $a2, $f28                  ## $f28 = 0.00
/* 15584 80026624 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 15588 80026628 AFBF0074 */  sw      $ra, 0x0074($sp)
/* 1558C 8002662C AFBE0070 */  sw      $s8, 0x0070($sp)
/* 15590 80026630 AFB7006C */  sw      $s7, 0x006C($sp)
/* 15594 80026634 AFB60068 */  sw      $s6, 0x0068($sp)
/* 15598 80026638 AFB50064 */  sw      $s5, 0x0064($sp)
/* 1559C 8002663C AFB40060 */  sw      $s4, 0x0060($sp)
/* 155A0 80026640 AFB20058 */  sw      $s2, 0x0058($sp)
/* 155A4 80026644 AFB10054 */  sw      $s1, 0x0054($sp)
/* 155A8 80026648 AFB00050 */  sw      $s0, 0x0050($sp)
/* 155AC 8002664C F7BA0040 */  sdc1    $f26, 0x0040($sp)
/* 155B0 80026650 F7B80038 */  sdc1    $f24, 0x0038($sp)
/* 155B4 80026654 F7B60030 */  sdc1    $f22, 0x0030($sp)
/* 155B8 80026658 F7B40028 */  sdc1    $f20, 0x0028($sp)
/* 155BC 8002665C 8C901C6C */  lw      $s0, 0x1C6C($a0)           ## 00001C6C
/* 155C0 80026660 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 155C4 80026664 27BE0084 */  addiu   $s8, $sp, 0x0084           ## $s8 = FFFFFFCC
/* 155C8 80026668 12000048 */  beq     $s0, $zero, .L8002678C
/* 155CC 8002666C 27B70090 */  addiu   $s7, $sp, 0x0090           ## $s7 = FFFFFFD8
/* 155D0 80026670 4480D000 */  mtc1    $zero, $f26                ## $f26 = 0.00
/* 155D4 80026674 4481C000 */  mtc1    $at, $f24                  ## $f24 = 10.00
/* 155D8 80026678 27B600A8 */  addiu   $s6, $sp, 0x00A8           ## $s6 = FFFFFFF0
/* 155DC 8002667C 24150016 */  addiu   $s5, $zero, 0x0016         ## $s5 = 00000016
/* 155E0 80026680 24140066 */  addiu   $s4, $zero, 0x0066         ## $s4 = 00000066
/* 155E4 80026684 86020000 */  lh      $v0, 0x0000($s0)           ## 00000000
.L80026688:
/* 155E8 80026688 12820003 */  beq     $s4, $v0, .L80026698
/* 155EC 8002668C 00000000 */  nop
/* 155F0 80026690 16A20003 */  bne     $s5, $v0, .L800266A0
/* 155F4 80026694 00000000 */  nop
.L80026698:
/* 155F8 80026698 16130003 */  bne     $s0, $s3, .L800266A8
/* 155FC 8002669C 26710024 */  addiu   $s1, $s3, 0x0024           ## $s1 = 00000024
.L800266A0:
/* 15600 800266A0 10000038 */  beq     $zero, $zero, .L80026784
/* 15604 800266A4 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L800266A8:
/* 15608 800266A8 26120024 */  addiu   $s2, $s0, 0x0024           ## $s2 = 00000024
/* 1560C 800266AC 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000024
/* 15610 800266B0 0C018F86 */  jal     Math_Vec3f_DistXYZ
/* 15614 800266B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000024
/* 15618 800266B8 4600E03C */  c.lt.s  $f28, $f0
/* 1561C 800266BC 00000000 */  nop
/* 15620 800266C0 45010004 */  bc1t    .L800266D4
/* 15624 800266C4 00000000 */  nop
/* 15628 800266C8 860E0200 */  lh      $t6, 0x0200($s0)           ## 00000200
/* 1562C 800266CC 15C00003 */  bne     $t6, $zero, .L800266DC
/* 15630 800266D0 00000000 */  nop
.L800266D4:
/* 15634 800266D4 1000002B */  beq     $zero, $zero, .L80026784
/* 15638 800266D8 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L800266DC:
/* 1563C 800266DC 0C018DB1 */  jal     Math_Sins              ## sins?
/* 15640 800266E0 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 15644 800266E4 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 15648 800266E8 C60A006C */  lwc1    $f10, 0x006C($s0)          ## 0000006C
/* 1564C 800266EC C6080060 */  lwc1    $f8, 0x0060($s0)           ## 00000060
/* 15650 800266F0 46182182 */  mul.s   $f6, $f4, $f24
/* 15654 800266F4 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 15658 800266F8 46060502 */  mul.s   $f20, $f0, $f6
/* 1565C 800266FC 00000000 */  nop
/* 15660 80026700 46185402 */  mul.s   $f16, $f10, $f24
/* 15664 80026704 0C018DA1 */  jal     Math_Coss              ## coss?
/* 15668 80026708 46104580 */  add.s   $f22, $f8, $f16
/* 1566C 8002670C C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 15670 80026710 C6120068 */  lwc1    $f18, 0x0068($s0)          ## 00000068
/* 15674 80026714 4406D000 */  mfc1    $a2, $f26
/* 15678 80026718 46143280 */  add.s   $f10, $f6, $f20
/* 1567C 8002671C 46189102 */  mul.s   $f4, $f18, $f24
/* 15680 80026720 02203825 */  or      $a3, $s1, $zero            ## $a3 = 00000024
/* 15684 80026724 E7AA00A8 */  swc1    $f10, 0x00A8($sp)
/* 15688 80026728 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 1568C 8002672C 46164400 */  add.s   $f16, $f8, $f22
/* 15690 80026730 46040082 */  mul.s   $f2, $f0, $f4
/* 15694 80026734 E7B000AC */  swc1    $f16, 0x00AC($sp)
/* 15698 80026738 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 1569C 8002673C 46029100 */  add.s   $f4, $f18, $f2
/* 156A0 80026740 E7A400B0 */  swc1    $f4, 0x00B0($sp)
/* 156A4 80026744 867800AA */  lh      $t8, 0x00AA($s3)           ## 000000AA
/* 156A8 80026748 866F00A8 */  lh      $t7, 0x00A8($s3)           ## 000000A8
/* 156AC 8002674C AFBE001C */  sw      $s8, 0x001C($sp)
/* 156B0 80026750 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 156B4 80026754 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 156B8 80026758 AFB70018 */  sw      $s7, 0x0018($sp)
/* 156BC 8002675C AFB60014 */  sw      $s6, 0x0014($sp)
/* 156C0 80026760 AFB20010 */  sw      $s2, 0x0010($sp)
/* 156C4 80026764 468053A0 */  cvt.s.w $f14, $f10
/* 156C8 80026768 0C0144CC */  jal     func_80051330
/* 156CC 8002676C 46803320 */  cvt.s.w $f12, $f6
/* 156D0 80026770 50400004 */  beql    $v0, $zero, .L80026784
/* 156D4 80026774 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
/* 156D8 80026778 10000005 */  beq     $zero, $zero, .L80026790
/* 156DC 8002677C 02001025 */  or      $v0, $s0, $zero            ## $v0 = 00000000
/* 156E0 80026780 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L80026784:
/* 156E4 80026784 5600FFC0 */  bnel    $s0, $zero, .L80026688
/* 156E8 80026788 86020000 */  lh      $v0, 0x0000($s0)           ## 00000000
.L8002678C:
/* 156EC 8002678C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80026790:
/* 156F0 80026790 8FBF0074 */  lw      $ra, 0x0074($sp)
/* 156F4 80026794 D7B40028 */  ldc1    $f20, 0x0028($sp)
/* 156F8 80026798 D7B60030 */  ldc1    $f22, 0x0030($sp)
/* 156FC 8002679C D7B80038 */  ldc1    $f24, 0x0038($sp)
/* 15700 800267A0 D7BA0040 */  ldc1    $f26, 0x0040($sp)
/* 15704 800267A4 D7BC0048 */  ldc1    $f28, 0x0048($sp)
/* 15708 800267A8 8FB00050 */  lw      $s0, 0x0050($sp)
/* 1570C 800267AC 8FB10054 */  lw      $s1, 0x0054($sp)
/* 15710 800267B0 8FB20058 */  lw      $s2, 0x0058($sp)
/* 15714 800267B4 8FB3005C */  lw      $s3, 0x005C($sp)
/* 15718 800267B8 8FB40060 */  lw      $s4, 0x0060($sp)
/* 1571C 800267BC 8FB50064 */  lw      $s5, 0x0064($sp)
/* 15720 800267C0 8FB60068 */  lw      $s6, 0x0068($sp)
/* 15724 800267C4 8FB7006C */  lw      $s7, 0x006C($sp)
/* 15728 800267C8 8FBE0070 */  lw      $s8, 0x0070($sp)
/* 1572C 800267CC 03E00008 */  jr      $ra
/* 15730 800267D0 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000


