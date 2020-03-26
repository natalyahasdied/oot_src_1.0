glabel func_8001F74C
/* 0E6AC 8001F74C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0E6B0 8001F750 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0E6B4 8001F754 AFA40018 */  sw      $a0, 0x0018($sp)
/* 0E6B8 8001F758 14A60007 */  bne     $a1, $a2, .L8001F778
/* 0E6BC 8001F75C 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 0E6C0 8001F760 8FA50018 */  lw      $a1, 0x0018($sp)
/* 0E6C4 8001F764 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0E6C8 8001F768 0C02AE56 */  jal     Matrix_MultVec3f
/* 0E6CC 8001F76C 24A500CC */  addiu   $a1, $a1, 0x00CC           ## $a1 = 000000CC
/* 0E6D0 8001F770 10000008 */  beq     $zero, $zero, .L8001F794
/* 0E6D4 8001F774 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8001F778:
/* 0E6D8 8001F778 54AE0006 */  bnel    $a1, $t6, .L8001F794
/* 0E6DC 8001F77C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0E6E0 8001F780 8FA50018 */  lw      $a1, 0x0018($sp)
/* 0E6E4 8001F784 8FA4002C */  lw      $a0, 0x002C($sp)
/* 0E6E8 8001F788 0C02AE56 */  jal     Matrix_MultVec3f
/* 0E6EC 8001F78C 24A500D8 */  addiu   $a1, $a1, 0x00D8           ## $a1 = 000000D8
/* 0E6F0 8001F790 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8001F794:
/* 0E6F4 8001F794 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0E6F8 8001F798 03E00008 */  jr      $ra
/* 0E6FC 8001F79C 00000000 */  nop


