#include <global.h>
#include <vt.h>

#define KALEIDO_OVERLAY(name)                                                                                \
    {                                                                                                        \
        NULL, (u32)_ovl_##name##SegmentRomStart, (u32)_ovl_##name##SegmentRomEnd, _ovl_##name##SegmentStart, \
            _ovl_##name##SegmentEnd, 0, #name,                                                               \
    }


void KaleidoManager_LoadOvl(KaleidoManagerOvl* ovl)
{
    ovl->loadedRamAddr = sKaleidoAreaPtr;
    Overlay_Load(ovl->vromStart, ovl->vromEnd, ovl->vramStart, ovl->vramEnd, ovl->loadedRamAddr);
    ovl->off = (u32)ovl->loadedRamAddr - (u32)ovl->vramStart;
    gKaleidoMgrCurOvl = ovl;
}

void KaleidoManager_ClearOvl(KaleidoManagerOvl* ovl) 
{
    if (ovl->loadedRamAddr) 
    {
        ovl->off = 0;
        bzero(ovl->loadedRamAddr, ovl->vramEnd - (u32)ovl->vramStart);
        ovl->loadedRamAddr = NULL;
        gKaleidoMgrCurOvl = NULL;
    }
}

void KaleidoManager_Init(GlobalContext* globalCtx) 
{
    s32 largestOvl;
    s32 vramSize;
    u32 idx;

    largestOvl = 0;
    for (idx = 0; idx < ARRAY_COUNT(gKaleidoMgrOverlayTable); idx++) 
    {
        vramSize = gKaleidoMgrOverlayTable[idx].vramEnd - (u32)gKaleidoMgrOverlayTable[idx].vramStart;
        if (largestOvl < vramSize) 
        {
            largestOvl = vramSize;
        }
    }

    sKaleidoAreaPtr = Game_Alloc(&globalCtx->state.tha);
    gKaleidoMgrCurOvl = NULL;
}

void KaleidoManager_Destroy() 
{
    if (gKaleidoMgrCurOvl) 
    {
        KaleidoManager_ClearOvl(gKaleidoMgrCurOvl);
        gKaleidoMgrCurOvl = NULL;
    }
    sKaleidoAreaPtr = NULL;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_kaleido_manager/KaleidoManager_GetRamAddr.s")
/*void* KaleidoManager_GetRamAddr(void* vram) {
    KaleidoManagerOvl* iter;
    KaleidoManagerOvl* ovl;
    u32 idx;

    iter = gKaleidoMgrCurOvl;
    ovl = iter;
    if (!ovl) {
        iter = &gKaleidoMgrOverlayTable[0];
        for (idx = 0; idx != ARRAY_COUNT(gKaleidoMgrOverlayTable); idx++) {
            if ((u32)vram >= (u32)iter->vramStart && (u32)iter->vramEnd >= (u32)vram) {
                KaleidoManager_LoadOvl(iter);
                ovl = iter;
                goto KaleidoManager_GetRamAddr_end;
            }
            // BUG: devs probably forgot iter++ here
        }

        return NULL;
    }

KaleidoManager_GetRamAddr_end:
    if (!ovl || (u32)vram < (u32)ovl->vramStart || (u32)vram >= (u32)ovl->vramEnd) {
        return NULL;
    }

    return (void*)((u32)vram + ovl->off);
}
*/