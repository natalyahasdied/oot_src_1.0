glabel func_80027854
/* 167B4 80027854 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 167B8 80027858 AFBF002C */  sw      $ra, 0x002C($sp)
/* 167BC 8002785C AFA40048 */  sw      $a0, 0x0048($sp)
/* 167C0 80027860 AFA60050 */  sw      $a2, 0x0050($sp)
/* 167C4 80027864 AFA70054 */  sw      $a3, 0x0054($sp)
/* 167C8 80027868 87AE0052 */  lh      $t6, 0x0052($sp)
/* 167CC 8002786C 3C18800F */  lui     $t8, 0x800F                ## $t8 = 800F0000
/* 167D0 80027870 271883C0 */  addiu   $t8, $t8, 0x83C0           ## $t8 = 800E83C0
/* 167D4 80027874 000E7880 */  sll     $t7, $t6,  2
/* 167D8 80027878 01EE7823 */  subu    $t7, $t7, $t6
/* 167DC 8002787C 000F78C0 */  sll     $t7, $t7,  3
/* 167E0 80027880 87B90056 */  lh      $t9, 0x0056($sp)
/* 167E4 80027884 01F81821 */  addu    $v1, $t7, $t8
/* 167E8 80027888 8C660010 */  lw      $a2, 0x0010($v1)           ## 00000010
/* 167EC 8002788C 84670014 */  lh      $a3, 0x0014($v1)           ## 00000014
/* 167F0 80027890 AFA30030 */  sw      $v1, 0x0030($sp)
/* 167F4 80027894 8FA40048 */  lw      $a0, 0x0048($sp)
/* 167F8 80027898 AFA5004C */  sw      $a1, 0x004C($sp)
/* 167FC 8002789C 0C009D93 */  jal     func_8002764C
/* 16800 800278A0 AFB90010 */  sw      $t9, 0x0010($sp)
/* 16804 800278A4 8FA30030 */  lw      $v1, 0x0030($sp)
/* 16808 800278A8 8FA5004C */  lw      $a1, 0x004C($sp)
/* 1680C 800278AC 27A80038 */  addiu   $t0, $sp, 0x0038           ## $t0 = FFFFFFF0
/* 16810 800278B0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 16814 800278B4 A4A20002 */  sh      $v0, 0x0002($a1)           ## 00000002
/* 16818 800278B8 886A0000 */  lwl     $t2, 0x0000($v1)           ## 00000000
/* 1681C 800278BC 986A0003 */  lwr     $t2, 0x0003($v1)           ## 00000003
/* 16820 800278C0 AD0A0000 */  sw      $t2, 0x0000($t0)           ## FFFFFFF0
/* 16824 800278C4 88690004 */  lwl     $t1, 0x0004($v1)           ## 00000004
/* 16828 800278C8 98690007 */  lwr     $t1, 0x0007($v1)           ## 00000007
/* 1682C 800278CC AD090004 */  sw      $t1, 0x0004($t0)           ## FFFFFFF4
/* 16830 800278D0 886A0008 */  lwl     $t2, 0x0008($v1)           ## 00000008
/* 16834 800278D4 986A000B */  lwr     $t2, 0x000B($v1)           ## 0000000B
/* 16838 800278D8 AD0A0008 */  sw      $t2, 0x0008($t0)           ## FFFFFFF8
/* 1683C 800278DC 946A000C */  lhu     $t2, 0x000C($v1)           ## 0000000C
/* 16840 800278E0 A50A000C */  sh      $t2, 0x000C($t0)           ## FFFFFFFC
/* 16844 800278E4 84A40002 */  lh      $a0, 0x0002($a1)           ## 00000002
/* 16848 800278E8 10810007 */  beq     $a0, $at, .L80027908
/* 1684C 800278EC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 16850 800278F0 1081000B */  beq     $a0, $at, .L80027920
/* 16854 800278F4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 16858 800278F8 50810007 */  beql    $a0, $at, .L80027918
/* 1685C 800278FC A7A0003E */  sh      $zero, 0x003E($sp)
/* 16860 80027900 10000009 */  beq     $zero, $zero, .L80027928
/* 16864 80027904 87AB003A */  lh      $t3, 0x003A($sp)
.L80027908:
/* 16868 80027908 A7A00038 */  sh      $zero, 0x0038($sp)
/* 1686C 8002790C A7A0003C */  sh      $zero, 0x003C($sp)
/* 16870 80027910 A7A0003A */  sh      $zero, 0x003A($sp)
/* 16874 80027914 A7A0003E */  sh      $zero, 0x003E($sp)
.L80027918:
/* 16878 80027918 A7A00042 */  sh      $zero, 0x0042($sp)
/* 1687C 8002791C A7A00040 */  sh      $zero, 0x0040($sp)
.L80027920:
/* 16880 80027920 A3A00044 */  sb      $zero, 0x0044($sp)
/* 16884 80027924 87AB003A */  lh      $t3, 0x003A($sp)
.L80027928:
/* 16888 80027928 87AC003E */  lh      $t4, 0x003E($sp)
/* 1688C 8002792C 87AD0042 */  lh      $t5, 0x0042($sp)
/* 16890 80027930 87AE0040 */  lh      $t6, 0x0040($sp)
/* 16894 80027934 93AF0044 */  lbu     $t7, 0x0044($sp)
/* 16898 80027938 8FA40048 */  lw      $a0, 0x0048($sp)
/* 1689C 8002793C 87A60038 */  lh      $a2, 0x0038($sp)
/* 168A0 80027940 87A7003C */  lh      $a3, 0x003C($sp)
/* 168A4 80027944 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 168A8 80027948 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 168AC 8002794C AFAD0018 */  sw      $t5, 0x0018($sp)
/* 168B0 80027950 AFAE001C */  sw      $t6, 0x001C($sp)
/* 168B4 80027954 0C009CBB */  jal     func_800272EC
/* 168B8 80027958 AFAF0020 */  sw      $t7, 0x0020($sp)
/* 168BC 8002795C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 168C0 80027960 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 168C4 80027964 03E00008 */  jr      $ra
/* 168C8 80027968 00000000 */  nop


