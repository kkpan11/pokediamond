#include "OS_terminate_proc.h"
#include "OS_system.h"
#include "code32.h"

void OS_Terminate(void)
{
    while (TRUE)
    {
        (void)OS_DisableInterrupts();
        OS_Halt();
    }
}

asm void OS_Halt(void)
{
    mov r0, #0x0
    mcr p15, 0x0, r0, c7, c0, 0x4 //Wait For Interrupt (Halt)
    bx lr
}
