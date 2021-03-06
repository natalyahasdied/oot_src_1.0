  
# "Elf_Message" part of the code file
#
# Handles Navi's Elf_Messages to the player.
#
# General Documentation about Navi and Elf_Messages:
# - https://wiki.cloudmodding.com/oot/Actor_List_(Variables)#En_Elf
# - https://wiki.cloudmodding.com/oot/En_Elf
# - https://wiki.cloudmodding.com/oot/Elf_message
#
# Starts at VRAM: 800590E0 / VROM: ACF040
#

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel func_800590E0
/* 48040 800590E0 90830000 */  lbu     $v1, 0x0000($a0)           ## 00000000
/* 48044 800590E4 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 48048 800590E8 24E7A5D0 */  addiu   $a3, $a3, 0xA5D0           ## $a3 = 8011A5D0
/* 4804C 800590EC 3062001E */  andi    $v0, $v1, 0x001E           ## $v0 = 00000000
/* 48050 800590F0 1040000C */  beq     $v0, $zero, .L80059124
/* 48054 800590F4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 48058 800590F8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 4805C 800590FC 1041001A */  beq     $v0, $at, .L80059168
/* 48060 80059100 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 48064 80059104 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 48068 80059108 10410028 */  beq     $v0, $at, .L800591AC
/* 4806C 8005910C 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 48070 80059110 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 48074 80059114 50410036 */  beql    $v0, $at, .L800591F0
/* 48078 80059118 90860001 */  lbu     $a2, 0x0001($a0)           ## 00000001
/* 4807C 8005911C 1000008D */  beq     $zero, $zero, .L80059354
/* 48080 80059120 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80059124:
/* 48084 80059124 90860001 */  lbu     $a2, 0x0001($a0)           ## 00000001
/* 48088 80059128 30780001 */  andi    $t8, $v1, 0x0001           ## $t8 = 00000000
/* 4808C 8005912C 3B190001 */  xori    $t9, $t8, 0x0001           ## $t9 = 00000001
/* 48090 80059130 30C800F0 */  andi    $t0, $a2, 0x00F0           ## $t0 = 00000000
/* 48094 80059134 00084903 */  sra     $t1, $t0,  4
/* 48098 80059138 00095040 */  sll     $t2, $t1,  1
/* 4809C 8005913C 00EA5821 */  addu    $t3, $a3, $t2
/* 480A0 80059140 956C0ED4 */  lhu     $t4, 0x0ED4($t3)           ## 00000ED4
/* 480A4 80059144 30CE000F */  andi    $t6, $a2, 0x000F           ## $t6 = 00000000
/* 480A8 80059148 01CF2804 */  sllv    $a1, $t7, $t6
/* 480AC 8005914C 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 480B0 80059150 01856824 */  and     $t5, $t4, $a1
/* 480B4 80059154 000D782B */  sltu    $t7, $zero, $t5
/* 480B8 80059158 2F390001 */  sltiu   $t9, $t9, 0x0001
/* 480BC 8005915C 032F1026 */  xor     $v0, $t9, $t7
/* 480C0 80059160 03E00008 */  jr      $ra
/* 480C4 80059164 2C420001 */  sltiu   $v0, $v0, 0x0001
.L80059168:
/* 480C8 80059168 908E0001 */  lbu     $t6, 0x0001($a0)           ## 00000001
/* 480CC 8005916C 24E7A5D0 */  addiu   $a3, $a3, 0xA5D0           ## $a3 = 8011A5D0
/* 480D0 80059170 94E91402 */  lhu     $t1, 0x1402($a3)           ## 8011B9D2
/* 480D4 80059174 3C088010 */  lui     $t0, 0x8010                ## $t0 = 80100000
/* 480D8 80059178 000EC080 */  sll     $t8, $t6,  2
/* 480DC 8005917C 01184021 */  addu    $t0, $t0, $t8
/* 480E0 80059180 00E95021 */  addu    $t2, $a3, $t1
/* 480E4 80059184 914B00A8 */  lbu     $t3, 0x00A8($t2)           ## 000000A8
/* 480E8 80059188 8D088A20 */  lw      $t0, -0x75E0($t0)          ## 800F8A20
/* 480EC 8005918C 30790001 */  andi    $t9, $v1, 0x0001           ## $t9 = 00000000
/* 480F0 80059190 3B2F0001 */  xori    $t7, $t9, 0x0001           ## $t7 = 00000001
/* 480F4 80059194 010B6024 */  and     $t4, $t0, $t3
/* 480F8 80059198 000C682B */  sltu    $t5, $zero, $t4
/* 480FC 8005919C 2DEF0001 */  sltiu   $t7, $t7, 0x0001
/* 48100 800591A0 01ED1026 */  xor     $v0, $t7, $t5
/* 48104 800591A4 03E00008 */  jr      $ra
/* 48108 800591A8 2C420001 */  sltiu   $v0, $v0, 0x0001
.L800591AC:
/* 4810C 800591AC 90980001 */  lbu     $t8, 0x0001($a0)           ## 00000001
/* 48110 800591B0 3C098010 */  lui     $t1, 0x8010                ## $t1 = 80100000
/* 48114 800591B4 24E7A5D0 */  addiu   $a3, $a3, 0xA5D0           ## $a3 = 80114BA0
/* 48118 800591B8 01384821 */  addu    $t1, $t1, $t8
/* 4811C 800591BC 91298F34 */  lbu     $t1, -0x70CC($t1)          ## 800F8F34
/* 48120 800591C0 908E0003 */  lbu     $t6, 0x0003($a0)           ## 00000003
/* 48124 800591C4 306C0001 */  andi    $t4, $v1, 0x0001           ## $t4 = 00000000
/* 48128 800591C8 00E95021 */  addu    $t2, $a3, $t1
/* 4812C 800591CC 91480074 */  lbu     $t0, 0x0074($t2)           ## 00000074
/* 48130 800591D0 39990001 */  xori    $t9, $t4, 0x0001           ## $t9 = 00000001
/* 48134 800591D4 2F390001 */  sltiu   $t9, $t9, 0x0001
/* 48138 800591D8 01C85826 */  xor     $t3, $t6, $t0
/* 4813C 800591DC 2D6B0001 */  sltiu   $t3, $t3, 0x0001
/* 48140 800591E0 032B1026 */  xor     $v0, $t9, $t3
/* 48144 800591E4 03E00008 */  jr      $ra
/* 48148 800591E8 2C420001 */  sltiu   $v0, $v0, 0x0001
.L800591EC:
/* 4814C 800591EC 90860001 */  lbu     $a2, 0x0001($a0)           ## 00000001
.L800591F0:
/* 48150 800591F0 30CF00F0 */  andi    $t7, $a2, 0x00F0           ## $t7 = 00000000
/* 48154 800591F4 2DE10041 */  sltiu   $at, $t7, 0x0041
/* 48158 800591F8 10200055 */  beq     $at, $zero, .L80059350
/* 4815C 800591FC 000F7880 */  sll     $t7, $t7,  2
/* 48160 80059200 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 48164 80059204 002F0821 */  addu    $at, $at, $t7
/* 48168 80059208 8C2F77E8 */  lw      $t7, 0x77E8($at)           ## 801077E8
/* 4816C 8005920C 01E00008 */  jr      $t7
/* 48170 80059210 00000000 */  nop
/* 48174 80059214 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 48178 80059218 24E7A5D0 */  addiu   $a3, $a3, 0xA5D0           ## $a3 = 8011A5D0
/* 4817C 8005921C 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 48180 80059220 8F188C88 */  lw      $t8, -0x7378($t8)          ## 800F8C88
/* 48184 80059224 8CED00A0 */  lw      $t5, 0x00A0($a3)           ## 8011A670
/* 48188 80059228 3C0A8010 */  lui     $t2, 0x8010                ## $t2 = 80100000
/* 4818C 8005922C 914A8CC6 */  lbu     $t2, -0x733A($t2)          ## 800F8CC6
/* 48190 80059230 01B84824 */  and     $t1, $t5, $t8
/* 48194 80059234 30C8000F */  andi    $t0, $a2, 0x000F           ## $t0 = 00000000
/* 48198 80059238 30790001 */  andi    $t9, $v1, 0x0001           ## $t9 = 00000000
/* 4819C 8005923C 01497007 */  srav    $t6, $t1, $t2
/* 481A0 80059240 010E6026 */  xor     $t4, $t0, $t6
/* 481A4 80059244 3B2B0001 */  xori    $t3, $t9, 0x0001           ## $t3 = 00000001
/* 481A8 80059248 2D6B0001 */  sltiu   $t3, $t3, 0x0001
/* 481AC 8005924C 2D8C0001 */  sltiu   $t4, $t4, 0x0001
/* 481B0 80059250 016C1026 */  xor     $v0, $t3, $t4
/* 481B4 80059254 03E00008 */  jr      $ra
/* 481B8 80059258 2C420001 */  sltiu   $v0, $v0, 0x0001


