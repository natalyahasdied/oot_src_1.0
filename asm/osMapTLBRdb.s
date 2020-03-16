.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osMapTLBRdb
/* 053F0 80005850 40085000 */  mfc0    $t0, $10
/* 053F4 80005854 2409001F */  addiu   $t1, $zero, 0x001F         ## $t1 = 0000001F
/* 053F8 80005858 40890000 */  mtc0    $t1, $0
/* 053FC 8000585C 40802800 */  mtc0    $zero, $5
/* 05400 80005860 240A0017 */  addiu   $t2, $zero, 0x0017         ## $t2 = 00000017
/* 05404 80005864 3C09C000 */  lui     $t1, 0xC000                ## $t1 = C0000000
/* 05408 80005868 40895000 */  mtc0    $t1, $10
/* 0540C 8000586C 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 05410 80005870 00095982 */  srl     $t3, $t1,  6
/* 05414 80005874 016A5825 */  or      $t3, $t3, $t2              ## $t3 = 00000017
/* 05418 80005878 408B1000 */  mtc0    $t3, $2
/* 0541C 8000587C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 05420 80005880 40891800 */  mtc0    $t1, $3
/* 05424 80005884 00000000 */  nop
/* 05428 80005888 42000002 */  tlbwi
/* 0542C 8000588C 00000000 */  nop
/* 05430 80005890 00000000 */  nop
/* 05434 80005894 00000000 */  nop
/* 05438 80005898 00000000 */  nop
/* 0543C 8000589C 40885000 */  mtc0    $t0, $10
/* 05440 800058A0 03E00008 */  jr      $ra
/* 05444 800058A4 00000000 */  nop
/* 05448 800058A8 00000000 */  nop
/* 0544C 800058AC 00000000 */  nop