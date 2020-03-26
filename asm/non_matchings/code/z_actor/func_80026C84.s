glabel func_80026C84
/* 15BE4 80026C84 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 15BE8 80026C88 AFBF001C */  sw      $ra, 0x001C($sp)
/* 15BEC 80026C8C AFA40028 */  sw      $a0, 0x0028($sp)
/* 15BF0 80026C90 AFA5002C */  sw      $a1, 0x002C($sp)
/* 15BF4 80026C94 AFA60030 */  sw      $a2, 0x0030($sp)
/* 15BF8 80026C98 AFA70034 */  sw      $a3, 0x0034($sp)
/* 15BFC 80026C9C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 15C00 80026CA0 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 15C04 80026CA4 0C01F617 */  jal     func_8007D85C
/* 15C08 80026CA8 248401E0 */  addiu   $a0, $a0, 0x01E0           ## $a0 = 000001E0
/* 15C0C 80026CAC 00022400 */  sll     $a0, $v0, 16
/* 15C10 80026CB0 A7A20026 */  sh      $v0, 0x0026($sp)
/* 15C14 80026CB4 00042403 */  sra     $a0, $a0, 16
/* 15C18 80026CB8 0C01F59A */  jal     func_8007D668
/* 15C1C 80026CBC 87A50036 */  lh      $a1, 0x0036($sp)
/* 15C20 80026CC0 87A40026 */  lh      $a0, 0x0026($sp)
/* 15C24 80026CC4 87A5002E */  lh      $a1, 0x002E($sp)
/* 15C28 80026CC8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 15C2C 80026CCC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 15C30 80026CD0 0C01F5CE */  jal     func_8007D738
/* 15C34 80026CD4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 15C38 80026CD8 87A40026 */  lh      $a0, 0x0026($sp)
/* 15C3C 80026CDC 0C01F5AC */  jal     func_8007D6B0
/* 15C40 80026CE0 87A50032 */  lh      $a1, 0x0032($sp)
/* 15C44 80026CE4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 15C48 80026CE8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 15C4C 80026CEC 03E00008 */  jr      $ra
/* 15C50 80026CF0 00000000 */  nop


