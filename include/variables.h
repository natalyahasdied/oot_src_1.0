#ifndef _VARIABLES_H_
#define _VARIABLES_H_

#include <z64.h>
#include <segment_symbols.h>
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
#endif