#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_00000064_00000006 ; 000
	scrdef_end

scr_seq_00000064_00000006:
	scrcmd_609
	lockall
	setvar VAR_UNK_40A7, 1
	scrcmd_729 32780
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_00000064_00000039
	apply_movement 255, scr_seq_00000064_00000070
	apply_movement 253, scr_seq_00000064_0000007C
	wait_movement
	goto scr_seq_00000064_00000043

scr_seq_00000064_00000039:
	apply_movement 255, scr_seq_00000064_00000070
	wait_movement
scr_seq_00000064_00000043:
	play_se SEQ_SE_GS_RAKKA01
	scrcmd_174 6, 1, 0, 0
	scrcmd_175
	scrcmd_176 221, 0, 15, 3, 1
	scrcmd_174 6, 1, 1, 0
	scrcmd_175
	releaseall
	end

scr_seq_00000064_0000006F:
	.byte 0x00

scr_seq_00000064_00000070:
	.short 19, 1
	.short 69, 1
	.short 254, 0

scr_seq_00000064_0000007C:
	.short 19, 1
	.short 69, 1
	.short 254, 0
	.balign 4, 0
