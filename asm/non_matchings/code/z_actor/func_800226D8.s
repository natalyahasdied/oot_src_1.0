glabel func_800226D8
/* 11638 800226D8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1163C 800226DC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 11640 800226E0 AFA40030 */  sw      $a0, 0x0030($sp)
/* 11644 800226E4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 11648 800226E8 8FA50034 */  lw      $a1, 0x0034($sp)
/* 1164C 800226EC 27A4001C */  addiu   $a0, $sp, 0x001C           ## $a0 = FFFFFFEC
/* 11650 800226F0 0C018F2B */  jal     Math_Vec3f_Copy              ## Vec3f_Copy
/* 11654 800226F4 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 11658 800226F8 8FAF0034 */  lw      $t7, 0x0034($sp)
/* 1165C 800226FC 8FA20030 */  lw      $v0, 0x0030($sp)
/* 11660 80022700 27AE0028 */  addiu   $t6, $sp, 0x0028           ## $t6 = FFFFFFF8
/* 11664 80022704 89F900B4 */  lwl     $t9, 0x00B4($t7)           ## 000000B4
/* 11668 80022708 99F900B7 */  lwr     $t9, 0x00B7($t7)           ## 000000B7
/* 1166C 8002270C 27A8001C */  addiu   $t0, $sp, 0x001C           ## $t0 = FFFFFFEC
/* 11670 80022710 A9D90000 */  swl     $t9, 0x0000($t6)           ## FFFFFFF8
/* 11674 80022714 B9D90003 */  swr     $t9, 0x0003($t6)           ## FFFFFFFB
/* 11678 80022718 95F900B8 */  lhu     $t9, 0x00B8($t7)           ## 000000B8
/* 1167C 8002271C A5D90004 */  sh      $t9, 0x0004($t6)           ## FFFFFFFC
/* 11680 80022720 8D0A0000 */  lw      $t2, 0x0000($t0)           ## FFFFFFEC
/* 11684 80022724 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 11688 80022728 8D090004 */  lw      $t1, 0x0004($t0)           ## FFFFFFF0
/* 1168C 8002272C AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 11690 80022730 8D0A0008 */  lw      $t2, 0x0008($t0)           ## FFFFFFF4
/* 11694 80022734 AC4A0008 */  sw      $t2, 0x0008($v0)           ## 00000008
/* 11698 80022738 8D09000C */  lw      $t1, 0x000C($t0)           ## FFFFFFF8
/* 1169C 8002273C AC49000C */  sw      $t1, 0x000C($v0)           ## 0000000C
/* 116A0 80022740 8D0A0010 */  lw      $t2, 0x0010($t0)           ## FFFFFFFC
/* 116A4 80022744 AC4A0010 */  sw      $t2, 0x0010($v0)           ## 00000010
/* 116A8 80022748 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 116AC 8002274C 03E00008 */  jr      $ra
/* 116B0 80022750 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


