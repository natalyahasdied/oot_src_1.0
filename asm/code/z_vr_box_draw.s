# "VR Box (Skybox) Draw" part of the code file
#
# Handles the drawing of skyboxes.
#
# Starts at VRAM: 80096F50 / VROM: B0CEB0
#

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel func_80096F50
/* 85EB0 80096F50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 85EB4 80096F54 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 85EB8 80096F58 44867000 */  mtc1    $a2, $f14                  ## $f14 = 0.00
/* 85EBC 80096F5C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 85EC0 80096F60 AFA40018 */  sw      $a0, 0x0018($sp)
/* 85EC4 80096F64 AFA70024 */  sw      $a3, 0x0024($sp)
/* 85EC8 80096F68 8FA60024 */  lw      $a2, 0x0024($sp)
/* 85ECC 80096F6C 0C02A9FD */  jal     Matrix_Translate
/* 85ED0 80096F70 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 85ED4 80096F74 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 85ED8 80096F78 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 85EDC 80096F7C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 85EE0 80096F80 44066000 */  mfc1    $a2, $f12
/* 85EE4 80096F84 0C02AA3F */  jal     Matrix_Scale
/* 85EE8 80096F88 46006386 */  mov.s   $f14, $f12
/* 85EEC 80096F8C 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 85EF0 80096F90 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 85EF4 80096F94 0C02AA78 */  jal     func_800AA9E0
/* 85EF8 80096F98 C5CC0144 */  lwc1    $f12, 0x0144($t6)          ## 00000144
/* 85EFC 80096F9C 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 85F00 80096FA0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 85F04 80096FA4 0C02AAE5 */  jal     Matrix_RotateY
/* 85F08 80096FA8 C5EC0148 */  lwc1    $f12, 0x0148($t7)          ## 00000148
/* 85F0C 80096FAC 8FB80018 */  lw      $t8, 0x0018($sp)
/* 85F10 80096FB0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 85F14 80096FB4 0C02AB53 */  jal     Matrix_RotateZ
/* 85F18 80096FB8 C70C014C */  lwc1    $f12, 0x014C($t8)          ## 0000014C
/* 85F1C 80096FBC 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 85F20 80096FC0 0C02AE36 */  jal     func_800AB8D8
/* 85F24 80096FC4 8C84D020 */  lw      $a0, -0x2FE0($a0)          ## 8011D020
/* 85F28 80096FC8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 85F2C 80096FCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 85F30 80096FD0 03E00008 */  jr      $ra
/* 85F34 80096FD4 00000000 */  nop


