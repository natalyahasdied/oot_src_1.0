glabel func_800257A0
/* 14700 800257A0 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 14704 800257A4 AFBE0060 */  sw      $s8, 0x0060($sp)
/* 14708 800257A8 AFB3004C */  sw      $s3, 0x004C($sp)
/* 1470C 800257AC AFB20048 */  sw      $s2, 0x0048($sp)
/* 14710 800257B0 00C09025 */  or      $s2, $a2, $zero            ## $s2 = 00000000
/* 14714 800257B4 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 14718 800257B8 00A0F025 */  or      $s8, $a1, $zero            ## $s8 = 00000000
/* 1471C 800257BC AFBF0064 */  sw      $ra, 0x0064($sp)
/* 14720 800257C0 AFB7005C */  sw      $s7, 0x005C($sp)
/* 14724 800257C4 AFB60058 */  sw      $s6, 0x0058($sp)
/* 14728 800257C8 AFB50054 */  sw      $s5, 0x0054($sp)
/* 1472C 800257CC AFB40050 */  sw      $s4, 0x0050($sp)
/* 14730 800257D0 AFB10044 */  sw      $s1, 0x0044($sp)
/* 14734 800257D4 AFB00040 */  sw      $s0, 0x0040($sp)
/* 14738 800257D8 F7B60038 */  sdc1    $f22, 0x0038($sp)
/* 1473C 800257DC F7B40030 */  sdc1    $f20, 0x0030($sp)
/* 14740 800257E0 0007B8C0 */  sll     $s7, $a3,  3
/* 14744 800257E4 03D77021 */  addu    $t6, $s8, $s7
/* 14748 800257E8 8DD00010 */  lw      $s0, 0x0010($t6)           ## 00000010
/* 1474C 800257EC 8E4F0654 */  lw      $t7, 0x0654($s2)           ## 00000654
/* 14750 800257F0 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 14754 800257F4 12000063 */  beq     $s0, $zero, .L80025984
/* 14758 800257F8 AFAF0084 */  sw      $t7, 0x0084($sp)
/* 1475C 800257FC 3C168012 */  lui     $s6, 0x8012                ## $s6 = 80120000
/* 14760 80025800 3C158012 */  lui     $s5, 0x8012                ## $s5 = 80120000
/* 14764 80025804 3C148012 */  lui     $s4, 0x8012                ## $s4 = 80120000
/* 14768 80025808 26948C10 */  addiu   $s4, $s4, 0x8C10           ## $s4 = 80118C10
/* 1476C 8002580C 26B58C0C */  addiu   $s5, $s5, 0x8C0C           ## $s5 = 80118C0C
/* 14770 80025810 26D68C14 */  addiu   $s6, $s6, 0x8C14           ## $s6 = 80118C14
/* 14774 80025814 C43664F0 */  lwc1    $f22, 0x64F0($at)          ## 801064F0
/* 14778 80025818 8E180130 */  lw      $t8, 0x0130($s0)           ## 00000130
.L8002581C:
/* 1477C 8002581C 53000057 */  beql    $t8, $zero, .L8002597C
/* 14780 80025820 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
/* 14784 80025824 52120055 */  beql    $s0, $s2, .L8002597C
/* 14788 80025828 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
/* 1478C 8002582C 8E020004 */  lw      $v0, 0x0004($s0)           ## 00000004
/* 14790 80025830 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 14794 80025834 30590001 */  andi    $t9, $v0, 0x0001           ## $t9 = 00000000
/* 14798 80025838 1721004F */  bne     $t9, $at, .L80025978
/* 1479C 8002583C 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 147A0 80025840 16E10011 */  bne     $s7, $at, .L80025888
/* 147A4 80025844 30480005 */  andi    $t0, $v0, 0x0005           ## $t0 = 00000000
/* 147A8 80025848 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 147AC 8002584C 5501000F */  bnel    $t0, $at, .L8002588C
/* 147B0 80025850 8FA90084 */  lw      $t1, 0x0084($sp)
/* 147B4 80025854 C600008C */  lwc1    $f0, 0x008C($s0)           ## 0000008C
/* 147B8 80025858 4616003C */  c.lt.s  $f0, $f22
/* 147BC 8002585C 00000000 */  nop
/* 147C0 80025860 4502000A */  bc1fl   .L8002588C
/* 147C4 80025864 8FA90084 */  lw      $t1, 0x0084($sp)
/* 147C8 80025868 C6840000 */  lwc1    $f4, 0x0000($s4)           ## 80118C10
/* 147CC 8002586C 4604003C */  c.lt.s  $f0, $f4
/* 147D0 80025870 00000000 */  nop
/* 147D4 80025874 45020005 */  bc1fl   .L8002588C
/* 147D8 80025878 8FA90084 */  lw      $t1, 0x0084($sp)
/* 147DC 8002587C AFD000FC */  sw      $s0, 0x00FC($s8)           ## 000000FC
/* 147E0 80025880 C606008C */  lwc1    $f6, 0x008C($s0)           ## 0000008C
/* 147E4 80025884 E6860000 */  swc1    $f6, 0x0000($s4)           ## 80118C10
.L80025888:
/* 147E8 80025888 8FA90084 */  lw      $t1, 0x0084($sp)
.L8002588C:
/* 147EC 8002588C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 147F0 80025890 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 147F4 80025894 12090038 */  beq     $s0, $t1, .L80025978
/* 147F8 80025898 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 147FC 8002589C 0C0089D5 */  jal     func_80022754
/* 14800 800258A0 84C68C18 */  lh      $a2, -0x73E8($a2)          ## 80118C18
/* 14804 800258A4 C6A80000 */  lwc1    $f8, 0x0000($s5)           ## 80118C0C
/* 14808 800258A8 46000506 */  mov.s   $f20, $f0
/* 1480C 800258AC 4608003C */  c.lt.s  $f0, $f8
/* 14810 800258B0 00000000 */  nop
/* 14814 800258B4 45020031 */  bc1fl   .L8002597C
/* 14818 800258B8 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
/* 1481C 800258BC 44050000 */  mfc1    $a1, $f0
/* 14820 800258C0 0C008A09 */  jal     func_80022824
/* 14824 800258C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 14828 800258C8 1040002B */  beq     $v0, $zero, .L80025978
/* 1482C 800258CC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 14830 800258D0 0C0095D3 */  jal     func_8002574C
/* 14834 800258D4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 14838 800258D8 10400027 */  beq     $v0, $zero, .L80025978
/* 1483C 800258DC 267107C0 */  addiu   $s1, $s3, 0x07C0           ## $s1 = 000007C0
/* 14840 800258E0 27AA0080 */  addiu   $t2, $sp, 0x0080           ## $t2 = FFFFFFF0
/* 14844 800258E4 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 14848 800258E8 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 1484C 800258EC 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 14850 800258F0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 14854 800258F4 27AF007C */  addiu   $t7, $sp, 0x007C           ## $t7 = FFFFFFEC
/* 14858 800258F8 AFAF0024 */  sw      $t7, 0x0024($sp)
/* 1485C 800258FC AFAE0020 */  sw      $t6, 0x0020($sp)
/* 14860 80025900 AFAD001C */  sw      $t5, 0x001C($sp)
/* 14864 80025904 AFAC0018 */  sw      $t4, 0x0018($sp)
/* 14868 80025908 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 1486C 8002590C AFAA0010 */  sw      $t2, 0x0010($sp)
/* 14870 80025910 02202025 */  or      $a0, $s1, $zero            ## $a0 = 000007C0
/* 14874 80025914 26450038 */  addiu   $a1, $s2, 0x0038           ## $a1 = 00000038
/* 14878 80025918 26060038 */  addiu   $a2, $s0, 0x0038           ## $a2 = 00000038
/* 1487C 8002591C 0C00C1E7 */  jal     func_8003079C
/* 14880 80025920 27A70070 */  addiu   $a3, $sp, 0x0070           ## $a3 = FFFFFFE0
/* 14884 80025924 10400006 */  beq     $v0, $zero, .L80025940
/* 14888 80025928 02202025 */  or      $a0, $s1, $zero            ## $a0 = 000007C0
/* 1488C 8002592C 8FA50080 */  lw      $a1, 0x0080($sp)
/* 14890 80025930 0C00D1C0 */  jal     func_80034700
/* 14894 80025934 8FA6007C */  lw      $a2, 0x007C($sp)
/* 14898 80025938 50400010 */  beql    $v0, $zero, .L8002597C
/* 1489C 8002593C 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L80025940:
/* 148A0 80025940 9202010D */  lbu     $v0, 0x010D($s0)           ## 0000010D
/* 148A4 80025944 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 148A8 80025948 10400009 */  beq     $v0, $zero, .L80025970
/* 148AC 8002594C 00000000 */  nop
/* 148B0 80025950 8ED80000 */  lw      $t8, 0x0000($s6)           ## 80118C14
/* 148B4 80025954 0058082A */  slt     $at, $v0, $t8
/* 148B8 80025958 10200007 */  beq     $at, $zero, .L80025978
/* 148BC 8002595C 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 148C0 80025960 AC308C08 */  sw      $s0, -0x73F8($at)          ## 80118C08
/* 148C4 80025964 9219010D */  lbu     $t9, 0x010D($s0)           ## 0000010D
/* 148C8 80025968 10000003 */  beq     $zero, $zero, .L80025978
/* 148CC 8002596C AED90000 */  sw      $t9, 0x0000($s6)           ## 80118C14
.L80025970:
/* 148D0 80025970 AC308C04 */  sw      $s0, -0x73FC($at)          ## 80118C04
/* 148D4 80025974 E6B40000 */  swc1    $f20, 0x0000($s5)          ## 80118C0C
.L80025978:
/* 148D8 80025978 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L8002597C:
/* 148DC 8002597C 5600FFA7 */  bnel    $s0, $zero, .L8002581C
/* 148E0 80025980 8E180130 */  lw      $t8, 0x0130($s0)           ## 00000130
.L80025984:
/* 148E4 80025984 8FBF0064 */  lw      $ra, 0x0064($sp)
/* 148E8 80025988 D7B40030 */  ldc1    $f20, 0x0030($sp)
/* 148EC 8002598C D7B60038 */  ldc1    $f22, 0x0038($sp)
/* 148F0 80025990 8FB00040 */  lw      $s0, 0x0040($sp)
/* 148F4 80025994 8FB10044 */  lw      $s1, 0x0044($sp)
/* 148F8 80025998 8FB20048 */  lw      $s2, 0x0048($sp)
/* 148FC 8002599C 8FB3004C */  lw      $s3, 0x004C($sp)
/* 14900 800259A0 8FB40050 */  lw      $s4, 0x0050($sp)
/* 14904 800259A4 8FB50054 */  lw      $s5, 0x0054($sp)
/* 14908 800259A8 8FB60058 */  lw      $s6, 0x0058($sp)
/* 1490C 800259AC 8FB7005C */  lw      $s7, 0x005C($sp)
/* 14910 800259B0 8FBE0060 */  lw      $s8, 0x0060($sp)
/* 14914 800259B4 03E00008 */  jr      $ra
/* 14918 800259B8 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000

