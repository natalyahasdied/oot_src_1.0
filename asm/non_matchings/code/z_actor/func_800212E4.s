glabel func_800212E4
/* 10244 800212E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 10248 800212E8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1024C 800212EC AFA40018 */  sw      $a0, 0x0018($sp)
/* 10250 800212F0 AFA5001C */  sw      $a1, 0x001C($sp)
/* 10254 800212F4 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 10258 800212F8 0C018DA1 */  jal     Math_Coss              ## coss?
/* 1025C 800212FC 85C40030 */  lh      $a0, 0x0030($t6)           ## 00000030
/* 10260 80021300 C7A4001C */  lwc1    $f4, 0x001C($sp)
/* 10264 80021304 8FA20018 */  lw      $v0, 0x0018($sp)
/* 10268 80021308 46040182 */  mul.s   $f6, $f0, $f4
/* 1026C 8002130C 84440030 */  lh      $a0, 0x0030($v0)           ## 00000030
/* 10270 80021310 0C018DB1 */  jal     Math_Sins              ## sins?
/* 10274 80021314 E4460068 */  swc1    $f6, 0x0068($v0)           ## 00000068
/* 10278 80021318 C7AA001C */  lwc1    $f10, 0x001C($sp)
/* 1027C 8002131C 46000207 */  neg.s   $f8, $f0
/* 10280 80021320 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 10284 80021324 460A4402 */  mul.s   $f16, $f8, $f10
/* 10288 80021328 E5F00060 */  swc1    $f16, 0x0060($t7)          ## 00000060
/* 1028C 8002132C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 10290 80021330 03E00008 */  jr      $ra
/* 10294 80021334 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


