glabel func_800216F8
/* 10658 800216F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1065C 800216FC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 10660 80021700 AFA40018 */  sw      $a0, 0x0018($sp)
/* 10664 80021704 0C0085BA */  jal     func_800216E8
/* 10668 80021708 8FA40018 */  lw      $a0, 0x0018($sp)
/* 1066C 8002170C 0002102B */  sltu    $v0, $zero, $v0
/* 10670 80021710 10400004 */  beq     $v0, $zero, .L80021724
/* 10674 80021714 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 10678 80021718 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 1067C 8002171C 85C20824 */  lh      $v0, 0x0824($t6)           ## 00000824
/* 10680 80021720 0002102B */  sltu    $v0, $zero, $v0
.L80021724:
/* 10684 80021724 03E00008 */  jr      $ra
/* 10688 80021728 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


