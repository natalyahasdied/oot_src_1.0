glabel func_80029BC8
/* 18B28 80029BC8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 18B2C 80029BCC AFA5002C */  sw      $a1, 0x002C($sp)
/* 18B30 80029BD0 00052C00 */  sll     $a1, $a1, 16
/* 18B34 80029BD4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 18B38 80029BD8 3084FFFF */  andi    $a0, $a0, 0xFFFF           ## $a0 = 00000000
/* 18B3C 80029BDC 00052C03 */  sra     $a1, $a1, 16
/* 18B40 80029BE0 AFBF001C */  sw      $ra, 0x001C($sp)
/* 18B44 80029BE4 2CA10049 */  sltiu   $at, $a1, 0x0049
/* 18B48 80029BE8 10200197 */  beq     $at, $zero, .L8002A248
/* 18B4C 80029BEC 00057080 */  sll     $t6, $a1,  2
/* 18B50 80029BF0 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 18B54 80029BF4 002E0821 */  addu    $at, $at, $t6
/* 18B58 80029BF8 8C2E680C */  lw      $t6, 0x680C($at)           ## 8010680C
/* 18B5C 80029BFC 01C00008 */  jr      $t6
/* 18B60 80029C00 00000000 */  nop
/* 18B64 80029C04 24011001 */  addiu   $at, $zero, 0x1001         ## $at = 00001001
/* 18B68 80029C08 10810009 */  beq     $a0, $at, .L80029C30
/* 18B6C 80029C0C 24011002 */  addiu   $at, $zero, 0x1002         ## $at = 00001002
/* 18B70 80029C10 1081000B */  beq     $a0, $at, .L80029C40
/* 18B74 80029C14 24011031 */  addiu   $at, $zero, 0x1031         ## $at = 00001031
/* 18B78 80029C18 1081000D */  beq     $a0, $at, .L80029C50
/* 18B7C 80029C1C 24011047 */  addiu   $at, $zero, 0x1047         ## $at = 00001047
/* 18B80 80029C20 10810011 */  beq     $a0, $at, .L80029C68
/* 18B84 80029C24 00000000 */  nop
/* 18B88 80029C28 10000188 */  beq     $zero, $zero, .L8002A24C
/* 18B8C 80029C2C 8FBF001C */  lw      $ra, 0x001C($sp)
.L80029C30:
/* 18B90 80029C30 0C00A250 */  jal     func_80028940
/* 18B94 80029C34 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 18B98 80029C38 10000184 */  beq     $zero, $zero, .L8002A24C
/* 18B9C 80029C3C 8FBF001C */  lw      $ra, 0x001C($sp)
.L80029C40:
/* 18BA0 80029C40 0C00A250 */  jal     func_80028940
/* 18BA4 80029C44 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 18BA8 80029C48 10000180 */  beq     $zero, $zero, .L8002A24C
/* 18BAC 80029C4C 8FBF001C */  lw      $ra, 0x001C($sp)
.L80029C50:
/* 18BB0 80029C50 0C00A238 */  jal     func_800288E0
/* 18BB4 80029C54 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 18BB8 80029C58 0C00A250 */  jal     func_80028940
/* 18BBC 80029C5C 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 18BC0 80029C60 1000017A */  beq     $zero, $zero, .L8002A24C
/* 18BC4 80029C64 8FBF001C */  lw      $ra, 0x001C($sp)
.L80029C68:
/* 18BC8 80029C68 0C00A250 */  jal     func_80028940
/* 18BCC 80029C6C 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 18BD0 80029C70 10000176 */  beq     $zero, $zero, .L8002A24C
/* 18BD4 80029C74 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18BD8 80029C78 2401102F */  addiu   $at, $zero, 0x102F         ## $at = 0000102F
/* 18BDC 80029C7C 1081000E */  beq     $a0, $at, .L80029CB8
/* 18BE0 80029C80 24011033 */  addiu   $at, $zero, 0x1033         ## $at = 00001033
/* 18BE4 80029C84 10810012 */  beq     $a0, $at, .L80029CD0
/* 18BE8 80029C88 3C078010 */  lui     $a3, 0x8010                ## $a3 = 80100000
/* 18BEC 80029C8C 24011045 */  addiu   $at, $zero, 0x1045         ## $at = 00001045
/* 18BF0 80029C90 1081001F */  beq     $a0, $at, .L80029D10
/* 18BF4 80029C94 24011060 */  addiu   $at, $zero, 0x1060         ## $at = 00001060
/* 18BF8 80029C98 10810021 */  beq     $a0, $at, .L80029D20
/* 18BFC 80029C9C 24011067 */  addiu   $at, $zero, 0x1067         ## $at = 00001067
/* 18C00 80029CA0 10810023 */  beq     $a0, $at, .L80029D30
/* 18C04 80029CA4 24011070 */  addiu   $at, $zero, 0x1070         ## $at = 00001070
/* 18C08 80029CA8 10810027 */  beq     $a0, $at, .L80029D48
/* 18C0C 80029CAC 00000000 */  nop
/* 18C10 80029CB0 10000166 */  beq     $zero, $zero, .L8002A24C
/* 18C14 80029CB4 8FBF001C */  lw      $ra, 0x001C($sp)
.L80029CB8:
/* 18C18 80029CB8 0C00A238 */  jal     func_800288E0
/* 18C1C 80029CBC 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 18C20 80029CC0 0C00A250 */  jal     func_80028940
/* 18C24 80029CC4 2404000C */  addiu   $a0, $zero, 0x000C         ## $a0 = 0000000C
/* 18C28 80029CC8 10000160 */  beq     $zero, $zero, .L8002A24C
/* 18C2C 80029CCC 8FBF001C */  lw      $ra, 0x001C($sp)
.L80029CD0:
/* 18C30 80029CD0 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 18C34 80029CD4 24E743A0 */  addiu   $a3, $a3, 0x43A0           ## $a3 = 000043A0
/* 18C38 80029CD8 25EF43A8 */  addiu   $t7, $t7, 0x43A8           ## $t7 = 801043A8
/* 18C3C 80029CDC 3C058010 */  lui     $a1, 0x8010                ## $a1 = 80100000
/* 18C40 80029CE0 24A54394 */  addiu   $a1, $a1, 0x4394           ## $a1 = 80104394
/* 18C44 80029CE4 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 18C48 80029CE8 AFA70010 */  sw      $a3, 0x0010($sp)
/* 18C4C 80029CEC 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 18C50 80029CF0 0C03201B */  jal     Audio_PlaySoundGeneral
/* 18C54 80029CF4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 18C58 80029CF8 0C00A238 */  jal     func_800288E0
/* 18C5C 80029CFC 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
/* 18C60 80029D00 0C00A250 */  jal     func_80028940
/* 18C64 80029D04 2404000E */  addiu   $a0, $zero, 0x000E         ## $a0 = 0000000E
/* 18C68 80029D08 10000150 */  beq     $zero, $zero, .L8002A24C
/* 18C6C 80029D0C 8FBF001C */  lw      $ra, 0x001C($sp)
.L80029D10:
/* 18C70 80029D10 0C00A250 */  jal     func_80028940
/* 18C74 80029D14 24040010 */  addiu   $a0, $zero, 0x0010         ## $a0 = 00000010
/* 18C78 80029D18 1000014C */  beq     $zero, $zero, .L8002A24C
/* 18C7C 80029D1C 8FBF001C */  lw      $ra, 0x001C($sp)
.L80029D20:
/* 18C80 80029D20 0C00A250 */  jal     func_80028940
/* 18C84 80029D24 24040015 */  addiu   $a0, $zero, 0x0015         ## $a0 = 00000015
/* 18C88 80029D28 10000148 */  beq     $zero, $zero, .L8002A24C
/* 18C8C 80029D2C 8FBF001C */  lw      $ra, 0x001C($sp)
.L80029D30:
/* 18C90 80029D30 0C00A238 */  jal     func_800288E0
/* 18C94 80029D34 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 18C98 80029D38 0C00A250 */  jal     func_80028940
/* 18C9C 80029D3C 24040017 */  addiu   $a0, $zero, 0x0017         ## $a0 = 00000017
/* 18CA0 80029D40 10000142 */  beq     $zero, $zero, .L8002A24C
/* 18CA4 80029D44 8FBF001C */  lw      $ra, 0x001C($sp)
.L80029D48:
/* 18CA8 80029D48 0C00A250 */  jal     func_80028940
/* 18CAC 80029D4C 24040019 */  addiu   $a0, $zero, 0x0019         ## $a0 = 00000019
/* 18CB0 80029D50 1000013E */  beq     $zero, $zero, .L8002A24C
/* 18CB4 80029D54 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18CB8 80029D58 24011056 */  addiu   $at, $zero, 0x1056         ## $at = 00001056
/* 18CBC 80029D5C 5481013B */  bnel    $a0, $at, .L8002A24C
/* 18CC0 80029D60 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18CC4 80029D64 0C00A250 */  jal     func_80028940
/* 18CC8 80029D68 24040041 */  addiu   $a0, $zero, 0x0041         ## $a0 = 00000041
/* 18CCC 80029D6C 10000137 */  beq     $zero, $zero, .L8002A24C
/* 18CD0 80029D70 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18CD4 80029D74 24011005 */  addiu   $at, $zero, 0x1005         ## $at = 00001005
/* 18CD8 80029D78 54810134 */  bnel    $a0, $at, .L8002A24C
/* 18CDC 80029D7C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18CE0 80029D80 0C00A250 */  jal     func_80028940
/* 18CE4 80029D84 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 18CE8 80029D88 10000130 */  beq     $zero, $zero, .L8002A24C
/* 18CEC 80029D8C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18CF0 80029D90 2401105D */  addiu   $at, $zero, 0x105D         ## $at = 0000105D
/* 18CF4 80029D94 5481012D */  bnel    $a0, $at, .L8002A24C
/* 18CF8 80029D98 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18CFC 80029D9C 0C00A250 */  jal     func_80028940
/* 18D00 80029DA0 24040047 */  addiu   $a0, $zero, 0x0047         ## $a0 = 00000047
/* 18D04 80029DA4 10000129 */  beq     $zero, $zero, .L8002A24C
/* 18D08 80029DA8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18D0C 80029DAC 24011008 */  addiu   $at, $zero, 0x1008         ## $at = 00001008
/* 18D10 80029DB0 54810126 */  bnel    $a0, $at, .L8002A24C
/* 18D14 80029DB4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18D18 80029DB8 0C00A250 */  jal     func_80028940
/* 18D1C 80029DBC 24040022 */  addiu   $a0, $zero, 0x0022         ## $a0 = 00000022
/* 18D20 80029DC0 10000122 */  beq     $zero, $zero, .L8002A24C
/* 18D24 80029DC4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18D28 80029DC8 2401100A */  addiu   $at, $zero, 0x100A         ## $at = 0000100A
/* 18D2C 80029DCC 5481011F */  bnel    $a0, $at, .L8002A24C
/* 18D30 80029DD0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18D34 80029DD4 0C00A250 */  jal     func_80028940
/* 18D38 80029DD8 24040024 */  addiu   $a0, $zero, 0x0024         ## $a0 = 00000024
/* 18D3C 80029DDC 1000011B */  beq     $zero, $zero, .L8002A24C
/* 18D40 80029DE0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18D44 80029DE4 2401100C */  addiu   $at, $zero, 0x100C         ## $at = 0000100C
/* 18D48 80029DE8 54810118 */  bnel    $a0, $at, .L8002A24C
/* 18D4C 80029DEC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18D50 80029DF0 0C00A250 */  jal     func_80028940
/* 18D54 80029DF4 24040026 */  addiu   $a0, $zero, 0x0026         ## $a0 = 00000026
/* 18D58 80029DF8 10000114 */  beq     $zero, $zero, .L8002A24C
/* 18D5C 80029DFC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18D60 80029E00 2401100E */  addiu   $at, $zero, 0x100E         ## $at = 0000100E
/* 18D64 80029E04 14810005 */  bne     $a0, $at, .L80029E1C
/* 18D68 80029E08 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 18D6C 80029E0C 24040028 */  addiu   $a0, $zero, 0x0028         ## $a0 = 00000028
/* 18D70 80029E10 0C00A250 */  jal     func_80028940
/* 18D74 80029E14 AFA20020 */  sw      $v0, 0x0020($sp)
/* 18D78 80029E18 8FA20020 */  lw      $v0, 0x0020($sp)
.L80029E1C:
/* 18D7C 80029E1C 24011059 */  addiu   $at, $zero, 0x1059         ## $at = 00001059
/* 18D80 80029E20 5441010A */  bnel    $v0, $at, .L8002A24C
/* 18D84 80029E24 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18D88 80029E28 0C00A250 */  jal     func_80028940
/* 18D8C 80029E2C 24040051 */  addiu   $a0, $zero, 0x0051         ## $a0 = 00000051
/* 18D90 80029E30 10000106 */  beq     $zero, $zero, .L8002A24C
/* 18D94 80029E34 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18D98 80029E38 2401104F */  addiu   $at, $zero, 0x104F         ## $at = 0000104F
/* 18D9C 80029E3C 54810103 */  bnel    $a0, $at, .L8002A24C
/* 18DA0 80029E40 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18DA4 80029E44 0C00A250 */  jal     func_80028940
/* 18DA8 80029E48 24040059 */  addiu   $a0, $zero, 0x0059         ## $a0 = 00000059
/* 18DAC 80029E4C 100000FF */  beq     $zero, $zero, .L8002A24C
/* 18DB0 80029E50 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18DB4 80029E54 24011054 */  addiu   $at, $zero, 0x1054         ## $at = 00001054
/* 18DB8 80029E58 548100FC */  bnel    $a0, $at, .L8002A24C
/* 18DBC 80029E5C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18DC0 80029E60 0C00A250 */  jal     func_80028940
/* 18DC4 80029E64 24040061 */  addiu   $a0, $zero, 0x0061         ## $a0 = 00000061
/* 18DC8 80029E68 100000F8 */  beq     $zero, $zero, .L8002A24C
/* 18DCC 80029E6C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18DD0 80029E70 24011062 */  addiu   $at, $zero, 0x1062         ## $at = 00001062
/* 18DD4 80029E74 548100F5 */  bnel    $a0, $at, .L8002A24C
/* 18DD8 80029E78 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18DDC 80029E7C 0C00A250 */  jal     func_80028940
/* 18DE0 80029E80 24040066 */  addiu   $a0, $zero, 0x0066         ## $a0 = 00000066
/* 18DE4 80029E84 100000F1 */  beq     $zero, $zero, .L8002A24C
/* 18DE8 80029E88 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18DEC 80029E8C 24017002 */  addiu   $at, $zero, 0x7002         ## $at = 00007002
/* 18DF0 80029E90 14810005 */  bne     $a0, $at, .L80029EA8
/* 18DF4 80029E94 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 18DF8 80029E98 2404006A */  addiu   $a0, $zero, 0x006A         ## $a0 = 0000006A
/* 18DFC 80029E9C 0C00A250 */  jal     func_80028940
/* 18E00 80029EA0 AFA20020 */  sw      $v0, 0x0020($sp)
/* 18E04 80029EA4 8FA20020 */  lw      $v0, 0x0020($sp)
.L80029EA8:
/* 18E08 80029EA8 24017003 */  addiu   $at, $zero, 0x7003         ## $at = 00007003
/* 18E0C 80029EAC 544100E7 */  bnel    $v0, $at, .L8002A24C
/* 18E10 80029EB0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18E14 80029EB4 0C00A250 */  jal     func_80028940
/* 18E18 80029EB8 2404006A */  addiu   $a0, $zero, 0x006A         ## $a0 = 0000006A
/* 18E1C 80029EBC 100000E3 */  beq     $zero, $zero, .L8002A24C
/* 18E20 80029EC0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18E24 80029EC4 24017007 */  addiu   $at, $zero, 0x7007         ## $at = 00007007
/* 18E28 80029EC8 548100E0 */  bnel    $a0, $at, .L8002A24C
/* 18E2C 80029ECC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18E30 80029ED0 0C00A250 */  jal     func_80028940
/* 18E34 80029ED4 2404006C */  addiu   $a0, $zero, 0x006C         ## $a0 = 0000006C
/* 18E38 80029ED8 100000DC */  beq     $zero, $zero, .L8002A24C
/* 18E3C 80029EDC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18E40 80029EE0 24017071 */  addiu   $at, $zero, 0x7071         ## $at = 00007071
/* 18E44 80029EE4 548100D9 */  bnel    $a0, $at, .L8002A24C
/* 18E48 80029EE8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18E4C 80029EEC 0C00A250 */  jal     func_80028940
/* 18E50 80029EF0 24040071 */  addiu   $a0, $zero, 0x0071         ## $a0 = 00000071
/* 18E54 80029EF4 100000D5 */  beq     $zero, $zero, .L8002A24C
/* 18E58 80029EF8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18E5C 80029EFC 24012010 */  addiu   $at, $zero, 0x2010         ## $at = 00002010
/* 18E60 80029F00 548100D2 */  bnel    $a0, $at, .L8002A24C
/* 18E64 80029F04 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18E68 80029F08 0C00A250 */  jal     func_80028940
/* 18E6C 80029F0C 24040076 */  addiu   $a0, $zero, 0x0076         ## $a0 = 00000076
/* 18E70 80029F10 100000CE */  beq     $zero, $zero, .L8002A24C
/* 18E74 80029F14 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18E78 80029F18 24017016 */  addiu   $at, $zero, 0x7016         ## $at = 00007016
/* 18E7C 80029F1C 548100CB */  bnel    $a0, $at, .L8002A24C
/* 18E80 80029F20 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18E84 80029F24 0C00A250 */  jal     func_80028940
/* 18E88 80029F28 240400C2 */  addiu   $a0, $zero, 0x00C2         ## $a0 = 000000C2
/* 18E8C 80029F2C 100000C7 */  beq     $zero, $zero, .L8002A24C
/* 18E90 80029F30 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18E94 80029F34 24017018 */  addiu   $at, $zero, 0x7018         ## $at = 00007018
/* 18E98 80029F38 548100C4 */  bnel    $a0, $at, .L8002A24C
/* 18E9C 80029F3C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18EA0 80029F40 0C00A250 */  jal     func_80028940
/* 18EA4 80029F44 240400C4 */  addiu   $a0, $zero, 0x00C4         ## $a0 = 000000C4
/* 18EA8 80029F48 100000C0 */  beq     $zero, $zero, .L8002A24C
/* 18EAC 80029F4C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18EB0 80029F50 2401701D */  addiu   $at, $zero, 0x701D         ## $at = 0000701D
/* 18EB4 80029F54 548100BD */  bnel    $a0, $at, .L8002A24C
/* 18EB8 80029F58 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18EBC 80029F5C 0C00A250 */  jal     func_80028940
/* 18EC0 80029F60 240400CA */  addiu   $a0, $zero, 0x00CA         ## $a0 = 000000CA
/* 18EC4 80029F64 100000B9 */  beq     $zero, $zero, .L8002A24C
/* 18EC8 80029F68 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18ECC 80029F6C 2401701F */  addiu   $at, $zero, 0x701F         ## $at = 0000701F
/* 18ED0 80029F70 548100B6 */  bnel    $a0, $at, .L8002A24C
/* 18ED4 80029F74 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18ED8 80029F78 0C00A250 */  jal     func_80028940
/* 18EDC 80029F7C 240400CC */  addiu   $a0, $zero, 0x00CC         ## $a0 = 000000CC
/* 18EE0 80029F80 100000B2 */  beq     $zero, $zero, .L8002A24C
/* 18EE4 80029F84 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18EE8 80029F88 24017021 */  addiu   $at, $zero, 0x7021         ## $at = 00007021
/* 18EEC 80029F8C 548100AF */  bnel    $a0, $at, .L8002A24C
/* 18EF0 80029F90 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18EF4 80029F94 0C00A250 */  jal     func_80028940
/* 18EF8 80029F98 240400CE */  addiu   $a0, $zero, 0x00CE         ## $a0 = 000000CE
/* 18EFC 80029F9C 100000AB */  beq     $zero, $zero, .L8002A24C
/* 18F00 80029FA0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18F04 80029FA4 24017023 */  addiu   $at, $zero, 0x7023         ## $at = 00007023
/* 18F08 80029FA8 548100A8 */  bnel    $a0, $at, .L8002A24C
/* 18F0C 80029FAC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18F10 80029FB0 0C00A250 */  jal     func_80028940
/* 18F14 80029FB4 240400D0 */  addiu   $a0, $zero, 0x00D0         ## $a0 = 000000D0
/* 18F18 80029FB8 100000A4 */  beq     $zero, $zero, .L8002A24C
/* 18F1C 80029FBC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18F20 80029FC0 24017025 */  addiu   $at, $zero, 0x7025         ## $at = 00007025
/* 18F24 80029FC4 548100A1 */  bnel    $a0, $at, .L8002A24C
/* 18F28 80029FC8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18F2C 80029FCC 0C00A250 */  jal     func_80028940
/* 18F30 80029FD0 240400D2 */  addiu   $a0, $zero, 0x00D2         ## $a0 = 000000D2
/* 18F34 80029FD4 1000009D */  beq     $zero, $zero, .L8002A24C
/* 18F38 80029FD8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18F3C 80029FDC 24017027 */  addiu   $at, $zero, 0x7027         ## $at = 00007027
/* 18F40 80029FE0 5481009A */  bnel    $a0, $at, .L8002A24C
/* 18F44 80029FE4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18F48 80029FE8 0C00A250 */  jal     func_80028940
/* 18F4C 80029FEC 240400D4 */  addiu   $a0, $zero, 0x00D4         ## $a0 = 000000D4
/* 18F50 80029FF0 10000096 */  beq     $zero, $zero, .L8002A24C
/* 18F54 80029FF4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18F58 80029FF8 2401403C */  addiu   $at, $zero, 0x403C         ## $at = 0000403C
/* 18F5C 80029FFC 54810093 */  bnel    $a0, $at, .L8002A24C
/* 18F60 8002A000 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18F64 8002A004 0C00A250 */  jal     func_80028940
/* 18F68 8002A008 240400D6 */  addiu   $a0, $zero, 0x00D6         ## $a0 = 000000D6
/* 18F6C 8002A00C 1000008F */  beq     $zero, $zero, .L8002A24C
/* 18F70 8002A010 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18F74 8002A014 24015028 */  addiu   $at, $zero, 0x5028         ## $at = 00005028
/* 18F78 8002A018 5481008C */  bnel    $a0, $at, .L8002A24C
/* 18F7C 8002A01C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18F80 8002A020 0C00A250 */  jal     func_80028940
/* 18F84 8002A024 240400D8 */  addiu   $a0, $zero, 0x00D8         ## $a0 = 000000D8
/* 18F88 8002A028 10000088 */  beq     $zero, $zero, .L8002A24C
/* 18F8C 8002A02C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18F90 8002A030 24013008 */  addiu   $at, $zero, 0x3008         ## $at = 00003008
/* 18F94 8002A034 54810085 */  bnel    $a0, $at, .L8002A24C
/* 18F98 8002A038 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18F9C 8002A03C 0C00A250 */  jal     func_80028940
/* 18FA0 8002A040 240400E0 */  addiu   $a0, $zero, 0x00E0         ## $a0 = 000000E0
/* 18FA4 8002A044 10000081 */  beq     $zero, $zero, .L8002A24C
/* 18FA8 8002A048 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18FAC 8002A04C 2401300B */  addiu   $at, $zero, 0x300B         ## $at = 0000300B
/* 18FB0 8002A050 5481007E */  bnel    $a0, $at, .L8002A24C
/* 18FB4 8002A054 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18FB8 8002A058 0C00A250 */  jal     func_80028940
/* 18FBC 8002A05C 240400EB */  addiu   $a0, $zero, 0x00EB         ## $a0 = 000000EB
/* 18FC0 8002A060 1000007A */  beq     $zero, $zero, .L8002A24C
/* 18FC4 8002A064 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18FC8 8002A068 24013014 */  addiu   $at, $zero, 0x3014         ## $at = 00003014
/* 18FCC 8002A06C 54810077 */  bnel    $a0, $at, .L8002A24C
/* 18FD0 8002A070 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18FD4 8002A074 0C00A250 */  jal     func_80028940
/* 18FD8 8002A078 240400F0 */  addiu   $a0, $zero, 0x00F0         ## $a0 = 000000F0
/* 18FDC 8002A07C 10000073 */  beq     $zero, $zero, .L8002A24C
/* 18FE0 8002A080 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18FE4 8002A084 24013016 */  addiu   $at, $zero, 0x3016         ## $at = 00003016
/* 18FE8 8002A088 54810070 */  bnel    $a0, $at, .L8002A24C
/* 18FEC 8002A08C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 18FF0 8002A090 0C00A250 */  jal     func_80028940
/* 18FF4 8002A094 240400F4 */  addiu   $a0, $zero, 0x00F4         ## $a0 = 000000F4
/* 18FF8 8002A098 1000006C */  beq     $zero, $zero, .L8002A24C
/* 18FFC 8002A09C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19000 8002A0A0 24013018 */  addiu   $at, $zero, 0x3018         ## $at = 00003018
/* 19004 8002A0A4 54810069 */  bnel    $a0, $at, .L8002A24C
/* 19008 8002A0A8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 1900C 8002A0AC 0C00A238 */  jal     func_800288E0
/* 19010 8002A0B0 24040020 */  addiu   $a0, $zero, 0x0020         ## $a0 = 00000020
/* 19014 8002A0B4 0C00A250 */  jal     func_80028940
/* 19018 8002A0B8 240400F8 */  addiu   $a0, $zero, 0x00F8         ## $a0 = 000000F8
/* 1901C 8002A0BC 10000063 */  beq     $zero, $zero, .L8002A24C
/* 19020 8002A0C0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19024 8002A0C4 24013020 */  addiu   $at, $zero, 0x3020         ## $at = 00003020
/* 19028 8002A0C8 54810060 */  bnel    $a0, $at, .L8002A24C
/* 1902C 8002A0CC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19030 8002A0D0 0C00A238 */  jal     func_800288E0
/* 19034 8002A0D4 24040022 */  addiu   $a0, $zero, 0x0022         ## $a0 = 00000022
/* 19038 8002A0D8 0C00A250 */  jal     func_80028940
/* 1903C 8002A0DC 24040113 */  addiu   $a0, $zero, 0x0113         ## $a0 = 00000113
/* 19040 8002A0E0 1000005A */  beq     $zero, $zero, .L8002A24C
/* 19044 8002A0E4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19048 8002A0E8 24014006 */  addiu   $at, $zero, 0x4006         ## $at = 00004006
/* 1904C 8002A0EC 54810057 */  bnel    $a0, $at, .L8002A24C
/* 19050 8002A0F0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19054 8002A0F4 0C00A238 */  jal     func_800288E0
/* 19058 8002A0F8 24040030 */  addiu   $a0, $zero, 0x0030         ## $a0 = 00000030
/* 1905C 8002A0FC 10000053 */  beq     $zero, $zero, .L8002A24C
/* 19060 8002A100 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19064 8002A104 24014006 */  addiu   $at, $zero, 0x4006         ## $at = 00004006
/* 19068 8002A108 14810005 */  bne     $a0, $at, .L8002A120
/* 1906C 8002A10C 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 19070 8002A110 24040030 */  addiu   $a0, $zero, 0x0030         ## $a0 = 00000030
/* 19074 8002A114 0C00A238 */  jal     func_800288E0
/* 19078 8002A118 AFA20020 */  sw      $v0, 0x0020($sp)
/* 1907C 8002A11C 8FA20020 */  lw      $v0, 0x0020($sp)
.L8002A120:
/* 19080 8002A120 24014008 */  addiu   $at, $zero, 0x4008         ## $at = 00004008
/* 19084 8002A124 54410049 */  bnel    $v0, $at, .L8002A24C
/* 19088 8002A128 8FBF001C */  lw      $ra, 0x001C($sp)
/* 1908C 8002A12C 0C00A250 */  jal     func_80028940
/* 19090 8002A130 24040124 */  addiu   $a0, $zero, 0x0124         ## $a0 = 00000124
/* 19094 8002A134 10000045 */  beq     $zero, $zero, .L8002A24C
/* 19098 8002A138 8FBF001C */  lw      $ra, 0x001C($sp)
/* 1909C 8002A13C 24014006 */  addiu   $at, $zero, 0x4006         ## $at = 00004006
/* 190A0 8002A140 14810005 */  bne     $a0, $at, .L8002A158
/* 190A4 8002A144 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 190A8 8002A148 24040030 */  addiu   $a0, $zero, 0x0030         ## $a0 = 00000030
/* 190AC 8002A14C 0C00A238 */  jal     func_800288E0
/* 190B0 8002A150 AFA20020 */  sw      $v0, 0x0020($sp)
/* 190B4 8002A154 8FA20020 */  lw      $v0, 0x0020($sp)
.L8002A158:
/* 190B8 8002A158 2401400A */  addiu   $at, $zero, 0x400A         ## $at = 0000400A
/* 190BC 8002A15C 14410004 */  bne     $v0, $at, .L8002A170
/* 190C0 8002A160 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
/* 190C4 8002A164 0C00A238 */  jal     func_800288E0
/* 190C8 8002A168 AFA20020 */  sw      $v0, 0x0020($sp)
/* 190CC 8002A16C 8FA20020 */  lw      $v0, 0x0020($sp)
.L8002A170:
/* 190D0 8002A170 2401402F */  addiu   $at, $zero, 0x402F         ## $at = 0000402F
/* 190D4 8002A174 54410035 */  bnel    $v0, $at, .L8002A24C
/* 190D8 8002A178 8FBF001C */  lw      $ra, 0x001C($sp)
/* 190DC 8002A17C 0C00A250 */  jal     func_80028940
/* 190E0 8002A180 2404012A */  addiu   $a0, $zero, 0x012A         ## $a0 = 0000012A
/* 190E4 8002A184 10000031 */  beq     $zero, $zero, .L8002A24C
/* 190E8 8002A188 8FBF001C */  lw      $ra, 0x001C($sp)
/* 190EC 8002A18C 2401401B */  addiu   $at, $zero, 0x401B         ## $at = 0000401B
/* 190F0 8002A190 5481002E */  bnel    $a0, $at, .L8002A24C
/* 190F4 8002A194 8FBF001C */  lw      $ra, 0x001C($sp)
/* 190F8 8002A198 0C00A238 */  jal     func_800288E0
/* 190FC 8002A19C 24040033 */  addiu   $a0, $zero, 0x0033         ## $a0 = 00000033
/* 19100 8002A1A0 0C00A250 */  jal     func_80028940
/* 19104 8002A1A4 24040138 */  addiu   $a0, $zero, 0x0138         ## $a0 = 00000138
/* 19108 8002A1A8 10000028 */  beq     $zero, $zero, .L8002A24C
/* 1910C 8002A1AC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19110 8002A1B0 24015000 */  addiu   $at, $zero, 0x5000         ## $at = 00005000
/* 19114 8002A1B4 54810025 */  bnel    $a0, $at, .L8002A24C
/* 19118 8002A1B8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 1911C 8002A1BC 0C00A250 */  jal     func_80028940
/* 19120 8002A1C0 24040166 */  addiu   $a0, $zero, 0x0166         ## $a0 = 00000166
/* 19124 8002A1C4 10000021 */  beq     $zero, $zero, .L8002A24C
/* 19128 8002A1C8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 1912C 8002A1CC 24015013 */  addiu   $at, $zero, 0x5013         ## $at = 00005013
/* 19130 8002A1D0 5481001E */  bnel    $a0, $at, .L8002A24C
/* 19134 8002A1D4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19138 8002A1D8 0C00A250 */  jal     func_80028940
/* 1913C 8002A1DC 2404016A */  addiu   $a0, $zero, 0x016A         ## $a0 = 0000016A
/* 19140 8002A1E0 1000001A */  beq     $zero, $zero, .L8002A24C
/* 19144 8002A1E4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 19148 8002A1E8 24012041 */  addiu   $at, $zero, 0x2041         ## $at = 00002041
/* 1914C 8002A1EC 14810005 */  bne     $a0, $at, .L8002A204
/* 19150 8002A1F0 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 19154 8002A1F4 24040010 */  addiu   $a0, $zero, 0x0010         ## $a0 = 00000010
/* 19158 8002A1F8 0C00A238 */  jal     func_800288E0
/* 1915C 8002A1FC AFA20020 */  sw      $v0, 0x0020($sp)
/* 19160 8002A200 8FA20020 */  lw      $v0, 0x0020($sp)
.L8002A204:
/* 19164 8002A204 24012044 */  addiu   $at, $zero, 0x2044         ## $at = 00002044
/* 19168 8002A208 14410004 */  bne     $v0, $at, .L8002A21C
/* 1916C 8002A20C 24040012 */  addiu   $a0, $zero, 0x0012         ## $a0 = 00000012
/* 19170 8002A210 0C00A238 */  jal     func_800288E0
/* 19174 8002A214 AFA20020 */  sw      $v0, 0x0020($sp)
/* 19178 8002A218 8FA20020 */  lw      $v0, 0x0020($sp)
.L8002A21C:
/* 1917C 8002A21C 24012047 */  addiu   $at, $zero, 0x2047         ## $at = 00002047
/* 19180 8002A220 14410004 */  bne     $v0, $at, .L8002A234
/* 19184 8002A224 24040015 */  addiu   $a0, $zero, 0x0015         ## $a0 = 00000015
/* 19188 8002A228 0C00A238 */  jal     func_800288E0
/* 1918C 8002A22C AFA20020 */  sw      $v0, 0x0020($sp)
/* 19190 8002A230 8FA20020 */  lw      $v0, 0x0020($sp)
.L8002A234:
/* 19194 8002A234 24012048 */  addiu   $at, $zero, 0x2048         ## $at = 00002048
/* 19198 8002A238 54410004 */  bnel    $v0, $at, .L8002A24C
/* 1919C 8002A23C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 191A0 8002A240 0C00A238 */  jal     func_800288E0
/* 191A4 8002A244 24040016 */  addiu   $a0, $zero, 0x0016         ## $a0 = 00000016
.L8002A248:
/* 191A8 8002A248 8FBF001C */  lw      $ra, 0x001C($sp)
.L8002A24C:
/* 191AC 8002A24C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 191B0 8002A250 03E00008 */  jr      $ra
/* 191B4 8002A254 00000000 */  nop


