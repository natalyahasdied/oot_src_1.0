glabel KaleidoManager_ClearOvl
/* 88C1C 80099CBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 88C20 80099CC0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 88C24 80099CC4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 88C28 80099CC8 8CC70000 */  lw      $a3, 0x0000($a2)           ## 00000000
/* 88C2C 80099CCC 10E0000B */  beq     $a3, $zero, .L80099CFC
/* 88C30 80099CD0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 88C34 80099CD4 8CCE0010 */  lw      $t6, 0x0010($a2)           ## 00000010
/* 88C38 80099CD8 8CCF000C */  lw      $t7, 0x000C($a2)           ## 0000000C
/* 88C3C 80099CDC ACC00014 */  sw      $zero, 0x0014($a2)         ## 00000014
/* 88C40 80099CE0 AFA60018 */  sw      $a2, 0x0018($sp)
/* 88C44 80099CE4 0C000BA0 */  jal     bzero              ## bzero
/* 88C48 80099CE8 01CF2823 */  subu    $a1, $t6, $t7
/* 88C4C 80099CEC 8FA60018 */  lw      $a2, 0x0018($sp)
/* 88C50 80099CF0 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 88C54 80099CF4 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
/* 88C58 80099CF8 AC20E4BC */  sw      $zero, -0x1B44($at)        ## 800FE4BC
.L80099CFC:
/* 88C5C 80099CFC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 88C60 80099D00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 88C64 80099D04 03E00008 */  jr      $ra
/* 88C68 80099D08 00000000 */  nop


