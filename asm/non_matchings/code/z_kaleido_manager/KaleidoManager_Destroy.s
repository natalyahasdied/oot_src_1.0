glabel KaleidoManager_Destroy
/* 88CDC 80099D7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 88CE0 80099D80 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 88CE4 80099D84 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 88CE8 80099D88 8C84E4BC */  lw      $a0, -0x1B44($a0)          ## 800FE4BC
/* 88CEC 80099D8C 10800005 */  beq     $a0, $zero, .L80099DA4
/* 88CF0 80099D90 00000000 */  nop
/* 88CF4 80099D94 0C02672F */  jal     KaleidoManager_ClearOvl
/* 88CF8 80099D98 00000000 */  nop
/* 88CFC 80099D9C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 88D00 80099DA0 AC20E4BC */  sw      $zero, -0x1B44($at)        ## 800FE4BC
.L80099DA4:
/* 88D04 80099DA4 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 88D08 80099DA8 AC20E4B8 */  sw      $zero, -0x1B48($at)        ## 800FE4B8
/* 88D0C 80099DAC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 88D10 80099DB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 88D14 80099DB4 03E00008 */  jr      $ra
/* 88D18 80099DB8 00000000 */  nop


