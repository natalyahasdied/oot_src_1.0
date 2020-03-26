glabel func_8002AA3C
/* 1999C 8002AA3C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 199A0 8002AA40 AFBF001C */  sw      $ra, 0x001C($sp)
/* 199A4 8002AA44 AFA40030 */  sw      $a0, 0x0030($sp)
/* 199A8 8002AA48 AFA50034 */  sw      $a1, 0x0034($sp)
/* 199AC 8002AA4C AFA60038 */  sw      $a2, 0x0038($sp)
/* 199B0 8002AA50 8FA40030 */  lw      $a0, 0x0030($sp)
/* 199B4 8002AA54 AFA00028 */  sw      $zero, 0x0028($sp)
/* 199B8 8002AA58 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 199BC 8002AA5C 0C037519 */  jal     func_800DD464
/* 199C0 8002AA60 AFA40020 */  sw      $a0, 0x0020($sp)
/* 199C4 8002AA64 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 199C8 8002AA68 10410008 */  beq     $v0, $at, .L8002AA8C
/* 199CC 8002AA6C 8FA40030 */  lw      $a0, 0x0030($sp)
/* 199D0 8002AA70 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 199D4 8002AA74 1041000C */  beq     $v0, $at, .L8002AAA8
/* 199D8 8002AA78 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 199DC 8002AA7C 1041000A */  beq     $v0, $at, .L8002AAA8
/* 199E0 8002AA80 00000000 */  nop
/* 199E4 8002AA84 10000022 */  beq     $zero, $zero, .L8002AB10
/* 199E8 8002AA88 8FA20028 */  lw      $v0, 0x0028($sp)
.L8002AA8C:
/* 199EC 8002AA8C 8FAE0034 */  lw      $t6, 0x0034($sp)
/* 199F0 8002AA90 87A5003A */  lh      $a1, 0x003A($sp)
/* 199F4 8002AA94 0C00AA77 */  jal     func_8002A9DC
/* 199F8 8002AA98 95C6010E */  lhu     $a2, 0x010E($t6)           ## 0000010E
/* 199FC 8002AA9C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 19A00 8002AAA0 1000001A */  beq     $zero, $zero, .L8002AB0C
/* 19A04 8002AAA4 AFAF0028 */  sw      $t7, 0x0028($sp)
.L8002AAA8:
/* 19A08 8002AAA8 0C035844 */  jal     func_800D6110
/* 19A0C 8002AAAC 8FA40030 */  lw      $a0, 0x0030($sp)
/* 19A10 8002AAB0 10400016 */  beq     $v0, $zero, .L8002AB0C
/* 19A14 8002AAB4 8FA40030 */  lw      $a0, 0x0030($sp)
/* 19A18 8002AAB8 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19A1C 8002AABC 0C00AA86 */  jal     func_8002AA18
/* 19A20 8002AAC0 87A6003A */  lh      $a2, 0x003A($sp)
/* 19A24 8002AAC4 10400011 */  beq     $v0, $zero, .L8002AB0C
/* 19A28 8002AAC8 3C078010 */  lui     $a3, 0x8010                ## $a3 = 80100000
/* 19A2C 8002AACC 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 19A30 8002AAD0 24E743A0 */  addiu   $a3, $a3, 0x43A0           ## $a3 = 801043A0
/* 19A34 8002AAD4 271843A8 */  addiu   $t8, $t8, 0x43A8           ## $t8 = 801043A8
/* 19A38 8002AAD8 3C058010 */  lui     $a1, 0x8010                ## $a1 = 80100000
/* 19A3C 8002AADC 24A54394 */  addiu   $a1, $a1, 0x4394           ## $a1 = 80104394
/* 19A40 8002AAE0 AFB80014 */  sw      $t8, 0x0014($sp)
/* 19A44 8002AAE4 AFA70010 */  sw      $a3, 0x0010($sp)
/* 19A48 8002AAE8 2404480A */  addiu   $a0, $zero, 0x480A         ## $a0 = 0000480A
/* 19A4C 8002AAEC 0C03201B */  jal     Audio_PlaySoundGeneral
/* 19A50 8002AAF0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 19A54 8002AAF4 8FA80020 */  lw      $t0, 0x0020($sp)
/* 19A58 8002AAF8 24190036 */  addiu   $t9, $zero, 0x0036         ## $t9 = 00000036
/* 19A5C 8002AAFC 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 19A60 8002AB00 25017FFF */  addiu   $at, $t0, 0x7FFF           ## $at = 00007FFF
/* 19A64 8002AB04 A0396305 */  sb      $t9, 0x6305($at)           ## 0000E304
/* 19A68 8002AB08 AFA90028 */  sw      $t1, 0x0028($sp)
.L8002AB0C:
/* 19A6C 8002AB0C 8FA20028 */  lw      $v0, 0x0028($sp)
.L8002AB10:
/* 19A70 8002AB10 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19A74 8002AB14 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 19A78 8002AB18 03E00008 */  jr      $ra
/* 19A7C 8002AB1C 00000000 */  nop


