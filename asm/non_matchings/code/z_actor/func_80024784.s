glabel func_80024784
/* 136E4 80024784 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 136E8 80024788 AFB40028 */  sw      $s4, 0x0028($sp)
/* 136EC 8002478C AFB30024 */  sw      $s3, 0x0024($sp)
/* 136F0 80024790 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 136F4 80024794 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 136F8 80024798 AFBF002C */  sw      $ra, 0x002C($sp)
/* 136FC 8002479C AFB20020 */  sw      $s2, 0x0020($sp)
/* 13700 800247A0 AFB1001C */  sw      $s1, 0x001C($sp)
/* 13704 800247A4 AFB00018 */  sw      $s0, 0x0018($sp)
/* 13708 800247A8 AFA60080 */  sw      $a2, 0x0080($sp)
/* 1370C 800247AC 8E720000 */  lw      $s2, 0x0000($s3)           ## 00000000
/* 13710 800247B0 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 13714 800247B4 3C0FE700 */  lui     $t7, 0xE700                ## $t7 = E7000000
/* 13718 800247B8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 1371C 800247BC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 13720 800247C0 AE4E02D0 */  sw      $t6, 0x02D0($s2)           ## 000002D0
/* 13724 800247C4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 13728 800247C8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 1372C 800247CC 02613821 */  addu    $a3, $s3, $at
/* 13730 800247D0 90F81CC1 */  lbu     $t8, 0x1CC1($a3)           ## 00001CC1
/* 13734 800247D4 3C19EF00 */  lui     $t9, 0xEF00                ## $t9 = EF000000
/* 13738 800247D8 37392C30 */  ori     $t9, $t9, 0x2C30           ## $t9 = EF002C30
/* 1373C 800247DC 1700001D */  bne     $t8, $zero, .L80024854
/* 13740 800247E0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 13744 800247E4 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 13748 800247E8 3C08EF00 */  lui     $t0, 0xEF00                ## $t0 = EF000000
/* 1374C 800247EC 3C090050 */  lui     $t1, 0x0050                ## $t1 = 00500000
/* 13750 800247F0 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 13754 800247F4 AE5902D0 */  sw      $t9, 0x02D0($s2)           ## 000002D0
/* 13758 800247F8 35294365 */  ori     $t1, $t1, 0x4365           ## $t1 = 00504365
/* 1375C 800247FC 35082C30 */  ori     $t0, $t0, 0x2C30           ## $t0 = EF002C30
/* 13760 80024800 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 13764 80024804 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 13768 80024808 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 1376C 8002480C 3C0BFC11 */  lui     $t3, 0xFC11                ## $t3 = FC110000
/* 13770 80024810 3C0CFF2F */  lui     $t4, 0xFF2F                ## $t4 = FF2F0000
/* 13774 80024814 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 13778 80024818 AE4A02D0 */  sw      $t2, 0x02D0($s2)           ## 000002D0
/* 1377C 8002481C 358CFFFF */  ori     $t4, $t4, 0xFFFF           ## $t4 = FF2FFFFF
/* 13780 80024820 356B9623 */  ori     $t3, $t3, 0x9623           ## $t3 = FC119623
/* 13784 80024824 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 13788 80024828 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 1378C 8002482C 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 13790 80024830 3C0FFF00 */  lui     $t7, 0xFF00                ## $t7 = FF000000
/* 13794 80024834 35EF00FF */  ori     $t7, $t7, 0x00FF           ## $t7 = FF0000FF
/* 13798 80024838 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 1379C 8002483C AE4D02D0 */  sw      $t5, 0x02D0($s2)           ## 000002D0
/* 137A0 80024840 3C0EFA00 */  lui     $t6, 0xFA00                ## $t6 = FA000000
/* 137A4 80024844 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 137A8 80024848 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 137AC 8002484C 1000001B */  beq     $zero, $zero, .L800248BC
/* 137B0 80024850 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
.L80024854:
/* 137B4 80024854 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 137B8 80024858 3C08AF50 */  lui     $t0, 0xAF50                ## $t0 = AF500000
/* 137BC 8002485C 35084365 */  ori     $t0, $t0, 0x4365           ## $t0 = AF504365
/* 137C0 80024860 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 137C4 80024864 AE5802D0 */  sw      $t8, 0x02D0($s2)           ## 000002D0
/* 137C8 80024868 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 137CC 8002486C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 137D0 80024870 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 137D4 80024874 3C0AFC37 */  lui     $t2, 0xFC37                ## $t2 = FC370000
/* 137D8 80024878 3C0B117B */  lui     $t3, 0x117B                ## $t3 = 117B0000
/* 137DC 8002487C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 137E0 80024880 AE4902D0 */  sw      $t1, 0x02D0($s2)           ## 000002D0
/* 137E4 80024884 356B9FCF */  ori     $t3, $t3, 0x9FCF           ## $t3 = 117B9FCF
/* 137E8 80024888 354A3C6E */  ori     $t2, $t2, 0x3C6E           ## $t2 = FC373C6E
/* 137EC 8002488C AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 137F0 80024890 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 137F4 80024894 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 137F8 80024898 3C0DFA00 */  lui     $t5, 0xFA00                ## $t5 = FA000000
/* 137FC 8002489C 3C0E4A4A */  lui     $t6, 0x4A4A                ## $t6 = 4A4A0000
/* 13800 800248A0 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 13804 800248A4 AE4C02D0 */  sw      $t4, 0x02D0($s2)           ## 000002D0
/* 13808 800248A8 35CE4A4A */  ori     $t6, $t6, 0x4A4A           ## $t6 = 4A4A4A4A
/* 1380C 800248AC 35AD00FF */  ori     $t5, $t5, 0x00FF           ## $t5 = FA0000FF
/* 13810 800248B0 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 13814 800248B4 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 13818 800248B8 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
.L800248BC:
/* 1381C 800248BC 3C18EE00 */  lui     $t8, 0xEE00                ## $t8 = EE000000
/* 13820 800248C0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 13824 800248C4 AE4F02D0 */  sw      $t7, 0x02D0($s2)           ## 000002D0
/* 13828 800248C8 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 1382C 800248CC AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 13830 800248D0 0C009184 */  jal     func_80024610
/* 13834 800248D4 AFA70030 */  sw      $a3, 0x0030($sp)
/* 13838 800248D8 8FB00080 */  lw      $s0, 0x0080($sp)
/* 1383C 800248DC 1A800008 */  blez    $s4, .L80024900
/* 13840 800248E0 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 13844 800248E4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
.L800248E8:
/* 13848 800248E8 8E050000 */  lw      $a1, 0x0000($s0)           ## 00000000
/* 1384C 800248EC 0C0090A0 */  jal     func_80024280              ## Actor_draw
/* 13850 800248F0 26100004 */  addiu   $s0, $s0, 0x0004           ## $s0 = 00000004
/* 13854 800248F4 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 13858 800248F8 5634FFFB */  bnel    $s1, $s4, .L800248E8
/* 1385C 800248FC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
.L80024900:
/* 13860 80024900 8FB90030 */  lw      $t9, 0x0030($sp)
/* 13864 80024904 3C0CEF00 */  lui     $t4, 0xEF00                ## $t4 = EF000000
/* 13868 80024908 3C0FFC11 */  lui     $t7, 0xFC11                ## $t7 = FC110000
/* 1386C 8002490C 93281CC1 */  lbu     $t0, 0x1CC1($t9)           ## 00001CC1
/* 13870 80024910 358C2C30 */  ori     $t4, $t4, 0x2C30           ## $t4 = EF002C30
/* 13874 80024914 35EF9623 */  ori     $t7, $t7, 0x9623           ## $t7 = FC119623
/* 13878 80024918 51000020 */  beql    $t0, $zero, .L8002499C
/* 1387C 8002491C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 13880 80024920 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 13884 80024924 3C0AE700 */  lui     $t2, 0xE700                ## $t2 = E7000000
/* 13888 80024928 3C08FA00 */  lui     $t0, 0xFA00                ## $t0 = FA000000
/* 1388C 8002492C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 13890 80024930 AE4902D0 */  sw      $t1, 0x02D0($s2)           ## 000002D0
/* 13894 80024934 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 13898 80024938 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 1389C 8002493C 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 138A0 80024940 3C0D0050 */  lui     $t5, 0x0050                ## $t5 = 00500000
/* 138A4 80024944 35AD4345 */  ori     $t5, $t5, 0x4345           ## $t5 = 00504345
/* 138A8 80024948 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 138AC 8002494C AE4B02D0 */  sw      $t3, 0x02D0($s2)           ## 000002D0
/* 138B0 80024950 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 138B4 80024954 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 138B8 80024958 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 138BC 8002495C 3C18FF2F */  lui     $t8, 0xFF2F                ## $t8 = FF2F0000
/* 138C0 80024960 3718FFFF */  ori     $t8, $t8, 0xFFFF           ## $t8 = FF2FFFFF
/* 138C4 80024964 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 138C8 80024968 AE4E02D0 */  sw      $t6, 0x02D0($s2)           ## 000002D0
/* 138CC 8002496C AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 138D0 80024970 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 138D4 80024974 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 138D8 80024978 3C09FF00 */  lui     $t1, 0xFF00                ## $t1 = FF000000
/* 138DC 8002497C 352900FF */  ori     $t1, $t1, 0x00FF           ## $t1 = FF0000FF
/* 138E0 80024980 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 138E4 80024984 AE5902D0 */  sw      $t9, 0x02D0($s2)           ## 000002D0
/* 138E8 80024988 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 138EC 8002498C AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 138F0 80024990 0C009184 */  jal     func_80024610
/* 138F4 80024994 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 138F8 80024998 8FBF002C */  lw      $ra, 0x002C($sp)
.L8002499C:
/* 138FC 8002499C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 13900 800249A0 8FB1001C */  lw      $s1, 0x001C($sp)
/* 13904 800249A4 8FB20020 */  lw      $s2, 0x0020($sp)
/* 13908 800249A8 8FB30024 */  lw      $s3, 0x0024($sp)
/* 1390C 800249AC 8FB40028 */  lw      $s4, 0x0028($sp)
/* 13910 800249B0 03E00008 */  jr      $ra
/* 13914 800249B4 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000


