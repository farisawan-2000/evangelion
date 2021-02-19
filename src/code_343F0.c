#include "common.h"

// is this handwritten???

#ifdef MIPS_TO_C
s32 func_800C97F0(u8 *arg0, u8 *arg1) {
	u8 v0 = *arg0;
	u8 v1;

	l:
		v1 = *arg1;
		arg0++;
		arg1++;
		if (v1 != v0) {
			u8 a3 = v0;
			return a3 - v1;
		}
		if (v0 != 0) {
			goto l;
		}

	return 0;



}
#else
INCLUDE_ASM(s32, "code_343F0", func_800C97F0);
#endif
