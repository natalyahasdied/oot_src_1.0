glabel TitleCard_Draw
/* 0F87C 8002091C 27BDFF38 */  addiu   $sp, $sp, 0xFF38           ## $sp = FFFFFF38
/* 0F880 80020920 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0F884 80020924 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0F888 80020928 AFBF001C */  sw      $ra, 0x001C($sp)
/* 0F88C 8002092C 860E000C */  lh      $t6, 0x000C($s0)           ## 0000000C
/* 0F890 80020930 51C0014F */  beql    $t6, $zero, .L80020E70
/* 0F894 80020934 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0F898 80020938 92090008 */  lbu     $t1, 0x0008($s0)           ## 00000008
/* 0F89C 8002093C 860F0004 */  lh      $t7, 0x0004($s0)           ## 00000004
/* 0F8A0 80020940 92080009 */  lbu     $t0, 0x0009($s0)           ## 00000009
/* 0F8A4 80020944 00091040 */  sll     $v0, $t1,  1
/* 0F8A8 80020948 000FC080 */  sll     $t8, $t7,  2
/* 0F8AC 8002094C 0302C823 */  subu    $t9, $t8, $v0
/* 0F8B0 80020950 AFB900B8 */  sw      $t9, 0x00B8($sp)
/* 0F8B4 80020954 860E0006 */  lh      $t6, 0x0006($s0)           ## 00000006
/* 0F8B8 80020958 0008C040 */  sll     $t8, $t0,  1
/* 0F8BC 8002095C 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 0F8C0 80020960 000E7880 */  sll     $t7, $t6,  2
/* 0F8C4 80020964 01F81823 */  subu    $v1, $t7, $t8
/* 0F8C8 80020968 9339B9D9 */  lbu     $t9, -0x4627($t9)          ## 8011B9D9
/* 0F8CC 8002096C 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 0F8D0 80020970 17200006 */  bne     $t9, $zero, .L8002098C
/* 0F8D4 80020974 00000000 */  nop
/* 0F8D8 80020978 01280019 */  multu   $t1, $t0
/* 0F8DC 8002097C AFA000A8 */  sw      $zero, 0x00A8($sp)
/* 0F8E0 80020980 00003812 */  mflo    $a3
/* 0F8E4 80020984 10000006 */  beq     $zero, $zero, .L800209A0
/* 0F8E8 80020988 28E11001 */  slti    $at, $a3, 0x1001
.L8002098C:
/* 0F8EC 8002098C 01280019 */  multu   $t1, $t0
/* 0F8F0 80020990 00003812 */  mflo    $a3
/* 0F8F4 80020994 AFA700A8 */  sw      $a3, 0x00A8($sp)
/* 0F8F8 80020998 00000000 */  nop
/* 0F8FC 8002099C 28E11001 */  slti    $at, $a3, 0x1001
.L800209A0:
/* 0F900 800209A0 14200010 */  bne     $at, $zero, .L800209E4
/* 0F904 800209A4 240E1000 */  addiu   $t6, $zero, 0x1000         ## $t6 = 00001000
/* 0F908 800209A8 01C9001A */  div     $zero, $t6, $t1
/* 0F90C 800209AC 00004012 */  mflo    $t0
/* 0F910 800209B0 15200002 */  bne     $t1, $zero, .L800209BC
/* 0F914 800209B4 00000000 */  nop
/* 0F918 800209B8 0007000D */  break 7
.L800209BC:
/* 0F91C 800209BC 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0F920 800209C0 15210004 */  bne     $t1, $at, .L800209D4
/* 0F924 800209C4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0F928 800209C8 15C10002 */  bne     $t6, $at, .L800209D4
/* 0F92C 800209CC 00000000 */  nop
/* 0F930 800209D0 0006000D */  break 6
.L800209D4:
/* 0F934 800209D4 01280019 */  multu   $t1, $t0
/* 0F938 800209D8 00003812 */  mflo    $a3
/* 0F93C 800209DC 00000000 */  nop
/* 0F940 800209E0 00000000 */  nop
.L800209E4:
/* 0F944 800209E4 00087880 */  sll     $t7, $t0,  2
/* 0F948 800209E8 01E3C021 */  addu    $t8, $t7, $v1
/* 0F94C 800209EC AFB800AC */  sw      $t8, 0x00AC($sp)
/* 0F950 800209F0 8CA402B0 */  lw      $a0, 0x02B0($a1)           ## 000002B0
/* 0F954 800209F4 AFA900C4 */  sw      $t1, 0x00C4($sp)
/* 0F958 800209F8 AFA800C0 */  sw      $t0, 0x00C0($sp)
/* 0F95C 800209FC AFA70038 */  sw      $a3, 0x0038($sp)
/* 0F960 80020A00 AFA500A4 */  sw      $a1, 0x00A4($sp)
/* 0F964 80020A04 AFA300B0 */  sw      $v1, 0x00B0($sp)
/* 0F968 80020A08 0C01F816 */  jal     func_8007E058
/* 0F96C 80020A0C AFA2003C */  sw      $v0, 0x003C($sp)
/* 0F970 80020A10 8FA500A4 */  lw      $a1, 0x00A4($sp)
/* 0F974 80020A14 8FA70038 */  lw      $a3, 0x0038($sp)
/* 0F978 80020A18 8FA800C0 */  lw      $t0, 0x00C0($sp)
/* 0F97C 80020A1C 8FA900C4 */  lw      $t1, 0x00C4($sp)
/* 0F980 80020A20 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0F984 80020A24 ACB902B0 */  sw      $t9, 0x02B0($a1)           ## 000002B0
/* 0F988 80020A28 3C0EFA00 */  lui     $t6, 0xFA00                ## $t6 = FA000000
/* 0F98C 80020A2C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0F990 80020A30 9204000F */  lbu     $a0, 0x000F($s0)           ## 0000000F
/* 0F994 80020A34 01206825 */  or      $t5, $t1, $zero            ## $t5 = 00000000
/* 0F998 80020A38 00047E00 */  sll     $t7, $a0, 24
/* 0F99C 80020A3C 0004C400 */  sll     $t8, $a0, 16
/* 0F9A0 80020A40 01F8C825 */  or      $t9, $t7, $t8              ## $t9 = 00000000
/* 0F9A4 80020A44 00047200 */  sll     $t6, $a0,  8
/* 0F9A8 80020A48 032E7825 */  or      $t7, $t9, $t6              ## $t7 = FA000000
/* 0F9AC 80020A4C 9219000D */  lbu     $t9, 0x000D($s0)           ## 0000000D
/* 0F9B0 80020A50 24E40001 */  addiu   $a0, $a3, 0x0001           ## $a0 = 00000001
/* 0F9B4 80020A54 00042043 */  sra     $a0, $a0,  1
/* 0F9B8 80020A58 01F97025 */  or      $t6, $t7, $t9              ## $t6 = FA000000
/* 0F9BC 80020A5C AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 0F9C0 80020A60 8CA602B0 */  lw      $a2, 0x02B0($a1)           ## 000002B0
/* 0F9C4 80020A64 3C0FFD70 */  lui     $t7, 0xFD70                ## $t7 = FD700000
/* 0F9C8 80020A68 2484FFFF */  addiu   $a0, $a0, 0xFFFF           ## $a0 = 00000000
/* 0F9CC 80020A6C 24D80008 */  addiu   $t8, $a2, 0x0008           ## $t8 = 00000008
/* 0F9D0 80020A70 ACB802B0 */  sw      $t8, 0x02B0($a1)           ## 000002B0
/* 0F9D4 80020A74 ACCF0000 */  sw      $t7, 0x0000($a2)           ## 00000000
/* 0F9D8 80020A78 8FAE00A8 */  lw      $t6, 0x00A8($sp)
/* 0F9DC 80020A7C 8E190000 */  lw      $t9, 0x0000($s0)           ## 00000000
/* 0F9E0 80020A80 032EC021 */  addu    $t8, $t9, $t6
/* 0F9E4 80020A84 ACD80004 */  sw      $t8, 0x0004($a2)           ## 00000004
/* 0F9E8 80020A88 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0F9EC 80020A8C 3C19F570 */  lui     $t9, 0xF570                ## $t9 = F5700000
/* 0F9F0 80020A90 3C0E0700 */  lui     $t6, 0x0700                ## $t6 = 07000000
/* 0F9F4 80020A94 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 0F9F8 80020A98 ACAF02B0 */  sw      $t7, 0x02B0($a1)           ## 000002B0
/* 0F9FC 80020A9C AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 0FA00 80020AA0 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 0FA04 80020AA4 8CA202B0 */  lw      $v0, 0x02B0($a1)           ## 000002B0
/* 0FA08 80020AA8 3C0FE600 */  lui     $t7, 0xE600                ## $t7 = E6000000
/* 0FA0C 80020AAC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0FA10 80020AB0 ACB802B0 */  sw      $t8, 0x02B0($a1)           ## 000002B0
/* 0FA14 80020AB4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 0FA18 80020AB8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0FA1C 80020ABC 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FA20 80020AC0 3C0EF300 */  lui     $t6, 0xF300                ## $t6 = F3000000
/* 0FA24 80020AC4 288107FF */  slti    $at, $a0, 0x07FF
/* 0FA28 80020AC8 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 0FA2C 80020ACC ACB902B0 */  sw      $t9, 0x02B0($a1)           ## 000002B0
/* 0FA30 80020AD0 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 0FA34 80020AD4 10200003 */  beq     $at, $zero, .L80020AE4
/* 0FA38 80020AD8 0060F825 */  or      $ra, $v1, $zero            ## $ra = 00000000
/* 0FA3C 80020ADC 10000002 */  beq     $zero, $zero, .L80020AE8
/* 0FA40 80020AE0 00806025 */  or      $t4, $a0, $zero            ## $t4 = 00000000
.L80020AE4:
/* 0FA44 80020AE4 240C07FF */  addiu   $t4, $zero, 0x07FF         ## $t4 = 000007FF
.L80020AE8:
/* 0FA48 80020AE8 05A10003 */  bgez    $t5, .L80020AF8
/* 0FA4C 80020AEC 000D50C3 */  sra     $t2, $t5,  3
/* 0FA50 80020AF0 25A10007 */  addiu   $at, $t5, 0x0007           ## $at = 00000007
/* 0FA54 80020AF4 000150C3 */  sra     $t2, $at,  3
.L80020AF8:
/* 0FA58 80020AF8 1D400003 */  bgtz    $t2, .L80020B08
/* 0FA5C 80020AFC 01405825 */  or      $t3, $t2, $zero            ## $t3 = 00000000
/* 0FA60 80020B00 10000001 */  beq     $zero, $zero, .L80020B08
/* 0FA64 80020B04 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
.L80020B08:
/* 0FA68 80020B08 1D400003 */  bgtz    $t2, .L80020B18
/* 0FA6C 80020B0C 257807FF */  addiu   $t8, $t3, 0x07FF           ## $t8 = 00000800
/* 0FA70 80020B10 10000002 */  beq     $zero, $zero, .L80020B1C
/* 0FA74 80020B14 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80020B18:
/* 0FA78 80020B18 01403825 */  or      $a3, $t2, $zero            ## $a3 = 00000000
.L80020B1C:
/* 0FA7C 80020B1C 0307001A */  div     $zero, $t8, $a3
/* 0FA80 80020B20 14E00002 */  bne     $a3, $zero, .L80020B2C
/* 0FA84 80020B24 00000000 */  nop
/* 0FA88 80020B28 0007000D */  break 7
.L80020B2C:
/* 0FA8C 80020B2C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0FA90 80020B30 14E10004 */  bne     $a3, $at, .L80020B44
/* 0FA94 80020B34 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0FA98 80020B38 17010002 */  bne     $t8, $at, .L80020B44
/* 0FA9C 80020B3C 00000000 */  nop
/* 0FAA0 80020B40 0006000D */  break 6
.L80020B44:
/* 0FAA4 80020B44 00007812 */  mflo    $t7
/* 0FAA8 80020B48 31F90FFF */  andi    $t9, $t7, 0x0FFF           ## $t9 = 00000000
/* 0FAAC 80020B4C 3C010700 */  lui     $at, 0x0700                ## $at = 07000000
/* 0FAB0 80020B50 31980FFF */  andi    $t8, $t4, 0x0FFF           ## $t8 = 000007FF
/* 0FAB4 80020B54 00187B00 */  sll     $t7, $t8, 12
/* 0FAB8 80020B58 03217025 */  or      $t6, $t9, $at              ## $t6 = 07000000
/* 0FABC 80020B5C 01CFC825 */  or      $t9, $t6, $t7              ## $t9 = E7000000
/* 0FAC0 80020B60 AFF90004 */  sw      $t9, 0x0004($ra)           ## 00000004
/* 0FAC4 80020B64 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FAC8 80020B68 3C0EE700 */  lui     $t6, 0xE700                ## $t6 = E7000000
/* 0FACC 80020B6C 25B90007 */  addiu   $t9, $t5, 0x0007           ## $t9 = 00000007
/* 0FAD0 80020B70 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 0FAD4 80020B74 ACB802B0 */  sw      $t8, 0x02B0($a1)           ## 000002B0
/* 0FAD8 80020B78 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 0FADC 80020B7C AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 0FAE0 80020B80 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FAE4 80020B84 0019C0C3 */  sra     $t8, $t9,  3
/* 0FAE8 80020B88 330E01FF */  andi    $t6, $t8, 0x01FF           ## $t6 = 00000008
/* 0FAEC 80020B8C 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 0FAF0 80020B90 ACAF02B0 */  sw      $t7, 0x02B0($a1)           ## 000002B0
/* 0FAF4 80020B94 000E7A40 */  sll     $t7, $t6,  9
/* 0FAF8 80020B98 3C01F568 */  lui     $at, 0xF568                ## $at = F5680000
/* 0FAFC 80020B9C 01E1C825 */  or      $t9, $t7, $at              ## $t9 = F5680008
/* 0FB00 80020BA0 AFB9002C */  sw      $t9, 0x002C($sp)
/* 0FB04 80020BA4 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 0FB08 80020BA8 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 0FB0C 80020BAC 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FB10 80020BB0 252FFFFF */  addiu   $t7, $t1, 0xFFFF           ## $t7 = FFFFFFFF
/* 0FB14 80020BB4 000FC880 */  sll     $t9, $t7,  2
/* 0FB18 80020BB8 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 0FB1C 80020BBC ACB802B0 */  sw      $t8, 0x02B0($a1)           ## 000002B0
/* 0FB20 80020BC0 3C0EF200 */  lui     $t6, 0xF200                ## $t6 = F2000000
/* 0FB24 80020BC4 33380FFF */  andi    $t8, $t9, 0x0FFF           ## $t8 = 00000008
/* 0FB28 80020BC8 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 0FB2C 80020BCC 00187300 */  sll     $t6, $t8, 12
/* 0FB30 80020BD0 250FFFFF */  addiu   $t7, $t0, 0xFFFF           ## $t7 = FFFFFFFF
/* 0FB34 80020BD4 000FC880 */  sll     $t9, $t7,  2
/* 0FB38 80020BD8 33380FFF */  andi    $t8, $t9, 0x0FFF           ## $t8 = 00000008
/* 0FB3C 80020BDC 01D87825 */  or      $t7, $t6, $t8              ## $t7 = F2000008
/* 0FB40 80020BE0 AFAE0028 */  sw      $t6, 0x0028($sp)
/* 0FB44 80020BE4 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 0FB48 80020BE8 8FAB00B8 */  lw      $t3, 0x00B8($sp)
/* 0FB4C 80020BEC 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FB50 80020BF0 3C01E400 */  lui     $at, 0xE400                ## $at = E4000000
/* 0FB54 80020BF4 317F0FFF */  andi    $ra, $t3, 0x0FFF           ## $ra = 00000001
/* 0FB58 80020BF8 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 0FB5C 80020BFC ACB902B0 */  sw      $t9, 0x02B0($a1)           ## 000002B0
/* 0FB60 80020C00 8FAE003C */  lw      $t6, 0x003C($sp)
/* 0FB64 80020C04 8FAF00AC */  lw      $t7, 0x00AC($sp)
/* 0FB68 80020C08 001FFB00 */  sll     $ra, $ra, 12
/* 0FB6C 80020C0C 000EC040 */  sll     $t8, $t6,  1
/* 0FB70 80020C10 030B3821 */  addu    $a3, $t8, $t3
/* 0FB74 80020C14 24E7FFFC */  addiu   $a3, $a3, 0xFFFC           ## $a3 = FFFFFFFC
/* 0FB78 80020C18 30E70FFF */  andi    $a3, $a3, 0x0FFF           ## $a3 = 00000FFC
/* 0FB7C 80020C1C 00073B00 */  sll     $a3, $a3, 12
/* 0FB80 80020C20 25F9FFFF */  addiu   $t9, $t7, 0xFFFF           ## $t9 = F2000007
/* 0FB84 80020C24 332E0FFF */  andi    $t6, $t9, 0x0FFF           ## $t6 = 00000007
/* 0FB88 80020C28 00E13825 */  or      $a3, $a3, $at              ## $a3 = E4000FFC
/* 0FB8C 80020C2C 00EEC025 */  or      $t8, $a3, $t6              ## $t8 = E4000FFF
/* 0FB90 80020C30 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 0FB94 80020C34 8FAF00B0 */  lw      $t7, 0x00B0($sp)
/* 0FB98 80020C38 31F90FFF */  andi    $t9, $t7, 0x0FFF           ## $t9 = 00000008
/* 0FB9C 80020C3C 03F97025 */  or      $t6, $ra, $t9              ## $t6 = 00000009
/* 0FBA0 80020C40 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 0FBA4 80020C44 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FBA8 80020C48 3C0FE100 */  lui     $t7, 0xE100                ## $t7 = E1000000
/* 0FBAC 80020C4C 3C0EF100 */  lui     $t6, 0xF100                ## $t6 = F1000000
/* 0FBB0 80020C50 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 0FBB4 80020C54 ACB802B0 */  sw      $t8, 0x02B0($a1)           ## 000002B0
/* 0FBB8 80020C58 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 0FBBC 80020C5C AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 0FBC0 80020C60 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FBC4 80020C64 3C180400 */  lui     $t8, 0x0400                ## $t8 = 04000000
/* 0FBC8 80020C68 37180400 */  ori     $t8, $t8, 0x0400           ## $t8 = 04000400
/* 0FBCC 80020C6C 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 0FBD0 80020C70 ACB902B0 */  sw      $t9, 0x02B0($a1)           ## 000002B0
/* 0FBD4 80020C74 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 0FBD8 80020C78 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 0FBDC 80020C7C 920F0009 */  lbu     $t7, 0x0009($s0)           ## 00000009
/* 0FBE0 80020C80 AFA70024 */  sw      $a3, 0x0024($sp)
/* 0FBE4 80020C84 01E84023 */  subu    $t0, $t7, $t0
/* 0FBE8 80020C88 59000079 */  blezl   $t0, .L80020E70
/* 0FBEC 80020C8C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0FBF0 80020C90 8CA202B0 */  lw      $v0, 0x02B0($a1)           ## 000002B0
/* 0FBF4 80020C94 3C0EFD70 */  lui     $t6, 0xFD70                ## $t6 = FD700000
/* 0FBF8 80020C98 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0FBFC 80020C9C ACB902B0 */  sw      $t9, 0x02B0($a1)           ## 000002B0
/* 0FC00 80020CA0 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0FC04 80020CA4 8FAF00A8 */  lw      $t7, 0x00A8($sp)
/* 0FC08 80020CA8 8E180000 */  lw      $t8, 0x0000($s0)           ## 00000000
/* 0FC0C 80020CAC 030FC821 */  addu    $t9, $t8, $t7
/* 0FC10 80020CB0 272E1000 */  addiu   $t6, $t9, 0x1000           ## $t6 = 00001008
/* 0FC14 80020CB4 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 0FC18 80020CB8 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FC1C 80020CBC 3C0FF570 */  lui     $t7, 0xF570                ## $t7 = F5700000
/* 0FC20 80020CC0 3C190700 */  lui     $t9, 0x0700                ## $t9 = 07000000
/* 0FC24 80020CC4 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 0FC28 80020CC8 ACB802B0 */  sw      $t8, 0x02B0($a1)           ## 000002B0
/* 0FC2C 80020CCC AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 0FC30 80020CD0 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 0FC34 80020CD4 8CA602B0 */  lw      $a2, 0x02B0($a1)           ## 000002B0
/* 0FC38 80020CD8 3C18E600 */  lui     $t8, 0xE600                ## $t8 = E6000000
/* 0FC3C 80020CDC 24CE0008 */  addiu   $t6, $a2, 0x0008           ## $t6 = 00000008
/* 0FC40 80020CE0 ACAE02B0 */  sw      $t6, 0x02B0($a1)           ## 000002B0
/* 0FC44 80020CE4 ACC00004 */  sw      $zero, 0x0004($a2)         ## 00000004
/* 0FC48 80020CE8 ACD80000 */  sw      $t8, 0x0000($a2)           ## 00000000
/* 0FC4C 80020CEC 01280019 */  multu   $t1, $t0
/* 0FC50 80020CF0 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FC54 80020CF4 3C19F300 */  lui     $t9, 0xF300                ## $t9 = F3000000
/* 0FC58 80020CF8 240C07FF */  addiu   $t4, $zero, 0x07FF         ## $t4 = 000007FF
/* 0FC5C 80020CFC 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 0FC60 80020D00 ACAF02B0 */  sw      $t7, 0x02B0($a1)           ## 000002B0
/* 0FC64 80020D04 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 0FC68 80020D08 00606825 */  or      $t5, $v1, $zero            ## $t5 = 00000000
/* 0FC6C 80020D0C 00002012 */  mflo    $a0
/* 0FC70 80020D10 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000001
/* 0FC74 80020D14 00042043 */  sra     $a0, $a0,  1
/* 0FC78 80020D18 2484FFFF */  addiu   $a0, $a0, 0xFFFF           ## $a0 = 00000000
/* 0FC7C 80020D1C 288107FF */  slti    $at, $a0, 0x07FF
/* 0FC80 80020D20 10200003 */  beq     $at, $zero, .L80020D30
/* 0FC84 80020D24 00000000 */  nop
/* 0FC88 80020D28 10000001 */  beq     $zero, $zero, .L80020D30
/* 0FC8C 80020D2C 00806025 */  or      $t4, $a0, $zero            ## $t4 = 00000000
.L80020D30:
/* 0FC90 80020D30 1D400003 */  bgtz    $t2, .L80020D40
/* 0FC94 80020D34 01405825 */  or      $t3, $t2, $zero            ## $t3 = 00000000
/* 0FC98 80020D38 10000001 */  beq     $zero, $zero, .L80020D40
/* 0FC9C 80020D3C 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
.L80020D40:
/* 0FCA0 80020D40 1D400003 */  bgtz    $t2, .L80020D50
/* 0FCA4 80020D44 256E07FF */  addiu   $t6, $t3, 0x07FF           ## $t6 = 00000800
/* 0FCA8 80020D48 10000002 */  beq     $zero, $zero, .L80020D54
/* 0FCAC 80020D4C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80020D50:
/* 0FCB0 80020D50 01403825 */  or      $a3, $t2, $zero            ## $a3 = 00000000
.L80020D54:
/* 0FCB4 80020D54 01C7001A */  div     $zero, $t6, $a3
/* 0FCB8 80020D58 14E00002 */  bne     $a3, $zero, .L80020D64
/* 0FCBC 80020D5C 00000000 */  nop
/* 0FCC0 80020D60 0007000D */  break 7
.L80020D64:
/* 0FCC4 80020D64 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0FCC8 80020D68 14E10004 */  bne     $a3, $at, .L80020D7C
/* 0FCCC 80020D6C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0FCD0 80020D70 15C10002 */  bne     $t6, $at, .L80020D7C
/* 0FCD4 80020D74 00000000 */  nop
/* 0FCD8 80020D78 0006000D */  break 6
.L80020D7C:
/* 0FCDC 80020D7C 0000C012 */  mflo    $t8
/* 0FCE0 80020D80 330F0FFF */  andi    $t7, $t8, 0x0FFF           ## $t7 = 00000000
/* 0FCE4 80020D84 3C010700 */  lui     $at, 0x0700                ## $at = 07000000
/* 0FCE8 80020D88 318E0FFF */  andi    $t6, $t4, 0x0FFF           ## $t6 = 00000000
/* 0FCEC 80020D8C 000EC300 */  sll     $t8, $t6, 12
/* 0FCF0 80020D90 01E1C825 */  or      $t9, $t7, $at              ## $t9 = 07000000
/* 0FCF4 80020D94 03387825 */  or      $t7, $t9, $t8              ## $t7 = E7000000
/* 0FCF8 80020D98 ADAF0004 */  sw      $t7, 0x0004($t5)           ## 00000004
/* 0FCFC 80020D9C 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FD00 80020DA0 3C19E700 */  lui     $t9, 0xE700                ## $t9 = E7000000
/* 0FD04 80020DA4 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 0FD08 80020DA8 ACAE02B0 */  sw      $t6, 0x02B0($a1)           ## 000002B0
/* 0FD0C 80020DAC AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 0FD10 80020DB0 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 0FD14 80020DB4 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FD18 80020DB8 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 0FD1C 80020DBC ACB802B0 */  sw      $t8, 0x02B0($a1)           ## 000002B0
/* 0FD20 80020DC0 8FAF002C */  lw      $t7, 0x002C($sp)
/* 0FD24 80020DC4 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 0FD28 80020DC8 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 0FD2C 80020DCC 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FD30 80020DD0 3C19F200 */  lui     $t9, 0xF200                ## $t9 = F2000000
/* 0FD34 80020DD4 250FFFFF */  addiu   $t7, $t0, 0xFFFF           ## $t7 = FFFFFFFF
/* 0FD38 80020DD8 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 0FD3C 80020DDC ACAE02B0 */  sw      $t6, 0x02B0($a1)           ## 000002B0
/* 0FD40 80020DE0 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 0FD44 80020DE4 8FB80028 */  lw      $t8, 0x0028($sp)
/* 0FD48 80020DE8 000F7080 */  sll     $t6, $t7,  2
/* 0FD4C 80020DEC 31D90FFF */  andi    $t9, $t6, 0x0FFF           ## $t9 = 00000008
/* 0FD50 80020DF0 03197825 */  or      $t7, $t8, $t9              ## $t7 = 00000008
/* 0FD54 80020DF4 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 0FD58 80020DF8 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FD5C 80020DFC 0008C880 */  sll     $t9, $t0,  2
/* 0FD60 80020E00 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 0FD64 80020E04 ACAE02B0 */  sw      $t6, 0x02B0($a1)           ## 000002B0
/* 0FD68 80020E08 8FB800AC */  lw      $t8, 0x00AC($sp)
/* 0FD6C 80020E0C 03197821 */  addu    $t7, $t8, $t9
/* 0FD70 80020E10 8FB90024 */  lw      $t9, 0x0024($sp)
/* 0FD74 80020E14 25EEFFFF */  addiu   $t6, $t7, 0xFFFF           ## $t6 = 00000007
/* 0FD78 80020E18 31D80FFF */  andi    $t8, $t6, 0x0FFF           ## $t8 = 00000007
/* 0FD7C 80020E1C 03387825 */  or      $t7, $t9, $t8              ## $t7 = 0000000F
/* 0FD80 80020E20 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 0FD84 80020E24 8FAE00AC */  lw      $t6, 0x00AC($sp)
/* 0FD88 80020E28 31D90FFF */  andi    $t9, $t6, 0x0FFF           ## $t9 = 00000007
/* 0FD8C 80020E2C 03F9C025 */  or      $t8, $ra, $t9              ## $t8 = 00000007
/* 0FD90 80020E30 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 0FD94 80020E34 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FD98 80020E38 3C0EE100 */  lui     $t6, 0xE100                ## $t6 = E1000000
/* 0FD9C 80020E3C 3C18F100 */  lui     $t8, 0xF100                ## $t8 = F1000000
/* 0FDA0 80020E40 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 0FDA4 80020E44 ACAF02B0 */  sw      $t7, 0x02B0($a1)           ## 000002B0
/* 0FDA8 80020E48 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 0FDAC 80020E4C AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 0FDB0 80020E50 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 0FDB4 80020E54 3C0F0400 */  lui     $t7, 0x0400                ## $t7 = 04000000
/* 0FDB8 80020E58 35EF0400 */  ori     $t7, $t7, 0x0400           ## $t7 = 04000400
/* 0FDBC 80020E5C 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 0FDC0 80020E60 ACB902B0 */  sw      $t9, 0x02B0($a1)           ## 000002B0
/* 0FDC4 80020E64 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 0FDC8 80020E68 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 0FDCC 80020E6C 8FBF001C */  lw      $ra, 0x001C($sp)
.L80020E70:
/* 0FDD0 80020E70 8FB00018 */  lw      $s0, 0x0018($sp)
/* 0FDD4 80020E74 27BD00C8 */  addiu   $sp, $sp, 0x00C8           ## $sp = 00000000
/* 0FDD8 80020E78 03E00008 */  jr      $ra
/* 0FDDC 80020E7C 00000000 */  nop


