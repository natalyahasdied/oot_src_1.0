glabel func_80027C98
/* 16BF8 80027C98 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 16BFC 80027C9C AFB00028 */  sw      $s0, 0x0028($sp)
/* 16C00 80027CA0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 16C04 80027CA4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 16C08 80027CA8 AFA40030 */  sw      $a0, 0x0030($sp)
/* 16C0C 80027CAC 00067080 */  sll     $t6, $a2,  2
/* 16C10 80027CB0 01C67023 */  subu    $t6, $t6, $a2
/* 16C14 80027CB4 000E70C0 */  sll     $t6, $t6,  3
/* 16C18 80027CB8 020E8021 */  addu    $s0, $s0, $t6
/* 16C1C 80027CBC C600000C */  lwc1    $f0, 0x000C($s0)           ## 0000000C
/* 16C20 80027CC0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 16C24 80027CC4 00000000 */  nop
/* 16C28 80027CC8 4600203C */  c.lt.s  $f4, $f0
/* 16C2C 80027CCC 00000000 */  nop
/* 16C30 80027CD0 45000003 */  bc1f    .L80027CE0
/* 16C34 80027CD4 00000000 */  nop
/* 16C38 80027CD8 10000006 */  beq     $zero, $zero, .L80027CF4
/* 16C3C 80027CDC 46000086 */  mov.s   $f2, $f0
.L80027CE0:
/* 16C40 80027CE0 0C022865 */  jal     func_8008A194
/* 16C44 80027CE4 8E040000 */  lw      $a0, 0x0000($s0)           ## 00000000
/* 16C48 80027CE8 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 16C4C 80027CEC 00000000 */  nop
/* 16C50 80027CF0 468030A0 */  cvt.s.w $f2, $f6
.L80027CF4:
/* 16C54 80027CF4 8E050000 */  lw      $a1, 0x0000($s0)           ## 00000000
/* 16C58 80027CF8 8E060004 */  lw      $a2, 0x0004($s0)           ## 00000004
/* 16C5C 80027CFC 8E070008 */  lw      $a3, 0x0008($s0)           ## 00000008
/* 16C60 80027D00 E7A20010 */  swc1    $f2, 0x0010($sp)
/* 16C64 80027D04 920F0010 */  lbu     $t7, 0x0010($s0)           ## 00000010
/* 16C68 80027D08 8FA40030 */  lw      $a0, 0x0030($sp)
/* 16C6C 80027D0C AFAF0014 */  sw      $t7, 0x0014($sp)
/* 16C70 80027D10 C6080014 */  lwc1    $f8, 0x0014($s0)           ## 00000014
/* 16C74 80027D14 0C02345F */  jal     func_8008D17C
/* 16C78 80027D18 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 16C7C 80027D1C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 16C80 80027D20 8FB00028 */  lw      $s0, 0x0028($sp)
/* 16C84 80027D24 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 16C88 80027D28 03E00008 */  jr      $ra
/* 16C8C 80027D2C 00000000 */  nop


