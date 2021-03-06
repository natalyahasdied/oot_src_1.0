glabel osEPiStartDma
/* 03C60 800040C0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03C64 800040C4 3C0E8000 */  lui     $t6, 0x8000                ## $t6 = 80000000
/* 03C68 800040C8 8DCE6370 */  lw      $t6, 0x6370($t6)           ## 80006370
/* 03C6C 800040CC AFBF001C */  sw      $ra, 0x001C($sp)
/* 03C70 800040D0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 03C74 800040D4 AFA5002C */  sw      $a1, 0x002C($sp)
/* 03C78 800040D8 AFA60030 */  sw      $a2, 0x0030($sp)
/* 03C7C 800040DC AFB10018 */  sw      $s1, 0x0018($sp)
/* 03C80 800040E0 15C00003 */  bne     $t6, $zero, .L800040F0
/* 03C84 800040E4 AFB00014 */  sw      $s0, 0x0014($sp)
/* 03C88 800040E8 10000025 */  beq     $zero, $zero, .L80004180
/* 03C8C 800040EC 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L800040F0:
/* 03C90 800040F0 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 03C94 800040F4 8FB8002C */  lw      $t8, 0x002C($sp)
/* 03C98 800040F8 AF0F0014 */  sw      $t7, 0x0014($t8)           ## 00000014
/* 03C9C 800040FC 8FB90030 */  lw      $t9, 0x0030($sp)
/* 03CA0 80004100 17200005 */  bne     $t9, $zero, .L80004118
/* 03CA4 80004104 00000000 */  nop
/* 03CA8 80004108 8FA9002C */  lw      $t1, 0x002C($sp)
/* 03CAC 8000410C 2408000F */  addiu   $t0, $zero, 0x000F         ## $t0 = 0000000F
/* 03CB0 80004110 10000004 */  beq     $zero, $zero, .L80004124
/* 03CB4 80004114 A5280000 */  sh      $t0, 0x0000($t1)           ## 00000000
.L80004118:
/* 03CB8 80004118 8FAB002C */  lw      $t3, 0x002C($sp)
/* 03CBC 8000411C 240A0010 */  addiu   $t2, $zero, 0x0010         ## $t2 = 00000010
/* 03CC0 80004120 A56A0000 */  sh      $t2, 0x0000($t3)           ## 00000000
.L80004124:
/* 03CC4 80004124 8FAC002C */  lw      $t4, 0x002C($sp)
/* 03CC8 80004128 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 03CCC 8000412C 918D0002 */  lbu     $t5, 0x0002($t4)           ## 00000002
/* 03CD0 80004130 15A1000A */  bne     $t5, $at, .L8000415C
/* 03CD4 80004134 00000000 */  nop
/* 03CD8 80004138 0C001580 */  jal     osPiGetCmdQueue
/* 03CDC 8000413C 00000000 */  nop
/* 03CE0 80004140 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 03CE4 80004144 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03CE8 80004148 8FA5002C */  lw      $a1, 0x002C($sp)
/* 03CEC 8000414C 0C0010CC */  jal     osJamMesg              ## osJamMesg
/* 03CF0 80004150 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03CF4 80004154 10000009 */  beq     $zero, $zero, .L8000417C
/* 03CF8 80004158 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
.L8000415C:
/* 03CFC 8000415C 0C001580 */  jal     osPiGetCmdQueue
/* 03D00 80004160 00000000 */  nop
/* 03D04 80004164 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 03D08 80004168 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03D0C 8000416C 8FA5002C */  lw      $a1, 0x002C($sp)
/* 03D10 80004170 0C000788 */  jal     osSendMesg              ## osSendMesg
/* 03D14 80004174 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03D18 80004178 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
.L8000417C:
/* 03D1C 8000417C 02001025 */  or      $v0, $s0, $zero            ## $v0 = 00000000
.L80004180:
/* 03D20 80004180 8FBF001C */  lw      $ra, 0x001C($sp)
/* 03D24 80004184 8FB00014 */  lw      $s0, 0x0014($sp)
/* 03D28 80004188 8FB10018 */  lw      $s1, 0x0018($sp)
/* 03D2C 8000418C 03E00008 */  jr      $ra
/* 03D30 80004190 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03D34 80004194 00000000 */  nop
/* 03D38 80004198 00000000 */  nop
/* 03D3C 8000419C 00000000 */  nop
