#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_00000186_0000000A ; 000
	scrdef scr_seq_00000186_0000001F ; 001
	scrdef_end

scr_seq_00000186_0000000A:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 0, 32780
	callstd 2000
	end

scr_seq_00000186_0000001F:
	play_se SEQ_SE_DP_SELECT
	lockall
	msgbox 1
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
