glabel func_80022438
/* 11398 80022438 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 1139C 8002243C AFB00018 */  sw      $s0, 0x0018($sp)
/* 113A0 80022440 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 113A4 80022444 AFBF001C */  sw      $ra, 0x001C($sp)
/* 113A8 80022448 AFA40058 */  sw      $a0, 0x0058($sp)
/* 113AC 8002244C AFA60060 */  sw      $a2, 0x0060($sp)
/* 113B0 80022450 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 113B4 80022454 02011021 */  addu    $v0, $s0, $at
/* 113B8 80022458 804E0A4E */  lb      $t6, 0x0A4E($v0)           ## 00000A4E
/* 113BC 8002245C 8FA40058 */  lw      $a0, 0x0058($sp)
/* 113C0 80022460 260500E0 */  addiu   $a1, $s0, 0x00E0           ## $a1 = 000000E0
/* 113C4 80022464 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 113C8 80022468 27A60048 */  addiu   $a2, $sp, 0x0048           ## $a2 = FFFFFFF0
/* 113CC 8002246C 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 113D0 80022470 468021A0 */  cvt.s.w $f6, $f4
/* 113D4 80022474 E7A60048 */  swc1    $f6, 0x0048($sp)
/* 113D8 80022478 804F0A4F */  lb      $t7, 0x0A4F($v0)           ## 00000A4F
/* 113DC 8002247C 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 113E0 80022480 00000000 */  nop
/* 113E4 80022484 468042A0 */  cvt.s.w $f10, $f8
/* 113E8 80022488 E7AA004C */  swc1    $f10, 0x004C($sp)
/* 113EC 8002248C 80580A50 */  lb      $t8, 0x0A50($v0)           ## 00000A50
/* 113F0 80022490 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 113F4 80022494 00000000 */  nop
/* 113F8 80022498 468084A0 */  cvt.s.w $f18, $f16
/* 113FC 8002249C E7B20050 */  swc1    $f18, 0x0050($sp)
/* 11400 800224A0 0C0088F2 */  jal     func_800223C8
/* 11404 800224A4 8E070000 */  lw      $a3, 0x0000($s0)           ## 00000000
/* 11408 800224A8 8FB90060 */  lw      $t9, 0x0060($sp)
/* 1140C 800224AC 3C08DF00 */  lui     $t0, 0xDF00                ## $t0 = DF000000
/* 11410 800224B0 53200024 */  beql    $t9, $zero, .L80022544
/* 11414 800224B4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 11418 800224B8 8E040000 */  lw      $a0, 0x0000($s0)           ## 00000000
/* 1141C 800224BC 8C8302C4 */  lw      $v1, 0x02C4($a0)           ## 000002C4
/* 11420 800224C0 2463FFF0 */  addiu   $v1, $v1, 0xFFF0           ## $v1 = FFFFFFF0
/* 11424 800224C4 AC8302C4 */  sw      $v1, 0x02C4($a0)           ## 000002C4
/* 11428 800224C8 8E050000 */  lw      $a1, 0x0000($s0)           ## 00000000
/* 1142C 800224CC 8C490000 */  lw      $t1, 0x0000($v0)           ## 00000000
/* 11430 800224D0 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 00000004
/* 11434 800224D4 3C01F200 */  lui     $at, 0xF200                ## $at = F2000000
/* 11438 800224D8 312A0FFF */  andi    $t2, $t1, 0x0FFF           ## $t2 = 00000000
/* 1143C 800224DC 000A5B00 */  sll     $t3, $t2, 12
/* 11440 800224E0 01616025 */  or      $t4, $t3, $at              ## $t4 = F2000000
/* 11444 800224E4 31CF0FFF */  andi    $t7, $t6, 0x0FFF           ## $t7 = 00000000
/* 11448 800224E8 018FC025 */  or      $t8, $t4, $t7              ## $t8 = F2000000
/* 1144C 800224EC AC780000 */  sw      $t8, 0x0000($v1)           ## FFFFFFF0
/* 11450 800224F0 8C590000 */  lw      $t9, 0x0000($v0)           ## 00000000
/* 11454 800224F4 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 00000004
/* 11458 800224F8 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 1145C 800224FC 2729003C */  addiu   $t1, $t9, 0x003C           ## $t1 = 0000003C
/* 11460 80022500 312A0FFF */  andi    $t2, $t1, 0x0FFF           ## $t2 = 0000003C
/* 11464 80022504 000A5B00 */  sll     $t3, $t2, 12
/* 11468 80022508 25CF003C */  addiu   $t7, $t6, 0x003C           ## $t7 = 0000003C
/* 1146C 8002250C 31F80FFF */  andi    $t8, $t7, 0x0FFF           ## $t8 = 0000003C
/* 11470 80022510 01616825 */  or      $t5, $t3, $at              ## $t5 = 01000000
/* 11474 80022514 01B8C825 */  or      $t9, $t5, $t8              ## $t9 = 0100003C
/* 11478 80022518 AC790004 */  sw      $t9, 0x0004($v1)           ## FFFFFFF4
/* 1147C 8002251C AC680008 */  sw      $t0, 0x0008($v1)           ## FFFFFFF8
/* 11480 80022520 AC60000C */  sw      $zero, 0x000C($v1)         ## FFFFFFFC
/* 11484 80022524 8CA702C0 */  lw      $a3, 0x02C0($a1)           ## 000002C0
/* 11488 80022528 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 1148C 8002252C 354A001C */  ori     $t2, $t2, 0x001C           ## $t2 = DB06001C
/* 11490 80022530 24E90008 */  addiu   $t1, $a3, 0x0008           ## $t1 = 00000008
/* 11494 80022534 ACA902C0 */  sw      $t1, 0x02C0($a1)           ## 000002C0
/* 11498 80022538 ACE30004 */  sw      $v1, 0x0004($a3)           ## 00000004
/* 1149C 8002253C ACEA0000 */  sw      $t2, 0x0000($a3)           ## 00000000
/* 114A0 80022540 8FBF001C */  lw      $ra, 0x001C($sp)
.L80022544:
/* 114A4 80022544 8FB00018 */  lw      $s0, 0x0018($sp)
/* 114A8 80022548 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 114AC 8002254C 03E00008 */  jr      $ra
/* 114B0 80022550 00000000 */  nop

