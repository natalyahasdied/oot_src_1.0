glabel func_8002650C
/* 1546C 8002650C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 15470 80026510 AFB10020 */  sw      $s1, 0x0020($sp)
/* 15474 80026514 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 15478 80026518 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1547C 8002651C AFB30028 */  sw      $s3, 0x0028($sp)
/* 15480 80026520 AFB20024 */  sw      $s2, 0x0024($sp)
/* 15484 80026524 AFB0001C */  sw      $s0, 0x001C($sp)
/* 15488 80026528 F7B40010 */  sdc1    $f20, 0x0010($sp)
/* 1548C 8002652C 8C901C4C */  lw      $s0, 0x1C4C($a0)           ## 00001C4C
/* 15490 80026530 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 15494 80026534 2413000A */  addiu   $s3, $zero, 0x000A         ## $s3 = 0000000A
/* 15498 80026538 5200001E */  beql    $s0, $zero, .L800265B4
/* 1549C 8002653C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 154A0 80026540 4481A000 */  mtc1    $at, $f20                  ## $f20 = 80.00
/* 154A4 80026544 24120001 */  addiu   $s2, $zero, 0x0001         ## $s2 = 00000001
.L80026548:
/* 154A8 80026548 12110005 */  beq     $s0, $s1, .L80026560
/* 154AC 8002654C 00000000 */  nop
/* 154B0 80026550 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 154B4 80026554 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 154B8 80026558 124E0003 */  beq     $s2, $t6, .L80026568
/* 154BC 8002655C 00000000 */  nop
.L80026560:
/* 154C0 80026560 10000011 */  beq     $zero, $zero, .L800265A8
/* 154C4 80026564 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L80026568:
/* 154C8 80026568 0C00852B */  jal     func_800214AC
/* 154CC 8002656C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 154D0 80026570 860F00B8 */  lh      $t7, 0x00B8($s0)           ## 000000B8
/* 154D4 80026574 01F30019 */  multu   $t7, $s3
/* 154D8 80026578 0000C012 */  mflo    $t8
/* 154DC 8002657C 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 154E0 80026580 00000000 */  nop
/* 154E4 80026584 468021A0 */  cvt.s.w $f6, $f4
/* 154E8 80026588 46143200 */  add.s   $f8, $f6, $f20
/* 154EC 8002658C 4608003E */  c.le.s  $f0, $f8
/* 154F0 80026590 00000000 */  nop
/* 154F4 80026594 45020004 */  bc1fl   .L800265A8
/* 154F8 80026598 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
/* 154FC 8002659C 10000005 */  beq     $zero, $zero, .L800265B4
/* 15500 800265A0 02001025 */  or      $v0, $s0, $zero            ## $v0 = 00000000
/* 15504 800265A4 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L800265A8:
/* 15508 800265A8 1600FFE7 */  bne     $s0, $zero, .L80026548
/* 1550C 800265AC 00000000 */  nop
/* 15510 800265B0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800265B4:
/* 15514 800265B4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 15518 800265B8 D7B40010 */  ldc1    $f20, 0x0010($sp)
/* 1551C 800265BC 8FB0001C */  lw      $s0, 0x001C($sp)
/* 15520 800265C0 8FB10020 */  lw      $s1, 0x0020($sp)
/* 15524 800265C4 8FB20024 */  lw      $s2, 0x0024($sp)
/* 15528 800265C8 8FB30028 */  lw      $s3, 0x0028($sp)
/* 1552C 800265CC 03E00008 */  jr      $ra
/* 15530 800265D0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000

