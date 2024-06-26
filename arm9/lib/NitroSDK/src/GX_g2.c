#include "nitro/types.h"
#include "gx.h"
#include "code32.h"

void G2x_SetBGyAffine_(u32 ptr, const struct Mtx22 *mtx, fx32 a, fx32 b, fx32 c, fx32 d){
    fx32 temp0, temp1, temp2, temp3;
    *((vu32 *)ptr + 0) = (u32)((u16)(fx16)(mtx->_[0] >> 4) | (u16)(fx16)(mtx->_[1] >> 4)<< 0x10);
    *((vu32 *)ptr + 1) = (u32)((u16)(fx16)(mtx->_[2] >> 4) | (u16)(fx16)(mtx->_[3] >> 4)<< 0x10);
    temp0 = c - a;
    temp1 = d - b;
    temp2 = mtx->_[0] * temp0 + mtx->_[1] * temp1 + (a << 0xC);
    temp3 = mtx->_[2] * temp0 + mtx->_[3] * temp1 + (b << 0xC);
    *((vu32 *)ptr + 2) = (u32)(temp2 >> 4);
    *((vu32 *)ptr + 3) = (u32)(temp3 >> 4);
}

void G2x_SetBlendAlpha_(u32 *ptr, GXBlendPlaneMask plane1, GXBlendPlaneMask plane2, fx32 c, fx32 d){
    *ptr = (u32)(((plane1 | 0x40) | (plane2 << 0x8)) | ((c | (d << 0x8)) << 0x10));
}

void G2x_SetBlendBrightness_(volatile u16 *ptr, fx32 a, fx32 brightness){
    if (brightness < 0)
    {
        ptr[0] = (u16)(a | 0xC0);
        ptr[2] = (u16)(-brightness);
    }
    else
    {
        ptr[0] = (u16)(a | 0x80);
        ptr[2] = (u16)brightness;
    }
}

void G2x_SetBlendBrightnessExt_(u16 *ptr, fx32 a, fx32 b, fx32 c, fx32 d, fx32 brightness){
    ptr[1] = (u16)(c | (d << 0x8));
    if (brightness < 0)
    {
        ptr[0] = (u16)(0xC0 | a | (b << 0x8));
        ptr[2] = (u16)(-brightness);
    }
    else
    {
        ptr[0] = (u16)(0x80 | a | (b << 0x8));
        ptr[2] = (u16)brightness;
    }
}

void G2x_ChangeBlendBrightness_(u16 *ptr, fx32 brightness){
    u32 temp = *ptr;
    if (brightness < 0)
    {
        if ((temp & 0xC0) == 0x80)
        {
            ptr[0] = (u16)((temp & ~0xC0) | 0xC0);
        }
        ptr[2] = (u16)(-brightness);
    }
    else
    {
        if ((temp & 0xC0) == 0xC0)
        {
            ptr[0] = (u16)((temp & ~0xC0) | 0x80);
        }
        ptr[2] = (u16)brightness;
    }
}
