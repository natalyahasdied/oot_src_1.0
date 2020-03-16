.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osEPiRawStartDma
/* 04280 800046E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04284 800046E4 3C03A460 */  lui     $v1, 0xA460                ## $v1 = A4600000
/* 04288 800046E8 34630010 */  ori     $v1, $v1, 0x0010           ## $v1 = A4600010
/* 0428C 800046EC AFBF001C */  sw      $ra, 0x001C($sp)
/* 04290 800046F0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 04294 800046F4 AFA60028 */  sw      $a2, 0x0028($sp)
/* 04298 800046F8 8C620000 */  lw      $v0, 0x0000($v1)           ## A4600010
/* 0429C 800046FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 042A0 80004700 304E0003 */  andi    $t6, $v0, 0x0003           ## $t6 = 00000000
/* 042A4 80004704 51C00006 */  beql    $t6, $zero, .L80004720
/* 042A8 80004708 92020009 */  lbu     $v0, 0x0009($s0)           ## 00000009
/* 042AC 8000470C 8C620000 */  lw      $v0, 0x0000($v1)           ## A4600010
.L80004710:
/* 042B0 80004710 304F0003 */  andi    $t7, $v0, 0x0003           ## $t7 = 00000000
/* 042B4 80004714 55E0FFFE */  bnel    $t7, $zero, .L80004710
/* 042B8 80004718 8C620000 */  lw      $v0, 0x0000($v1)           ## A4600010
/* 042BC 8000471C 92020009 */  lbu     $v0, 0x0009($s0)           ## 00000009
.L80004720:
/* 042C0 80004720 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 042C4 80004724 92190004 */  lbu     $t9, 0x0004($s0)           ## 00000004
/* 042C8 80004728 0002C080 */  sll     $t8, $v0,  2
/* 042CC 8000472C 00982021 */  addu    $a0, $a0, $t8
/* 042D0 80004730 8C846390 */  lw      $a0, 0x6390($a0)           ## 80006390
/* 042D4 80004734 90880004 */  lbu     $t0, 0x0004($a0)           ## 80000004
/* 042D8 80004738 5328003D */  beql    $t9, $t0, .L80004830
/* 042DC 8000473C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 042E0 80004740 14400019 */  bne     $v0, $zero, .L800047A8
/* 042E4 80004744 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 042E8 80004748 92020005 */  lbu     $v0, 0x0005($s0)           ## 00000005
/* 042EC 8000474C 90890005 */  lbu     $t1, 0x0005($a0)           ## 00000005
/* 042F0 80004750 3C0AA460 */  lui     $t2, 0xA460                ## $t2 = A4600000
/* 042F4 80004754 3C0CA460 */  lui     $t4, 0xA460                ## $t4 = A4600000
/* 042F8 80004758 10490002 */  beq     $v0, $t1, .L80004764
/* 042FC 8000475C 3C0EA460 */  lui     $t6, 0xA460                ## $t6 = A4600000
/* 04300 80004760 AD420014 */  sw      $v0, 0x0014($t2)           ## A4600014
.L80004764:
/* 04304 80004764 92020006 */  lbu     $v0, 0x0006($s0)           ## 00000006
/* 04308 80004768 906B0006 */  lbu     $t3, 0x0006($v1)           ## 00000006
/* 0430C 8000476C 3C18A460 */  lui     $t8, 0xA460                ## $t8 = A4600000
/* 04310 80004770 504B0003 */  beql    $v0, $t3, .L80004780
/* 04314 80004774 92020007 */  lbu     $v0, 0x0007($s0)           ## 00000007
/* 04318 80004778 AD82001C */  sw      $v0, 0x001C($t4)           ## A460001C
/* 0431C 8000477C 92020007 */  lbu     $v0, 0x0007($s0)           ## 00000007
.L80004780:
/* 04320 80004780 906D0007 */  lbu     $t5, 0x0007($v1)           ## 00000007
/* 04324 80004784 504D0003 */  beql    $v0, $t5, .L80004794
/* 04328 80004788 92020008 */  lbu     $v0, 0x0008($s0)           ## 00000008
/* 0432C 8000478C ADC20020 */  sw      $v0, 0x0020($t6)           ## A4600020
/* 04330 80004790 92020008 */  lbu     $v0, 0x0008($s0)           ## 00000008
.L80004794:
/* 04334 80004794 906F0008 */  lbu     $t7, 0x0008($v1)           ## 00000008
/* 04338 80004798 504F001B */  beql    $v0, $t7, .L80004808
/* 0433C 8000479C 920F0004 */  lbu     $t7, 0x0004($s0)           ## 00000004
/* 04340 800047A0 10000018 */  beq     $zero, $zero, .L80004804
/* 04344 800047A4 AF020018 */  sw      $v0, 0x0018($t8)           ## A4600018
.L800047A8:
/* 04348 800047A8 92020005 */  lbu     $v0, 0x0005($s0)           ## 00000005
/* 0434C 800047AC 90790005 */  lbu     $t9, 0x0005($v1)           ## 00000005
/* 04350 800047B0 3C08A460 */  lui     $t0, 0xA460                ## $t0 = A4600000
/* 04354 800047B4 3C0AA460 */  lui     $t2, 0xA460                ## $t2 = A4600000
/* 04358 800047B8 10590002 */  beq     $v0, $t9, .L800047C4
/* 0435C 800047BC 3C0CA460 */  lui     $t4, 0xA460                ## $t4 = A4600000
/* 04360 800047C0 AD020024 */  sw      $v0, 0x0024($t0)           ## A4600024
.L800047C4:
/* 04364 800047C4 92020006 */  lbu     $v0, 0x0006($s0)           ## 00000006
/* 04368 800047C8 90690006 */  lbu     $t1, 0x0006($v1)           ## 00000006
/* 0436C 800047CC 3C0EA460 */  lui     $t6, 0xA460                ## $t6 = A4600000
/* 04370 800047D0 50490003 */  beql    $v0, $t1, .L800047E0
/* 04374 800047D4 92020007 */  lbu     $v0, 0x0007($s0)           ## 00000007
/* 04378 800047D8 AD42002C */  sw      $v0, 0x002C($t2)           ## A460002C
/* 0437C 800047DC 92020007 */  lbu     $v0, 0x0007($s0)           ## 00000007
.L800047E0:
/* 04380 800047E0 906B0007 */  lbu     $t3, 0x0007($v1)           ## 00000007
/* 04384 800047E4 504B0003 */  beql    $v0, $t3, .L800047F4
/* 04388 800047E8 92020008 */  lbu     $v0, 0x0008($s0)           ## 00000008
/* 0438C 800047EC AD820030 */  sw      $v0, 0x0030($t4)           ## A4600030
/* 04390 800047F0 92020008 */  lbu     $v0, 0x0008($s0)           ## 00000008
.L800047F4:
/* 04394 800047F4 906D0008 */  lbu     $t5, 0x0008($v1)           ## 00000008
/* 04398 800047F8 504D0003 */  beql    $v0, $t5, .L80004808
/* 0439C 800047FC 920F0004 */  lbu     $t7, 0x0004($s0)           ## 00000004
/* 043A0 80004800 ADC20028 */  sw      $v0, 0x0028($t6)           ## A4600028
.L80004804:
/* 043A4 80004804 920F0004 */  lbu     $t7, 0x0004($s0)           ## 00000004
.L80004808:
/* 043A8 80004808 A06F0004 */  sb      $t7, 0x0004($v1)           ## 00000004
/* 043AC 8000480C 92180005 */  lbu     $t8, 0x0005($s0)           ## 00000005
/* 043B0 80004810 A0780005 */  sb      $t8, 0x0005($v1)           ## 00000005
/* 043B4 80004814 92190006 */  lbu     $t9, 0x0006($s0)           ## 00000006
/* 043B8 80004818 A0790006 */  sb      $t9, 0x0006($v1)           ## 00000006
/* 043BC 8000481C 92080007 */  lbu     $t0, 0x0007($s0)           ## 00000007
/* 043C0 80004820 A0680007 */  sb      $t0, 0x0007($v1)           ## 00000007
/* 043C4 80004824 92090008 */  lbu     $t1, 0x0008($s0)           ## 00000008
/* 043C8 80004828 A0690008 */  sb      $t1, 0x0008($v1)           ## 00000008
/* 043CC 8000482C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80004830:
/* 043D0 80004830 0C000ED8 */  jal     osVirtualToPhysical              ## osVirtualToPhysical
/* 043D4 80004834 AFA50024 */  sw      $a1, 0x0024($sp)
/* 043D8 80004838 8FA50024 */  lw      $a1, 0x0024($sp)
/* 043DC 8000483C 3C0AA460 */  lui     $t2, 0xA460                ## $t2 = A4600000
/* 043E0 80004840 AD420000 */  sw      $v0, 0x0000($t2)           ## A4600000
/* 043E4 80004844 8FAC0028 */  lw      $t4, 0x0028($sp)
/* 043E8 80004848 8E0B000C */  lw      $t3, 0x000C($s0)           ## 0000000C
/* 043EC 8000484C 3C011FFF */  lui     $at, 0x1FFF                ## $at = 1FFF0000
/* 043F0 80004850 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 1FFFFFFF
/* 043F4 80004854 016C6825 */  or      $t5, $t3, $t4              ## $t5 = 00000000
/* 043F8 80004858 01A17024 */  and     $t6, $t5, $at
/* 043FC 8000485C 3C0FA460 */  lui     $t7, 0xA460                ## $t7 = A4600000
/* 04400 80004860 10A00006 */  beq     $a1, $zero, .L8000487C
/* 04404 80004864 ADEE0004 */  sw      $t6, 0x0004($t7)           ## A4600004
/* 04408 80004868 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0440C 8000486C 10A10008 */  beq     $a1, $at, .L80004890
/* 04410 80004870 8FA90030 */  lw      $t1, 0x0030($sp)
/* 04414 80004874 1000000D */  beq     $zero, $zero, .L800048AC
/* 04418 80004878 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L8000487C:
/* 0441C 8000487C 8FB80030 */  lw      $t8, 0x0030($sp)
/* 04420 80004880 3C08A460 */  lui     $t0, 0xA460                ## $t0 = A4600000
/* 04424 80004884 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 04428 80004888 10000007 */  beq     $zero, $zero, .L800048A8
/* 0442C 8000488C AD19000C */  sw      $t9, 0x000C($t0)           ## A460000C
.L80004890:
/* 04430 80004890 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 04434 80004894 3C0BA460 */  lui     $t3, 0xA460                ## $t3 = A4600000
/* 04438 80004898 10000003 */  beq     $zero, $zero, .L800048A8
/* 0443C 8000489C AD6A0008 */  sw      $t2, 0x0008($t3)           ## A4600008
/* 04440 800048A0 10000002 */  beq     $zero, $zero, .L800048AC
/* 04444 800048A4 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L800048A8:
/* 04448 800048A8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800048AC:
/* 0444C 800048AC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 04450 800048B0 8FB00018 */  lw      $s0, 0x0018($sp)
/* 04454 800048B4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04458 800048B8 03E00008 */  jr      $ra
/* 0445C 800048BC 00000000 */  nop