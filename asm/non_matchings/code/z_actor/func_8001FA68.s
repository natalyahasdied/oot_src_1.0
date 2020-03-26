glabel func_8001FA68
/* 0E9C8 8001FA68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0E9CC 8001FA6C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0E9D0 8001FA70 AFA60020 */  sw      $a2, 0x0020($sp)
/* 0E9D4 8001FA74 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0E9D8 8001FA78 AC800090 */  sw      $zero, 0x0090($a0)         ## 00000090
/* 0E9DC 8001FA7C AC80008C */  sw      $zero, 0x008C($a0)         ## 0000008C
/* 0E9E0 8001FA80 AC80003C */  sw      $zero, 0x003C($a0)         ## 0000003C
/* 0E9E4 8001FA84 AC800038 */  sw      $zero, 0x0038($a0)         ## 00000038
/* 0E9E8 8001FA88 A080004B */  sb      $zero, 0x004B($a0)         ## 0000004B
/* 0E9EC 8001FA8C A080004C */  sb      $zero, 0x004C($a0)         ## 0000004C
/* 0E9F0 8001FA90 E4840040 */  swc1    $f4, 0x0040($a0)           ## 00000040
/* 0E9F4 8001FA94 90A60002 */  lbu     $a2, 0x0002($a1)           ## 00000002
/* 0E9F8 8001FA98 AFA5001C */  sw      $a1, 0x001C($sp)
/* 0E9FC 8001FA9C AFA40018 */  sw      $a0, 0x0018($sp)
/* 0EA00 8001FAA0 0C007E41 */  jal     func_8001F904
/* 0EA04 8001FAA4 8FA70020 */  lw      $a3, 0x0020($sp)
/* 0EA08 8001FAA8 8FAE001C */  lw      $t6, 0x001C($sp)
/* 0EA0C 8001FAAC 8FA40018 */  lw      $a0, 0x0018($sp)
/* 0EA10 8001FAB0 8FA60020 */  lw      $a2, 0x0020($sp)
/* 0EA14 8001FAB4 0C007E0F */  jal     func_8001F83C
/* 0EA18 8001FAB8 91C50002 */  lbu     $a1, 0x0002($t6)           ## 00000002
/* 0EA1C 8001FABC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0EA20 8001FAC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0EA24 8001FAC4 03E00008 */  jr      $ra
/* 0EA28 8001FAC8 00000000 */  nop


