.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osDriveRomInit
/* 011A0 80001600 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 011A4 80001604 AFBF001C */  sw      $ra, 0x001C($sp)
/* 011A8 80001608 0C00076C */  jal     __osPiGetAccess
/* 011AC 8000160C AFB00018 */  sw      $s0, 0x0018($sp)
/* 011B0 80001610 3C0E8000 */  lui     $t6, 0x8000                ## $t6 = 80000000
/* 011B4 80001614 8DCE62D0 */  lw      $t6, 0x62D0($t6)           ## 800062D0
/* 011B8 80001618 3C108001 */  lui     $s0, 0x8001                ## $s0 = 80010000
/* 011BC 8000161C 261088C0 */  addiu   $s0, $s0, 0x88C0           ## $s0 = 800088C0
/* 011C0 80001620 15C00006 */  bne     $t6, $zero, .L8000163C
/* 011C4 80001624 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 011C8 80001628 0C00077D */  jal     __osPiRelAccess
/* 011CC 8000162C 00000000 */  nop
/* 011D0 80001630 3C108001 */  lui     $s0, 0x8001                ## $s0 = 80010000
/* 011D4 80001634 10000063 */  beq     $zero, $zero, .L800017C4
/* 011D8 80001638 260288C0 */  addiu   $v0, $s0, 0x88C0           ## $v0 = 800088C0
.L8000163C:
/* 011DC 8000163C AC2062D0 */  sw      $zero, 0x62D0($at)         ## 000062D0
/* 011E0 80001640 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 011E4 80001644 3C18A600 */  lui     $t8, 0xA600                ## $t8 = A6000000
/* 011E8 80001648 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 011EC 8000164C A20F0004 */  sb      $t7, 0x0004($s0)           ## 80010004
/* 011F0 80001650 AE18000C */  sw      $t8, 0x000C($s0)           ## 8001000C
/* 011F4 80001654 A2000009 */  sb      $zero, 0x0009($s0)         ## 80010009
/* 011F8 80001658 AE000010 */  sw      $zero, 0x0010($s0)         ## 80010010
/* 011FC 8000165C 248488D4 */  addiu   $a0, $a0, 0x88D4           ## $a0 = 800088D4
/* 01200 80001660 0C000BA0 */  jal     bzero              ## bzero
/* 01204 80001664 24050060 */  addiu   $a1, $zero, 0x0060         ## $a1 = 00000060
/* 01208 80001668 3C03A460 */  lui     $v1, 0xA460                ## $v1 = A4600000
/* 0120C 8000166C 34630010 */  ori     $v1, $v1, 0x0010           ## $v1 = A4600010
/* 01210 80001670 8C620000 */  lw      $v0, 0x0000($v1)           ## A4600010
/* 01214 80001674 3C04A460 */  lui     $a0, 0xA460                ## $a0 = A4600000
/* 01218 80001678 34840014 */  ori     $a0, $a0, 0x0014           ## $a0 = A4600014
/* 0121C 8000167C 30590003 */  andi    $t9, $v0, 0x0003           ## $t9 = 00000000
/* 01220 80001680 13200005 */  beq     $t9, $zero, .L80001698
/* 01224 80001684 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 01228 80001688 8C620000 */  lw      $v0, 0x0000($v1)           ## A4600010
.L8000168C:
/* 0122C 8000168C 30490003 */  andi    $t1, $v0, 0x0003           ## $t1 = 00000000
/* 01230 80001690 5520FFFE */  bnel    $t1, $zero, .L8000168C
/* 01234 80001694 8C620000 */  lw      $v0, 0x0000($v1)           ## A4600010
.L80001698:
/* 01238 80001698 3C06A460 */  lui     $a2, 0xA460                ## $a2 = A4600000
/* 0123C 8000169C 34C6001C */  ori     $a2, $a2, 0x001C           ## $a2 = A460001C
/* 01240 800016A0 3C07A460 */  lui     $a3, 0xA460                ## $a3 = A4600000
/* 01244 800016A4 AC850000 */  sw      $a1, 0x0000($a0)           ## A4600014
/* 01248 800016A8 34E70020 */  ori     $a3, $a3, 0x0020           ## $a3 = A4600020
/* 0124C 800016AC 3C08A460 */  lui     $t0, 0xA460                ## $t0 = A4600000
/* 01250 800016B0 ACC00000 */  sw      $zero, 0x0000($a2)         ## A460001C
/* 01254 800016B4 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 01258 800016B8 35080018 */  ori     $t0, $t0, 0x0018           ## $t0 = A4600018
/* 0125C 800016BC ACEA0000 */  sw      $t2, 0x0000($a3)           ## A4600020
/* 01260 800016C0 AD050000 */  sw      $a1, 0x0000($t0)           ## A4600018
/* 01264 800016C4 8E0B000C */  lw      $t3, 0x000C($s0)           ## 8001000C
/* 01268 800016C8 3C01A000 */  lui     $at, 0xA000                ## $at = A0000000
/* 0126C 800016CC 3C038000 */  lui     $v1, 0x8000                ## $v1 = 80000000
/* 01270 800016D0 01616025 */  or      $t4, $t3, $at              ## $t4 = A0000000
/* 01274 800016D4 8D820000 */  lw      $v0, 0x0000($t4)           ## A0000000
/* 01278 800016D8 24636390 */  addiu   $v1, $v1, 0x6390           ## $v1 = 80006390
/* 0127C 800016DC 0002C402 */  srl     $t8, $v0, 16
/* 01280 800016E0 00024D02 */  srl     $t1, $v0, 20
/* 01284 800016E4 3319000F */  andi    $t9, $t8, 0x000F           ## $t9 = 00000000
/* 01288 800016E8 312A000F */  andi    $t2, $t1, 0x000F           ## $t2 = 00000000
/* 0128C 800016EC 00027A02 */  srl     $t7, $v0,  8
/* 01290 800016F0 A20F0008 */  sb      $t7, 0x0008($s0)           ## 80010008
/* 01294 800016F4 A2190006 */  sb      $t9, 0x0006($s0)           ## 80010006
/* 01298 800016F8 A20A0007 */  sb      $t2, 0x0007($s0)           ## 80010007
/* 0129C 800016FC A2020005 */  sb      $v0, 0x0005($s0)           ## 80010005
/* 012A0 80001700 304B00FF */  andi    $t3, $v0, 0x00FF           ## $t3 = 00000000
/* 012A4 80001704 AC8B0000 */  sw      $t3, 0x0000($a0)           ## A4600014
/* 012A8 80001708 920C0006 */  lbu     $t4, 0x0006($s0)           ## 80010006
/* 012AC 8000170C ACCC0000 */  sw      $t4, 0x0000($a2)           ## A460001C
/* 012B0 80001710 920D0007 */  lbu     $t5, 0x0007($s0)           ## 80010007
/* 012B4 80001714 ACED0000 */  sw      $t5, 0x0000($a3)           ## A4600020
/* 012B8 80001718 920E0008 */  lbu     $t6, 0x0008($s0)           ## 80010008
/* 012BC 8000171C AD0E0000 */  sw      $t6, 0x0000($t0)           ## A4600018
/* 012C0 80001720 92180009 */  lbu     $t8, 0x0009($s0)           ## 80010009
/* 012C4 80001724 920F0004 */  lbu     $t7, 0x0004($s0)           ## 80010004
/* 012C8 80001728 0018C880 */  sll     $t9, $t8,  2
/* 012CC 8000172C 00794821 */  addu    $t1, $v1, $t9
/* 012D0 80001730 8D2A0000 */  lw      $t2, 0x0000($t1)           ## 00000000
/* 012D4 80001734 A14F0004 */  sb      $t7, 0x0004($t2)           ## 00000004
/* 012D8 80001738 920C0009 */  lbu     $t4, 0x0009($s0)           ## 80010009
/* 012DC 8000173C 920B0005 */  lbu     $t3, 0x0005($s0)           ## 80010005
/* 012E0 80001740 000C6880 */  sll     $t5, $t4,  2
/* 012E4 80001744 006D7021 */  addu    $t6, $v1, $t5
/* 012E8 80001748 8DD80000 */  lw      $t8, 0x0000($t6)           ## 00000000
/* 012EC 8000174C A30B0005 */  sb      $t3, 0x0005($t8)           ## 00000005
/* 012F0 80001750 92090009 */  lbu     $t1, 0x0009($s0)           ## 80010009
/* 012F4 80001754 92190006 */  lbu     $t9, 0x0006($s0)           ## 80010006
/* 012F8 80001758 00097880 */  sll     $t7, $t1,  2
/* 012FC 8000175C 006F5021 */  addu    $t2, $v1, $t7
/* 01300 80001760 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 00000000
/* 01304 80001764 A1990006 */  sb      $t9, 0x0006($t4)           ## A0000006
/* 01308 80001768 920E0009 */  lbu     $t6, 0x0009($s0)           ## 80010009
/* 0130C 8000176C 920D0007 */  lbu     $t5, 0x0007($s0)           ## 80010007
/* 01310 80001770 000E5880 */  sll     $t3, $t6,  2
/* 01314 80001774 006BC021 */  addu    $t8, $v1, $t3
/* 01318 80001778 8F090000 */  lw      $t1, 0x0000($t8)           ## 00000000
/* 0131C 8000177C A12D0007 */  sb      $t5, 0x0007($t1)           ## 00000007
/* 01320 80001780 920A0009 */  lbu     $t2, 0x0009($s0)           ## 80010009
/* 01324 80001784 920F0008 */  lbu     $t7, 0x0008($s0)           ## 80010008
/* 01328 80001788 000AC880 */  sll     $t9, $t2,  2
/* 0132C 8000178C 00796021 */  addu    $t4, $v1, $t9
/* 01330 80001790 8D8E0000 */  lw      $t6, 0x0000($t4)           ## A0000000
/* 01334 80001794 0C00144C */  jal     __osDisableInt             ## __osResetGlobalIntMask
/* 01338 80001798 A1CF0008 */  sb      $t7, 0x0008($t6)           ## 00000008
/* 0133C 8000179C 3C038000 */  lui     $v1, 0x8000                ## $v1 = 80000000
/* 01340 800017A0 2463638C */  addiu   $v1, $v1, 0x638C           ## $v1 = 8000638C
/* 01344 800017A4 8C6B0000 */  lw      $t3, 0x0000($v1)           ## 8000638C
/* 01348 800017A8 AC700000 */  sw      $s0, 0x0000($v1)           ## 8000638C
/* 0134C 800017AC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 01350 800017B0 0C001468 */  jal     __osRestoreInt
/* 01354 800017B4 AE0B0000 */  sw      $t3, 0x0000($s0)           ## 80010000
/* 01358 800017B8 0C00077D */  jal     __osPiRelAccess
/* 0135C 800017BC 00000000 */  nop
/* 01360 800017C0 02001025 */  or      $v0, $s0, $zero            ## $v0 = 80010000
.L800017C4:
/* 01364 800017C4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 01368 800017C8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 0136C 800017CC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01370 800017D0 03E00008 */  jr      $ra
/* 01374 800017D4 00000000 */  nop
/* 01378 800017D8 00000000 */  nop
/* 0137C 800017DC 00000000 */  nop
