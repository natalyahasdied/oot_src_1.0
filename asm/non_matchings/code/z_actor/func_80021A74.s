glabel func_80021A74
/* 109D4 80021A74 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 109D8 80021A78 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 109DC 80021A7C AFA40018 */  sw      $a0, 0x0018($sp)
/* 109E0 80021A80 AFA60020 */  sw      $a2, 0x0020($sp)
/* 109E4 80021A84 0C0084ED */  jal     func_800213B4
/* 109E8 80021A88 8FA40018 */  lw      $a0, 0x0018($sp)
/* 109EC 80021A8C 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 109F0 80021A90 87B80022 */  lh      $t8, 0x0022($sp)
/* 109F4 80021A94 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 109F8 80021A98 85CF00B6 */  lh      $t7, 0x00B6($t6)           ## 000000B6
/* 109FC 80021A9C 004F1823 */  subu    $v1, $v0, $t7
/* 10A00 80021AA0 00031C00 */  sll     $v1, $v1, 16
/* 10A04 80021AA4 00031C03 */  sra     $v1, $v1, 16
/* 10A08 80021AA8 04600003 */  bltz    $v1, .L80021AB8
/* 10A0C 80021AAC 00031023 */  subu    $v0, $zero, $v1
/* 10A10 80021AB0 10000001 */  beq     $zero, $zero, .L80021AB8
/* 10A14 80021AB4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80021AB8:
/* 10A18 80021AB8 0058082A */  slt     $at, $v0, $t8
/* 10A1C 80021ABC 10200003 */  beq     $at, $zero, .L80021ACC
/* 10A20 80021AC0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 10A24 80021AC4 10000001 */  beq     $zero, $zero, .L80021ACC
/* 10A28 80021AC8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80021ACC:
/* 10A2C 80021ACC 03E00008 */  jr      $ra
/* 10A30 80021AD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