glabel func_80096FD8
/* 85F38 80096FD8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 85F3C 80096FDC AFB10018 */  sw      $s1, 0x0018($sp)
/* 85F40 80096FE0 AFB00014 */  sw      $s0, 0x0014($sp)
/* 85F44 80096FE4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 85F48 80096FE8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 85F4C 80096FEC AFBF001C */  sw      $ra, 0x001C($sp)
/* 85F50 80096FF0 AFA60028 */  sw      $a2, 0x0028($sp)
/* 85F54 80096FF4 AFA7002C */  sw      $a3, 0x002C($sp)
/* 85F58 80096FF8 0C01F99A */  jal     func_8007E668
/* 85F5C 80096FFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 85F60 80097000 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 85F64 80097004 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 85F68 80097008 35EF001C */  ori     $t7, $t7, 0x001C           ## $t7 = DB06001C
/* 85F6C 8009700C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 85F70 80097010 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 85F74 80097014 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 85F78 80097018 8E380128 */  lw      $t8, 0x0128($s1)           ## 00000128
/* 85F7C 8009701C AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 85F80 80097020 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 85F84 80097024 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 85F88 80097028 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 85F8C 8009702C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 85F90 80097030 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 85F94 80097034 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 85F98 80097038 8E2F012C */  lw      $t7, 0x012C($s1)           ## 0000012C
/* 85F9C 8009703C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 85FA0 80097040 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 85FA4 80097044 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 85FA8 80097048 37390024 */  ori     $t9, $t9, 0x0024           ## $t9 = DB060024
/* 85FAC 8009704C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 85FB0 80097050 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 85FB4 80097054 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 85FB8 80097058 8E2E0130 */  lw      $t6, 0x0130($s1)           ## 00000130
/* 85FBC 8009705C AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 85FC0 80097060 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 85FC4 80097064 3C18FA00 */  lui     $t8, 0xFA00                ## $t8 = FA000000
/* 85FC8 80097068 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 85FCC 8009706C AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 85FD0 80097070 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 85FD4 80097074 87B9002E */  lh      $t9, 0x002E($sp)
/* 85FD8 80097078 3C18D700 */  lui     $t8, 0xD700                ## $t8 = D7000000
/* 85FDC 8009707C 37180002 */  ori     $t8, $t8, 0x0002           ## $t8 = D7000002
/* 85FE0 80097080 332E00FF */  andi    $t6, $t9, 0x00FF           ## $t6 = 00000024
/* 85FE4 80097084 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 85FE8 80097088 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 85FEC 8009708C 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 85FF0 80097090 37398000 */  ori     $t9, $t9, 0x8000           ## $t9 = 80008000
/* 85FF4 80097094 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 85FF8 80097098 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 85FFC 8009709C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 86000 800970A0 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 86004 800970A4 8E0402C4 */  lw      $a0, 0x02C4($s0)           ## 000002C4
/* 86008 800970A8 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 8600C 800970AC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 86010 800970B0 2484FFC0 */  addiu   $a0, $a0, 0xFFC0           ## $a0 = FFFFFFC0
/* 86014 800970B4 AE0402C4 */  sw      $a0, 0x02C4($s0)           ## 000002C4
/* 86018 800970B8 AC24D020 */  sw      $a0, -0x2FE0($at)          ## 8011D020
/* 8601C 800970BC 8FA60038 */  lw      $a2, 0x0038($sp)
/* 86020 800970C0 C7AE0034 */  lwc1    $f14, 0x0034($sp)
/* 86024 800970C4 0C02A9FD */  jal     Matrix_Translate
/* 86028 800970C8 C7AC0030 */  lwc1    $f12, 0x0030($sp)
/* 8602C 800970CC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 86030 800970D0 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 86034 800970D4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 86038 800970D8 44066000 */  mfc1    $a2, $f12
/* 8603C 800970DC 0C02AA3F */  jal     Matrix_Scale
/* 86040 800970E0 46006386 */  mov.s   $f14, $f12
/* 86044 800970E4 C62C0144 */  lwc1    $f12, 0x0144($s1)          ## 00000144
/* 86048 800970E8 0C02AA78 */  jal     func_800AA9E0
/* 8604C 800970EC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 86050 800970F0 C62C0148 */  lwc1    $f12, 0x0148($s1)          ## 00000148
/* 86054 800970F4 0C02AAE5 */  jal     Matrix_RotateY
/* 86058 800970F8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 8605C 800970FC C62C014C */  lwc1    $f12, 0x014C($s1)          ## 0000014C
/* 86060 80097100 0C02AB53 */  jal     Matrix_RotateZ
/* 86064 80097104 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 86068 80097108 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 8606C 8009710C 0C02AE36 */  jal     func_800AB8D8
/* 86070 80097110 8C84D020 */  lw      $a0, -0x2FE0($a0)          ## 8011D020
/* 86074 80097114 3C0AFD10 */  lui     $t2, 0xFD10                ## $t2 = FD100000
/* 86078 80097118 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 8607C 8009711C 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 86080 80097120 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 86084 80097124 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 86088 80097128 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 8608C 8009712C 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 86090 80097130 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 86094 80097134 8F18D020 */  lw      $t8, -0x2FE0($t8)          ## 8011D020
/* 86098 80097138 3C0BE800 */  lui     $t3, 0xE800                ## $t3 = E8000000
/* 8609C 8009713C 3C09E700 */  lui     $t1, 0xE700                ## $t1 = E7000000
/* 860A0 80097140 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 860A4 80097144 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 860A8 80097148 3C0EE300 */  lui     $t6, 0xE300                ## $t6 = E3000000
/* 860AC 8009714C 35CE1801 */  ori     $t6, $t6, 0x1801           ## $t6 = E3001801
/* 860B0 80097150 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 860B4 80097154 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 860B8 80097158 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 860BC 8009715C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 860C0 80097160 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 860C4 80097164 3C18E300 */  lui     $t8, 0xE300                ## $t8 = E3000000
/* 860C8 80097168 37181201 */  ori     $t8, $t8, 0x1201           ## $t8 = E3001201
/* 860CC 8009716C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 860D0 80097170 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 860D4 80097174 24192000 */  addiu   $t9, $zero, 0x2000         ## $t9 = 00002000
/* 860D8 80097178 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 860DC 8009717C AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 860E0 80097180 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 860E4 80097184 3C0CF500 */  lui     $t4, 0xF500                ## $t4 = F5000000
/* 860E8 80097188 358C0100 */  ori     $t4, $t4, 0x0100           ## $t4 = F5000100
/* 860EC 8009718C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 860F0 80097190 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 860F4 80097194 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 860F8 80097198 8E2F0130 */  lw      $t7, 0x0130($s1)           ## 00000130
/* 860FC 8009719C 3C0D0700 */  lui     $t5, 0x0700                ## $t5 = 07000000
/* 86100 800971A0 3C1FE600 */  lui     $ra, 0xE600                ## $ra = E6000000
/* 86104 800971A4 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 86108 800971A8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 8610C 800971AC 3C06DE00 */  lui     $a2, 0xDE00                ## $a2 = DE000000
/* 86110 800971B0 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 86114 800971B4 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 86118 800971B8 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 8611C 800971BC AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 86120 800971C0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86124 800971C4 3C18F000 */  lui     $t8, 0xF000                ## $t8 = F0000000
/* 86128 800971C8 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 8612C 800971CC AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 86130 800971D0 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 86134 800971D4 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 86138 800971D8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 8613C 800971DC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 86140 800971E0 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 86144 800971E4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 86148 800971E8 AC5F0000 */  sw      $ra, 0x0000($v0)           ## 00000000
/* 8614C 800971EC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86150 800971F0 3C19073F */  lui     $t9, 0x073F                ## $t9 = 073F0000
/* 86154 800971F4 3739C000 */  ori     $t9, $t9, 0xC000           ## $t9 = 073FC000
/* 86158 800971F8 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 8615C 800971FC AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 86160 80097200 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 86164 80097204 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 86168 80097208 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 8616C 8009720C 3C18E300 */  lui     $t8, 0xE300                ## $t8 = E3000000
/* 86170 80097210 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 86174 80097214 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 86178 80097218 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 8617C 8009721C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 86180 80097220 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86184 80097224 37181001 */  ori     $t8, $t8, 0x1001           ## $t8 = E3001001
/* 86188 80097228 34198000 */  ori     $t9, $zero, 0x8000         ## $t9 = 00008000
/* 8618C 8009722C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 86190 80097230 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 86194 80097234 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 86198 80097238 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 8619C 8009723C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 861A0 80097240 3C0FE300 */  lui     $t7, 0xE300                ## $t7 = E3000000
/* 861A4 80097244 35EF1402 */  ori     $t7, $t7, 0x1402           ## $t7 = E3001402
/* 861A8 80097248 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 861AC 8009724C AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 861B0 80097250 24180C00 */  addiu   $t8, $zero, 0x0C00         ## $t8 = 00000C00
/* 861B4 80097254 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 861B8 80097258 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 861BC 8009725C 86390140 */  lh      $t9, 0x0140($s1)           ## 00000140
/* 861C0 80097260 132000BF */  beq     $t9, $zero, .L80097560
/* 861C4 80097264 00000000 */  nop
/* 861C8 80097268 3C06DE00 */  lui     $a2, 0xDE00                ## $a2 = DE000000
/* 861CC 8009726C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 861D0 80097270 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 861D4 80097274 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 861D8 80097278 AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 861DC 8009727C 8E2F0134 */  lw      $t7, 0x0134($s1)           ## 00000134
/* 861E0 80097280 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 861E4 80097284 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 861E8 80097288 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 861EC 8009728C AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 861F0 80097290 AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 861F4 80097294 8E390134 */  lw      $t9, 0x0134($s1)           ## 00000134
/* 861F8 80097298 272E04B0 */  addiu   $t6, $t9, 0x04B0           ## $t6 = 000084B0
/* 861FC 8009729C AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 86200 800972A0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86204 800972A4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 86208 800972A8 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 8620C 800972AC AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 86210 800972B0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 86214 800972B4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86218 800972B8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 8621C 800972BC AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 86220 800972C0 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 86224 800972C4 8E390130 */  lw      $t9, 0x0130($s1)           ## 00000130
/* 86228 800972C8 272E0200 */  addiu   $t6, $t9, 0x0200           ## $t6 = 00008200
/* 8622C 800972CC AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 86230 800972D0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86234 800972D4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 86238 800972D8 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 8623C 800972DC AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 86240 800972E0 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 86244 800972E4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86248 800972E8 3C0FF000 */  lui     $t7, 0xF000                ## $t7 = F0000000
/* 8624C 800972EC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 86250 800972F0 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 86254 800972F4 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 86258 800972F8 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 8625C 800972FC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86260 80097300 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 86264 80097304 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 86268 80097308 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 8626C 8009730C AC5F0000 */  sw      $ra, 0x0000($v0)           ## 00000000
/* 86270 80097310 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86274 80097314 3C18073F */  lui     $t8, 0x073F                ## $t8 = 073F0000
/* 86278 80097318 3718C000 */  ori     $t8, $t8, 0xC000           ## $t8 = 073FC000
/* 8627C 8009731C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 86280 80097320 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 86284 80097324 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 86288 80097328 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 8628C 8009732C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86290 80097330 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 86294 80097334 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 86298 80097338 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 8629C 8009733C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 862A0 80097340 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 862A4 80097344 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 862A8 80097348 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 862AC 8009734C AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 862B0 80097350 8E2F0134 */  lw      $t7, 0x0134($s1)           ## 00000134
/* 862B4 80097354 25F80960 */  addiu   $t8, $t7, 0x0960           ## $t8 = F0000960
/* 862B8 80097358 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 862BC 8009735C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 862C0 80097360 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 862C4 80097364 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 862C8 80097368 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 862CC 8009736C AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 862D0 80097370 8E2E0134 */  lw      $t6, 0x0134($s1)           ## 00000134
/* 862D4 80097374 25CF0E10 */  addiu   $t7, $t6, 0x0E10           ## $t7 = 00000E18
/* 862D8 80097378 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 862DC 8009737C 87B8002A */  lh      $t8, 0x002A($sp)
/* 862E0 80097380 130100A4 */  beq     $t8, $at, .L80097614
/* 862E4 80097384 2B010011 */  slti    $at, $t8, 0x0011
/* 862E8 80097388 14200003 */  bne     $at, $zero, .L80097398
/* 862EC 8009738C 2B010019 */  slti    $at, $t8, 0x0019
/* 862F0 80097390 542000A1 */  bnel    $at, $zero, .L80097618
/* 862F4 80097394 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
.L80097398:
/* 862F8 80097398 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 862FC 8009739C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 86300 800973A0 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 86304 800973A4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 86308 800973A8 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 8630C 800973AC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86310 800973B0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 86314 800973B4 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 86318 800973B8 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 8631C 800973BC 8E2F0130 */  lw      $t7, 0x0130($s1)           ## 00000130
/* 86320 800973C0 25F80400 */  addiu   $t8, $t7, 0x0400           ## $t8 = 00001218
/* 86324 800973C4 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 86328 800973C8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 8632C 800973CC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 86330 800973D0 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 86334 800973D4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 86338 800973D8 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 8633C 800973DC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86340 800973E0 3C19F000 */  lui     $t9, 0xF000                ## $t9 = F0000000
/* 86344 800973E4 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 86348 800973E8 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 8634C 800973EC AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 86350 800973F0 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 86354 800973F4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86358 800973F8 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 8635C 800973FC AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 86360 80097400 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 86364 80097404 AC5F0000 */  sw      $ra, 0x0000($v0)           ## 00000000
/* 86368 80097408 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 8636C 8009740C 3C0E073F */  lui     $t6, 0x073F                ## $t6 = 073F0000
/* 86370 80097410 35CEC000 */  ori     $t6, $t6, 0xC000           ## $t6 = 073FC000
/* 86374 80097414 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 86378 80097418 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 8637C 8009741C AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 86380 80097420 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 86384 80097424 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86388 80097428 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 8638C 8009742C AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 86390 80097430 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 86394 80097434 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 86398 80097438 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 8639C 8009743C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 863A0 80097440 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 863A4 80097444 AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 863A8 80097448 8E390134 */  lw      $t9, 0x0134($s1)           ## 00000134
/* 863AC 8009744C 272E12C0 */  addiu   $t6, $t9, 0x12C0           ## $t6 = F00012C0
/* 863B0 80097450 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 863B4 80097454 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 863B8 80097458 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 863BC 8009745C AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 863C0 80097460 AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 863C4 80097464 8E380134 */  lw      $t8, 0x0134($s1)           ## 00000134
/* 863C8 80097468 27191770 */  addiu   $t9, $t8, 0x1770           ## $t9 = 00001778
/* 863CC 8009746C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 863D0 80097470 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 863D4 80097474 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 863D8 80097478 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 863DC 8009747C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 863E0 80097480 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 863E4 80097484 862F0140 */  lh      $t7, 0x0140($s1)           ## 00000140
/* 863E8 80097488 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 863EC 8009748C 51E10062 */  beql    $t7, $at, .L80097618
/* 863F0 80097490 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 863F4 80097494 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 863F8 80097498 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 863FC 8009749C AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 86400 800974A0 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 86404 800974A4 8E390130 */  lw      $t9, 0x0130($s1)           ## 00000130
/* 86408 800974A8 272E0600 */  addiu   $t6, $t9, 0x0600           ## $t6 = 00001D78
/* 8640C 800974AC AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 86410 800974B0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86414 800974B4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 86418 800974B8 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 8641C 800974BC AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 86420 800974C0 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 86424 800974C4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86428 800974C8 3C0FF000 */  lui     $t7, 0xF000                ## $t7 = F0000000
/* 8642C 800974CC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 86430 800974D0 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 86434 800974D4 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 86438 800974D8 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 8643C 800974DC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86440 800974E0 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 86444 800974E4 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 86448 800974E8 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 8644C 800974EC AC5F0000 */  sw      $ra, 0x0000($v0)           ## 00000000
/* 86450 800974F0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86454 800974F4 3C18073F */  lui     $t8, 0x073F                ## $t8 = 073F0000
/* 86458 800974F8 3718C000 */  ori     $t8, $t8, 0xC000           ## $t8 = 073FC000
/* 8645C 800974FC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 86460 80097500 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 86464 80097504 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 86468 80097508 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 8646C 8009750C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86470 80097510 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 86474 80097514 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 86478 80097518 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 8647C 8009751C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 86480 80097520 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86484 80097524 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 86488 80097528 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 8648C 8009752C AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 86490 80097530 8E2F0134 */  lw      $t7, 0x0134($s1)           ## 00000134
/* 86494 80097534 25F81C20 */  addiu   $t8, $t7, 0x1C20           ## $t8 = F0001C20
/* 86498 80097538 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 8649C 8009753C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 864A0 80097540 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 864A4 80097544 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 864A8 80097548 AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 864AC 8009754C 8E2E0134 */  lw      $t6, 0x0134($s1)           ## 00000134
/* 864B0 80097550 25CF20D0 */  addiu   $t7, $t6, 0x20D0           ## $t7 = 000020D8
/* 864B4 80097554 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 864B8 80097558 1000002F */  beq     $zero, $zero, .L80097618
/* 864BC 8009755C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
.L80097560:
/* 864C0 80097560 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 864C4 80097564 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 864C8 80097568 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 864CC 8009756C AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 864D0 80097570 8E390134 */  lw      $t9, 0x0134($s1)           ## 00000134
/* 864D4 80097574 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 864D8 80097578 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 864DC 8009757C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 864E0 80097580 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 864E4 80097584 AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 864E8 80097588 8E2F0134 */  lw      $t7, 0x0134($s1)           ## 00000134
/* 864EC 8009758C 25F80960 */  addiu   $t8, $t7, 0x0960           ## $t8 = 00002A38
/* 864F0 80097590 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 864F4 80097594 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 864F8 80097598 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 864FC 8009759C AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 86500 800975A0 AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 86504 800975A4 8E2E0134 */  lw      $t6, 0x0134($s1)           ## 00000134
/* 86508 800975A8 25CF12C0 */  addiu   $t7, $t6, 0x12C0           ## $t7 = 000012C8
/* 8650C 800975AC AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 86510 800975B0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86514 800975B4 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 86518 800975B8 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 8651C 800975BC AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 86520 800975C0 8E390134 */  lw      $t9, 0x0134($s1)           ## 00000134
/* 86524 800975C4 272E1C20 */  addiu   $t6, $t9, 0x1C20           ## $t6 = 00001C28
/* 86528 800975C8 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 8652C 800975CC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86530 800975D0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 86534 800975D4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 86538 800975D8 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 8653C 800975DC AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 86540 800975E0 8E380134 */  lw      $t8, 0x0134($s1)           ## 00000134
/* 86544 800975E4 27192580 */  addiu   $t9, $t8, 0x2580           ## $t9 = 00002588
/* 86548 800975E8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 8654C 800975EC 87AE002A */  lh      $t6, 0x002A($sp)
/* 86550 800975F0 55C10009 */  bnel    $t6, $at, .L80097618
/* 86554 800975F4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 86558 800975F8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 8655C 800975FC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 86560 80097600 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 86564 80097604 AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 86568 80097608 8E380134 */  lw      $t8, 0x0134($s1)           ## 00000134
/* 8656C 8009760C 27192EE0 */  addiu   $t9, $t8, 0x2EE0           ## $t9 = 00002EE8
/* 86570 80097610 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
.L80097614:
/* 86574 80097614 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
.L80097618:
/* 86578 80097618 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 8657C 8009761C AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 86580 80097620 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 86584 80097624 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 86588 80097628 8FBF001C */  lw      $ra, 0x001C($sp)
/* 8658C 8009762C 8FB00014 */  lw      $s0, 0x0014($sp)
/* 86590 80097630 8FB10018 */  lw      $s1, 0x0018($sp)
/* 86594 80097634 03E00008 */  jr      $ra
/* 86598 80097638 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


glabel func_8009763C
/* 8659C 8009763C AFA40000 */  sw      $a0, 0x0000($sp)
/* 865A0 80097640 03E00008 */  jr      $ra
/* 865A4 80097644 00000000 */  nop
/* 865A8 80097648 00000000 */  nop
/* 865AC 8009764C 00000000 */  nop