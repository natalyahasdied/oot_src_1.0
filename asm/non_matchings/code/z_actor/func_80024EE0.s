glabel func_80024EE0
/* 13E40 80024EE0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 13E44 80024EE4 AFB30020 */  sw      $s3, 0x0020($sp)
/* 13E48 80024EE8 AFB2001C */  sw      $s2, 0x001C($sp)
/* 13E4C 80024EEC 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 13E50 80024EF0 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 13E54 80024EF4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 13E58 80024EF8 AFB50028 */  sw      $s5, 0x0028($sp)
/* 13E5C 80024EFC AFB40024 */  sw      $s4, 0x0024($sp)
/* 13E60 80024F00 AFB10018 */  sw      $s1, 0x0018($sp)
/* 13E64 80024F04 AFB00014 */  sw      $s0, 0x0014($sp)
/* 13E68 80024F08 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 13E6C 80024F0C 02408825 */  or      $s1, $s2, $zero            ## $s1 = 00000000
/* 13E70 80024F10 24150060 */  addiu   $s5, $zero, 0x0060         ## $s5 = 00000060
.L80024F14:
/* 13E74 80024F14 8E300010 */  lw      $s0, 0x0010($s1)           ## 00000010
/* 13E78 80024F18 12000007 */  beq     $s0, $zero, .L80024F38
/* 13E7C 80024F1C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
.L80024F20:
/* 13E80 80024F20 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 13E84 80024F24 0C009592 */  jal     func_80025648
/* 13E88 80024F28 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 13E8C 80024F2C 8E300010 */  lw      $s0, 0x0010($s1)           ## 00000010
/* 13E90 80024F30 5600FFFB */  bnel    $s0, $zero, .L80024F20
/* 13E94 80024F34 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
.L80024F38:
/* 13E98 80024F38 26940008 */  addiu   $s4, $s4, 0x0008           ## $s4 = 00000008
/* 13E9C 80024F3C 1695FFF5 */  bne     $s4, $s5, .L80024F14
/* 13EA0 80024F40 26310008 */  addiu   $s1, $s1, 0x0008           ## $s1 = 00000008
/* 13EA4 80024F44 8E44013C */  lw      $a0, 0x013C($s2)           ## 0000013C
/* 13EA8 80024F48 10800004 */  beq     $a0, $zero, .L80024F5C
/* 13EAC 80024F4C 00000000 */  nop
/* 13EB0 80024F50 0C019B24 */  jal     func_80066C90
/* 13EB4 80024F54 00000000 */  nop
/* 13EB8 80024F58 AE40013C */  sw      $zero, 0x013C($s2)         ## 0000013C
.L80024F5C:
/* 13EBC 80024F5C 0C027625 */  jal     func_8009D894
/* 13EC0 80024F60 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 13EC4 80024F64 0C008EF2 */  jal     func_80023BC8
/* 13EC8 80024F68 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 13ECC 80024F6C 0C00ACCB */  jal     func_8002B32C
/* 13ED0 80024F70 00000000 */  nop
/* 13ED4 80024F74 8FBF002C */  lw      $ra, 0x002C($sp)
/* 13ED8 80024F78 8FB00014 */  lw      $s0, 0x0014($sp)
/* 13EDC 80024F7C 8FB10018 */  lw      $s1, 0x0018($sp)
/* 13EE0 80024F80 8FB2001C */  lw      $s2, 0x001C($sp)
/* 13EE4 80024F84 8FB30020 */  lw      $s3, 0x0020($sp)
/* 13EE8 80024F88 8FB40024 */  lw      $s4, 0x0024($sp)
/* 13EEC 80024F8C 8FB50028 */  lw      $s5, 0x0028($sp)
/* 13EF0 80024F90 03E00008 */  jr      $ra
/* 13EF4 80024F94 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000

