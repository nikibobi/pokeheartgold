#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_00000199_00000089 ; 000
	scrdef scr_seq_00000199_0000001A ; 001
	scrdef scr_seq_00000199_000002BE ; 002
	scrdef scr_seq_00000199_000002D5 ; 003
	scrdef scr_seq_00000199_00000055 ; 004
	scrdef scr_seq_00000199_00000244 ; 005
	scrdef_end

scr_seq_00000199_0000001A:
	checkflag FLAG_UNK_189
	gotoif lt, scr_seq_00000199_0000002B
	clearflag FLAG_UNK_189
	end

scr_seq_00000199_0000002B:
	scrcmd_484 16384
	comparevartovalue VAR_TEMP_x4000, 1
	gotoif eq, scr_seq_00000199_0000004F
	comparevartovalue VAR_TEMP_x4000, 3
	gotoif eq, scr_seq_00000199_0000004F
	setflag FLAG_UNK_27E
	end

scr_seq_00000199_0000004F:
	clearflag FLAG_UNK_27E
	end

scr_seq_00000199_00000055:
	checkflag FLAG_UNK_0A4
	gotoif eq, scr_seq_00000199_0000006D
	checkflag FLAG_UNK_0F9
	gotoif eq, scr_seq_00000199_00000087
	end

scr_seq_00000199_0000006D:
	setflag FLAG_UNK_31B
	scrcmd_101 15
	scrcmd_101 16
	scrcmd_101 17
	scrcmd_101 18
	clearflag FLAG_UNK_0A4
	end

scr_seq_00000199_00000087:
	end

scr_seq_00000199_00000089:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_438 2, 32780
	scrcmd_440 32780, 0
	scrcmd_746
	scrcmd_748 VAR_SPECIAL_x800C
	scrcmd_747
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_00000199_000001B1
	scrcmd_618 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_00000199_000001C5
	scrcmd_438 2, 32780
	scrcmd_440 32780, 1
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	scrcmd_386 32780
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, scr_seq_00000199_00000102
	apply_movement 255, scr_seq_00000199_000001DC
	apply_movement 13, scr_seq_00000199_00000228
	goto scr_seq_00000199_00000150

scr_seq_00000199_00000102:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_00000199_0000011D
	apply_movement 255, scr_seq_00000199_000001F4
	goto scr_seq_00000199_00000150

scr_seq_00000199_0000011D:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, scr_seq_00000199_00000140
	apply_movement 255, scr_seq_00000199_00000214
	apply_movement 13, scr_seq_00000199_00000228
	goto scr_seq_00000199_00000150

scr_seq_00000199_00000140:
	apply_movement 255, scr_seq_00000199_00000200
	apply_movement 13, scr_seq_00000199_00000228
scr_seq_00000199_00000150:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	scrcmd_729 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_00000199_00000177
	apply_movement 253, scr_seq_00000199_00000234
	wait_movement
scr_seq_00000199_00000177:
	setflag FLAG_UNK_189
	scrcmd_174 6, 1, 0, 0
	scrcmd_175
	scrcmd_615 59
	lockall
	scrcmd_174 6, 1, 1, 0
	scrcmd_175
	clearflag FLAG_UNK_189
	scrcmd_438 2, 32780
	scrcmd_440 32780, 2
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000199_000001B1:
	scrcmd_438 2, 32780
	scrcmd_440 32780, 5
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000199_000001C5:
	scrcmd_438 2, 32780
	scrcmd_440 32780, 3
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000199_000001D9:
	.byte 0x00, 0x00, 0x00

scr_seq_00000199_000001DC:
	.short 15, 1
	.short 12, 2
	.short 14, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_00000199_000001F4:
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_00000199_00000200:
	.short 12, 1
	.short 14, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_00000199_00000214:
	.short 12, 1
	.short 15, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_00000199_00000228:
	.short 63, 1
	.short 32, 1
	.short 254, 0

scr_seq_00000199_00000234:
	.short 15, 1
	.short 12, 1
	.short 1, 1
	.short 254, 0
scr_seq_00000199_00000244:
	play_se SEQ_SE_DP_SELECT
	lockall
	scrcmd_779 5, 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_00000199_00000268
	msgbox 2
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000199_00000268:
	scrcmd_076 143, 0
	msgbox 3
	scrcmd_077
	closemsg
	setflag FLAG_UNK_0A4
	scrcmd_589 143, 50, 0
	clearflag FLAG_UNK_0A4
	scrcmd_220 32780
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_00000199_000002AE
	scrcmd_683 16389
	comparevartovalue VAR_TEMP_x4005, 4
	callif eq, scr_seq_00000199_000002B4
	setflag FLAG_UNK_0F9
	releaseall
	end

scr_seq_00000199_000002AE:
	scrcmd_219
	releaseall
	end

scr_seq_00000199_000002B4:
	setflag FLAG_UNK_173
	return

scr_seq_00000199_000002BA:
	.byte 0x61, 0x00, 0x02, 0x00
scr_seq_00000199_000002BE:
	scrcmd_055 0, 1, 3, 32780
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 32780
	callstd 2000
	end

scr_seq_00000199_000002D5:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 1, 32780
	callstd 2000
	end
	.balign 4, 0
