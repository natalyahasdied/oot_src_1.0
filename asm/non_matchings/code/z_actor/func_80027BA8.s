glabel func_80027BA8
/* 16B08 80027BA8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 16B0C 80027BAC AFB00020 */  sw      $s0, 0x0020($sp)
/* 16B10 80027BB0 AFA60030 */  sw      $a2, 0x0030($sp)
/* 16B14 80027BB4 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 16B18 80027BB8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 16B1C 80027BBC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 16B20 80027BC0 AFA5002C */  sw      $a1, 0x002C($sp)
/* 16B24 80027BC4 AFA70034 */  sw      $a3, 0x0034($sp)
/* 16B28 80027BC8 90CE1D6C */  lbu     $t6, 0x1D6C($a2)           ## 00001D6C
/* 16B2C 80027BCC 8CC21C44 */  lw      $v0, 0x1C44($a2)           ## 00001C44
/* 16B30 80027BD0 3C0F800F */  lui     $t7, 0x800F                ## $t7 = 800F0000
/* 16B34 80027BD4 15C00005 */  bne     $t6, $zero, .L80027BEC
/* 16B38 80027BD8 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 16B3C 80027BDC 8DEFF1A0 */  lw      $t7, -0x0E60($t7)          ## 800EF1A0
/* 16B40 80027BE0 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 16B44 80027BE4 11E00009 */  beq     $t7, $zero, .L80027C0C
/* 16B48 80027BE8 00000000 */  nop
.L80027BEC:
/* 16B4C 80027BEC 0C018F86 */  jal     Math_Vec3f_DistXYZ
/* 16B50 80027BF0 24C500E0 */  addiu   $a1, $a2, 0x00E0           ## $a1 = 000000E0
/* 16B54 80027BF4 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 16B58 80027BF8 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.25
/* 16B5C 80027BFC 00000000 */  nop
/* 16B60 80027C00 46040082 */  mul.s   $f2, $f0, $f4
/* 16B64 80027C04 10000005 */  beq     $zero, $zero, .L80027C1C
/* 16B68 80027C08 C7A60034 */  lwc1    $f6, 0x0034($sp)
.L80027C0C:
/* 16B6C 80027C0C 0C018F86 */  jal     Math_Vec3f_DistXYZ
/* 16B70 80027C10 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 16B74 80027C14 46000086 */  mov.s   $f2, $f0
/* 16B78 80027C18 C7A60034 */  lwc1    $f6, 0x0034($sp)
.L80027C1C:
/* 16B7C 80027C1C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 16B80 80027C20 24070014 */  addiu   $a3, $zero, 0x0014         ## $a3 = 00000014
/* 16B84 80027C24 4602303C */  c.lt.s  $f6, $f2
/* 16B88 80027C28 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 16B8C 80027C2C 27A40032 */  addiu   $a0, $sp, 0x0032           ## $a0 = 0000000A
/* 16B90 80027C30 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 16B94 80027C34 4500000B */  bc1f    .L80027C64
/* 16B98 80027C38 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 16B9C 80027C3C 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 16BA0 80027C40 27A40032 */  addiu   $a0, $sp, 0x0032           ## $a0 = 0000000A
/* 16BA4 80027C44 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 16BA8 80027C48 0301C824 */  and     $t9, $t8, $at
/* 16BAC 80027C4C AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 16BB0 80027C50 AFA80010 */  sw      $t0, 0x0010($sp)
/* 16BB4 80027C54 0C019142 */  jal     Math_SmoothScaleMaxMinS
/* 16BB8 80027C58 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 16BBC 80027C5C 10000009 */  beq     $zero, $zero, .L80027C84
/* 16BC0 80027C60 87A20032 */  lh      $v0, 0x0032($sp)
.L80027C64:
/* 16BC4 80027C64 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 16BC8 80027C68 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 16BCC 80027C6C 24070014 */  addiu   $a3, $zero, 0x0014         ## $a3 = 00000014
/* 16BD0 80027C70 352A0001 */  ori     $t2, $t1, 0x0001           ## $t2 = 00000001
/* 16BD4 80027C74 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 16BD8 80027C78 0C019142 */  jal     Math_SmoothScaleMaxMinS
/* 16BDC 80027C7C AFAB0010 */  sw      $t3, 0x0010($sp)
/* 16BE0 80027C80 87A20032 */  lh      $v0, 0x0032($sp)
.L80027C84:
/* 16BE4 80027C84 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 16BE8 80027C88 8FB00020 */  lw      $s0, 0x0020($sp)
/* 16BEC 80027C8C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 16BF0 80027C90 03E00008 */  jr      $ra
/* 16BF4 80027C94 00000000 */  nop

