#include "common.h"

extern OSThread *__osRunningThread; //__osRunningThread
extern OSThread *__osRunQueue; //__osRunQueue

#ifdef NON_MATCHING
void osStartThread(OSThread *t)
{
    register u32 saveMask;

    // teeny diff where loading this and t->state are swapped
    saveMask = __osDisableInt();
    switch (t->state) {
        case OS_STATE_WAITING:
            t->state = OS_STATE_RUNNABLE;
            __osEnqueueThread(&__osRunQueue, t);
            break;
        case OS_STATE_STOPPED:
            if (t->queue == NULL || t->queue == &__osRunQueue)
            {
                t->state = OS_STATE_RUNNABLE;
                __osEnqueueThread(&__osRunQueue, t);
            }
            else
            {
                t->state = OS_STATE_WAITING;
                __osEnqueueThread(t->queue, t);
                __osEnqueueThread(&__osRunQueue, __osPopThread(t->queue));
            }
            break;
    }
    if (__osRunningThread == NULL) {
        __osDispatchThread();
    }
    else {
        if (__osRunningThread->priority < __osRunQueue->priority) {
            __osRunningThread->state = OS_STATE_RUNNABLE;
            __osEnqueueAndYield(&__osRunQueue);
        }
    }
    __osRestoreInt(saveMask);
}
#else
INCLUDE_ASM(s32, "os/startthread", osStartThread);
#endif
