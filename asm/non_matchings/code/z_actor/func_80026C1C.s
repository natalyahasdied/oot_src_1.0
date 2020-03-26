glabel func_80026C1C
/* 15B7C 80026C1C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 15B80 80026C20 AFBF001C */  sw      $ra, 0x001C($sp)
/* 15B84 80026C24 AFA5002C */  sw      $a1, 0x002C($sp)
/* 15B88 80026C28 AFA60030 */  sw      $a2, 0x0030($sp)
/* 15B8C 80026C2C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 15B90 80026C30 24E401E0 */  addiu   $a0, $a3, 0x01E0           ## $a0 = 000001E0
/* 15B94 80026C34 0C01F617 */  jal     func_8007D85C
/* 15B98 80026C38 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 15B9C 80026C3C 00022400 */  sll     $a0, $v0, 16
/* 15BA0 80026C40 A7A20026 */  sh      $v0, 0x0026($sp)
/* 15BA4 80026C44 00042403 */  sra     $a0, $a0, 16
/* 15BA8 80026C48 0C01F59A */  jal     func_8007D668
/* 15BAC 80026C4C 24054E20 */  addiu   $a1, $zero, 0x4E20         ## $a1 = 00004E20
/* 15BB0 80026C50 87A40026 */  lh      $a0, 0x0026($sp)
/* 15BB4 80026C54 87A5002E */  lh      $a1, 0x002E($sp)
/* 15BB8 80026C58 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 15BBC 80026C5C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 15BC0 80026C60 0C01F5CE */  jal     func_8007D738
/* 15BC4 80026C64 AFA00010 */  sw      $zero, 0x0010($sp)
/* 15BC8 80026C68 87A40026 */  lh      $a0, 0x0026($sp)
/* 15BCC 80026C6C 0C01F5AC */  jal     func_8007D6B0
/* 15BD0 80026C70 87A50032 */  lh      $a1, 0x0032($sp)
/* 15BD4 80026C74 8FBF001C */  lw      $ra, 0x001C($sp)
/* 15BD8 80026C78 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 15BDC 80026C7C 03E00008 */  jr      $ra
/* 15BE0 80026C80 00000000 */  nop


