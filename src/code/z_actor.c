#include <ultra64.h>
#include <global.h>

void ActorShape_Init(ActorShape* shape, f32 arg1, void* shadowDrawFunc, f32 arg3) 
{
    shape->unk_08 = arg1;
    shape->shadowDrawFunc = shadowDrawFunc;
    shape->unk_10 = arg3;
    shape->unk_14 = -1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8001EC44.s")

void ActorShadow_DrawFunc_Circle(Actor* actor, LightMapper* lightMapper, GlobalContext* globalCtx)
{
    func_8001EC44(actor, lightMapper, globalCtx, &D_0404E740, NULL);
}

void ActorShadow_DrawFunc_WhiteCircle(Actor* actor, LightMapper* lightMapper, GlobalContext* globalCtx)
{
    func_8001EC44(actor, lightMapper, globalCtx, &D_0404E740, &D_800E8210);
}
void ActorShadow_DrawFunc_Squiggly(Actor* actor, LightMapper* lightMapper, GlobalContext* globalCtx)
{
    func_8001EC44(actor, lightMapper, globalCtx, &D_0404F000, NULL);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8001F074.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/ActorShadow_DrawFunc_Teardrop.s")

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8001F74C.s")
void func_8001F74C(Actor* actor, s32 arg1, s32 arg2, UNK_PTR arg3, s32 arg4, UNK_PTR arg5) 
{
    if (arg1 == arg2) 
    {
        Matrix_MultVec3f(arg3, &actor->unk_CC[0]);
    } 
    else if (arg1 == arg4) 
    {
        Matrix_MultVec3f(arg5, &actor->unk_CC[1]);
    }
}

void func_8001F7A0(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, f32* arg3) 
{
    func_8008EC20(&globalCtx->mf_11D60, arg1, arg2, arg3);
    *arg3 = (*arg3 < 1.0f) ? 1.0f : (1.0f / *arg3);
}

void func_8001F804(TargetContext* targetCtx, s32 index, f32 arg2, f32 arg3, f32 arg4)
{
    targetCtx->arr_50[index].pos.x = arg2;
    targetCtx->arr_50[index].pos.y = arg3;
    targetCtx->arr_50[index].pos.z = arg4;
    targetCtx->arr_50[index].unk_0C = targetCtx->unk_44;
}

void func_8001F83C(TargetContext* targetCtx, s32 actorType, GlobalContext* globalCtx) {
    TargetContextEntry* entry;
    NaviColor* naviColor;
    s32 i;

    Math_Vec3f_Copy(&targetCtx->targetCenterPos, &globalCtx->view.eye);
    targetCtx->unk_44 = 500.0f;
    targetCtx->unk_48 = 0x100;

    naviColor = &sNaviColorList[actorType];

    entry = &targetCtx->arr_50[0];
    for (i = 0; i < ARRAY_COUNT(targetCtx->arr_50); i++) {
        func_8001F804(targetCtx, i, 0.0f, 0.0f, 0.0f);
        entry->color.r = naviColor->inner.r;
        entry->color.g = naviColor->inner.g;
        entry->color.b = naviColor->inner.b;
        entry++;
    }
}

void func_8001F904(TargetContext* targetCtx, Actor* actor, s32 actorType, GlobalContext* globalCtx) 
{
    NaviColor* naviColor = &sNaviColorList[actorType];
    targetCtx->naviRefPos.x = actor->posRot2.pos.x;
    targetCtx->naviRefPos.y = actor->posRot2.pos.y + (actor->unk_4C * actor->scale.y);
    targetCtx->naviRefPos.z = actor->posRot2.pos.z;
    targetCtx->naviInner.r = naviColor->inner.r;
    targetCtx->naviInner.g = naviColor->inner.g;
    targetCtx->naviInner.b = naviColor->inner.b;
    targetCtx->naviInner.a = naviColor->inner.a;
    targetCtx->naviOuter.r = naviColor->outer.r;
    targetCtx->naviOuter.g = naviColor->outer.g;
    targetCtx->naviOuter.b = naviColor->outer.b;
    targetCtx->naviOuter.a = naviColor->outer.a;
}

void func_8001FA68(TargetContext *targetCtx, Actor *actor, GlobalContext *globalCtx)
{
    targetCtx->unk_90 = NULL;
    targetCtx->unk_8C = NULL;
    targetCtx->targetedActor = NULL;
    targetCtx->arrowPointedActor = NULL;
    targetCtx->unk_4B = 0;
    targetCtx->unk_4C = 0;
    targetCtx->unk_40 = 0.0f;
    func_8001F904(targetCtx, actor, actor->type, globalCtx);
    func_8001F83C(targetCtx, actor->type, globalCtx);
}
#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8001FACC.s")

#ifdef NON_MATCHING
// copied from debug decomp, addresses adjusted for 1.0
void func_80020108(TargetContext* targetCtx, Player* player, Actor* actorArg, GlobalContext* globalCtx) {
    s32 pad;
    Actor* unkActor;
    s32 actorType;
    Vec3f sp50;
    f32 sp4C;
    f32 temp1;
    f32 temp2;
    f32 temp3;
    f32 temp4;
    f32 temp5;
    f32 temp6;
    s32 lockOnSfxId;

    unkActor = NULL;

    if ((player->unk_664 != NULL) && (player->unk_84B[player->unk_846] == 2)) {
        targetCtx->unk_94 = NULL;
    } else {
        func_800259BC(globalCtx, &globalCtx->actorCtx, &unkActor, player);
        targetCtx->unk_94 = unkActor;
    }

    if (targetCtx->unk_8C != NULL) {
        unkActor = targetCtx->unk_8C;
        targetCtx->unk_8C = NULL;
    } else if (actorArg != NULL) {
        unkActor = actorArg;
    }

    if (unkActor != NULL) {
        actorType = unkActor->type;
    } else {
        actorType = player->actor.type;
    }

    if ((unkActor != targetCtx->arrowPointedActor) || (actorType != targetCtx->activeType)) {
        targetCtx->arrowPointedActor = unkActor;
        targetCtx->activeType = actorType;
        targetCtx->unk_40 = 1.0f;
    }

    if (unkActor == NULL) {
        unkActor = &player->actor;
    }

    if (Math_ApproxF(&targetCtx->unk_40, 0.0f, 0.25f) == 0) {
        temp1 = 0.25f / targetCtx->unk_40;
        temp2 = unkActor->posRot.pos.x - targetCtx->naviRefPos.x;
        temp3 = (unkActor->posRot.pos.y + (unkActor->unk_4C * unkActor->scale.y)) - targetCtx->naviRefPos.y;
        temp4 = unkActor->posRot.pos.z - targetCtx->naviRefPos.z;
        targetCtx->naviRefPos.x += temp2 * temp1;
        targetCtx->naviRefPos.y += temp3 * temp1;
        targetCtx->naviRefPos.z += temp4 * temp1;
    } else {
        func_8001F904(targetCtx, unkActor, actorType, globalCtx);
    }

    if ((actorArg != NULL) && (targetCtx->unk_4B == 0)) {
        func_8001F7A0(globalCtx, &actorArg->posRot2.pos, &sp50, &sp4C);
        if (((sp50.z <= 0.0f) || (1.0f <= fabsf(sp50.x * sp4C))) || (1.0f <= fabsf(sp50.y * sp4C))) {
            actorArg = NULL;
        }
    }

    if (actorArg != NULL) {
        if (actorArg != targetCtx->targetedActor) {
            func_8001F83C(targetCtx, actorArg->type, globalCtx);
            targetCtx->targetedActor = actorArg;

            if (actorArg->id == ACTOR_EN_BOOM) {
                targetCtx->unk_48 = 0;
            }

            lockOnSfxId = ((actorArg->flags & 5) == 5) ? NA_SE_SY_LOCK_ON : NA_SE_SY_LOCK_ON_HUMAN;
            func_800646F0(lockOnSfxId);
        }

        targetCtx->targetCenterPos.x = actorArg->posRot.pos.x;
        targetCtx->targetCenterPos.y = actorArg->posRot.pos.y - (actorArg->shape.unk_08 * actorArg->scale.y);
        targetCtx->targetCenterPos.z = actorArg->posRot.pos.z;

        if (targetCtx->unk_4B == 0) {
            temp5 = (500.0f - targetCtx->unk_44) * 3.0f;
            temp6 = (temp5 < 30.0f) ? 30.0f : ((100.0f < temp5) ? 100.0f : temp5);
            if (Math_ApproxF(&targetCtx->unk_44, 80.0f, temp6) != 0) {
                targetCtx->unk_4B++;
            }
        } else {
            targetCtx->unk_4B = (targetCtx->unk_4B + 3) | 0x80;
            targetCtx->unk_44 = 120.0f;
        }
    } else {
        targetCtx->targetedActor = NULL;
        Math_ApproxF(&targetCtx->unk_44, 500.0f, 80.0f);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80020108.s")
#endif

/**
 * Tests if current scene switch flag is set.
 */

s32 Flags_GetSwitch(GlobalContext* globalCtx, s32 flag) 
{
   if (flag < 0x20) 
   {
       return globalCtx->actorCtx.flags.swch & (1 << flag);
   }

   else 
   {
       return globalCtx->actorCtx.flags.tempSwch & (1 << flag);
   }
}

/**
 * Sets current scene switch flag.
 */

void Flags_SetSwitch(GlobalContext* globalCtx, s32 flag) 
{
    if (flag < 0x20) 
    {
        globalCtx->actorCtx.flags.swch |= (1 << flag);
    } 

    else 
    {
        globalCtx->actorCtx.flags.tempSwch |= (1 << flag);
    }
}

/**
 * Unsets current scene switch flag.
 */

void Flags_UnsetSwitch(GlobalContext* globalCtx, s32 flag) 
{
    if (flag < 0x20) 
    {
        globalCtx->actorCtx.flags.swch &= ~(1 << flag);
    } 

    else 
    {
        globalCtx->actorCtx.flags.tempSwch &= ~(1 << flag);
    }
}

/**
 * Tests if current scene unknown flag is set.
 */

s32 Flags_GetUnknown(GlobalContext* globalCtx, s32 flag) 
{
    if (flag < 0x20) 
    {
        return globalCtx->actorCtx.flags.unk0 & (1 << flag);
    } 

    else 
    {
        return globalCtx->actorCtx.flags.unk1 & (1 << flag);
    }
}

/**
 * Sets current scene unknown flag.
 */

void Flags_SetUnknown(GlobalContext* globalCtx, s32 flag) 
{
    if (flag < 0x20) 
    {
        globalCtx->actorCtx.flags.unk0 |= (1 << flag);
    } 

    else 
    {
        globalCtx->actorCtx.flags.unk1 |= (1 << flag);
    }
}

/**
 * Unsets current scene unknown flag.
 */

void Flags_UnsetUnknown(GlobalContext* globalCtx, s32 flag) 
{
    if (flag < 0x20) 
    {
        globalCtx->actorCtx.flags.unk0 &= ~(1 << flag);
    } 

    else 
    {
        globalCtx->actorCtx.flags.unk1 &= ~(1 << flag);
    }
}

/**
 * Tests if current scene chest flag is set.
 */

s32 Flags_GetTreasure(GlobalContext* globalCtx, s32 flag) 
{
    return globalCtx->actorCtx.flags.chest & (1 << flag);
}

/**
 * Sets current scene chest flag.
 */

void Flags_SetTreasure(GlobalContext* globalCtx, s32 flag) 
{
    globalCtx->actorCtx.flags.chest |= (1 << flag);
}

/**
 * Tests if current scene clear flag is set.
 */

s32 Flags_GetClear(GlobalContext* globalCtx, s32 flag)
{
    return globalCtx->actorCtx.flags.clear & (1 << flag);
}

/**
 * Sets current scene clear flag.
 */

void Flags_SetClear(GlobalContext* globalCtx, s32 flag) 
{
    globalCtx->actorCtx.flags.clear |= (1 << flag);
}

/**
 * Unsets current scene clear flag.
 */

void Flags_UnsetClear(GlobalContext* globalCtx, s32 flag) 
{
    globalCtx->actorCtx.flags.clear &= ~(1 << flag);
}

/**
 * Tests if current scene temp clear flag is set.
 */

s32 Flags_GetTempClear(GlobalContext* globalCtx, s32 flag) 
{
    return globalCtx->actorCtx.flags.tempClear & (1 << flag);
}

/**
 * Sets current scene temp clear flag.
 */

void Flags_SetTempClear(GlobalContext* globalCtx, s32 flag) 
{
    globalCtx->actorCtx.flags.tempClear |= 1 << flag;
}

/**
 * Unsets current scene temp clear flag.
 */

void Flags_UnsetTempClear(GlobalContext* globalCtx, s32 flag) 
{
    globalCtx->actorCtx.flags.tempClear &= ~(1 << flag);
}

/**
 * Tests if current scene collectible flag is set.
 */

s32 Flags_GetCollectible(GlobalContext* globalCtx, s32 flag) 
{
    if (flag < 0x20) 
    {
        return globalCtx->actorCtx.flags.collect & (1 << flag);
    } 

    else 
    {
        return globalCtx->actorCtx.flags.tempCollect & (1 << flag);
    }
}

/**
 * Sets current scene collectible flag.
 */

void Flags_SetCollectible(GlobalContext* globalCtx, s32 flag) 
{
    if (flag != 0) 
    {
        if (flag < 0x20) 
        {
            globalCtx->actorCtx.flags.collect |= 1 << flag;
        } 
        
        else 
        {
            globalCtx->actorCtx.flags.tempCollect |= 1 << flag;
        }
    }
}

void func_80020760(GlobalContext* globalCtx, TitleCardContext* titleCtx) 
{
    titleCtx->delayA = titleCtx->delayB = titleCtx->unk_E = titleCtx->unk_C = 0;
}

void TitleCard_InitBossName(GlobalContext* globalCtx, TitleCardContext* titleCtx, u32 texture, s16 arg3, s16 arg4,
                            u8 arg5, u8 arg6) 
{
    titleCtx->texture = texture;
    titleCtx->unk_4 = arg3;
    titleCtx->unk_6 = arg4;
    titleCtx->unk_8 = arg5;
    titleCtx->unk_9 = arg6;
    titleCtx->delayA = 80;
    titleCtx->delayB = 0;
}


void TitleCard_InitPlaceName(GlobalContext* globalCtx, TitleCardContext* titleCtx, u32 texture, s32 arg3, s32 arg4,
                             s32 arg5, s32 arg6, s32 arg7) 
{
    Scene* loadedScene = globalCtx->loadedScene;
    u32 size = loadedScene->titleVromEnd - loadedScene->titleVromStart;

    if ((size != 0) && (size <= 0x2000)) 
    {
        DmaMgr_SendRequest0(texture, loadedScene->titleVromStart, size);
    }

    titleCtx->texture = texture;
    titleCtx->unk_4 = arg3;
    titleCtx->unk_6 = arg4;
    titleCtx->unk_8 = arg5;
    titleCtx->unk_9 = arg6;
    titleCtx->delayA = 80;
    titleCtx->delayB = arg7;
}

void TitleCard_Update(GlobalContext* globalCtx, TitleCardContext* titleCtx) 
{
    if (DECR(titleCtx->delayB) == 0) 
    {
        if (DECR(titleCtx->delayA) == 0) 
        {
            Math_ApproxS(&titleCtx->unk_C, 0, 30);
            Math_ApproxS(&titleCtx->unk_E, 0, 70);
        } 

        else 
        {
            Math_ApproxS(&titleCtx->unk_C, 255, 10);
            Math_ApproxS(&titleCtx->unk_E, 255, 20);
        }
    }
}

#ifdef NON_MATCHING
// copied from debug decomp
void TitleCard_Draw(GlobalContext* globalCtx, TitleCardContext* titleCtx) {
    s32 spCC;
    s32 spC8;
    s32 unk1;
    s32 spC0;
    s32 sp38;
    s32 spB8;
    s32 spB4;
    s32 spB0;
    GraphicsContext* gfxCtx;

    if (titleCtx->unk_C != 0) {
        spCC = titleCtx->unk_8;
        spC8 = titleCtx->unk_9;
        spC0 = (titleCtx->unk_4 * 4) - (spCC * 2);
        spB8 = (titleCtx->unk_6 * 4) - (spC8 * 2);
        sp38 = spCC * 2;

        gfxCtx = globalCtx->state.gfxCtx;

        spB0 = spCC * spC8 * gSaveContext.language;
        spC8 = (spCC * spC8 > 0x1000) ? 0x1000 / spCC : spC8;
        spB4 = spB8 + (spC8 * 4);

        if (1) {} // Necessary to match

        gfxCtx->overlay.p = func_8007E058(gfxCtx->overlay.p);

        gDPSetPrimColor(gfxCtx->overlay.p++, 0, 0, (u8)titleCtx->unk_E, (u8)titleCtx->unk_E, (u8)titleCtx->unk_E,
                        (u8)titleCtx->unk_C);

        gDPLoadTextureBlock(gfxCtx->overlay.p++, titleCtx->texture + spB0, G_IM_FMT_IA, G_IM_SIZ_8b, spCC, spC8, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);

        gSPTextureRectangle(gfxCtx->overlay.p++, spC0, spB8, ((sp38 * 2) + spC0) - 4, spB8 + (spC8 * 4) - 1,
                            G_TX_RENDERTILE, 0, 0, 1024, 1024);

        spC8 = titleCtx->unk_9 - spC8;

        if (spC8 > 0) {
            gDPLoadTextureBlock(gfxCtx->overlay.p++, titleCtx->texture + spB0 + 0x1000, G_IM_FMT_IA, G_IM_SIZ_8b, spCC,
                                spC8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);

            gSPTextureRectangle(gfxCtx->overlay.p++, spC0, spB4, ((sp38 * 2) + spC0) - 4, spB4 + (spC8 * 4) - 1,
                                G_TX_RENDERTILE, 0, 0, 1024, 1024);
        }

    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/TitleCard_Draw.s")
#endif

s32 func_80020E80(GlobalContext* globalCtx, TitleCardContext* titleCtx) 
{
    if ((globalCtx->actorCtx.titleCtx.delayB != 0) || (globalCtx->actorCtx.titleCtx.unk_C != 0)) 
    {
        titleCtx->delayA = 0;
        titleCtx->delayB = 0;
        return 0;
    }

    else
    {
        return 1;
    }
}

void Actor_Kill(Actor* actor) 
{
    actor->draw = NULL;
    actor->update = NULL;
    actor->flags &= ~0x1;
}

void Actor_InitPosRot(Actor* actor) 
{
    actor->posRot = actor->initPosRot;
}

void Actor_SetHeight(Actor* actor, f32 offset) 
{
    actor->posRot2.pos.x = actor->posRot.pos.x;
    actor->posRot2.pos.y = actor->posRot.pos.y + offset;
    actor->posRot2.pos.z = actor->posRot.pos.z;

    actor->posRot2.rot.x = actor->posRot.rot.x;
    actor->posRot2.rot.y = actor->posRot.rot.y;
    actor->posRot2.rot.z = actor->posRot.rot.z;
}

void func_80020F48(Actor* actor) 
{
    actor->posRot.rot = actor->shape.rot;
}

void func_80020F68(Actor* actor) 
{
    actor->shape.rot = actor->posRot.rot;
}

void Actor_SetScale(Actor* actor, f32 scale) 
{
    actor->scale.z = scale;
    actor->scale.y = scale;
    actor->scale.x = scale;
}

void Actor_SetObjectDependency(GlobalContext* globalCtx, Actor* actor) 
{
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[actor->objBankIndex].segment);
}

void Actor_Init(Actor* actor, GlobalContext* globalCtx) 
{
    Actor_InitPosRot(actor);
    func_80020F68(actor);
    Actor_SetHeight(actor, 0.0f);
    Math_Vec3f_Copy(&actor->pos4, &actor->posRot.pos);
    Actor_SetScale(actor, 0.01f);
    actor->unk_1F = 3;
    actor->minVelocityY = -20.0f;
    actor->waterSurfaceDist = D_801064A4;
    actor->naviEnemyId = 0xFF;
    actor->unk_F4 = 1000.0f;
    actor->unk_F8 = 350.0f;
    actor->unk_FC = 700.0f;
    func_800502A8(&actor->sub_98);
    actor->floorPolySource = 0x32;
    ActorShape_Init(&actor->shape, 0.0f, NULL, 0.0f);
    if (Object_IsLoaded(&globalCtx->objectCtx, actor->objBankIndex)) 
    {
        Actor_SetObjectDependency(globalCtx, actor);
        actor->init(actor, globalCtx);
        actor->init = NULL;
    }
}

void Actor_Destroy(Actor* actor, GlobalContext* globalCtx) 
{
    if (actor->destroy != NULL) 
    {
        actor->destroy(actor, globalCtx);
        actor->destroy = NULL;
    } 
}

void func_80021124(Actor* actor) 
{
    f32 speedRate = R_UPDATE_RATE * 0.5f;
    actor->posRot.pos.x += (actor->velocity.x * speedRate) + actor->sub_98.displacement.x;
    actor->posRot.pos.y += (actor->velocity.y * speedRate) + actor->sub_98.displacement.y;
    actor->posRot.pos.z += (actor->velocity.z * speedRate) + actor->sub_98.displacement.z;
}

void func_800211A4(Actor* actor) 
{
    actor->velocity.x = Math_Sins(actor->posRot.rot.y) * actor->speedXZ;
    actor->velocity.z = Math_Coss(actor->posRot.rot.y) * actor->speedXZ;

    actor->velocity.y += actor->gravity;
    if (actor->velocity.y < actor->minVelocityY) 
    {
        actor->velocity.y = actor->minVelocityY;
    }
}

void Actor_MoveForward(Actor* actor) 
{
    func_800211A4(actor);
    func_80021124(actor);
}

void func_80021248(Actor* actor) 
{
    f32 sp24 = Math_Coss(actor->posRot.rot.x) * actor->speedXZ;
    actor->velocity.x = Math_Sins(actor->posRot.rot.y) * sp24;
    actor->velocity.y = Math_Sins(actor->posRot.rot.x) * actor->speedXZ;
    actor->velocity.z = Math_Coss(actor->posRot.rot.y) * sp24;
}

void func_800212B8(Actor* actor) 
{
    func_80021248(actor);
    func_80021124(actor);
}

void func_800212E4(Actor* actor, f32 arg1) 
{
    actor->speedXZ = Math_Coss(actor->posRot.rot.x) * arg1;
    actor->velocity.y = -Math_Sins(actor->posRot.rot.x) * arg1;
}

void func_80021338(Actor* actor, UNK_PTR arg1) 
{
    Vec3f sp1C;
    func_8008D4DC(arg1, &sp1C, actor->shape.rot.y, actor);
    actor->posRot.pos.x += sp1C.x * actor->scale.x;
    actor->posRot.pos.y += sp1C.y * actor->scale.y;
    actor->posRot.pos.z += sp1C.z * actor->scale.z;
}

s16 func_800213B4(Actor* actorA, Actor* actorB) 
{
    return Math_Vec3f_Yaw(&actorA->posRot.pos, &actorB->posRot.pos);
}

s16 func_800213E0(Actor* actorA, Actor* actorB) 
{
    return Math_Vec3f_Yaw(&actorA->posRot2.pos, &actorB->posRot2.pos);
}

s16 func_8002140C(Actor* actor, Vec3f* arg1) 
{
    return Math_Vec3f_Yaw(&actor->posRot.pos, arg1);
}

s16 func_80021430(Actor* actorA, Actor* actorB) 
{
    return Math_Vec3f_Pitch(&actorA->posRot.pos, &actorB->posRot.pos);
}

s16 func_8002145C(Actor* actorA, Actor* actorB) 
{
    return Math_Vec3f_Pitch(&actorA->posRot2.pos, &actorB->posRot2.pos);
}

s16 func_80021488(Actor* actor, Vec3f* arg1)
{
    return Math_Vec3f_Pitch(&actor->posRot.pos, arg1);
}

f32 func_800214AC(Actor* actorA, Actor* actorB)
{
    return Math_Vec3f_DistXYZ(&actorA->posRot.pos, &actorB->posRot.pos);
}

f32 func_800214D8(Actor* actor, Vec3f* arg1)
{
    return Math_Vec3f_DistXYZ(&actor->posRot.pos, arg1);
}

f32 func_800214FC(Actor* actorA, Actor* actorB)
{
    return Math_Vec3f_DistXZ(&actorA->posRot.pos, &actorB->posRot.pos);
}

f32 func_80021528(Actor* actor, Vec3f* arg1)
{
    return Math_Vec3f_DistXZ(&actor->posRot.pos, arg1);
}

void func_8002154C(Actor* actor, Vec3f* result, Vec3f* arg2) {
    f32 cosRot2Y;
    f32 sinRot2Y;
    f32 deltaX;
    f32 deltaZ;

    cosRot2Y = Math_Coss(actor->shape.rot.y);
    sinRot2Y = Math_Sins(actor->shape.rot.y);
    deltaX = arg2->x - actor->posRot.pos.x;
    deltaZ = arg2->z - actor->posRot.pos.z;

    result->x = (deltaX * cosRot2Y) - (deltaZ * sinRot2Y);
    result->z = (deltaX * sinRot2Y) + (deltaZ * cosRot2Y);
    result->y = arg2->y - actor->posRot.pos.y;
}

f32 Actor_HeightDiff(Actor* actorA, Actor* actorB) 
{
    return actorB->posRot.pos.y - actorA->posRot.pos.y;
}

f32 func_80021600(Player* player) 
{
    f32 offset = (player->stateFlags1 & 0x800000) ? 32.0f : 0.0f;

    if (LINK_IS_ADULT) 
    {
        return offset + 68.0f;
    } 

    else 
    {
        return offset + 44.0f;
    }
}

f32 func_80021660(Player* player) 
{
    if (player->stateFlags1 & 0x800000) {
        return 8.0f;
    } 

    else if (player->stateFlags1 & 0x8000000) 
    {
        return (R_RUN_SPEED_LIMIT / 100.0f) * D_801064A8;
    } 

    else 
    {
        return R_RUN_SPEED_LIMIT / 100.0f;
    }
}

s32 func_800216E8(Player* player) 
{
    return player->stateFlags1 & 0x8;
}

s32 func_800216F8(Player* player) 
{
    return func_800216E8(player) && player->unk_834;
}

s32 func_8002172C(GlobalContext* globalCtx) 
{
    Player* player = PLAYER;
    return (player->stateFlags1 & 0x800) || func_800216F8(player);
}

s32 func_80021768(GlobalContext* globalCtx) 
{
    Player* player = PLAYER;
    return player->stateFlags2 & 0x8;
}

s32 func_8002177C(GlobalContext* globalCtx) 
{
    Player* player = PLAYER;
    return player->stateFlags2 & 0x1000;
}

typedef struct {
    /* 0x000 */ Actor actor;
    /* 0x13C */ char unk_13C[0xB4];
    /* 0x1F0 */ Actor* unk_1F0;
    /* 0x1F4 */ f32 unk_1F4;
    /* 0x1F8 */ f32 unk_1F8;
    /* 0x1FC */ f32 unk_1FC;
    /* 0x200 */ s16 unk_200;
} ActorArmsHook;

void func_80021790(GlobalContext* globalCtx, Actor* actorA, Actor* actorB) 
{
    ActorArmsHook* hookActor;

    hookActor = (ActorArmsHook*)Actor_Find(&globalCtx->actorCtx, 0x0066, ACTORTYPE_ITEMACTION);
    hookActor->unk_1F0 = actorB;
    hookActor->unk_1F4 = 0.0f;
    hookActor->unk_1F8 = 0.0f;
    hookActor->unk_1FC = 0.0f;
    actorB->flags |= 0x2000;
    actorA->flags &= ~0x2000;
}

void func_80021800(GlobalContext* globalCtx, Player* player) 
{
    if ((globalCtx->roomCtx.curRoom.unk_03 != 4) && func_8009DAE4(globalCtx)) 
    {
        func_800495BC(func_8009D2F0(globalCtx, 0), 6);
    }
}

void func_80021858(GlobalContext* globalCtx, Player* player, Actor* actor) 
{
    player->rideActor = actor;
    player->stateFlags1 |= 0x800000;
    actor->attachedB = &player->actor;
}

s32 func_8002187C(Player* player) 
{
    return (player->stateFlags1 & 0x20000080) || player->action;
}

void func_800218A8(GlobalContext* globalCtx, ActorContext* actorCtx)
{
    func_8005AEFC(globalCtx, actorCtx);
}

u32 func_800218C8(GlobalContext* globalCtx, Actor* actor, u8 newAction) 
{
    Player* player = PLAYER;
    player->action = newAction;
    player->unk_448 = actor;
    player->unk_46A = 0;

    return 1;
}

s32 func_800218EC(GlobalContext* globalCtx, Actor* actor, u8 arg2) 
{
    Player* player = PLAYER;
    func_800218C8(globalCtx, actor, arg2);
    player->unk_46A = 1;

    return 1;
}

void func_80021928(DynaPolyActor* dynaActor) 
{
    dynaActor->unk_154 = 0.0f;
    dynaActor->unk_150 = 0.0f;
}

void func_80021940(DynaPolyActor* dynaActor, f32 arg1, s16 arg2) 
{
    dynaActor->unk_150 += arg1;
    dynaActor->unk_158 = arg2;
}

s32 func_80021968(Actor* actor, s16 arg1, GlobalContext* globalCtx) 
{
    Player* player = PLAYER;
    s16 var = (s16)(actor->rotTowardsLinkY + 0x8000) - player->actor.shape.rot.y;

    if (ABS(var) < arg1) 
    {
        return 1;
    }

    return 0;
}

s32 func_800219C0(Actor* actorA, Actor* actorB, s16 arg2) 
{
    s16 var = (s16)(func_800213B4(actorA, actorB) + 0x8000) - actorB->shape.rot.y;

    if (ABS(var) < arg2) 
    {
        return 1;
    }

    return 0;
}

s32 func_80021A28(Actor* actor, s16 arg1) 
{
    s16 var = actor->rotTowardsLinkY - actor->shape.rot.y;

    if (ABS(var) < arg1) 
    {
        return 1;
    }

    return 0;
}

s32 func_80021A74(Actor* actorA, Actor* actorB, s16 arg2) 
{
    s16 var = func_800213B4(actorA, actorB) - actorA->shape.rot.y;

    if (ABS(var) < arg2) 
    {
        return 1;
    }

    return 0;
}

s32 func_80021AD4(Actor* actor, f32 arg1, s16 arg2) 
{
    s16 var = actor->rotTowardsLinkY - actor->shape.rot.y;

    if (ABS(var) < arg2) 
    {
        f32 xyzDistanceFromLink = sqrtf(SQ(actor->xzDistanceFromLink) + SQ(actor->yDistanceFromLink));

        if (xyzDistanceFromLink < arg1) 
        {
            return 1;
        }
    }

    return 0;
}

s32 func_80021B54(Actor* actorA, Actor* actorB, f32 arg2, s16 arg3) 
{
    if (func_800214AC(actorA, actorB) < arg2) 
    {
        s16 var = func_800213B4(actorA, actorB) - actorA->shape.rot.y;

        if (ABS(var) < arg3) 
        {
            return 1;
        }
    }

    return 0;
}

s32 func_80021BE8(Actor* actor, f32 arg1, s32 arg2) 
{
    if ((actor->bgCheckFlags & 0x1) && (arg1 < -11.0f)) 
    {
        actor->bgCheckFlags &= ~0x1;
        actor->bgCheckFlags |= 0x4;

        if ((actor->velocity.y < 0.0f) && (arg2 & 0x10)) 
        {
            actor->velocity.y = 0.0f;
        }

        return 0;
    }

    return 1;
}

s32 func_80021C60(GlobalContext* globalCtx, Actor* actor, Vec3f* arg2, s32 arg3) 
{
    f32 sp34;
    u32 sp30;

    arg2->y += 50.0f;

    actor->unk_80 = func_8002F520(globalCtx, &globalCtx->colCtx, &actor->floorPoly, &sp30, actor, arg2);
    actor->bgCheckFlags &= ~0x0086;

    if (actor->unk_80 <= -32000.0f) 
    {
        return func_80021BE8(actor, -32000.0f, arg3);
    }

    sp34 = actor->unk_80 - actor->posRot.pos.y;
    actor->floorPolySource = sp30;

    if (sp34 >= 0.0f) 
    {
        actor->bgCheckFlags |= 0x80;

        if (actor->bgCheckFlags & 0x10) 
        {
            if (sp30 != D_80118BFC) 
            {
                if (sp34 > 15.0f) 
                {
                    actor->bgCheckFlags |= 0x100;
                }
            } 

            else 
            {
                actor->posRot.pos.x = actor->pos4.x;
                actor->posRot.pos.z = actor->pos4.z;
            }
        }

        actor->posRot.pos.y = actor->unk_80;

        if (actor->velocity.y <= 0.0f) 
        {
            if (!(actor->bgCheckFlags & 0x1)) 
            {
                actor->bgCheckFlags |= 0x2;
            } 

            else if ((arg3 & 0x8) && (actor->gravity < 0.0f))
            {
                actor->velocity.y = -4.0f;
            } 

            else 
            {
                actor->velocity.y = 0.0f;
            }

            actor->bgCheckFlags |= 0x1;
            func_80035110(&globalCtx->colCtx, actor, actor->floorPolySource);
        }
    } 

    else 
    {
        if ((actor->bgCheckFlags & 0x1) && (sp34 >= -11.0f)) 
        {
            func_80035110(&globalCtx->colCtx, actor, actor->floorPolySource);
        }

        return func_80021BE8(actor, sp34, arg3);
    }

    return 1;
}

#ifdef NON_MATCHING
// copied from debug decomp
void func_80021E6C(GlobalContext* globalCtx, Actor* actor, f32 arg2, f32 arg3, f32 arg4, s32 arg5) {
    f32 sp74;
    s32 pad;
    Vec3f sp64;
    u32 sp60;
    CollisionPoly* sp5C;
    f32 sp58;
    UNK_TYPE sp54;
    f32 sp50;
    Vec3f sp44;

    sp74 = actor->posRot.pos.y - actor->pos4.y;

    if ((actor->floorPolySource != 0x32) && (actor->bgCheckFlags & 1)) {
        func_80035180(&globalCtx->colCtx, actor->floorPolySource, actor);
    }

    if (arg5 & 1) {
        if ((!(arg5 & 0x80) && func_8002FFE4(&globalCtx->colCtx, &sp64, &actor->posRot.pos, &actor->pos4, arg3,
                                             &actor->wallPoly, &sp60, actor, arg2)) ||
            ((arg5 & 0x80) && func_8003004C(&globalCtx->colCtx, &sp64, &actor->posRot.pos, &actor->pos4, arg3,
                                            &actor->wallPoly, &sp60, actor, arg2))) {
            sp5C = actor->wallPoly;
            Math_Vec3f_Copy(&actor->posRot.pos, &sp64);
            actor->unk_7E = atan2s(sp5C->norm.z, sp5C->norm.x);
            actor->bgCheckFlags |= 8;
            actor->wallPolySource = sp60;
        } else {
            actor->bgCheckFlags &= ~8;
        }
    }

    sp64.x = actor->posRot.pos.x;
    sp64.z = actor->posRot.pos.z;

    if (arg5 & 2) {
        sp64.y = actor->pos4.y + 10.0f;
        if (func_80030224(&globalCtx->colCtx, &sp58, &sp64, (arg4 + sp74) - 10.0f, &D_80118BF4, &D_80118BFC, actor)) {
            actor->bgCheckFlags |= 0x10;
            actor->posRot.pos.y = (sp58 + sp74) - 10.0f;
        } else {
            actor->bgCheckFlags &= ~0x10;
        }
    }

    if (arg5 & 4) {
        sp64.y = actor->pos4.y;
        func_80021C60(globalCtx, actor, &sp64, arg5);
        sp50 = actor->posRot.pos.y;
        if (func_800347FC(globalCtx, &globalCtx->colCtx, actor->posRot.pos.x, actor->posRot.pos.z, &sp50, &sp54)) {
            actor->unk_84 = sp50 - actor->posRot.pos.y;
            if (actor->unk_84 < 0.0f) {
                actor->bgCheckFlags &= ~0x60;
            } else {
                if (!(actor->bgCheckFlags & 0x20)) {
                    actor->bgCheckFlags |= 0x40;
                    if (!(arg5 & 0x40)) {
                        sp44.x = actor->posRot.pos.x;
                        sp44.y = sp50;
                        sp44.z = actor->posRot.pos.z;
                        func_8001CF3C(globalCtx, &sp44, 100, 500, 0);
                        func_8001CF3C(globalCtx, &sp44, 100, 500, 4);
                        func_8001CF3C(globalCtx, &sp44, 100, 500, 8);
                    }
                }
                actor->bgCheckFlags |= 0x20;
            }
        } else {
            actor->bgCheckFlags &= ~0x60;
            actor->unk_84 = -32000.0f;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80021E6C.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800221EC.s")

Hilite* func_800223C8(Vec3f* object, Vec3f* eye, Vec3f* lightDir, GraphicsContext* gfxCtx) 
{
    Hilite* hilite;
    Gfx* gfxArr[2];

    gfxCtx->polyOpa.p = func_800221EC(object, eye, lightDir, gfxCtx, gfxCtx->polyOpa.p, &hilite);

    return hilite;
}

Hilite* func_80022400(Vec3f* object, Vec3f* eye, Vec3f* lightDir, GraphicsContext* gfxCtx) 
{
    Hilite* hilite;
    Gfx* gfxArr[2];

    gfxCtx->polyXlu.p = func_800221EC(object, eye, lightDir, gfxCtx, gfxCtx->polyXlu.p, &hilite);

    return hilite;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022438.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022554.s")

PosRot* func_80022670(PosRot* arg0, Actor* actor) 
{
    *arg0 = actor->posRot2;

    return arg0;
}

PosRot* func_800226A4(PosRot* arg0, Actor* actor) 
{

    *arg0 = actor->posRot;

    return arg0;
}

PosRot* func_800226D8(PosRot* arg0, Actor* actor) 
{
    PosRot sp1C;

    Math_Vec3f_Copy(&sp1C.pos, &actor->posRot.pos);
    sp1C.rot = actor->shape.rot;
    *arg0 = sp1C;

    return arg0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022754.s")

u32 func_80022824(Actor* actor, f32 arg1) 
{
    return arg1 <  D_800E8288[actor->unk_1F].unk_0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022860.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022930.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022960.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022A34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022A68.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022A90.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022AD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022B14.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022BB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022BD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022D40.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022D64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022D94.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022DBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022DE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022E3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022EC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022F00.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022F48.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/Audio_PlayActorSound2.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80022FFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800230A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800230D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80023108.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002313C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80023164.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800231BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80023234.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80023384.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80023BC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80023BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80023C1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80023D70.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002420C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80024280.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80024540.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80024610.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80024784.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800249B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800249DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80024AB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80024CCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80024D68.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80024DB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80024EE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80024F98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80024FE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800250AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/Actor_Spawn.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800253F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80025488.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800255C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80025648.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002574C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800257A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800259BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/Actor_Find.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80025B4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80025B84.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80025C38.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80025D04.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80025DFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80025F04.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800260E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80026308.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800264C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002650C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/Actor_ChangeType.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80026614.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800267D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80026850.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002691C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80026950.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80026984.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80026AD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80026C1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80026C84.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80026CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80026D64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/Math_Rand_CenteredFloat.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80026DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027070.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027090.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027114.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027188.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800271FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800272EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027620.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002764C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027854.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002796C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027990.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800279CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027BA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027D30.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80027F04.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80028048.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800280C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80028148.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80028158.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002821C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800282C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80028320.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002834C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80028390.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800283BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800284A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800285B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80028644.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80028720.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80028884.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800288B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800288E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80028914.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80028940.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80028974.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_80029BC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002A258.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002A9AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002A9DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002AA18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002AA3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002AB20.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002ACB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002AD54.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002AEE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002B024.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002B160.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002B168.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002B2EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002B32C.s")

