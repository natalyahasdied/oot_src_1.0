glabel TitleCard_Update
/* 0F7C0 80020860 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0F7C4 80020864 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0F7C8 80020868 AFA40018 */  sw      $a0, 0x0018($sp)
/* 0F7CC 8002086C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 0F7D0 80020870 90E3000B */  lbu     $v1, 0x000B($a3)           ## 0000000B
/* 0F7D4 80020874 14600003 */  bne     $v1, $zero, .L80020884
/* 0F7D8 80020878 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 0F7DC 8002087C 10000003 */  beq     $zero, $zero, .L8002088C
/* 0F7E0 80020880 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80020884:
/* 0F7E4 80020884 A0EE000B */  sb      $t6, 0x000B($a3)           ## 0000000B
/* 0F7E8 80020888 31C200FF */  andi    $v0, $t6, 0x00FF           ## $v0 = 000000FF
.L8002088C:
/* 0F7EC 8002088C 54400020 */  bnel    $v0, $zero, .L80020910
/* 0F7F0 80020890 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0F7F4 80020894 90E3000A */  lbu     $v1, 0x000A($a3)           ## 0000000A
/* 0F7F8 80020898 24E4000C */  addiu   $a0, $a3, 0x000C           ## $a0 = 0000000C
/* 0F7FC 8002089C 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 0F800 800208A0 14600003 */  bne     $v1, $zero, .L800208B0
/* 0F804 800208A4 246FFFFF */  addiu   $t7, $v1, 0xFFFF           ## $t7 = FFFFFFFF
/* 0F808 800208A8 10000003 */  beq     $zero, $zero, .L800208B8
/* 0F80C 800208AC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800208B0:
/* 0F810 800208B0 A0EF000A */  sb      $t7, 0x000A($a3)           ## 0000000A
/* 0F814 800208B4 31E200FF */  andi    $v0, $t7, 0x00FF           ## $v0 = 000000FF
.L800208B8:
/* 0F818 800208B8 1440000D */  bne     $v0, $zero, .L800208F0
/* 0F81C 800208BC 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0F820 800208C0 24E4000C */  addiu   $a0, $a3, 0x000C           ## $a0 = 0000000C
/* 0F824 800208C4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0F828 800208C8 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 0F82C 800208CC 0C018DF5 */  jal     Math_ApproxS
/* 0F830 800208D0 AFA7001C */  sw      $a3, 0x001C($sp)
/* 0F834 800208D4 8FA7001C */  lw      $a3, 0x001C($sp)
/* 0F838 800208D8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0F83C 800208DC 24060046 */  addiu   $a2, $zero, 0x0046         ## $a2 = 00000046
/* 0F840 800208E0 0C018DF5 */  jal     Math_ApproxS
/* 0F844 800208E4 24E4000E */  addiu   $a0, $a3, 0x000E           ## $a0 = 0000000E
/* 0F848 800208E8 10000009 */  beq     $zero, $zero, .L80020910
/* 0F84C 800208EC 8FBF0014 */  lw      $ra, 0x0014($sp)
.L800208F0:
/* 0F850 800208F0 0C018DF5 */  jal     Math_ApproxS
/* 0F854 800208F4 AFA7001C */  sw      $a3, 0x001C($sp)
/* 0F858 800208F8 8FA7001C */  lw      $a3, 0x001C($sp)
/* 0F85C 800208FC 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 0F860 80020900 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 0F864 80020904 0C018DF5 */  jal     Math_ApproxS
/* 0F868 80020908 24E4000E */  addiu   $a0, $a3, 0x000E           ## $a0 = 0000000E
/* 0F86C 8002090C 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80020910:
/* 0F870 80020910 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0F874 80020914 03E00008 */  jr      $ra
/* 0F878 80020918 00000000 */  nop