glabel func_8005925C
/* 481BC 8005925C 908F0003 */  lbu     $t7, 0x0003($a0)           ## 00000003
/* 481C0 80059260 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 481C4 80059264 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 481C8 80059268 000F6880 */  sll     $t5, $t7,  2
/* 481CC 8005926C 030DC021 */  addu    $t8, $t8, $t5
/* 481D0 80059270 3C098010 */  lui     $t1, 0x8010                ## $t1 = 80100000
/* 481D4 80059274 91298CC3 */  lbu     $t1, -0x733D($t1)          ## 800F8CC3
/* 481D8 80059278 8F188AE0 */  lw      $t8, -0x7520($t8)          ## 800F8AE0
/* 481DC 8005927C 24E7A5D0 */  addiu   $a3, $a3, 0xA5D0           ## $a3 = 8011A5D0
/* 481E0 80059280 94E8009C */  lhu     $t0, 0x009C($a3)           ## 8011A66C
/* 481E4 80059284 306B0001 */  andi    $t3, $v1, 0x0001           ## $t3 = 00000000
/* 481E8 80059288 01385004 */  sllv    $t2, $t8, $t1
/* 481EC 8005928C 396C0001 */  xori    $t4, $t3, 0x0001           ## $t4 = 00000001
/* 481F0 80059290 01487024 */  and     $t6, $t2, $t0
/* 481F4 80059294 000EC82B */  sltu    $t9, $zero, $t6
/* 481F8 80059298 2D8C0001 */  sltiu   $t4, $t4, 0x0001
/* 481FC 8005929C 01991026 */  xor     $v0, $t4, $t9
/* 48200 800592A0 03E00008 */  jr      $ra
/* 48204 800592A4 2C420001 */  sltiu   $v0, $v0, 0x0001


