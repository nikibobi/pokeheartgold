#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_00000257_0000000E ; 000
	scrdef scr_seq_00000257_00000010 ; 001
	scrdef scr_seq_00000257_00000025 ; 002
	scrdef_end

scr_seq_00000257_0000000E:
	end

scr_seq_00000257_00000010:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 0, 32780
	callstd 2000
	end

scr_seq_00000257_00000025:
	scrcmd_055 1, 1, 1, 32780
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 32780
	callstd 2000
	end
	.balign 4, 0
