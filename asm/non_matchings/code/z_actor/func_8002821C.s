glabel func_8002821C
/* 1717C 8002821C AFA7000C */  sw      $a3, 0x000C($sp)
/* 17180 80028220 00073C00 */  sll     $a3, $a3, 16
/* 17184 80028224 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 17188 80028228 00073C03 */  sra     $a3, $a3, 16
/* 1718C 8002822C 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
/* 17190 80028230 C4A40090 */  lwc1    $f4, 0x0090($a1)           ## 00000090
/* 17194 80028234 84A6008A */  lh      $a2, 0x008A($a1)           ## 0000008A
/* 17198 80028238 87A90016 */  lh      $t1, 0x0016($sp)
/* 1719C 8002823C 845900B6 */  lh      $t9, 0x00B6($v0)           ## 000000B6
/* 171A0 80028240 460C203E */  c.le.s  $f4, $f12
/* 171A4 80028244 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 171A8 80028248 00C1C021 */  addu    $t8, $a2, $at
/* 171AC 8002824C 00C94023 */  subu    $t0, $a2, $t1
/* 171B0 80028250 03191823 */  subu    $v1, $t8, $t9
/* 171B4 80028254 00031C00 */  sll     $v1, $v1, 16
/* 171B8 80028258 00084400 */  sll     $t0, $t0, 16
/* 171BC 8002825C 00031C03 */  sra     $v1, $v1, 16
/* 171C0 80028260 45000015 */  bc1f    .L800282B8
/* 171C4 80028264 00084403 */  sra     $t0, $t0, 16
/* 171C8 80028268 804A0833 */  lb      $t2, 0x0833($v0)           ## 00000833
/* 171CC 8002826C 87AB0012 */  lh      $t3, 0x0012($sp)
/* 171D0 80028270 51400012 */  beql    $t2, $zero, .L800282BC
/* 171D4 80028274 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 171D8 80028278 04600003 */  bltz    $v1, .L80028288
/* 171DC 8002827C 00031023 */  subu    $v0, $zero, $v1
/* 171E0 80028280 10000001 */  beq     $zero, $zero, .L80028288
/* 171E4 80028284 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80028288:
/* 171E8 80028288 0162082A */  slt     $at, $t3, $v0
/* 171EC 8002828C 5420000B */  bnel    $at, $zero, .L800282BC
/* 171F0 80028290 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 171F4 80028294 05000003 */  bltz    $t0, .L800282A4
/* 171F8 80028298 00081023 */  subu    $v0, $zero, $t0
/* 171FC 8002829C 10000001 */  beq     $zero, $zero, .L800282A4
/* 17200 800282A0 01001025 */  or      $v0, $t0, $zero            ## $v0 = 00000000
.L800282A4:
/* 17204 800282A4 00E2082A */  slt     $at, $a3, $v0
/* 17208 800282A8 54200004 */  bnel    $at, $zero, .L800282BC
/* 1720C 800282AC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 17210 800282B0 03E00008 */  jr      $ra
/* 17214 800282B4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L800282B8:
/* 17218 800282B8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800282BC:
/* 1721C 800282BC 03E00008 */  jr      $ra
/* 17220 800282C0 00000000 */  nop


