glabel func_80022BD4
/* 11B34 80022BD4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 11B38 80022BD8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 11B3C 80022BDC AFA40020 */  sw      $a0, 0x0020($sp)
/* 11B40 80022BE0 AFA7002C */  sw      $a3, 0x002C($sp)
/* 11B44 80022BE4 8CA71C44 */  lw      $a3, 0x1C44($a1)           ## 00001C44
/* 11B48 80022BE8 3C01003C */  lui     $at, 0x003C                ## $at = 003C0000
/* 11B4C 80022BEC 34217080 */  ori     $at, $at, 0x7080           ## $at = 003C7080
/* 11B50 80022BF0 8CEE066C */  lw      $t6, 0x066C($a3)           ## 0000066C
/* 11B54 80022BF4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 11B58 80022BF8 01C17824 */  and     $t7, $t6, $at
/* 11B5C 80022BFC 55E00039 */  bnel    $t7, $zero, .L80022CE4
/* 11B60 80022C00 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 11B64 80022C04 AFA60028 */  sw      $a2, 0x0028($sp)
/* 11B68 80022C08 0C01E75D */  jal     func_80079D74
/* 11B6C 80022C0C AFA7001C */  sw      $a3, 0x001C($sp)
/* 11B70 80022C10 8FA40020 */  lw      $a0, 0x0020($sp)
/* 11B74 80022C14 8FA60028 */  lw      $a2, 0x0028($sp)
/* 11B78 80022C18 04410031 */  bgez    $v0, .L80022CE0
/* 11B7C 80022C1C 8FA7001C */  lw      $a3, 0x001C($sp)
/* 11B80 80022C20 8CF8039C */  lw      $t8, 0x039C($a3)           ## 0000039C
/* 11B84 80022C24 17000004 */  bne     $t8, $zero, .L80022C38
/* 11B88 80022C28 00000000 */  nop
/* 11B8C 80022C2C 8CF90684 */  lw      $t9, 0x0684($a3)           ## 00000684
/* 11B90 80022C30 54990006 */  bnel    $a0, $t9, .L80022C4C
/* 11B94 80022C34 8CE8066C */  lw      $t0, 0x066C($a3)           ## 0000066C
.L80022C38:
/* 11B98 80022C38 18C00003 */  blez    $a2, .L80022C48
/* 11B9C 80022C3C 28C1007E */  slti    $at, $a2, 0x007E
/* 11BA0 80022C40 54200008 */  bnel    $at, $zero, .L80022C64
/* 11BA4 80022C44 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
.L80022C48:
/* 11BA8 80022C48 8CE8066C */  lw      $t0, 0x066C($a3)           ## 0000066C
.L80022C4C:
/* 11BAC 80022C4C 3C012000 */  lui     $at, 0x2000                ## $at = 20000000
/* 11BB0 80022C50 34210800 */  ori     $at, $at, 0x0800           ## $at = 20000800
/* 11BB4 80022C54 01014824 */  and     $t1, $t0, $at
/* 11BB8 80022C58 55200022 */  bnel    $t1, $zero, .L80022CE4
/* 11BBC 80022C5C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 11BC0 80022C60 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
.L80022C64:
/* 11BC4 80022C64 C7A6002C */  lwc1    $f6, 0x002C($sp)
/* 11BC8 80022C68 4606203C */  c.lt.s  $f4, $f6
/* 11BCC 80022C6C 00000000 */  nop
/* 11BD0 80022C70 4502001C */  bc1fl   .L80022CE4
/* 11BD4 80022C74 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 11BD8 80022C78 C4800094 */  lwc1    $f0, 0x0094($a0)           ## 00000094
/* 11BDC 80022C7C C7A80030 */  lwc1    $f8, 0x0030($sp)
/* 11BE0 80022C80 46000005 */  abs.s   $f0, $f0
/* 11BE4 80022C84 4608003C */  c.lt.s  $f0, $f8
/* 11BE8 80022C88 00000000 */  nop
/* 11BEC 80022C8C 45020015 */  bc1fl   .L80022CE4
/* 11BF0 80022C90 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 11BF4 80022C94 848A008A */  lh      $t2, 0x008A($a0)           ## 0000008A
/* 11BF8 80022C98 84EB00B6 */  lh      $t3, 0x00B6($a3)           ## 000000B6
/* 11BFC 80022C9C 014B1023 */  subu    $v0, $t2, $t3
/* 11C00 80022CA0 00021400 */  sll     $v0, $v0, 16
/* 11C04 80022CA4 00021403 */  sra     $v0, $v0, 16
/* 11C08 80022CA8 04400003 */  bltz    $v0, .L80022CB8
/* 11C0C 80022CAC 00021823 */  subu    $v1, $zero, $v0
/* 11C10 80022CB0 10000001 */  beq     $zero, $zero, .L80022CB8
/* 11C14 80022CB4 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80022CB8:
/* 11C18 80022CB8 14C00005 */  bne     $a2, $zero, .L80022CD0
/* 11C1C 80022CBC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 11C20 80022CC0 94EC0426 */  lhu     $t4, 0x0426($a3)           ## 00000426
/* 11C24 80022CC4 0183082A */  slt     $at, $t4, $v1
/* 11C28 80022CC8 50200006 */  beql    $at, $zero, .L80022CE4
/* 11C2C 80022CCC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80022CD0:
/* 11C30 80022CD0 A0E60424 */  sb      $a2, 0x0424($a3)           ## 00000424
/* 11C34 80022CD4 ACE40428 */  sw      $a0, 0x0428($a3)           ## 00000428
/* 11C38 80022CD8 10000002 */  beq     $zero, $zero, .L80022CE4
/* 11C3C 80022CDC A4E30426 */  sh      $v1, 0x0426($a3)           ## 00000426
.L80022CE0:
/* 11C40 80022CE0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80022CE4:
/* 11C44 80022CE4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 11C48 80022CE8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 11C4C 80022CEC 03E00008 */  jr      $ra
/* 11C50 80022CF0 00000000 */  nop

