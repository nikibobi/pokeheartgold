#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_00000892_0000000E ; 000
	scrdef scr_seq_00000892_000000F4 ; 001
	scrdef scr_seq_00000892_0000011F ; 002
	scrdef_end

scr_seq_00000892_0000000E:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_095
	gotoif eq, scr_seq_00000892_000000E9
	scrcmd_190 0
	msgbox 0
	scrcmd_746
	scrcmd_748 VAR_SPECIAL_x800C
	scrcmd_747
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_00000892_0000004B
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_00000892_000000D3
	end

scr_seq_00000892_0000004B:
	scrcmd_332 32773
	comparevartovalue VAR_SPECIAL_x8005, 6
	gotoif eq, scr_seq_00000892_000000DE
	msgbox 1
	scrcmd_137 133, 5, 0, 0, 0, 32780
	setflag FLAG_UNK_095
	scrcmd_190 0
	msgbox 2
	scrcmd_078 1187
	scrcmd_079
	msgbox 7
	scrcmd_746
	scrcmd_748 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_00000892_000000A0
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ge, scr_seq_00000892_000000C6
scr_seq_00000892_000000A0:
	closemsg
	setvar VAR_TEMP_x4000, 0
	scrcmd_174 6, 1, 0, 0
	scrcmd_175
	scrcmd_173 32773, 16384
	scrcmd_174 6, 1, 1, 0
	scrcmd_175
scr_seq_00000892_000000C6:
	msgbox 3
	waitbutton
	closemsg
	scrcmd_747
	releaseall
	end

scr_seq_00000892_000000D3:
	msgbox 5
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000892_000000DE:
	msgbox 4
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000892_000000E9:
	msgbox 6
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000892_000000F4:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_410D, 1
	gotoif eq, scr_seq_00000892_00000114
	msgbox 9
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000892_00000114:
	msgbox 10
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000892_0000011F:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_147 9, 16385
	comparevartovalue VAR_TEMP_x4001, 1
	gotoif eq, scr_seq_00000892_0000019C
	comparevartovalue VAR_UNK_410D, 1
	gotoif eq, scr_seq_00000892_00000152
	msgbox 11
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000892_00000152:
	msgbox 12
	scrcmd_746
	scrcmd_748 VAR_SPECIAL_x800C
	scrcmd_747
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_00000892_00000179
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_00000892_00000191
	end

scr_seq_00000892_00000179:
	scrcmd_190 0
	msgbox 13
	scrcmd_146 9
	scrcmd_078 1206
	scrcmd_079
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000892_00000191:
	msgbox 15
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000892_0000019C:
	msgbox 15
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
