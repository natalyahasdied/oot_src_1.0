glabel func_800212B8
/* 10218 800212B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1021C 800212BC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 10220 800212C0 AFA40018 */  sw      $a0, 0x0018($sp)
/* 10224 800212C4 0C008492 */  jal     func_80021248
/* 10228 800212C8 8FA40018 */  lw      $a0, 0x0018($sp)
/* 1022C 800212CC 0C008449 */  jal     func_80021124
/* 10230 800212D0 8FA40018 */  lw      $a0, 0x0018($sp)
/* 10234 800212D4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 10238 800212D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1023C 800212DC 03E00008 */  jr      $ra
/* 10240 800212E0 00000000 */  nop

