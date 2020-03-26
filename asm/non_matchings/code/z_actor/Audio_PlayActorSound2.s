glabel Audio_PlayActorSound2
/* 11F30 80022FD0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 11F34 80022FD4 AFA5001C */  sw      $a1, 0x001C($sp)
/* 11F38 80022FD8 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 11F3C 80022FDC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 11F40 80022FE0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 11F44 80022FE4 0C0191E0 */  jal     func_80064780
/* 11F48 80022FE8 24C400E4 */  addiu   $a0, $a2, 0x00E4           ## $a0 = 000000E4
/* 11F4C 80022FEC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 11F50 80022FF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 11F54 80022FF4 03E00008 */  jr      $ra
/* 11F58 80022FF8 00000000 */  nop