glabel func_800592A8
/* 48208 800592A8 908F0003 */  lbu     $t7, 0x0003($a0)           ## 00000003
/* 4820C 800592AC 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 48210 800592B0 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 48214 800592B4 000F6880 */  sll     $t5, $t7,  2
/* 48218 800592B8 24E7A5D0 */  addiu   $a3, $a3, 0xA5D0           ## $a3 = 8011A5D0
/* 4821C 800592BC 030DC021 */  addu    $t8, $t8, $t5
/* 48220 800592C0 8F188AA0 */  lw      $t8, -0x7560($t8)          ## 800F8AA0
/* 48224 800592C4 8CE900A4 */  lw      $t1, 0x00A4($a3)           ## 8011A674
/* 48228 800592C8 306E0001 */  andi    $t6, $v1, 0x0001           ## $t6 = 00000000
/* 4822C 800592CC 39CB0001 */  xori    $t3, $t6, 0x0001           ## $t3 = 00000001
/* 48230 800592D0 03095024 */  and     $t2, $t8, $t1
/* 48234 800592D4 000A402B */  sltu    $t0, $zero, $t2
/* 48238 800592D8 2D6B0001 */  sltiu   $t3, $t3, 0x0001
/* 4823C 800592DC 01681026 */  xor     $v0, $t3, $t0
/* 48240 800592E0 03E00008 */  jr      $ra
/* 48244 800592E4 2C420001 */  sltiu   $v0, $v0, 0x0001


glabel func_800592E8
/* 48248 800592E8 908C0003 */  lbu     $t4, 0x0003($a0)           ## 00000003
/* 4824C 800592EC 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 48250 800592F0 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 48254 800592F4 000CC880 */  sll     $t9, $t4,  2
/* 48258 800592F8 24E7A5D0 */  addiu   $a3, $a3, 0xA5D0           ## $a3 = 8011A5D0
/* 4825C 800592FC 01F97821 */  addu    $t7, $t7, $t9
/* 48260 80059300 8DEF8A58 */  lw      $t7, -0x75A8($t7)          ## 800F8A58
/* 48264 80059304 8CED00A4 */  lw      $t5, 0x00A4($a3)           ## 8011A674
/* 48268 80059308 306A0001 */  andi    $t2, $v1, 0x0001           ## $t2 = 00000000
/* 4826C 8005930C 394E0001 */  xori    $t6, $t2, 0x0001           ## $t6 = 00000001
/* 48270 80059310 01EDC024 */  and     $t8, $t7, $t5
/* 48274 80059314 0018482B */  sltu    $t1, $zero, $t8
/* 48278 80059318 2DCE0001 */  sltiu   $t6, $t6, 0x0001
/* 4827C 8005931C 01C91026 */  xor     $v0, $t6, $t1
/* 48280 80059320 03E00008 */  jr      $ra
/* 48284 80059324 2C420001 */  sltiu   $v0, $v0, 0x0001


