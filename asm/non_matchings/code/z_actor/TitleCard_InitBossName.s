glabel TitleCard_InitBossName
/* 0F6E0 80020780 AFA7000C */  sw      $a3, 0x000C($sp)
/* 0F6E4 80020784 00073C00 */  sll     $a3, $a3, 16
/* 0F6E8 80020788 00073C03 */  sra     $a3, $a3, 16
/* 0F6EC 8002078C AFA40000 */  sw      $a0, 0x0000($sp)
/* 0F6F0 80020790 ACA60000 */  sw      $a2, 0x0000($a1)           ## 00000000
/* 0F6F4 80020794 A4A70004 */  sh      $a3, 0x0004($a1)           ## 00000004
/* 0F6F8 80020798 87AE0012 */  lh      $t6, 0x0012($sp)
/* 0F6FC 8002079C 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 0F700 800207A0 A4AE0006 */  sh      $t6, 0x0006($a1)           ## 00000006
/* 0F704 800207A4 93AF0017 */  lbu     $t7, 0x0017($sp)
/* 0F708 800207A8 A0AF0008 */  sb      $t7, 0x0008($a1)           ## 00000008
/* 0F70C 800207AC 93B8001B */  lbu     $t8, 0x001B($sp)
/* 0F710 800207B0 A0B9000A */  sb      $t9, 0x000A($a1)           ## 0000000A
/* 0F714 800207B4 A0A0000B */  sb      $zero, 0x000B($a1)         ## 0000000B
/* 0F718 800207B8 A0B80009 */  sb      $t8, 0x0009($a1)           ## 00000009
/* 0F71C 800207BC 03E00008 */  jr      $ra
/* 0F720 800207C0 00000000 */  nop

