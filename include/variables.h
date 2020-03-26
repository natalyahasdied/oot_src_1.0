#ifndef _VARIABLES_H_
#define _VARIABLES_H_

#include <z64.h>
#include <segment_symbols.h>

typedef struct {
    f32 unk_0, unk_4;
} struct_800E8288; // size = 0x8

extern u32 sYaz0MaxPtr;
extern u32 sYaz0CurDataEnd;
extern u32 sYaz0CurSize;
extern u32 sYaz0CurRomStart;
extern u8 sYaz0DataBuffer[0x800];
extern u32 osMemSize;
extern OSPiHandle* gCartHandle;
extern StackEntry sBootThreadInfo;
extern u8 sBootThreadStack[0x400];
extern OSThread sMainThread;
extern StackEntry sIdleThreadInfo;
extern u8 sIdleThreadStack[0x400];
extern OSThread sIdleThread;
extern char D_80006550[];
extern char D_80006558[];
extern OSMgrArgs __osPiDevMgr;
extern u32 gCurrentRegion;
extern char D_800065F0[];

extern u32 D_0404E740;
extern Color_RGBA8 D_800E8210;
extern u32 D_0404F000;
extern f32 D_80106478;
extern u32 D_0404D6B0;
extern NaviColor sNaviColorList[];
extern SaveContext gSaveContext;
extern u32 gSegments[];
extern f32 D_801064A4;
extern GameInfo* gGameInfo;
extern f32 D_801064A8;
extern u32 D_80118BFC;
extern UNK_TYPE D_80118BF4;
extern f32 D_801064AC;
extern s32 D_80118C20[16];
extern struct_800E8288 D_800E8288[];

extern u32 D_8011B9F8;
extern u32 D_8011B9FC;

extern KaleidoManagerOvl* gKaleidoMgrCurOvl;
extern void* sKaleidoAreaPtr;
extern KaleidoManagerOvl gKaleidoMgrOverlayTable[KALEIDO_OVL_COUNT];
#endif