glabel func_80059328
/* 48288 80059328 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 4828C 8005932C 24E7A5D0 */  addiu   $a3, $a3, 0xA5D0           ## $a3 = 8011A5D0
/* 48290 80059330 90EC003A */  lbu     $t4, 0x003A($a3)           ## 8011A60A
/* 48294 80059334 306B0001 */  andi    $t3, $v1, 0x0001           ## $t3 = 00000000
/* 48298 80059338 39680001 */  xori    $t0, $t3, 0x0001           ## $t0 = 00000001
/* 4829C 8005933C 2D080001 */  sltiu   $t0, $t0, 0x0001
/* 482A0 80059340 000CC82B */  sltu    $t9, $zero, $t4
/* 482A4 80059344 01191026 */  xor     $v0, $t0, $t9
/* 482A8 80059348 03E00008 */  jr      $ra
/* 482AC 8005934C 2C420001 */  sltiu   $v0, $v0, 0x0001
.L80059350:
/* 482B0 80059350 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80059354:
/* 482B4 80059354 03E00008 */  jr      $ra
/* 482B8 80059358 00000000 */  nop


glabel func_8005935C
/* 482BC 8005935C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 482C0 80059360 AFB20020 */  sw      $s2, 0x0020($sp)
/* 482C4 80059364 AFB00018 */  sw      $s0, 0x0018($sp)
/* 482C8 80059368 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 482CC 8005936C 24120020 */  addiu   $s2, $zero, 0x0020         ## $s2 = 00000020
/* 482D0 80059370 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 482D4 80059374 AFB1001C */  sw      $s1, 0x001C($sp)
/* 482D8 80059378 8E050000 */  lw      $a1, 0x0000($s0)           ## 00000000
/* 482DC 8005937C 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
/* 482E0 80059380 90AE0000 */  lbu     $t6, 0x0000($a1)           ## 00000000
/* 482E4 80059384 31CF00E0 */  andi    $t7, $t6, 0x00E0           ## $t7 = 00000000
/* 482E8 80059388 164F000D */  bne     $s2, $t7, .L800593C0
/* 482EC 8005938C 00000000 */  nop
.L80059390:
/* 482F0 80059390 0C016438 */  jal     func_800590E0
/* 482F4 80059394 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 482F8 80059398 54400003 */  bnel    $v0, $zero, .L800593A8
/* 482FC 8005939C 8E180000 */  lw      $t8, 0x0000($s0)           ## 00000000
/* 48300 800593A0 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 48304 800593A4 8E180000 */  lw      $t8, 0x0000($s0)           ## 00000000
.L800593A8:
/* 48308 800593A8 27050004 */  addiu   $a1, $t8, 0x0004           ## $a1 = 00000004
/* 4830C 800593AC AE050000 */  sw      $a1, 0x0000($s0)           ## 00000000
/* 48310 800593B0 90A80000 */  lbu     $t0, 0x0000($a1)           ## 00000004
/* 48314 800593B4 310900E0 */  andi    $t1, $t0, 0x00E0           ## $t1 = 00000000
/* 48318 800593B8 1249FFF5 */  beq     $s2, $t1, .L80059390
/* 4831C 800593BC 00000000 */  nop
.L800593C0:
/* 48320 800593C0 12200005 */  beq     $s1, $zero, .L800593D8
/* 48324 800593C4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 48328 800593C8 0C016438 */  jal     func_800590E0
/* 4832C 800593CC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000004
/* 48330 800593D0 10000002 */  beq     $zero, $zero, .L800593DC
/* 48334 800593D4 8FBF0024 */  lw      $ra, 0x0024($sp)
.L800593D8:
/* 48338 800593D8 8FBF0024 */  lw      $ra, 0x0024($sp)
.L800593DC:
/* 4833C 800593DC 8FB00018 */  lw      $s0, 0x0018($sp)
/* 48340 800593E0 8FB1001C */  lw      $s1, 0x001C($sp)
/* 48344 800593E4 8FB20020 */  lw      $s2, 0x0020($sp)
/* 48348 800593E8 03E00008 */  jr      $ra
/* 4834C 800593EC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


glabel func_800593F0
/* 48350 800593F0 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 48354 800593F4 AFB10018 */  sw      $s1, 0x0018($sp)
/* 48358 800593F8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 4835C 800593FC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 48360 80059400 AFB30020 */  sw      $s3, 0x0020($sp)
/* 48364 80059404 AFB2001C */  sw      $s2, 0x001C($sp)
/* 48368 80059408 AFB00014 */  sw      $s0, 0x0014($sp)
/* 4836C 8005940C 8E300000 */  lw      $s0, 0x0000($s1)           ## 00000000
/* 48370 80059410 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 48374 80059414 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 48378 80059418 27A30044 */  addiu   $v1, $sp, 0x0044           ## $v1 = FFFFFFD4
.L8005941C:
/* 4837C 8005941C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 48380 80059420 0C016438 */  jal     func_800590E0
/* 48384 80059424 AFA30030 */  sw      $v1, 0x0030($sp)
/* 48388 80059428 8FA30030 */  lw      $v1, 0x0030($sp)
/* 4838C 8005942C 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 48390 80059430 02429021 */  addu    $s2, $s2, $v0
/* 48394 80059434 AC620000 */  sw      $v0, 0x0000($v1)           ## 00000000
/* 48398 80059438 920E0004 */  lbu     $t6, 0x0004($s0)           ## 00000004
/* 4839C 8005943C 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 483A0 80059440 26100004 */  addiu   $s0, $s0, 0x0004           ## $s0 = 00000004
/* 483A4 80059444 31CF00E0 */  andi    $t7, $t6, 0x00E0           ## $t7 = 00000000
/* 483A8 80059448 11E1FFF4 */  beq     $t7, $at, .L8005941C
/* 483AC 8005944C 24630004 */  addiu   $v1, $v1, 0x0004           ## $v1 = 00000004
/* 483B0 80059450 56400004 */  bnel    $s2, $zero, .L80059464
/* 483B4 80059454 44922000 */  mtc1    $s2, $f4                   ## $f4 = 0.00
/* 483B8 80059458 10000056 */  beq     $zero, $zero, .L800595B4
/* 483BC 8005945C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 483C0 80059460 44922000 */  mtc1    $s2, $f4                   ## $f4 = 0.00
.L80059464:
/* 483C4 80059464 0C009B59 */  jal     func_80026D64
/* 483C8 80059468 46802320 */  cvt.s.w $f12, $f4
/* 483CC 8005946C 4600018D */  trunc.w.s $f6, $f0
/* 483D0 80059470 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 483D4 80059474 32650003 */  andi    $a1, $s3, 0x0003           ## $a1 = 00000001
/* 483D8 80059478 44023000 */  mfc1    $v0, $f6
/* 483DC 8005947C 5A60004D */  blezl   $s3, .L800595B4
/* 483E0 80059480 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 483E4 80059484 10A00014 */  beq     $a1, $zero, .L800594D8
/* 483E8 80059488 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000001
/* 483EC 8005948C 0000C880 */  sll     $t9, $zero,  2
/* 483F0 80059490 27A80044 */  addiu   $t0, $sp, 0x0044           ## $t0 = FFFFFFD4
/* 483F4 80059494 03281821 */  addu    $v1, $t9, $t0
.L80059498:
/* 483F8 80059498 8C690000 */  lw      $t1, 0x0000($v1)           ## 00000000
/* 483FC 8005949C 51200008 */  beql    $t1, $zero, .L800594C0
/* 48400 800594A0 8E2A0000 */  lw      $t2, 0x0000($s1)           ## 00000000
/* 48404 800594A4 18400003 */  blez    $v0, .L800594B4
/* 48408 800594A8 00000000 */  nop
/* 4840C 800594AC 10000003 */  beq     $zero, $zero, .L800594BC
/* 48410 800594B0 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = FFFFFFFF
.L800594B4:
/* 48414 800594B4 1000003F */  beq     $zero, $zero, .L800595B4
/* 48418 800594B8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L800594BC:
/* 4841C 800594BC 8E2A0000 */  lw      $t2, 0x0000($s1)           ## 00000000
.L800594C0:
/* 48420 800594C0 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 48424 800594C4 24630004 */  addiu   $v1, $v1, 0x0004           ## $v1 = 00000004
/* 48428 800594C8 254B0004 */  addiu   $t3, $t2, 0x0004           ## $t3 = 00000004
/* 4842C 800594CC 1492FFF2 */  bne     $a0, $s2, .L80059498
/* 48430 800594D0 AE2B0000 */  sw      $t3, 0x0000($s1)           ## 00000000
/* 48434 800594D4 12530036 */  beq     $s2, $s3, .L800595B0
.L800594D8:
/* 48438 800594D8 00126080 */  sll     $t4, $s2,  2
/* 4843C 800594DC 27AD0044 */  addiu   $t5, $sp, 0x0044           ## $t5 = FFFFFFD4
/* 48440 800594E0 018D1821 */  addu    $v1, $t4, $t5
.L800594E4:
/* 48444 800594E4 8C6E0000 */  lw      $t6, 0x0000($v1)           ## 00000004
/* 48448 800594E8 51C00008 */  beql    $t6, $zero, .L8005950C
/* 4844C 800594EC 8E2F0000 */  lw      $t7, 0x0000($s1)           ## 00000000
/* 48450 800594F0 18400003 */  blez    $v0, .L80059500
/* 48454 800594F4 00000000 */  nop
/* 48458 800594F8 10000003 */  beq     $zero, $zero, .L80059508
/* 4845C 800594FC 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = 00000000
.L80059500:
/* 48460 80059500 1000002C */  beq     $zero, $zero, .L800595B4
/* 48464 80059504 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80059508:
/* 48468 80059508 8E2F0000 */  lw      $t7, 0x0000($s1)           ## 00000000
.L8005950C:
/* 4846C 8005950C 25F80004 */  addiu   $t8, $t7, 0x0004           ## $t8 = 00000004
/* 48470 80059510 AE380000 */  sw      $t8, 0x0000($s1)           ## 00000000
/* 48474 80059514 8C790004 */  lw      $t9, 0x0004($v1)           ## 00000008
/* 48478 80059518 53200008 */  beql    $t9, $zero, .L8005953C
/* 4847C 8005951C 8E280000 */  lw      $t0, 0x0000($s1)           ## 00000000
/* 48480 80059520 18400003 */  blez    $v0, .L80059530
/* 48484 80059524 00000000 */  nop
/* 48488 80059528 10000003 */  beq     $zero, $zero, .L80059538
/* 4848C 8005952C 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = 00000000
.L80059530:
/* 48490 80059530 10000020 */  beq     $zero, $zero, .L800595B4
/* 48494 80059534 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80059538:
/* 48498 80059538 8E280000 */  lw      $t0, 0x0000($s1)           ## 00000000
.L8005953C:
/* 4849C 8005953C 25090004 */  addiu   $t1, $t0, 0x0004           ## $t1 = FFFFFFD8
/* 484A0 80059540 AE290000 */  sw      $t1, 0x0000($s1)           ## 00000000
/* 484A4 80059544 8C6A0008 */  lw      $t2, 0x0008($v1)           ## 0000000C
/* 484A8 80059548 51400008 */  beql    $t2, $zero, .L8005956C
/* 484AC 8005954C 8E2B0000 */  lw      $t3, 0x0000($s1)           ## 00000000
/* 484B0 80059550 18400003 */  blez    $v0, .L80059560
/* 484B4 80059554 00000000 */  nop
/* 484B8 80059558 10000003 */  beq     $zero, $zero, .L80059568
/* 484BC 8005955C 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = 00000000
.L80059560:
/* 484C0 80059560 10000014 */  beq     $zero, $zero, .L800595B4
/* 484C4 80059564 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80059568:
/* 484C8 80059568 8E2B0000 */  lw      $t3, 0x0000($s1)           ## 00000000
.L8005956C:
/* 484CC 8005956C 256C0004 */  addiu   $t4, $t3, 0x0004           ## $t4 = 00000008
/* 484D0 80059570 AE2C0000 */  sw      $t4, 0x0000($s1)           ## 00000000
/* 484D4 80059574 8C6D000C */  lw      $t5, 0x000C($v1)           ## 00000010
/* 484D8 80059578 51A00008 */  beql    $t5, $zero, .L8005959C
/* 484DC 8005957C 8E2E0000 */  lw      $t6, 0x0000($s1)           ## 00000000
/* 484E0 80059580 18400003 */  blez    $v0, .L80059590
/* 484E4 80059584 00000000 */  nop
/* 484E8 80059588 10000003 */  beq     $zero, $zero, .L80059598
/* 484EC 8005958C 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = 00000000
.L80059590:
/* 484F0 80059590 10000008 */  beq     $zero, $zero, .L800595B4
/* 484F4 80059594 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80059598:
/* 484F8 80059598 8E2E0000 */  lw      $t6, 0x0000($s1)           ## 00000000
.L8005959C:
/* 484FC 8005959C 26520004 */  addiu   $s2, $s2, 0x0004           ## $s2 = 00000005
/* 48500 800595A0 24630010 */  addiu   $v1, $v1, 0x0010           ## $v1 = 00000014
/* 48504 800595A4 25CF0004 */  addiu   $t7, $t6, 0x0004           ## $t7 = 00000004
/* 48508 800595A8 1653FFCE */  bne     $s2, $s3, .L800594E4
/* 4850C 800595AC AE2F0000 */  sw      $t7, 0x0000($s1)           ## 00000000
.L800595B0:
/* 48510 800595B0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800595B4:
/* 48514 800595B4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 48518 800595B8 8FB00014 */  lw      $s0, 0x0014($sp)
/* 4851C 800595BC 8FB10018 */  lw      $s1, 0x0018($sp)
/* 48520 800595C0 8FB2001C */  lw      $s2, 0x001C($sp)
/* 48524 800595C4 8FB30020 */  lw      $s3, 0x0020($sp)
/* 48528 800595C8 03E00008 */  jr      $ra
/* 4852C 800595CC 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000


glabel func_800595D0
/* 48530 800595D0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 48534 800595D4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 48538 800595D8 AFB40028 */  sw      $s4, 0x0028($sp)
/* 4853C 800595DC AFB30024 */  sw      $s3, 0x0024($sp)
/* 48540 800595E0 AFB20020 */  sw      $s2, 0x0020($sp)
/* 48544 800595E4 AFB1001C */  sw      $s1, 0x001C($sp)
/* 48548 800595E8 AFB00018 */  sw      $s0, 0x0018($sp)
/* 4854C 800595EC AFA40030 */  sw      $a0, 0x0030($sp)
/* 48550 800595F0 241400E0 */  addiu   $s4, $zero, 0x00E0         ## $s4 = 000000E0
/* 48554 800595F4 24130060 */  addiu   $s3, $zero, 0x0060         ## $s3 = 00000060
/* 48558 800595F8 24120040 */  addiu   $s2, $zero, 0x0040         ## $s2 = 00000040
/* 4855C 800595FC 24110020 */  addiu   $s1, $zero, 0x0020         ## $s1 = 00000020
/* 48560 80059600 27B00030 */  addiu   $s0, $sp, 0x0030           ## $s0 = 00000000
.L80059604:
/* 48564 80059604 8FAE0030 */  lw      $t6, 0x0030($sp)
/* 48568 80059608 91C20000 */  lbu     $v0, 0x0000($t6)           ## 00000000
/* 4856C 8005960C 304200E0 */  andi    $v0, $v0, 0x00E0           ## $v0 = 00000000
/* 48570 80059610 1040000B */  beq     $v0, $zero, .L80059640
/* 48574 80059614 00000000 */  nop
/* 48578 80059618 10510012 */  beq     $v0, $s1, .L80059664
/* 4857C 8005961C 00000000 */  nop
/* 48580 80059620 10520019 */  beq     $v0, $s2, .L80059688
/* 48584 80059624 00000000 */  nop
/* 48588 80059628 10530020 */  beq     $v0, $s3, .L800596AC
/* 4858C 8005962C 00000000 */  nop
/* 48590 80059630 5054002D */  beql    $v0, $s4, .L800596E8
/* 48594 80059634 8FB80030 */  lw      $t8, 0x0030($sp)
/* 48598 80059638 10000027 */  beq     $zero, $zero, .L800596D8
/* 4859C 8005963C 8FAE0030 */  lw      $t6, 0x0030($sp)
.L80059640:
/* 485A0 80059640 0C016438 */  jal     func_800590E0
/* 485A4 80059644 8FA40030 */  lw      $a0, 0x0030($sp)
/* 485A8 80059648 50400023 */  beql    $v0, $zero, .L800596D8
/* 485AC 8005964C 8FAE0030 */  lw      $t6, 0x0030($sp)
/* 485B0 80059650 8FAF0030 */  lw      $t7, 0x0030($sp)
/* 485B4 80059654 91E20002 */  lbu     $v0, 0x0002($t7)           ## 00000002
/* 485B8 80059658 34420100 */  ori     $v0, $v0, 0x0100           ## $v0 = 00000100
/* 485BC 8005965C 10000025 */  beq     $zero, $zero, .L800596F4
/* 485C0 80059660 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00000100
.L80059664:
/* 485C4 80059664 0C0164D7 */  jal     func_8005935C
/* 485C8 80059668 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 485CC 8005966C 5040001A */  beql    $v0, $zero, .L800596D8
/* 485D0 80059670 8FAE0030 */  lw      $t6, 0x0030($sp)
/* 485D4 80059674 8FB80030 */  lw      $t8, 0x0030($sp)
/* 485D8 80059678 93020002 */  lbu     $v0, 0x0002($t8)           ## 00000002
/* 485DC 8005967C 34420100 */  ori     $v0, $v0, 0x0100           ## $v0 = 00000100
/* 485E0 80059680 1000001C */  beq     $zero, $zero, .L800596F4
/* 485E4 80059684 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00000100
.L80059688:
/* 485E8 80059688 0C0164FC */  jal     func_800593F0
/* 485EC 8005968C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 485F0 80059690 50400011 */  beql    $v0, $zero, .L800596D8
/* 485F4 80059694 8FAE0030 */  lw      $t6, 0x0030($sp)
/* 485F8 80059698 8FB90030 */  lw      $t9, 0x0030($sp)
/* 485FC 8005969C 93220002 */  lbu     $v0, 0x0002($t9)           ## 00000002
/* 48600 800596A0 34420100 */  ori     $v0, $v0, 0x0100           ## $v0 = 00000100
/* 48604 800596A4 10000013 */  beq     $zero, $zero, .L800596F4
/* 48608 800596A8 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00000100
.L800596AC:
/* 4860C 800596AC 0C016438 */  jal     func_800590E0
/* 48610 800596B0 8FA40030 */  lw      $a0, 0x0030($sp)
/* 48614 800596B4 10400007 */  beq     $v0, $zero, .L800596D4
/* 48618 800596B8 8FA80030 */  lw      $t0, 0x0030($sp)
/* 4861C 800596BC 910A0002 */  lbu     $t2, 0x0002($t0)           ## 00000002
/* 48620 800596C0 000A5880 */  sll     $t3, $t2,  2
/* 48624 800596C4 010B6021 */  addu    $t4, $t0, $t3
/* 48628 800596C8 AFAC0030 */  sw      $t4, 0x0030($sp)
/* 4862C 800596CC 258DFFFC */  addiu   $t5, $t4, 0xFFFC           ## $t5 = FFFFFFFC
/* 48630 800596D0 AFAD0030 */  sw      $t5, 0x0030($sp)
.L800596D4:
/* 48634 800596D4 8FAE0030 */  lw      $t6, 0x0030($sp)
.L800596D8:
/* 48638 800596D8 25CF0004 */  addiu   $t7, $t6, 0x0004           ## $t7 = 00000004
/* 4863C 800596DC 1000FFC9 */  beq     $zero, $zero, .L80059604
/* 48640 800596E0 AFAF0030 */  sw      $t7, 0x0030($sp)
/* 48644 800596E4 8FB80030 */  lw      $t8, 0x0030($sp)
.L800596E8:
/* 48648 800596E8 93020002 */  lbu     $v0, 0x0002($t8)           ## 00000002
/* 4864C 800596EC 34420100 */  ori     $v0, $v0, 0x0100           ## $v0 = 00000100
/* 48650 800596F0 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00000100
.L800596F4:
/* 48654 800596F4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 48658 800596F8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 4865C 800596FC 8FB1001C */  lw      $s1, 0x001C($sp)
/* 48660 80059700 8FB20020 */  lw      $s2, 0x0020($sp)
/* 48664 80059704 8FB30024 */  lw      $s3, 0x0024($sp)
/* 48668 80059708 8FB40028 */  lw      $s4, 0x0028($sp)
/* 4866C 8005970C 03E00008 */  jr      $ra
/* 48670 80059710 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


glabel func_80059714
/* 48674 80059714 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 48678 80059718 AFBF001C */  sw      $ra, 0x001C($sp)
/* 4867C 8005971C 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 48680 80059720 8DCEA5D4 */  lw      $t6, -0x5A2C($t6)          ## 8011A5D4
/* 48684 80059724 8C851C44 */  lw      $a1, 0x1C44($a0)           ## 00001C44
/* 48688 80059728 24060146 */  addiu   $a2, $zero, 0x0146         ## $a2 = 00000146
/* 4868C 8005972C 11C0000B */  beq     $t6, $zero, .L8005975C
/* 48690 80059730 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 48694 80059734 44812000 */  mtc1    $at, $f4                   ## $f4 = 800.00
/* 48698 80059738 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 4869C 8005973C 0C00A056 */  jal     func_80028158
/* 486A0 80059740 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 486A4 80059744 14400003 */  bne     $v0, $zero, .L80059754
/* 486A8 80059748 3C04800F */  lui     $a0, 0x800F                ## $a0 = 800F0000
/* 486AC 8005974C 10000005 */  beq     $zero, $zero, .L80059764
/* 486B0 80059750 24840EB0 */  addiu   $a0, $a0, 0x0EB0           ## $a0 = 800F0EB0
.L80059754:
/* 486B4 80059754 10000005 */  beq     $zero, $zero, .L8005976C
/* 486B8 80059758 24020160 */  addiu   $v0, $zero, 0x0160         ## $v0 = 00000160
.L8005975C:
/* 486BC 8005975C 3C04800F */  lui     $a0, 0x800F                ## $a0 = 800F0000
/* 486C0 80059760 24840EE4 */  addiu   $a0, $a0, 0x0EE4           ## $a0 = 800F0EE4
.L80059764:
/* 486C4 80059764 0C016574 */  jal     func_800595D0
/* 486C8 80059768 00000000 */  nop
.L8005976C:
/* 486CC 8005976C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 486D0 80059770 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 486D4 80059774 03E00008 */  jr      $ra
/* 486D8 80059778 00000000 */  nop


glabel func_8005977C
/* 486DC 8005977C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 486E0 80059780 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 486E4 80059784 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 486E8 80059788 00A42821 */  addu    $a1, $a1, $a0
/* 486EC 8005978C 8CA51E0C */  lw      $a1, 0x1E0C($a1)           ## 00011E0C
/* 486F0 80059790 14A00003 */  bne     $a1, $zero, .L800597A0
/* 486F4 80059794 00000000 */  nop
/* 486F8 80059798 10000003 */  beq     $zero, $zero, .L800597A8
/* 486FC 8005979C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800597A0:
/* 48700 800597A0 0C016574 */  jal     func_800595D0
/* 48704 800597A4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00010000
.L800597A8:
/* 48708 800597A8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4870C 800597AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 48710 800597B0 03E00008 */  jr      $ra
/* 48714 800597B4 00000000 */  nop
/* 48718 800597B8 00000000 */  nop
/* 4871C 800597BC 00000000 */  nop
