glabel func_8002A258
/* 191B8 8002A258 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 191BC 8002A25C AFB00018 */  sw      $s0, 0x0018($sp)
/* 191C0 8002A260 AFA60038 */  sw      $a2, 0x0038($sp)
/* 191C4 8002A264 30C6FFFF */  andi    $a2, $a2, 0xFFFF           ## $a2 = 00000000
/* 191C8 8002A268 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 191CC 8002A26C AFBF001C */  sw      $ra, 0x001C($sp)
/* 191D0 8002A270 AFA50034 */  sw      $a1, 0x0034($sp)
/* 191D4 8002A274 28C1300B */  slti    $at, $a2, 0x300B
/* 191D8 8002A278 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 191DC 8002A27C 14200013 */  bne     $at, $zero, .L8002A2CC
/* 191E0 8002A280 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
/* 191E4 8002A284 2401301B */  addiu   $at, $zero, 0x301B         ## $at = 0000301B
/* 191E8 8002A288 10C1017F */  beq     $a2, $at, .L8002A888
/* 191EC 8002A28C 2401301E */  addiu   $at, $zero, 0x301E         ## $at = 0000301E
/* 191F0 8002A290 10C1019A */  beq     $a2, $at, .L8002A8FC
/* 191F4 8002A294 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 191F8 8002A298 2401400C */  addiu   $at, $zero, 0x400C         ## $at = 0000400C
/* 191FC 8002A29C 10C1019C */  beq     $a2, $at, .L8002A910
/* 19200 8002A2A0 24017007 */  addiu   $at, $zero, 0x7007         ## $at = 00007007
/* 19204 8002A2A4 10C101AD */  beq     $a2, $at, .L8002A95C
/* 19208 8002A2A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1920C 8002A2AC 2401703E */  addiu   $at, $zero, 0x703E         ## $at = 0000703E
/* 19210 8002A2B0 10C101AF */  beq     $a2, $at, .L8002A970
/* 19214 8002A2B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19218 8002A2B8 2401703F */  addiu   $at, $zero, 0x703F         ## $at = 0000703F
/* 1921C 8002A2BC 10C101B1 */  beq     $a2, $at, .L8002A984
/* 19220 8002A2C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19224 8002A2C4 100001B4 */  beq     $zero, $zero, .L8002A998
/* 19228 8002A2C8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000001
.L8002A2CC:
/* 1922C 8002A2CC 28411042 */  slti    $at, $v0, 0x1042
/* 19230 8002A2D0 14200018 */  bne     $at, $zero, .L8002A334
/* 19234 8002A2D4 24041035 */  addiu   $a0, $zero, 0x1035         ## $a0 = 00001035
/* 19238 8002A2D8 2841205B */  slti    $at, $v0, 0x205B
/* 1923C 8002A2DC 14200005 */  bne     $at, $zero, .L8002A2F4
/* 19240 8002A2E0 2401300A */  addiu   $at, $zero, 0x300A         ## $at = 0000300A
/* 19244 8002A2E4 50410148 */  beql    $v0, $at, .L8002A808
/* 19248 8002A2E8 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
/* 1924C 8002A2EC 100001AA */  beq     $zero, $zero, .L8002A998
/* 19250 8002A2F0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000001
.L8002A2F4:
/* 19254 8002A2F4 28411063 */  slti    $at, $v0, 0x1063
/* 19258 8002A2F8 14200009 */  bne     $at, $zero, .L8002A320
/* 1925C 8002A2FC 244EDFD0 */  addiu   $t6, $v0, 0xDFD0           ## $t6 = FFFFDFD1
/* 19260 8002A300 2DC1002B */  sltiu   $at, $t6, 0x002B
/* 19264 8002A304 102001A3 */  beq     $at, $zero, .L8002A994
/* 19268 8002A308 000E7080 */  sll     $t6, $t6,  2
/* 1926C 8002A30C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 19270 8002A310 002E0821 */  addu    $at, $at, $t6
/* 19274 8002A314 8C2E6930 */  lw      $t6, 0x6930($at)           ## 80106930
/* 19278 8002A318 01C00008 */  jr      $t6
/* 1927C 8002A31C 00000000 */  nop
.L8002A320:
/* 19280 8002A320 24011062 */  addiu   $at, $zero, 0x1062         ## $at = 00001062
/* 19284 8002A324 504100CB */  beql    $v0, $at, .L8002A654
/* 19288 8002A328 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
/* 1928C 8002A32C 1000019A */  beq     $zero, $zero, .L8002A998
/* 19290 8002A330 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000001
.L8002A334:
/* 19294 8002A334 1044000A */  beq     $v0, $a0, .L8002A360
/* 19298 8002A338 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
/* 1929C 8002A33C 24011038 */  addiu   $at, $zero, 0x1038         ## $at = 00001038
/* 192A0 8002A340 10410031 */  beq     $v0, $at, .L8002A408
/* 192A4 8002A344 2401103E */  addiu   $at, $zero, 0x103E         ## $at = 0000103E
/* 192A8 8002A348 10410070 */  beq     $v0, $at, .L8002A50C
/* 192AC 8002A34C 24011041 */  addiu   $at, $zero, 0x1041         ## $at = 00001041
/* 192B0 8002A350 50410082 */  beql    $v0, $at, .L8002A55C
/* 192B4 8002A354 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
/* 192B8 8002A358 1000018F */  beq     $zero, $zero, .L8002A998
/* 192BC 8002A35C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000001
.L8002A360:
/* 192C0 8002A360 02011821 */  addu    $v1, $s0, $at
/* 192C4 8002A364 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E6
/* 192C8 8002A368 2404002A */  addiu   $a0, $zero, 0x002A         ## $a0 = 0000002A
/* 192CC 8002A36C 54400015 */  bnel    $v0, $zero, .L8002A3C4
/* 192D0 8002A370 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 192D4 8002A374 0C00A245 */  jal     func_80028914
/* 192D8 8002A378 AFA30020 */  sw      $v1, 0x0020($sp)
/* 192DC 8002A37C 10400009 */  beq     $v0, $zero, .L8002A3A4
/* 192E0 8002A380 8FA30020 */  lw      $v1, 0x0020($sp)
/* 192E4 8002A384 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 192E8 8002A388 8FA50034 */  lw      $a1, 0x0034($sp)
/* 192EC 8002A38C 24061036 */  addiu   $a2, $zero, 0x1036         ## $a2 = 00001036
/* 192F0 8002A390 0C00A221 */  jal     func_80028884
/* 192F4 8002A394 AFA30020 */  sw      $v1, 0x0020($sp)
/* 192F8 8002A398 8FA30020 */  lw      $v1, 0x0020($sp)
/* 192FC 8002A39C 10000008 */  beq     $zero, $zero, .L8002A3C0
/* 19300 8002A3A0 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A3A4:
/* 19304 8002A3A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19308 8002A3A8 8FA50034 */  lw      $a1, 0x0034($sp)
/* 1930C 8002A3AC 24061041 */  addiu   $a2, $zero, 0x1041         ## $a2 = 00001041
/* 19310 8002A3B0 0C00A221 */  jal     func_80028884
/* 19314 8002A3B4 AFA30020 */  sw      $v1, 0x0020($sp)
/* 19318 8002A3B8 8FA30020 */  lw      $v1, 0x0020($sp)
/* 1931C 8002A3BC 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A3C0:
/* 19320 8002A3C0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L8002A3C4:
/* 19324 8002A3C4 1441000E */  bne     $v0, $at, .L8002A400
/* 19328 8002A3C8 00000000 */  nop
/* 1932C 8002A3CC 0C00A245 */  jal     func_80028914
/* 19330 8002A3D0 2404002B */  addiu   $a0, $zero, 0x002B         ## $a0 = 0000002B
/* 19334 8002A3D4 10400007 */  beq     $v0, $zero, .L8002A3F4
/* 19338 8002A3D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1933C 8002A3DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19340 8002A3E0 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19344 8002A3E4 0C00A221 */  jal     func_80028884
/* 19348 8002A3E8 24061037 */  addiu   $a2, $zero, 0x1037         ## $a2 = 00001037
/* 1934C 8002A3EC 10000169 */  beq     $zero, $zero, .L8002A994
/* 19350 8002A3F0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8002A3F4:
/* 19354 8002A3F4 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19358 8002A3F8 0C00A221 */  jal     func_80028884
/* 1935C 8002A3FC 24061041 */  addiu   $a2, $zero, 0x1041         ## $a2 = 00001041
.L8002A400:
/* 19360 8002A400 10000164 */  beq     $zero, $zero, .L8002A994
/* 19364 8002A404 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8002A408:
/* 19368 8002A408 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
/* 1936C 8002A40C 02011821 */  addu    $v1, $s0, $at
/* 19370 8002A410 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
/* 19374 8002A414 2404002E */  addiu   $a0, $zero, 0x002E         ## $a0 = 0000002E
/* 19378 8002A418 54400015 */  bnel    $v0, $zero, .L8002A470
/* 1937C 8002A41C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 19380 8002A420 0C00A245 */  jal     func_80028914
/* 19384 8002A424 AFA30020 */  sw      $v1, 0x0020($sp)
/* 19388 8002A428 10400009 */  beq     $v0, $zero, .L8002A450
/* 1938C 8002A42C 8FA30020 */  lw      $v1, 0x0020($sp)
/* 19390 8002A430 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19394 8002A434 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19398 8002A438 24061039 */  addiu   $a2, $zero, 0x1039         ## $a2 = 00001039
/* 1939C 8002A43C 0C00A221 */  jal     func_80028884
/* 193A0 8002A440 AFA30020 */  sw      $v1, 0x0020($sp)
/* 193A4 8002A444 8FA30020 */  lw      $v1, 0x0020($sp)
/* 193A8 8002A448 10000008 */  beq     $zero, $zero, .L8002A46C
/* 193AC 8002A44C 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A450:
/* 193B0 8002A450 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 193B4 8002A454 8FA50034 */  lw      $a1, 0x0034($sp)
/* 193B8 8002A458 24061041 */  addiu   $a2, $zero, 0x1041         ## $a2 = 00001041
/* 193BC 8002A45C 0C00A221 */  jal     func_80028884
/* 193C0 8002A460 AFA30020 */  sw      $v1, 0x0020($sp)
/* 193C4 8002A464 8FA30020 */  lw      $v1, 0x0020($sp)
/* 193C8 8002A468 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A46C:
/* 193CC 8002A46C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L8002A470:
/* 193D0 8002A470 14410014 */  bne     $v0, $at, .L8002A4C4
/* 193D4 8002A474 2404002F */  addiu   $a0, $zero, 0x002F         ## $a0 = 0000002F
/* 193D8 8002A478 0C00A245 */  jal     func_80028914
/* 193DC 8002A47C AFA30020 */  sw      $v1, 0x0020($sp)
/* 193E0 8002A480 10400009 */  beq     $v0, $zero, .L8002A4A8
/* 193E4 8002A484 8FA30020 */  lw      $v1, 0x0020($sp)
/* 193E8 8002A488 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 193EC 8002A48C 8FA50034 */  lw      $a1, 0x0034($sp)
/* 193F0 8002A490 2406103A */  addiu   $a2, $zero, 0x103A         ## $a2 = 0000103A
/* 193F4 8002A494 0C00A221 */  jal     func_80028884
/* 193F8 8002A498 AFA30020 */  sw      $v1, 0x0020($sp)
/* 193FC 8002A49C 8FA30020 */  lw      $v1, 0x0020($sp)
/* 19400 8002A4A0 10000008 */  beq     $zero, $zero, .L8002A4C4
/* 19404 8002A4A4 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A4A8:
/* 19408 8002A4A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1940C 8002A4AC 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19410 8002A4B0 24061041 */  addiu   $a2, $zero, 0x1041         ## $a2 = 00001041
/* 19414 8002A4B4 0C00A221 */  jal     func_80028884
/* 19418 8002A4B8 AFA30020 */  sw      $v1, 0x0020($sp)
/* 1941C 8002A4BC 8FA30020 */  lw      $v1, 0x0020($sp)
/* 19420 8002A4C0 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A4C4:
/* 19424 8002A4C4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 19428 8002A4C8 1441000E */  bne     $v0, $at, .L8002A504
/* 1942C 8002A4CC 00000000 */  nop
/* 19430 8002A4D0 0C00A245 */  jal     func_80028914
/* 19434 8002A4D4 24040030 */  addiu   $a0, $zero, 0x0030         ## $a0 = 00000030
/* 19438 8002A4D8 10400007 */  beq     $v0, $zero, .L8002A4F8
/* 1943C 8002A4DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19440 8002A4E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19444 8002A4E4 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19448 8002A4E8 0C00A221 */  jal     func_80028884
/* 1944C 8002A4EC 2406103B */  addiu   $a2, $zero, 0x103B         ## $a2 = 0000103B
/* 19450 8002A4F0 10000128 */  beq     $zero, $zero, .L8002A994
/* 19454 8002A4F4 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8002A4F8:
/* 19458 8002A4F8 8FA50034 */  lw      $a1, 0x0034($sp)
/* 1945C 8002A4FC 0C00A221 */  jal     func_80028884
/* 19460 8002A500 24061041 */  addiu   $a2, $zero, 0x1041         ## $a2 = 00001041
.L8002A504:
/* 19464 8002A504 10000123 */  beq     $zero, $zero, .L8002A994
/* 19468 8002A508 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8002A50C:
/* 1946C 8002A50C 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
/* 19470 8002A510 02011821 */  addu    $v1, $s0, $at
/* 19474 8002A514 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
/* 19478 8002A518 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1947C 8002A51C 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19480 8002A520 14400005 */  bne     $v0, $zero, .L8002A538
/* 19484 8002A524 2406103F */  addiu   $a2, $zero, 0x103F         ## $a2 = 0000103F
/* 19488 8002A528 0C00A221 */  jal     func_80028884
/* 1948C 8002A52C AFA30020 */  sw      $v1, 0x0020($sp)
/* 19490 8002A530 8FA30020 */  lw      $v1, 0x0020($sp)
/* 19494 8002A534 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A538:
/* 19498 8002A538 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 1949C 8002A53C 14410004 */  bne     $v0, $at, .L8002A550
/* 194A0 8002A540 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 194A4 8002A544 8FA50034 */  lw      $a1, 0x0034($sp)
/* 194A8 8002A548 0C00A221 */  jal     func_80028884
/* 194AC 8002A54C 24061040 */  addiu   $a2, $zero, 0x1040         ## $a2 = 00001040
.L8002A550:
/* 194B0 8002A550 10000110 */  beq     $zero, $zero, .L8002A994
/* 194B4 8002A554 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 194B8 8002A558 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
.L8002A55C:
/* 194BC 8002A55C 02011821 */  addu    $v1, $s0, $at
/* 194C0 8002A560 946F62FA */  lhu     $t7, 0x62FA($v1)           ## 000062FA
/* 194C4 8002A564 548F0017 */  bnel    $a0, $t7, .L8002A5C4
/* 194C8 8002A568 947862FA */  lhu     $t8, 0x62FA($v1)           ## 000062FA
/* 194CC 8002A56C 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
/* 194D0 8002A570 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 194D4 8002A574 8FA50034 */  lw      $a1, 0x0034($sp)
/* 194D8 8002A578 14400007 */  bne     $v0, $zero, .L8002A598
/* 194DC 8002A57C 24061036 */  addiu   $a2, $zero, 0x1036         ## $a2 = 00001036
/* 194E0 8002A580 0C00A221 */  jal     func_80028884
/* 194E4 8002A584 AFA30020 */  sw      $v1, 0x0020($sp)
/* 194E8 8002A588 0C00A250 */  jal     func_80028940
/* 194EC 8002A58C 2404002A */  addiu   $a0, $zero, 0x002A         ## $a0 = 0000002A
/* 194F0 8002A590 8FA30020 */  lw      $v1, 0x0020($sp)
/* 194F4 8002A594 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A598:
/* 194F8 8002A598 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 194FC 8002A59C 14410008 */  bne     $v0, $at, .L8002A5C0
/* 19500 8002A5A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19504 8002A5A4 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19508 8002A5A8 24061037 */  addiu   $a2, $zero, 0x1037         ## $a2 = 00001037
/* 1950C 8002A5AC 0C00A221 */  jal     func_80028884
/* 19510 8002A5B0 AFA30020 */  sw      $v1, 0x0020($sp)
/* 19514 8002A5B4 0C00A250 */  jal     func_80028940
/* 19518 8002A5B8 2404002B */  addiu   $a0, $zero, 0x002B         ## $a0 = 0000002B
/* 1951C 8002A5BC 8FA30020 */  lw      $v1, 0x0020($sp)
.L8002A5C0:
/* 19520 8002A5C0 947862FA */  lhu     $t8, 0x62FA($v1)           ## 000062FA
.L8002A5C4:
/* 19524 8002A5C4 24011038 */  addiu   $at, $zero, 0x1038         ## $at = 00001038
/* 19528 8002A5C8 1701001F */  bne     $t8, $at, .L8002A648
/* 1952C 8002A5CC 00000000 */  nop
/* 19530 8002A5D0 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
/* 19534 8002A5D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19538 8002A5D8 8FA50034 */  lw      $a1, 0x0034($sp)
/* 1953C 8002A5DC 14400007 */  bne     $v0, $zero, .L8002A5FC
/* 19540 8002A5E0 24061039 */  addiu   $a2, $zero, 0x1039         ## $a2 = 00001039
/* 19544 8002A5E4 0C00A221 */  jal     func_80028884
/* 19548 8002A5E8 AFA30020 */  sw      $v1, 0x0020($sp)
/* 1954C 8002A5EC 0C00A250 */  jal     func_80028940
/* 19550 8002A5F0 2404002E */  addiu   $a0, $zero, 0x002E         ## $a0 = 0000002E
/* 19554 8002A5F4 8FA30020 */  lw      $v1, 0x0020($sp)
/* 19558 8002A5F8 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A5FC:
/* 1955C 8002A5FC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 19560 8002A600 14410009 */  bne     $v0, $at, .L8002A628
/* 19564 8002A604 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19568 8002A608 8FA50034 */  lw      $a1, 0x0034($sp)
/* 1956C 8002A60C 2406103A */  addiu   $a2, $zero, 0x103A         ## $a2 = 0000103A
/* 19570 8002A610 0C00A221 */  jal     func_80028884
/* 19574 8002A614 AFA30020 */  sw      $v1, 0x0020($sp)
/* 19578 8002A618 0C00A250 */  jal     func_80028940
/* 1957C 8002A61C 2404002F */  addiu   $a0, $zero, 0x002F         ## $a0 = 0000002F
/* 19580 8002A620 8FA30020 */  lw      $v1, 0x0020($sp)
/* 19584 8002A624 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A628:
/* 19588 8002A628 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 1958C 8002A62C 14410006 */  bne     $v0, $at, .L8002A648
/* 19590 8002A630 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19594 8002A634 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19598 8002A638 0C00A221 */  jal     func_80028884
/* 1959C 8002A63C 2406103B */  addiu   $a2, $zero, 0x103B         ## $a2 = 0000103B
/* 195A0 8002A640 0C00A250 */  jal     func_80028940
/* 195A4 8002A644 24040030 */  addiu   $a0, $zero, 0x0030         ## $a0 = 00000030
.L8002A648:
/* 195A8 8002A648 100000D2 */  beq     $zero, $zero, .L8002A994
/* 195AC 8002A64C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 195B0 8002A650 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
.L8002A654:
/* 195B4 8002A654 02011821 */  addu    $v1, $s0, $at
/* 195B8 8002A658 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
/* 195BC 8002A65C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 195C0 8002A660 8FA50034 */  lw      $a1, 0x0034($sp)
/* 195C4 8002A664 14400005 */  bne     $v0, $zero, .L8002A67C
/* 195C8 8002A668 24061063 */  addiu   $a2, $zero, 0x1063         ## $a2 = 00001063
/* 195CC 8002A66C 0C00A221 */  jal     func_80028884
/* 195D0 8002A670 AFA30020 */  sw      $v1, 0x0020($sp)
/* 195D4 8002A674 8FA30020 */  lw      $v1, 0x0020($sp)
/* 195D8 8002A678 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A67C:
/* 195DC 8002A67C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 195E0 8002A680 14410004 */  bne     $v0, $at, .L8002A694
/* 195E4 8002A684 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 195E8 8002A688 8FA50034 */  lw      $a1, 0x0034($sp)
/* 195EC 8002A68C 0C00A221 */  jal     func_80028884
/* 195F0 8002A690 24061064 */  addiu   $a2, $zero, 0x1064         ## $a2 = 00001064
.L8002A694:
/* 195F4 8002A694 100000BF */  beq     $zero, $zero, .L8002A994
/* 195F8 8002A698 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 195FC 8002A69C 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
/* 19600 8002A6A0 02011821 */  addu    $v1, $s0, $at
/* 19604 8002A6A4 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
/* 19608 8002A6A8 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 1960C 8002A6AC 54400016 */  bnel    $v0, $zero, .L8002A708
/* 19610 8002A6B0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 19614 8002A6B4 8739A604 */  lh      $t9, -0x59FC($t9)          ## 8011A604
/* 19618 8002A6B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1961C 8002A6BC 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19620 8002A6C0 2B21000A */  slti    $at, $t9, 0x000A
/* 19624 8002A6C4 1420000B */  bne     $at, $zero, .L8002A6F4
/* 19628 8002A6C8 24062032 */  addiu   $a2, $zero, 0x2032         ## $a2 = 00002032
/* 1962C 8002A6CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19630 8002A6D0 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19634 8002A6D4 24062034 */  addiu   $a2, $zero, 0x2034         ## $a2 = 00002034
/* 19638 8002A6D8 0C00A221 */  jal     func_80028884
/* 1963C 8002A6DC AFA30020 */  sw      $v1, 0x0020($sp)
/* 19640 8002A6E0 0C01C873 */  jal     func_800721CC
/* 19644 8002A6E4 2404FFF6 */  addiu   $a0, $zero, 0xFFF6         ## $a0 = FFFFFFF6
/* 19648 8002A6E8 8FA30020 */  lw      $v1, 0x0020($sp)
/* 1964C 8002A6EC 10000005 */  beq     $zero, $zero, .L8002A704
/* 19650 8002A6F0 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A6F4:
/* 19654 8002A6F4 0C00A221 */  jal     func_80028884
/* 19658 8002A6F8 AFA30020 */  sw      $v1, 0x0020($sp)
/* 1965C 8002A6FC 8FA30020 */  lw      $v1, 0x0020($sp)
/* 19660 8002A700 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A704:
/* 19664 8002A704 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L8002A708:
/* 19668 8002A708 14410004 */  bne     $v0, $at, .L8002A71C
/* 1966C 8002A70C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19670 8002A710 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19674 8002A714 0C00A221 */  jal     func_80028884
/* 19678 8002A718 24062032 */  addiu   $a2, $zero, 0x2032         ## $a2 = 00002032
.L8002A71C:
/* 1967C 8002A71C 0C00A250 */  jal     func_80028940
/* 19680 8002A720 2404009A */  addiu   $a0, $zero, 0x009A         ## $a0 = 0000009A
/* 19684 8002A724 1000009B */  beq     $zero, $zero, .L8002A994
/* 19688 8002A728 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 1968C 8002A72C 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
/* 19690 8002A730 02011821 */  addu    $v1, $s0, $at
/* 19694 8002A734 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
/* 19698 8002A738 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1969C 8002A73C 8FA50034 */  lw      $a1, 0x0034($sp)
/* 196A0 8002A740 14400005 */  bne     $v0, $zero, .L8002A758
/* 196A4 8002A744 2406201F */  addiu   $a2, $zero, 0x201F         ## $a2 = 0000201F
/* 196A8 8002A748 0C00A221 */  jal     func_80028884
/* 196AC 8002A74C AFA30020 */  sw      $v1, 0x0020($sp)
/* 196B0 8002A750 8FA30020 */  lw      $v1, 0x0020($sp)
/* 196B4 8002A754 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A758:
/* 196B8 8002A758 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 196BC 8002A75C 14410004 */  bne     $v0, $at, .L8002A770
/* 196C0 8002A760 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 196C4 8002A764 8FA50034 */  lw      $a1, 0x0034($sp)
/* 196C8 8002A768 0C00A221 */  jal     func_80028884
/* 196CC 8002A76C 2406205A */  addiu   $a2, $zero, 0x205A         ## $a2 = 0000205A
.L8002A770:
/* 196D0 8002A770 10000088 */  beq     $zero, $zero, .L8002A994
/* 196D4 8002A774 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 196D8 8002A778 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 196DC 8002A77C 00501021 */  addu    $v0, $v0, $s0
/* 196E0 8002A780 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 196E4 8002A784 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 196E8 8002A788 50400083 */  beql    $v0, $zero, .L8002A998
/* 196EC 8002A78C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 196F0 8002A790 14410004 */  bne     $v0, $at, .L8002A7A4
/* 196F4 8002A794 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 196F8 8002A798 8FA50034 */  lw      $a1, 0x0034($sp)
/* 196FC 8002A79C 0C00A221 */  jal     func_80028884
/* 19700 8002A7A0 2406205A */  addiu   $a2, $zero, 0x205A         ## $a2 = 0000205A
.L8002A7A4:
/* 19704 8002A7A4 1000007B */  beq     $zero, $zero, .L8002A994
/* 19708 8002A7A8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 1970C 8002A7AC 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 19710 8002A7B0 01104021 */  addu    $t0, $t0, $s0
/* 19714 8002A7B4 910804BD */  lbu     $t0, 0x04BD($t0)           ## 000104BD
/* 19718 8002A7B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1971C 8002A7BC 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19720 8002A7C0 55000075 */  bnel    $t0, $zero, .L8002A998
/* 19724 8002A7C4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 19728 8002A7C8 0C00A221 */  jal     func_80028884
/* 1972C 8002A7CC 24062035 */  addiu   $a2, $zero, 0x2035         ## $a2 = 00002035
/* 19730 8002A7D0 10000070 */  beq     $zero, $zero, .L8002A994
/* 19734 8002A7D4 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 19738 8002A7D8 24040012 */  addiu   $a0, $zero, 0x0012         ## $a0 = 00000012
/* 1973C 8002A7DC 0C00A22D */  jal     func_800288B4
/* 19740 8002A7E0 AFA30028 */  sw      $v1, 0x0028($sp)
/* 19744 8002A7E4 1440006B */  bne     $v0, $zero, .L8002A994
/* 19748 8002A7E8 8FA30028 */  lw      $v1, 0x0028($sp)
/* 1974C 8002A7EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19750 8002A7F0 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19754 8002A7F4 0C00A221 */  jal     func_80028884
/* 19758 8002A7F8 24062044 */  addiu   $a2, $zero, 0x2044         ## $a2 = 00002044
/* 1975C 8002A7FC 10000065 */  beq     $zero, $zero, .L8002A994
/* 19760 8002A800 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 19764 8002A804 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
.L8002A808:
/* 19768 8002A808 02011821 */  addu    $v1, $s0, $at
/* 1976C 8002A80C 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
/* 19770 8002A810 24040022 */  addiu   $a0, $zero, 0x0022         ## $a0 = 00000022
/* 19774 8002A814 54400015 */  bnel    $v0, $zero, .L8002A86C
/* 19778 8002A818 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 1977C 8002A81C 0C00A22D */  jal     func_800288B4
/* 19780 8002A820 AFA30020 */  sw      $v1, 0x0020($sp)
/* 19784 8002A824 10400009 */  beq     $v0, $zero, .L8002A84C
/* 19788 8002A828 8FA30020 */  lw      $v1, 0x0020($sp)
/* 1978C 8002A82C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19790 8002A830 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19794 8002A834 2406300B */  addiu   $a2, $zero, 0x300B         ## $a2 = 0000300B
/* 19798 8002A838 0C00A221 */  jal     func_80028884
/* 1979C 8002A83C AFA30020 */  sw      $v1, 0x0020($sp)
/* 197A0 8002A840 8FA30020 */  lw      $v1, 0x0020($sp)
/* 197A4 8002A844 10000008 */  beq     $zero, $zero, .L8002A868
/* 197A8 8002A848 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A84C:
/* 197AC 8002A84C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 197B0 8002A850 8FA50034 */  lw      $a1, 0x0034($sp)
/* 197B4 8002A854 2406300C */  addiu   $a2, $zero, 0x300C         ## $a2 = 0000300C
/* 197B8 8002A858 0C00A221 */  jal     func_80028884
/* 197BC 8002A85C AFA30020 */  sw      $v1, 0x0020($sp)
/* 197C0 8002A860 8FA30020 */  lw      $v1, 0x0020($sp)
/* 197C4 8002A864 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A868:
/* 197C8 8002A868 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L8002A86C:
/* 197CC 8002A86C 14410004 */  bne     $v0, $at, .L8002A880
/* 197D0 8002A870 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 197D4 8002A874 8FA50034 */  lw      $a1, 0x0034($sp)
/* 197D8 8002A878 0C00A221 */  jal     func_80028884
/* 197DC 8002A87C 2406300D */  addiu   $a2, $zero, 0x300D         ## $a2 = 0000300D
.L8002A880:
/* 197E0 8002A880 10000044 */  beq     $zero, $zero, .L8002A994
/* 197E4 8002A884 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8002A888:
/* 197E8 8002A888 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
/* 197EC 8002A88C 02011821 */  addu    $v1, $s0, $at
/* 197F0 8002A890 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
/* 197F4 8002A894 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 197F8 8002A898 8FA50034 */  lw      $a1, 0x0034($sp)
/* 197FC 8002A89C 14400005 */  bne     $v0, $zero, .L8002A8B4
/* 19800 8002A8A0 2406301D */  addiu   $a2, $zero, 0x301D         ## $a2 = 0000301D
/* 19804 8002A8A4 0C00A221 */  jal     func_80028884
/* 19808 8002A8A8 AFA30020 */  sw      $v1, 0x0020($sp)
/* 1980C 8002A8AC 8FA30020 */  lw      $v1, 0x0020($sp)
/* 19810 8002A8B0 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A8B4:
/* 19814 8002A8B4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 19818 8002A8B8 1441000E */  bne     $v0, $at, .L8002A8F4
/* 1981C 8002A8BC 00000000 */  nop
/* 19820 8002A8C0 0C00A245 */  jal     func_80028914
/* 19824 8002A8C4 24040113 */  addiu   $a0, $zero, 0x0113         ## $a0 = 00000113
/* 19828 8002A8C8 10400007 */  beq     $v0, $zero, .L8002A8E8
/* 1982C 8002A8CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19830 8002A8D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19834 8002A8D4 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19838 8002A8D8 0C00A221 */  jal     func_80028884
/* 1983C 8002A8DC 2406301F */  addiu   $a2, $zero, 0x301F         ## $a2 = 0000301F
/* 19840 8002A8E0 1000002C */  beq     $zero, $zero, .L8002A994
/* 19844 8002A8E4 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8002A8E8:
/* 19848 8002A8E8 8FA50034 */  lw      $a1, 0x0034($sp)
/* 1984C 8002A8EC 0C00A221 */  jal     func_80028884
/* 19850 8002A8F0 2406301E */  addiu   $a2, $zero, 0x301E         ## $a2 = 0000301E
.L8002A8F4:
/* 19854 8002A8F4 10000027 */  beq     $zero, $zero, .L8002A994
/* 19858 8002A8F8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8002A8FC:
/* 1985C 8002A8FC 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19860 8002A900 0C00A221 */  jal     func_80028884
/* 19864 8002A904 24063020 */  addiu   $a2, $zero, 0x3020         ## $a2 = 00003020
/* 19868 8002A908 10000022 */  beq     $zero, $zero, .L8002A994
/* 1986C 8002A90C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8002A910:
/* 19870 8002A910 3401A0D8 */  ori     $at, $zero, 0xA0D8         ## $at = 0000A0D8
/* 19874 8002A914 02011821 */  addu    $v1, $s0, $at
/* 19878 8002A918 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
/* 1987C 8002A91C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19880 8002A920 8FA50034 */  lw      $a1, 0x0034($sp)
/* 19884 8002A924 14400005 */  bne     $v0, $zero, .L8002A93C
/* 19888 8002A928 2406400D */  addiu   $a2, $zero, 0x400D         ## $a2 = 0000400D
/* 1988C 8002A92C 0C00A221 */  jal     func_80028884
/* 19890 8002A930 AFA30020 */  sw      $v1, 0x0020($sp)
/* 19894 8002A934 8FA30020 */  lw      $v1, 0x0020($sp)
/* 19898 8002A938 906263E5 */  lbu     $v0, 0x63E5($v1)           ## 000063E5
.L8002A93C:
/* 1989C 8002A93C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 198A0 8002A940 14410004 */  bne     $v0, $at, .L8002A954
/* 198A4 8002A944 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 198A8 8002A948 8FA50034 */  lw      $a1, 0x0034($sp)
/* 198AC 8002A94C 0C00A221 */  jal     func_80028884
/* 198B0 8002A950 2406400E */  addiu   $a2, $zero, 0x400E         ## $a2 = 0000400E
.L8002A954:
/* 198B4 8002A954 1000000F */  beq     $zero, $zero, .L8002A994
/* 198B8 8002A958 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8002A95C:
/* 198BC 8002A95C 8FA50034 */  lw      $a1, 0x0034($sp)
/* 198C0 8002A960 0C00A221 */  jal     func_80028884
/* 198C4 8002A964 2406703E */  addiu   $a2, $zero, 0x703E         ## $a2 = 0000703E
/* 198C8 8002A968 1000000A */  beq     $zero, $zero, .L8002A994
/* 198CC 8002A96C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8002A970:
/* 198D0 8002A970 8FA50034 */  lw      $a1, 0x0034($sp)
/* 198D4 8002A974 0C00A221 */  jal     func_80028884
/* 198D8 8002A978 2406703F */  addiu   $a2, $zero, 0x703F         ## $a2 = 0000703F
/* 198DC 8002A97C 10000005 */  beq     $zero, $zero, .L8002A994
/* 198E0 8002A980 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8002A984:
/* 198E4 8002A984 8FA50034 */  lw      $a1, 0x0034($sp)
/* 198E8 8002A988 0C00A221 */  jal     func_80028884
/* 198EC 8002A98C 24067042 */  addiu   $a2, $zero, 0x7042         ## $a2 = 00007042
/* 198F0 8002A990 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8002A994:
/* 198F4 8002A994 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L8002A998:
/* 198F8 8002A998 8FBF001C */  lw      $ra, 0x001C($sp)
/* 198FC 8002A99C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 19900 8002A9A0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 19904 8002A9A4 03E00008 */  jr      $ra
/* 19908 8002A9A8 00000000 */  nop


