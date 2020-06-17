#ifndef POKEDIAMOND_ARM7_MMAP_H
#define POKEDIAMOND_ARM7_MMAP_H

#include "nitro/mmap_shared.h"

#define HW_WRAM_END                 0x03800000
#define HW_PRV_WRAM                 0x03800000
#define HW_PRV_WRAM_END             0x03810000

#define HW_PRV_WRAM_SIZE            (HW_PRV_WRAM_END-HW_PRV_WRAM)

#define HW_SVC_STACK_SIZE           0x40
#define HW_PRV_WRAM_SYSRV_SIZE      0x40

#define HW_MAIN_MEM_SUB_SIZE        (HW_MAIN_MEM_SIZE - HW_MAIN_MEM_MAIN_SIZE - HW_MAIN_MEM_SHARED_SIZE)

#define HW_MAIN_MEM_SUB             (HW_MAIN_MEM_MAIN_END + 0x400000)
#define HW_MAIN_MEM_SUB_END         (HW_MAIN_MEM_SUB + HW_MAIN_MEM_SUB_SIZE)

#define HW_PRV_WRAM_IRQ_STACK_END   (HW_PRV_WRAM_SVC_STACK)
#define HW_PRV_WRAM_SVC_STACK       (HW_PRV_WRAM_SVC_STACK_END - HW_SVC_STACK_SIZE)
#define HW_PRV_WRAM_SVC_STACK_END   (HW_PRV_WRAM_SYSRV)

#define HW_PRV_WRAM_SYSRV           (HW_PRV_WRAM + HW_PRV_WRAM_SIZE - HW_PRV_WRAM_SYSRV_SIZE)

#define HW_VBLANK_COUNT_BUF         (HW_MAIN_MEM + 0x007ffc3c)
#define HW_LOCK_ID_FLAG_SUB         (HW_MAIN_MEM + 0x007fffb8)

#endif //POKEDIAMOND_ARM7_MMAP_H