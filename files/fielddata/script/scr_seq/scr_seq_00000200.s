#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_00000200_00000006 ; 000
	scrdef_end

scr_seq_00000200_00000006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity 447, 32780
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, scr_seq_00000200_0000004C
	msgbox 0
	scrcmd_746
	scrcmd_748 VAR_SPECIAL_x800C
	scrcmd_747
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_00000200_00000057
	msgbox 1
	setvar VAR_SPECIAL_x8004, 447
	setvar VAR_SPECIAL_x8005, 1
	callstd 2033
scr_seq_00000200_0000004C:
	msgbox 2
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000200_00000057:
	msgbox 3
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
