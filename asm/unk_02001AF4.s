	.include "asm/macros.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_02001AF4
sub_02001AF4: ; 0x02001AF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r3, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	add r6, r1, #0
	mov r1, #0x20
	add r7, r2, #0
	str r0, [sp, #4]
	bl sub_0201AA8C
	add r4, r0, #0
	add r3, r5, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #4]
	bl sub_02015788
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x10]
	ldr r0, [sp]
	strb r0, [r4, #0x15]
	add r0, r4, #0
	bl sub_02001DE8
	strb r0, [r4, #0x16]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	mov r1, #0
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x17]
	strb r7, [r4, #0x18]
	ldrb r0, [r5, #8]
	bl sub_02002FAC
	add r6, r0, #0
	ldrb r0, [r5, #8]
	mov r1, #2
	bl sub_02002FAC
	add r0, r6, r0
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #8]
	mov r1, #1
	bl sub_02002FAC
	add r6, r0, #0
	ldrb r0, [r5, #8]
	mov r1, #3
	bl sub_02002FAC
	add r0, r6, r0
	strb r0, [r4, #0x1a]
	add r0, r4, #0
	bl sub_02001E28
	add r0, r4, #0
	bl sub_02001EB4
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02001AF4

	thumb_func_start sub_02001B7C
sub_02001B7C: ; 0x02001B7C
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0
	ldrb r4, [r4, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_02001AF4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0201D578
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02001B7C

	thumb_func_start sub_02001B9C
sub_02001B9C: ; 0x02001B9C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #8]
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	bl sub_02002FAC
	add r1, r0, #0
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_02001B7C
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02001B9C

	thumb_func_start sub_02001BC4
sub_02001BC4: ; 0x02001BC4
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _02001BD0
	ldrb r0, [r4, #0x15]
	strb r0, [r1]
_02001BD0:
	ldr r0, [r4, #0xc]
	bl sub_020157B8
	ldrb r0, [r4, #0x1c]
	add r1, r4, #0
	bl sub_0201AB80
	pop {r4, pc}
	thumb_func_end sub_02001BC4

	thumb_func_start sub_02001BE0
sub_02001BE0: ; 0x02001BE0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r1, #0
	ldr r2, _02001C8C ; =0x021D110C
	strb r1, [r4, #0x1b]
	ldr r2, [r2, #0x48]
	mov r5, #1
	add r3, r2, #0
	tst r3, r5
	beq _02001C06
	ldr r0, _02001C90 ; =0x000005DC
	bl sub_0200604C
	ldrb r0, [r4, #0x15]
	ldr r1, [r4]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, pc}
_02001C06:
	ldr r3, [r4, #0x10]
	tst r3, r2
	beq _02001C16
	ldr r0, _02001C90 ; =0x000005DC
	bl sub_0200604C
	sub r0, r5, #3
	pop {r3, r4, r5, pc}
_02001C16:
	mov r3, #0x40
	tst r3, r2
	beq _02001C30
	ldr r2, _02001C90 ; =0x000005DC
	bl sub_02001C98
	cmp r0, #1
	bne _02001C2A
	add r0, r5, #0
	strb r0, [r4, #0x1b]
_02001C2A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02001C30:
	mov r1, #0x80
	tst r1, r2
	beq _02001C4C
	ldr r2, _02001C90 ; =0x000005DC
	add r1, r5, #0
	bl sub_02001C98
	cmp r0, #1
	bne _02001C46
	mov r0, #2
	strb r0, [r4, #0x1b]
_02001C46:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02001C4C:
	mov r1, #0x20
	tst r1, r2
	beq _02001C68
	ldr r2, _02001C90 ; =0x000005DC
	mov r1, #2
	bl sub_02001C98
	cmp r0, #1
	bne _02001C62
	mov r0, #3
	strb r0, [r4, #0x1b]
_02001C62:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02001C68:
	mov r1, #0x10
	tst r2, r1
	beq _02001C84
	ldr r2, _02001C90 ; =0x000005DC
	mov r1, #3
	bl sub_02001C98
	cmp r0, #1
	bne _02001C7E
	mov r0, #4
	strb r0, [r4, #0x1b]
_02001C7E:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02001C84:
	sub r1, #0x11
	add r0, r1, #0
	pop {r3, r4, r5, pc}
	nop
_02001C8C: .word 0x021D110C
_02001C90: .word 0x000005DC
	thumb_func_end sub_02001BE0

	thumb_func_start sub_02001C94
sub_02001C94: ; 0x02001C94
	ldrb r0, [r0, #0x15]
	bx lr
	thumb_func_end sub_02001C94

	thumb_func_start sub_02001C98
sub_02001C98: ; 0x02001C98
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r2, #0
	ldrb r4, [r5, #0x15]
	bl sub_02001CF0
	cmp r0, #0
	bne _02001CB0
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02001CB0:
	ldrb r0, [r5, #8]
	mov r1, #6
	bl sub_02002FAC
	add r1, sp, #8
	add r7, r0, #0
	add r0, r5, #0
	add r1, #1
	add r2, sp, #8
	add r3, r4, #0
	bl sub_02001EE4
	mov r0, #8
	str r0, [sp]
	ldrb r0, [r5, #0x1a]
	add r3, sp, #8
	add r1, r7, #0
	str r0, [sp, #4]
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	ldr r0, [r5, #4]
	bl sub_0201DA74
	add r0, r5, #0
	bl sub_02001EB4
	add r0, r6, #0
	bl sub_0200604C
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02001C98

	thumb_func_start sub_02001CF0
sub_02001CF0: ; 0x02001CF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _02001D2E
	ldrb r6, [r5, #0xa]
	cmp r6, #1
	bhi _02001D02
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001D02:
	ldrb r4, [r5, #0x15]
	add r1, r6, #0
	add r0, r4, #0
	bl sub_020F2998
	cmp r1, #0
	bne _02001D26
	ldrb r0, [r5, #0xb]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _02001D1C
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001D1C:
	sub r0, r6, #1
	add r0, r4, r0
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001DCE
_02001D26:
	sub r0, r4, #1
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001DCE
_02001D2E:
	cmp r1, #1
	bne _02001D66
	ldrb r1, [r5, #0xa]
	cmp r1, #1
	bhi _02001D3C
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001D3C:
	ldrb r6, [r5, #0x15]
	sub r4, r1, #1
	add r0, r6, #0
	bl sub_020F2998
	cmp r4, r1
	bne _02001D5E
	ldrb r0, [r5, #0xb]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _02001D56
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001D56:
	sub r0, r6, r4
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001DCE
_02001D5E:
	add r0, r6, #1
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001DCE
_02001D66:
	cmp r1, #2
	bne _02001D9C
	ldrb r3, [r5, #9]
	cmp r3, #1
	bhi _02001D74
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001D74:
	ldrb r2, [r5, #0xa]
	ldrb r1, [r5, #0x15]
	cmp r1, r2
	bhs _02001D94
	ldrb r0, [r5, #0xb]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _02001D88
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001D88:
	sub r0, r3, #1
	mul r0, r2
	add r0, r1, r0
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001DCE
_02001D94:
	sub r0, r1, r2
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001DCE
_02001D9C:
	ldrb r2, [r5, #9]
	cmp r2, #1
	bhi _02001DA6
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001DA6:
	ldrb r1, [r5, #0xa]
	ldrb r0, [r5, #0x15]
	sub r2, r2, #1
	mul r2, r1
	cmp r0, r2
	blt _02001DC8
	ldrb r2, [r5, #0xb]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1e
	bne _02001DBE
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001DBE:
	bl sub_020F2998
	lsl r0, r1, #0x18
	asr r2, r0, #0x18
	b _02001DCE
_02001DC8:
	add r0, r0, r1
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
_02001DCE:
	ldr r1, [r5]
	lsl r0, r2, #3
	add r0, r1, r0
	ldr r1, [r0, #4]
	mov r0, #2
	mvn r0, r0
	cmp r1, r0
	bne _02001DE2
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001DE2:
	strb r2, [r5, #0x15]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02001CF0

	thumb_func_start sub_02001DE8
sub_02001DE8: ; 0x02001DE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r1, [r5, #9]
	ldrb r0, [r5, #0xa]
	mov r6, #0
	add r4, r6, #0
	mul r0, r1
	cmp r0, #0
	ble _02001E24
	add r7, r6, #0
_02001DFC:
	ldr r2, [r5]
	lsl r1, r4, #3
	ldr r1, [r2, r1]
	ldrb r0, [r5, #8]
	add r2, r7, #0
	bl sub_02002F30
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r6, r0
	bhs _02001E14
	add r6, r0, #0
_02001E14:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldrb r1, [r5, #9]
	ldrb r0, [r5, #0xa]
	mul r0, r1
	cmp r4, r0
	blt _02001DFC
_02001E24:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02001DE8

	thumb_func_start sub_02001E28
sub_02001E28: ; 0x02001E28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #8]
	mov r1, #6
	bl sub_02002FAC
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_0201D978
	ldrb r0, [r5, #0x19]
	ldrb r1, [r5, #0x16]
	ldrb r7, [r5, #0x17]
	lsl r0, r0, #1
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldrb r0, [r5, #9]
	mov r6, #0
	cmp r0, #0
	bls _02001EB0
_02001E56:
	ldrb r2, [r5, #0xa]
	mov r4, #0
	cmp r2, #0
	bls _02001E9C
_02001E5E:
	ldrb r3, [r5, #0xb]
	mul r2, r6
	ldrb r0, [r5, #0x1a]
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x1c
	add r0, r0, r3
	ldrb r1, [r5, #0x18]
	mul r0, r4
	add r2, r4, r2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r3, [r5]
	lsl r2, r2, #3
	ldr r2, [r3, r2]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	add r3, r7, #0
	bl sub_020200A8
	add r0, r4, #1
	lsl r0, r0, #0x18
	ldrb r2, [r5, #0xa]
	lsr r4, r0, #0x18
	cmp r4, r2
	blo _02001E5E
_02001E9C:
	ldr r0, [sp, #0xc]
	add r0, r7, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldrb r0, [r5, #9]
	cmp r6, r0
	blo _02001E56
_02001EB0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02001E28

	thumb_func_start sub_02001EB4
sub_02001EB4: ; 0x02001EB4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #0xb]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1e
	cmp r1, #1
	beq _02001EDE
	ldrb r3, [r4, #0x15]
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl sub_02001EE4
	add r3, sp, #0
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	bl sub_020157F0
_02001EDE:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02001EB4

	thumb_func_start sub_02001EE4
sub_02001EE4: ; 0x02001EE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r3, #0
	ldrb r1, [r5, #0xa]
	add r0, r7, #0
	add r6, r2, #0
	bl sub_020F2998
	ldrb r2, [r5, #0x19]
	ldrb r1, [r5, #0x16]
	lsl r2, r2, #1
	add r1, r1, r2
	mul r1, r0
	strb r1, [r4]
	ldrb r1, [r5, #0xa]
	add r0, r7, #0
	bl sub_020F2998
	ldrb r2, [r5, #0xb]
	ldrb r3, [r5, #0x1a]
	ldrb r0, [r5, #0x18]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	add r2, r3, r2
	mul r2, r1
	add r0, r0, r2
	strb r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02001EE4

	thumb_func_start sub_02001F20
sub_02001F20: ; 0x02001F20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r5, [sp, #0x3c]
	str r2, [sp, #0xc]
	add r7, r0, #0
	str r1, [sp, #8]
	str r3, [sp, #0x10]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xbf
	add r3, r5, #0
	bl sub_0200BAF8
	add r4, r0, #0
	mov r0, #2
	add r1, r5, #0
	bl sub_02014918
	add r1, r4, #0
	mov r2, #0x2a
	mov r3, #0
	add r6, r0, #0
	bl sub_02014960
	mov r3, #0x2b
	add r2, r3, #0
	add r0, r6, #0
	add r1, r4, #0
	sub r3, #0x2d
	bl sub_02014960
	add r0, r4, #0
	bl sub_0200BB44
	add r0, r5, #0
	mov r1, #1
	str r6, [sp, #0x14]
	bl sub_0201D39C
	add r1, r0, #0
	str r1, [sp, #0x18]
	mov r0, #0
	add r2, sp, #0x14
	strb r0, [r2, #8]
	mov r0, #1
	strb r0, [r2, #9]
	mov r0, #2
	strb r0, [r2, #0xa]
	ldrb r3, [r2, #0xb]
	mov r0, #0xf
	bic r3, r0
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r0, #0x30
	bic r3, r0
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r0, #0xc0
	bic r3, r0
	strb r3, [r2, #0xb]
	ldr r2, [sp, #8]
	add r0, r7, #0
	bl sub_0201D4F8
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r1, #1
	bl sub_0200E580
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r3, sp, #0x28
	ldrb r3, [r3, #0x10]
	add r0, sp, #0x14
	mov r1, #8
	mov r2, #0
	bl sub_02001B7C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02001F20

	thumb_func_start sub_02001FC8
sub_02001FC8: ; 0x02001FC8
	push {r4, lr}
	sub sp, #8
	mov r4, #0
	str r4, [sp]
	ldr r4, [sp, #0x10]
	str r4, [sp, #4]
	bl sub_02001F20
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02001FC8

	thumb_func_start sub_02001FDC
sub_02001FDC: ; 0x02001FDC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02001BE0
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02001FF8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02001FFC
_02001FF8:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02001FDC

	thumb_func_start sub_02001FFC
sub_02001FFC: ; 0x02001FFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	mov r1, #0
	bl sub_0200E5D4
	ldr r0, [r5, #4]
	bl sub_0201D520
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl sub_0201AB80
	ldr r0, [r5]
	bl sub_02014950
	add r0, r5, #0
	mov r1, #0
	bl sub_02001BC4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02001FFC

	thumb_func_start StringCopy
StringCopy: ; 0x02002028
	ldrh r3, [r1]
	ldr r2, _02002044 ; =0x0000FFFF
	cmp r3, r2
	beq _0200203C
_02002030:
	add r1, r1, #2
	strh r3, [r0]
	ldrh r3, [r1]
	add r0, r0, #2
	cmp r3, r2
	bne _02002030
_0200203C:
	ldr r1, _02002044 ; =0x0000FFFF
	strh r1, [r0]
	bx lr
	nop
_02002044: .word 0x0000FFFF
	thumb_func_end StringCopy

	thumb_func_start StringCopyN
StringCopyN: ; 0x02002048
	push {r4, r5}
	mov r4, #0
	cmp r2, #0
	bls _02002060
	add r5, r0, #0
_02002052:
	ldrh r3, [r1]
	add r4, r4, #1
	add r1, r1, #2
	strh r3, [r5]
	add r5, r5, #2
	cmp r4, r2
	blo _02002052
_02002060:
	lsl r1, r2, #1
	add r0, r0, r1
	pop {r4, r5}
	bx lr
	thumb_func_end StringCopyN

	thumb_func_start StringLength
StringLength: ; 0x02002068
	ldrh r2, [r0]
	ldr r1, _02002080 ; =0x0000FFFF
	mov r3, #0
	cmp r2, r1
	beq _0200207C
_02002072:
	add r0, r0, #2
	ldrh r2, [r0]
	add r3, r3, #1
	cmp r2, r1
	bne _02002072
_0200207C:
	add r0, r3, #0
	bx lr
	.align 2, 0
_02002080: .word 0x0000FFFF
	thumb_func_end StringLength

	thumb_func_start StringCompare
StringCompare: ; 0x02002084
	push {r3, r4}
	ldrh r4, [r0]
	ldrh r2, [r1]
	cmp r4, r2
	bne _020020A6
	ldr r2, _020020AC ; =0x0000FFFF
_02002090:
	cmp r4, r2
	bne _0200209A
	mov r0, #0
	pop {r3, r4}
	bx lr
_0200209A:
	add r0, r0, #2
	add r1, r1, #2
	ldrh r4, [r0]
	ldrh r3, [r1]
	cmp r4, r3
	beq _02002090
_020020A6:
	mov r0, #1
	pop {r3, r4}
	bx lr
	.align 2, 0
_020020AC: .word 0x0000FFFF
	thumb_func_end StringCompare

	thumb_func_start StringCompareN
StringCompareN: ; 0x020020B0
	push {r3, r4, r5, r6}
	ldrh r6, [r1]
	ldrh r5, [r0]
	cmp r5, r6
	bne _020020E4
	ldr r3, _020020EC ; =0x0000FFFF
	add r4, r3, #0
_020020BE:
	cmp r2, #0
	bne _020020C8
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_020020C8:
	cmp r5, r4
	bne _020020D6
	cmp r6, r3
	bne _020020D6
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_020020D6:
	add r0, r0, #2
	add r1, r1, #2
	ldrh r6, [r1]
	ldrh r5, [r0]
	sub r2, r2, #1
	cmp r5, r6
	beq _020020BE
_020020E4:
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
	nop
_020020EC: .word 0x0000FFFF
	thumb_func_end StringCompareN

	thumb_func_start StringFill
StringFill: ; 0x020020F0
	push {r3, r4}
	mov r3, #0
	cmp r2, #0
	bls _02002104
	add r4, r0, #0
_020020FA:
	add r3, r3, #1
	strh r1, [r4]
	add r4, r4, #2
	cmp r3, r2
	blo _020020FA
_02002104:
	lsl r1, r3, #1
	add r0, r0, r1
	pop {r3, r4}
	bx lr
	thumb_func_end StringFill

	thumb_func_start StringFillEOS
StringFillEOS: ; 0x0200210C
	ldr r3, _02002114 ; =StringFill
	add r2, r1, #0
	ldr r1, _02002118 ; =0x0000FFFF
	bx r3
	.align 2, 0
_02002114: .word StringFill
_02002118: .word 0x0000FFFF
	thumb_func_end StringFillEOS

	thumb_func_start PrintDecimalInteger
PrintDecimalInteger: ; 0x0200211C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r0, _02002194 ; =0x020F5690
	lsl r1, r3, #2
	ldr r4, [r0, r1]
	add r6, r2, #0
	cmp r4, #0
	beq _0200218C
_0200212E:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020F2BA4
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r4, #0
	mul r0, r1
	sub r7, r7, r0
	cmp r6, #2
	bne _02002158
	cmp r1, #0xa
	blo _0200214C
	mov r0, #0xe2
	b _02002152
_0200214C:
	ldr r0, _02002198 ; =0x020F5674
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
_02002152:
	strh r0, [r5]
	add r5, r5, #2
	b _02002180
_02002158:
	cmp r1, #0
	bne _02002160
	cmp r4, #1
	bne _02002176
_02002160:
	mov r6, #2
	cmp r1, #0xa
	blo _0200216A
	mov r0, #0xe2
	b _02002170
_0200216A:
	ldr r0, _02002198 ; =0x020F5674
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
_02002170:
	strh r0, [r5]
	add r5, r5, #2
	b _02002180
_02002176:
	cmp r6, #1
	bne _02002180
	mov r0, #1
	strh r0, [r5]
	add r5, r5, #2
_02002180:
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020F2BA4
	add r4, r0, #0
	bne _0200212E
_0200218C:
	ldr r0, _0200219C ; =0x0000FFFF
	strh r0, [r5]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02002194: .word 0x020F5690
_02002198: .word 0x020F5674
_0200219C: .word 0x0000FFFF
	thumb_func_end PrintDecimalInteger

	thumb_func_start sub_020021A0
sub_020021A0: ; 0x020021A0
	push {r3, lr}
	ldr r1, _02002210 ; =0x021D110C
	ldr r2, [r1, #0x44]
	mov r1, #3
	tst r1, r2
	beq _020021C2
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _020021C2
	ldr r1, _02002214 ; =0x02111884
	mov r0, #1
	ldrb r2, [r1, #3]
	bic r2, r0
	strb r2, [r1, #3]
	mov r0, #1
	pop {r3, pc}
_020021C2:
	ldr r1, _02002214 ; =0x02111884
	ldrb r0, [r1, #2]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _0200220A
	ldr r0, _02002218 ; =0x021D114C
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	bne _020021D8
	mov r0, #0
	pop {r3, pc}
_020021D8:
	ldrb r2, [r1, #3]
	lsl r0, r2, #0x1e
	lsr r0, r0, #0x1f
	beq _020021FE
	ldr r0, _0200221C ; =0x02111888
	bl sub_020252F4
	cmp r0, #0
	beq _020021FA
	ldr r1, _02002214 ; =0x02111884
	mov r0, #1
	ldrb r2, [r1, #3]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strb r2, [r1, #3]
	pop {r3, pc}
_020021FA:
	mov r0, #0
	pop {r3, pc}
_020021FE:
	mov r0, #1
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strb r2, [r1, #3]
	pop {r3, pc}
_0200220A:
	mov r0, #0
	pop {r3, pc}
	nop
_02002210: .word 0x021D110C
_02002214: .word 0x02111884
_02002218: .word 0x021D114C
_0200221C: .word 0x02111888
	thumb_func_end sub_020021A0

	thumb_func_start sub_02002220
sub_02002220: ; 0x02002220
	push {r3, lr}
	ldr r0, _02002288 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0200223A
	ldr r1, _0200228C ; =0x02111884
	mov r0, #1
	ldrb r2, [r1, #3]
	bic r2, r0
	strb r2, [r1, #3]
	mov r0, #1
	pop {r3, pc}
_0200223A:
	ldr r1, _0200228C ; =0x02111884
	ldrb r0, [r1, #2]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _02002282
	ldr r0, _02002290 ; =0x021D114C
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	bne _02002250
	mov r0, #0
	pop {r3, pc}
_02002250:
	ldrb r2, [r1, #3]
	lsl r0, r2, #0x1e
	lsr r0, r0, #0x1f
	beq _02002276
	ldr r0, _02002294 ; =0x02111888
	bl sub_02025320
	cmp r0, #0
	beq _02002272
	ldr r1, _0200228C ; =0x02111884
	mov r0, #1
	ldrb r2, [r1, #3]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strb r2, [r1, #3]
	pop {r3, pc}
_02002272:
	mov r0, #0
	pop {r3, pc}
_02002276:
	mov r0, #1
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strb r2, [r1, #3]
	pop {r3, pc}
_02002282:
	mov r0, #0
	pop {r3, pc}
	nop
_02002288: .word 0x021D110C
_0200228C: .word 0x02111884
_02002290: .word 0x021D114C
_02002294: .word 0x02111888
	thumb_func_end sub_02002220

	thumb_func_start sub_02002298
sub_02002298: ; 0x02002298
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x28
	ldrb r1, [r1]
	add r6, r4, #0
	add r6, #0x20
	cmp r1, #8
	bls _020022AE
	b _020027EA
_020022AE:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020022BA: ; jump table
	.short _020022CC - _020022BA - 2 ; case 0
	.short _0200269A - _020022BA - 2 ; case 1
	.short _020026B4 - _020022BA - 2 ; case 2
	.short _020026DE - _020022BA - 2 ; case 3
	.short _0200270E - _020022BA - 2 ; case 4
	.short _02002764 - _020022BA - 2 ; case 5
	.short _02002770 - _020022BA - 2 ; case 6
	.short _02002790 - _020022BA - 2 ; case 7
	.short _020027BA - _020022BA - 2 ; case 8
_020022CC:
	add r0, r6, #0
	bl sub_020021A0
	cmp r0, #0
	beq _020022F4
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2a
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	beq _020022F4
	ldr r1, _020025B8 ; =0x02111884
	mov r0, #0x40
	ldrb r2, [r1, #2]
	orr r0, r2
	strb r0, [r1, #2]
_020022F4:
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0200233E
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	beq _0200233E
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
	ldr r0, _020025B8 ; =0x02111884
	ldrb r0, [r0, #2]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02002338
	bl sub_02002220
	cmp r0, #0
	beq _02002338
	ldrb r1, [r6]
	mov r0, #0x10
	add r4, #0x2a
	orr r0, r1
	strb r0, [r6]
	mov r0, #0
	strb r0, [r4]
_02002338:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_0200233E:
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r1, r0, #0x19
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
	ldr r0, [r4]
	ldrh r5, [r0]
	add r0, r0, #2
	str r0, [r4]
	mov r0, #0xf1
	lsl r0, r0, #8
	cmp r5, r0
	bne _02002362
	bl GF_AssertFail
_02002362:
	ldr r0, _020025BC ; =0x0000F0FD
	cmp r5, r0
	bgt _0200238C
	bge _020023C0
	ldr r1, _020025C0 ; =0x000025BD
	cmp r5, r1
	bgt _02002382
	sub r0, r1, #1
	cmp r5, r0
	blt _02002380
	bne _0200237A
	b _02002630
_0200237A:
	cmp r5, r1
	bne _02002380
	b _02002644
_02002380:
	b _02002658
_02002382:
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r5, r0
	beq _020023A4
	b _02002658
_0200238C:
	ldr r0, _020025C4 ; =0x0000FFFE
	cmp r5, r0
	bgt _02002396
	beq _020023CC
	b _02002658
_02002396:
	add r0, r0, #1
	cmp r5, r0
	beq _0200239E
	b _02002658
_0200239E:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_020023A4:
	ldrb r0, [r4, #0xa]
	mov r1, #1
	strh r0, [r4, #0xc]
	ldrb r0, [r4, #9]
	bl sub_02002FAC
	ldrh r1, [r4, #0x12]
	ldrh r2, [r4, #0xe]
	add sp, #0xc
	add r0, r1, r0
	add r0, r2, r0
	strh r0, [r4, #0xe]
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_020023C0:
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #2
	str r0, [r4]
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_020023CC:
	ldr r0, [r4]
	sub r0, r0, #2
	str r0, [r4]
	bl sub_0201FB44
	lsl r0, r0, #0x10
	ldr r1, _020025C8 ; =0x0000FE06
	lsr r0, r0, #0x10
	cmp r0, r1
	bgt _0200240C
	blt _020023E4
	b _020025D0
_020023E4:
	mov r1, #2
	lsl r1, r1, #8
	sub r1, r0, r1
	cmp r1, #8
	bhi _02002416
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020023FA: ; jump table
	.short _02002470 - _020023FA - 2 ; case 0
	.short _020024F0 - _020023FA - 2 ; case 1
	.short _02002512 - _020023FA - 2 ; case 2
	.short _0200252A - _020023FA - 2 ; case 3
	.short _02002536 - _020023FA - 2 ; case 4
	.short _02002542 - _020023FA - 2 ; case 5
	.short _0200256E - _020023FA - 2 ; case 6
	.short _0200249C - _020023FA - 2 ; case 7
	.short _020024C6 - _020023FA - 2 ; case 8
_0200240C:
	mov r1, #0xff
	lsl r1, r1, #8
	cmp r0, r1
	bgt _02002418
	beq _02002422
_02002416:
	b _02002622
_02002418:
	add r1, r1, #1
	cmp r0, r1
	bne _02002420
	b _02002590
_02002420:
	b _02002622
_02002422:
	ldr r0, [r4]
	mov r1, #0
	bl sub_0201FB90
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0xff
	bne _02002452
	ldrb r0, [r4, #0x15]
	ldrb r2, [r4, #0x1b]
	sub r1, r0, #1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, #0x64
	strb r0, [r4, #0x1b]
	cmp r2, #0x64
	blo _02002492
	cmp r2, #0x6b
	bhs _02002492
	sub r2, #0x64
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	b _0200245A
_02002452:
	cmp r0, #0x64
	blo _0200245A
	strb r0, [r4, #0x1b]
	b _02002622
_0200245A:
	lsl r1, r0, #1
	add r0, r1, #1
	strb r0, [r4, #0x15]
	add r0, r1, #2
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x16]
	ldrb r2, [r4, #0x17]
	bl sub_0202036C
	b _02002622
_02002470:
	ldr r0, [r4]
	mov r1, #0
	bl sub_0201FB90
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	ldrh r1, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	add r0, r4, #0
	bl sub_020204FC
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _02002494
_02002492:
	b _02002622
_02002494:
	ldr r0, [r4, #4]
	bl sub_0201D578
	b _02002622
_0200249C:
	add r0, r4, #0
	mov r1, #7
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027FC
	ldr r0, [r4]
	bl sub_0201FB1C
	str r0, [r4]
	mov r1, #0xe
	ldrh r2, [r0]
	lsl r1, r1, #0xc
	cmp r2, r1
	bne _020024C0
	add r0, r0, #2
	str r0, [r4]
_020024C0:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020024C6:
	add r0, r4, #0
	mov r1, #8
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027FC
	ldr r0, [r4]
	bl sub_0201FB1C
	str r0, [r4]
	mov r1, #0xe
	ldrh r2, [r0]
	lsl r1, r1, #0xc
	cmp r2, r1
	bne _020024EA
	add r0, r0, #2
	str r0, [r4]
_020024EA:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020024F0:
	ldr r0, [r4]
	mov r1, #0
	bl sub_0201FB90
	add r1, r4, #0
	add r1, #0x2a
	strb r0, [r1]
	ldr r0, [r4]
	bl sub_0201FB1C
	str r0, [r4]
	mov r0, #6
	add r4, #0x28
	strb r0, [r4]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002512:
	ldr r0, [r4]
	mov r1, #0
	bl sub_0201FB90
	strh r0, [r4, #0x2e]
	ldr r0, [r4]
	bl sub_0201FB1C
	str r0, [r4]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_0200252A:
	ldr r0, [r4]
	mov r1, #0
	bl sub_0201FB90
	strh r0, [r4, #0xc]
	b _02002622
_02002536:
	ldr r0, [r4]
	mov r1, #0
	bl sub_0201FB90
	strh r0, [r4, #0xe]
	b _02002622
_02002542:
	ldr r0, [r4, #4]
	bl sub_0201EE90
	lsl r5, r0, #3
	ldrb r0, [r4, #9]
	ldrh r2, [r4, #0x10]
	ldr r1, [r4]
	bl sub_02002EFC
	cmp r0, r5
	bge _02002568
	sub r1, r5, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	ldrb r2, [r4, #0xa]
	asr r0, r0, #1
	add r0, r2, r0
	strh r0, [r4, #0xc]
	b _02002622
_02002568:
	ldrb r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	b _02002622
_0200256E:
	ldr r0, [r4, #4]
	bl sub_0201EE90
	lsl r5, r0, #3
	ldrb r0, [r4, #9]
	ldrh r2, [r4, #0x10]
	ldr r1, [r4]
	bl sub_02002EFC
	cmp r0, r5
	bge _0200258A
	sub r0, r5, r0
	strh r0, [r4, #0xc]
	b _02002622
_0200258A:
	ldrb r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	b _02002622
_02002590:
	ldr r0, [r4]
	mov r1, #0
	bl sub_0201FB90
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x64
	beq _020025A6
	cmp r0, #0xc8
	beq _020025AE
	b _02002622
_020025A6:
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r0, [r4, #0x1a]
	b _02002622
_020025AE:
	ldr r0, _020025CC ; =0x0000FFFC
	strh r0, [r4, #0x18]
	mov r0, #0
	strb r0, [r4, #0x1a]
	b _02002622
	.align 2, 0
_020025B8: .word 0x02111884
_020025BC: .word 0x0000F0FD
_020025C0: .word 0x000025BD
_020025C4: .word 0x0000FFFE
_020025C8: .word 0x0000FE06
_020025CC: .word 0x0000FFFC
_020025D0:
	ldr r0, [r4]
	mov r1, #0
	bl sub_0201FB90
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0xfe
	lsl r0, r0, #8
	cmp r1, r0
	beq _02002606
	add r0, r0, #1
	cmp r1, r0
	bne _02002622
	add r0, r4, #0
	mov r1, #2
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027FC
	ldr r0, [r4]
	bl sub_0201FB1C
	str r0, [r4]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002606:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027FC
	ldr r0, [r4]
	bl sub_0201FB1C
	str r0, [r4]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002622:
	ldr r0, [r4]
	bl sub_0201FB1C
	str r0, [r4]
	add sp, #0xc
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02002630:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027FC
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002644:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027FC
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002658:
	ldrb r0, [r6]
	add r1, r5, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bl sub_02002E7C
	add r5, r0, #0
	ldrh r0, [r4, #0xc]
	add r2, r5, #0
	add r3, r5, #0
	str r0, [sp]
	ldrh r0, [r4, #0xe]
	add r2, #0x80
	add r3, #0x81
	str r0, [sp, #4]
	ldrh r0, [r4, #0x18]
	add r1, r5, #0
	str r0, [sp, #8]
	ldrb r2, [r2]
	ldrb r3, [r3]
	ldr r0, [r4, #4]
	bl sub_0201DACC
	add r5, #0x80
	ldrb r1, [r5]
	ldrh r0, [r4, #0x10]
	ldrh r2, [r4, #0xc]
	add sp, #0xc
	add r0, r1, r0
	add r0, r2, r0
	strh r0, [r4, #0xc]
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0200269A:
	bl sub_02002B10
	cmp r0, #0
	beq _020026AE
	add r0, r4, #0
	bl sub_020029D8
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
_020026AE:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020026B4:
	bl sub_02002AEC
	cmp r0, #0
	beq _020026D8
	add r0, r4, #0
	bl sub_020029D8
	ldrb r1, [r4, #0x16]
	ldr r0, [r4, #4]
	bl sub_0201D978
	ldrb r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	strh r0, [r4, #0xe]
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
_020026D8:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020026DE:
	bl sub_02002AEC
	cmp r0, #0
	beq _02002708
	add r0, r4, #0
	bl sub_020029D8
	ldrb r0, [r4, #9]
	mov r1, #1
	bl sub_02002FAC
	ldrh r1, [r4, #0x12]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x2b
	strb r1, [r0]
	ldrb r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	mov r0, #4
	add r4, #0x28
	strb r0, [r4]
_02002708:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_0200270E:
	add r0, #0x2b
	ldrb r2, [r0]
	cmp r2, #0
	beq _02002758
	cmp r2, #4
	ldrb r5, [r4, #0x16]
	bge _02002730
	lsl r3, r5, #4
	orr r3, r5
	lsl r3, r3, #0x18
	ldr r0, [r4, #4]
	mov r1, #0
	lsr r3, r3, #0x18
	bl sub_0201EC48
	mov r1, #0
	b _0200274A
_02002730:
	lsl r3, r5, #4
	orr r3, r5
	lsl r3, r3, #0x18
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #4
	lsr r3, r3, #0x18
	bl sub_0201EC48
	add r0, r4, #0
	add r0, #0x2b
	ldrb r0, [r0]
	sub r1, r0, #4
_0200274A:
	add r0, r4, #0
	add r0, #0x2b
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl sub_0201D578
	b _0200275E
_02002758:
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
_0200275E:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002764:
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002770:
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _02002784
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r4, #0x2a
	sub r0, r0, #1
	b _02002788
_02002784:
	mov r0, #0
	add r4, #0x28
_02002788:
	add sp, #0xc
	strb r0, [r4]
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002790:
	bl sub_02002AEC
	cmp r0, #0
	beq _020027B4
	add r0, r4, #0
	bl sub_020029D8
	ldrb r1, [r4, #0x16]
	ldr r0, [r4, #4]
	bl sub_0201D978
	ldrb r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	strh r0, [r4, #0xe]
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
_020027B4:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020027BA:
	bl sub_02002AEC
	cmp r0, #0
	beq _020027E4
	add r0, r4, #0
	bl sub_020029D8
	ldrb r0, [r4, #9]
	mov r1, #1
	bl sub_02002FAC
	ldrh r1, [r4, #0x12]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x2b
	strb r1, [r0]
	ldrb r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	mov r0, #4
	add r4, #0x28
	strb r0, [r4]
_020027E4:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020027EA:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02002298

	thumb_func_start sub_020027F0
sub_020027F0: ; 0x020027F0
	ldr r1, _020027F8 ; =0x02111884
	strh r0, [r1]
	bx lr
	nop
_020027F8: .word 0x02111884
	thumb_func_end sub_020027F0

	thumb_func_start sub_020027FC
sub_020027FC: ; 0x020027FC
	ldr r2, _02002830 ; =0x02111884
	add r1, r0, #0
	ldrb r2, [r2, #2]
	add r1, #0x20
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1f
	beq _02002814
	ldrb r3, [r1, #2]
	mov r2, #0xff
	bic r3, r2
	strb r3, [r1, #2]
	b _02002824
_02002814:
	ldrb r3, [r1, #1]
	mov r2, #0x60
	bic r3, r2
	strb r3, [r1, #1]
	ldrb r3, [r1, #1]
	mov r2, #0x1f
	bic r3, r2
	strb r3, [r1, #1]
_02002824:
	ldr r1, _02002830 ; =0x02111884
	ldr r3, _02002834 ; =sub_0200EB68
	ldr r0, [r0, #4]
	ldrh r1, [r1]
	bx r3
	nop
_02002830: .word 0x02111884
_02002834: .word sub_0200EB68
	thumb_func_end sub_020027FC

	thumb_func_start sub_02002838
sub_02002838: ; 0x02002838
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, _020029D0 ; =0x02111884
	add r4, r5, #0
	ldrb r0, [r0, #2]
	add r4, #0x20
	lsl r1, r0, #0x1d
	lsr r1, r1, #0x1f
	bne _02002852
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _02002854
_02002852:
	b _020029CC
_02002854:
	ldrb r0, [r4, #1]
	lsl r1, r0, #0x1b
	lsr r2, r1, #0x1b
	beq _02002872
	mov r1, #0x1f
	add r2, #0xff
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x1f
	and r1, r2
	orr r0, r1
	add sp, #0x30
	strb r0, [r4, #1]
	pop {r3, r4, r5, r6, r7, pc}
_02002872:
	ldr r0, [r5, #4]
	bl sub_0201EE8C
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	bl sub_0201EE98
	str r0, [sp, #0x24]
	ldr r0, [r5, #4]
	bl sub_0201EE9C
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl sub_0201EE90
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	bl sub_0201EE94
	sub r0, r0, #2
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _020029D0 ; =0x02111884
	add r7, r7, r1
	ldrh r6, [r0]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	add r2, r6, #0
	add r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x18]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	str r2, [sp, #0x2c]
	add r2, #0x12
	str r2, [sp, #0x2c]
	ldrb r2, [r4, #1]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x1e
	ldr r2, _020029D4 ; =0x020F56BC
	ldr r0, [r0]
	ldrb r2, [r2, r3]
	lsl r3, r2, #2
	ldr r2, [sp, #0x2c]
	add r2, r2, r3
	ldr r3, [sp, #0x18]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x1c]
	add r2, r6, #0
	add r0, r0, #2
	str r0, [sp, #0x10]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	add r2, #0x13
	mov ip, r2
	ldrb r2, [r4, #1]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x1e
	ldr r2, _020029D4 ; =0x020F56BC
	ldr r0, [r0]
	ldrb r2, [r2, r3]
	mov r3, ip
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r3, [sp, #0x10]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add r0, r7, #1
	str r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r2, [r4, #1]
	add r7, r6, #0
	ldr r0, [r5, #4]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x1e
	ldr r2, _020029D4 ; =0x020F56BC
	add r7, #0x14
	ldrb r2, [r2, r3]
	ldr r3, [sp, #0x18]
	ldr r0, [r0]
	lsl r2, r2, #2
	add r2, r7, r2
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x20]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x14]
	add r6, #0x15
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r2, [r4, #1]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x1e
	ldr r2, _020029D4 ; =0x020F56BC
	ldr r0, [r0]
	ldrb r2, [r2, r3]
	ldr r3, [sp, #0x10]
	lsl r2, r2, #2
	add r2, r6, r2
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	bl sub_0201BF7C
	ldrb r1, [r4, #1]
	mov r0, #0x1f
	bic r1, r0
	mov r0, #8
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r2, [r4, #1]
	mov r1, #0x60
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x1e
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x19
	orr r0, r1
	strb r0, [r4, #1]
_020029CC:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020029D0: .word 0x02111884
_020029D4: .word 0x020F56BC
	thumb_func_end sub_02002838

	thumb_func_start sub_020029D8
sub_020029D8: ; 0x020029D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _02002A80 ; =0x02111884
	ldrb r0, [r0, #2]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02002A7C
	ldr r0, [r5, #4]
	bl sub_0201EE8C
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	bl sub_0201EE98
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	bl sub_0201EE9C
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_0201EE90
	str r0, [sp, #0x18]
	ldr r0, [r5, #4]
	bl sub_0201EE94
	sub r0, r0, #2
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _02002A80 ; =0x02111884
	add r7, r6, r1
	ldrh r4, [r0]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	add r6, r1, r0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	add r2, #0xa
	add r3, r6, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	add r4, #0xb
	add r3, r6, #2
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	bl sub_0201BF7C
_02002A7C:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02002A80: .word 0x02111884
	thumb_func_end sub_020029D8

	thumb_func_start sub_02002A84
sub_02002A84: ; 0x02002A84
	push {r3, lr}
	bl sub_02002220
	cmp r0, #0
	beq _02002AA2
	ldr r0, _02002AA8 ; =0x000005DC
	bl sub_0200604C
	ldr r1, _02002AAC ; =0x02111884
	mov r0, #0x80
	ldrb r2, [r1, #2]
	orr r0, r2
	strb r0, [r1, #2]
	mov r0, #1
	pop {r3, pc}
_02002AA2:
	mov r0, #0
	pop {r3, pc}
	nop
_02002AA8: .word 0x000005DC
_02002AAC: .word 0x02111884
	thumb_func_end sub_02002A84

	thumb_func_start sub_02002AB0
sub_02002AB0: ; 0x02002AB0
	push {r4, lr}
	add r2, r0, #0
	add r2, #0x20
	ldrb r1, [r2, #2]
	add r4, r1, #0
	cmp r4, #0x64
	bne _02002AC2
	mov r0, #1
	pop {r4, pc}
_02002AC2:
	mov r3, #0xff
	bic r1, r3
	add r3, r4, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	orr r1, r3
	strb r1, [r2, #2]
	ldr r1, _02002AE8 ; =0x02111884
	ldrb r1, [r1, #2]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	beq _02002AE4
	bl sub_02002A84
	pop {r4, pc}
_02002AE4:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02002AE8: .word 0x02111884
	thumb_func_end sub_02002AB0

	thumb_func_start sub_02002AEC
sub_02002AEC: ; 0x02002AEC
	push {r4, lr}
	ldr r1, _02002B0C ; =0x02111884
	add r4, r0, #0
	ldrb r1, [r1, #2]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _02002B00
	bl sub_02002AB0
	pop {r4, pc}
_02002B00:
	bl sub_02002838
	add r0, r4, #0
	bl sub_02002A84
	pop {r4, pc}
	.align 2, 0
_02002B0C: .word 0x02111884
	thumb_func_end sub_02002AEC

	thumb_func_start sub_02002B10
sub_02002B10: ; 0x02002B10
	push {r3, lr}
	ldr r1, _02002B30 ; =0x02111884
	ldrb r1, [r1, #2]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _02002B26
	bl sub_02002AB0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
_02002B26:
	bl sub_02002A84
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	.align 2, 0
_02002B30: .word 0x02111884
	thumb_func_end sub_02002B10

	thumb_func_start sub_02002B34
sub_02002B34: ; 0x02002B34
	ldr r2, _02002B4C ; =0x02111884
	mov r1, #1
	ldrb r3, [r2, #2]
	lsl r0, r0, #0x18
	bic r3, r1
	lsr r1, r0, #0x18
	mov r0, #1
	and r0, r1
	orr r0, r3
	strb r0, [r2, #2]
	bx lr
	nop
_02002B4C: .word 0x02111884
	thumb_func_end sub_02002B34

	thumb_func_start sub_02002B50
sub_02002B50: ; 0x02002B50
	push {r3, r4}
	ldr r1, _02002B88 ; =0x02111884
	mov r3, #4
	ldrb r2, [r1, #2]
	mov r4, #1
	bic r2, r3
	add r3, r0, #0
	and r3, r4
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1d
	orr r2, r3
	asr r0, r0, #1
	and r0, r4
	strb r2, [r1, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r2, [r1, #2]
	mov r3, #0x20
	lsr r0, r0, #0x1a
	bic r2, r3
	orr r0, r2
	strb r0, [r1, #2]
	pop {r3, r4}
	bx lr
	nop
_02002B88: .word 0x02111884
	thumb_func_end sub_02002B50

	thumb_func_start sub_02002B8C
sub_02002B8C: ; 0x02002B8C
	ldr r2, _02002BA4 ; =0x02111884
	lsl r0, r0, #0x18
	ldrb r3, [r2, #2]
	lsr r0, r0, #0x18
	mov r1, #0x10
	lsl r0, r0, #0x1f
	bic r3, r1
	lsr r0, r0, #0x1b
	orr r0, r3
	strb r0, [r2, #2]
	bx lr
	nop
_02002BA4: .word 0x02111884
	thumb_func_end sub_02002B8C

	thumb_func_start sub_02002BA8
sub_02002BA8: ; 0x02002BA8
	ldr r2, _02002BC0 ; =0x02111884
	lsl r0, r0, #0x18
	ldrb r3, [r2, #2]
	lsr r0, r0, #0x18
	mov r1, #2
	lsl r0, r0, #0x1f
	bic r3, r1
	lsr r0, r0, #0x1e
	orr r0, r3
	strb r0, [r2, #2]
	bx lr
	nop
_02002BC0: .word 0x02111884
	thumb_func_end sub_02002BA8

	thumb_func_start sub_02002BC4
sub_02002BC4: ; 0x02002BC4
	ldr r0, _02002BD0 ; =0x02111884
	ldrb r0, [r0, #2]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
	nop
_02002BD0: .word 0x02111884
	thumb_func_end sub_02002BC4

	thumb_func_start sub_02002BD4
sub_02002BD4: ; 0x02002BD4
	ldr r1, _02002BE0 ; =0x02111884
	mov r0, #0x40
	ldrb r2, [r1, #2]
	bic r2, r0
	strb r2, [r1, #2]
	bx lr
	.align 2, 0
_02002BE0: .word 0x02111884
	thumb_func_end sub_02002BD4

	thumb_func_start sub_02002BE4
sub_02002BE4: ; 0x02002BE4
	ldr r0, _02002BF0 ; =0x02111884
	ldrb r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
	nop
_02002BF0: .word 0x02111884
	thumb_func_end sub_02002BE4

	thumb_func_start sub_02002BF4
sub_02002BF4: ; 0x02002BF4
	ldr r1, _02002C00 ; =0x02111884
	mov r0, #0x80
	ldrb r2, [r1, #2]
	bic r2, r0
	strb r2, [r1, #2]
	bx lr
	.align 2, 0
_02002C00: .word 0x02111884
	thumb_func_end sub_02002BF4

	thumb_func_start sub_02002C04
sub_02002C04: ; 0x02002C04
	ldr r0, _02002C1C ; =0x02111884
	ldrb r1, [r0, #2]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	beq _02002C16
	ldrb r0, [r0, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
_02002C16:
	mov r0, #0
	bx lr
	nop
_02002C1C: .word 0x02111884
	thumb_func_end sub_02002C04

	thumb_func_start sub_02002C20
sub_02002C20: ; 0x02002C20
	ldr r2, _02002C3C ; =0x02111884
	mov r1, #2
	ldrb r3, [r2, #3]
	orr r1, r3
	strb r1, [r2, #3]
	ldrb r1, [r0]
	strb r1, [r2, #4]
	ldrb r1, [r0, #1]
	strb r1, [r2, #5]
	ldrb r1, [r0, #2]
	strb r1, [r2, #6]
	ldrb r0, [r0, #3]
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_02002C3C: .word 0x02111884
	thumb_func_end sub_02002C20

	thumb_func_start sub_02002C40
sub_02002C40: ; 0x02002C40
	ldr r1, _02002C5C ; =0x02111884
	mov r0, #2
	ldrb r2, [r1, #3]
	bic r2, r0
	strb r2, [r1, #3]
	mov r2, #0
	strb r2, [r1, #4]
	mov r0, #0xc0
	strb r0, [r1, #5]
	strb r2, [r1, #6]
	mov r0, #0xff
	strb r0, [r1, #7]
	bx lr
	nop
_02002C5C: .word 0x02111884
	thumb_func_end sub_02002C40

	thumb_func_start sub_02002C60
sub_02002C60: ; 0x02002C60
	push {r3, lr}
	cmp r0, #0
	bne _02002C7A
	mov r0, #1
	bl sub_02002B34
	mov r0, #3
	bl sub_02002B50
	mov r0, #1
	bl sub_02002B8C
	pop {r3, pc}
_02002C7A:
	mov r0, #1
	bl sub_02002B50
	mov r0, #0
	bl sub_02002B34
	mov r0, #0
	bl sub_02002B8C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02002C60

	thumb_func_start sub_02002C90
sub_02002C90: ; 0x02002C90
	push {r3, lr}
	mov r0, #0
	bl sub_02002B34
	mov r0, #0
	bl sub_02002B50
	mov r0, #0
	bl sub_02002B8C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02002C90

	thumb_func_start sub_02002CA8
sub_02002CA8: ; 0x02002CA8
	push {r4, lr}
	ldr r0, _02002CE0 ; =0x02111890
	ldr r4, _02002CE4 ; =0x0211188C
	mov r1, #0
	str r0, [r4]
	add r2, r1, #0
	add r0, r1, #0
_02002CB6:
	ldr r3, [r4]
	add r3, r3, r2
	add r3, #0x84
	str r0, [r3]
	ldr r3, [r4]
	add r3, r3, r2
	add r3, #0x9c
	str r0, [r3]
	ldr r3, [r4]
	add r2, r2, #4
	add r3, r3, r1
	add r3, #0xb4
	add r1, r1, #1
	strb r0, [r3]
	cmp r1, #6
	blo _02002CB6
	ldr r0, _02002CE8 ; =0x020F56D8
	bl sub_0201FFE0
	pop {r4, pc}
	nop
_02002CE0: .word 0x02111890
_02002CE4: .word 0x0211188C
_02002CE8: .word 0x020F56D8
	thumb_func_end sub_02002CA8

	thumb_func_start sub_02002CEC
sub_02002CEC: ; 0x02002CEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02002D34 ; =0x0211188C
	lsl r4, r5, #2
	ldr r0, [r0]
	add r2, r0, r4
	add r2, #0x9c
	ldr r2, [r2]
	cmp r2, #0
	bne _02002D28
	str r1, [sp]
	ldr r1, _02002D38 ; =0x020F56C0
	ldr r3, _02002D3C ; =0x020F56C2
	ldrh r1, [r1, r4]
	ldrh r3, [r3, r4]
	mov r0, #0x10
	mov r2, #1
	bl sub_02025E88
	ldr r2, _02002D34 ; =0x0211188C
	ldr r1, [r2]
	add r1, r1, r4
	add r1, #0x9c
	str r0, [r1]
	ldr r0, [r2]
	mov r1, #1
	add r0, r0, r5
	add r0, #0xb4
	strb r1, [r0]
	pop {r3, r4, r5, pc}
_02002D28:
	add r0, #0xb4
	ldrsb r1, [r0, r5]
	add r1, r1, #1
	strb r1, [r0, r5]
	pop {r3, r4, r5, pc}
	nop
_02002D34: .word 0x0211188C
_02002D38: .word 0x020F56C0
_02002D3C: .word 0x020F56C2
	thumb_func_end sub_02002CEC

	thumb_func_start sub_02002D40
sub_02002D40: ; 0x02002D40
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #6
	blt _02002D4E
	bl GF_AssertFail
_02002D4E:
	ldr r0, _02002D78 ; =0x0211188C
	lsl r4, r4, #2
	ldr r0, [r0]
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _02002D62
	bl GF_AssertFail
_02002D62:
	ldr r0, _02002D78 ; =0x0211188C
	mov r1, #0
	ldr r0, [r0]
	add r2, r5, #0
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_02025ED8
	pop {r3, r4, r5, pc}
	nop
_02002D78: .word 0x0211188C
	thumb_func_end sub_02002D40

	thumb_func_start sub_02002D7C
sub_02002D7C: ; 0x02002D7C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #6
	blt _02002D88
	bl GF_AssertFail
_02002D88:
	ldr r0, _02002DB0 ; =0x0211188C
	lsl r4, r4, #2
	ldr r0, [r0]
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _02002D9C
	bl GF_AssertFail
_02002D9C:
	ldr r0, _02002DB0 ; =0x0211188C
	mov r1, #1
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_02025ED8
	pop {r4, pc}
	.align 2, 0
_02002DB0: .word 0x0211188C
	thumb_func_end sub_02002D7C

	thumb_func_start sub_02002DB4
sub_02002DB4: ; 0x02002DB4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	cmp r4, #6
	blt _02002DC0
	bl GF_AssertFail
_02002DC0:
	ldr r0, _02002E74 ; =0x0211188C
	ldr r0, [r0]
	add r1, r0, r4
	mov r0, #0xb4
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _02002DD2
	bl GF_AssertFail
_02002DD2:
	ldr r0, _02002E74 ; =0x0211188C
	ldr r1, [r0]
	add r1, #0xb4
	ldrsb r0, [r1, r4]
	cmp r0, #0
	ble _02002DE2
	sub r0, r0, #1
	strb r0, [r1, r4]
_02002DE2:
	ldr r0, _02002E74 ; =0x0211188C
	ldr r6, [r0]
	mov r0, #0xb4
	add r1, r6, r4
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _02002E70
	lsl r7, r4, #2
	add r0, r6, r7
	add r0, #0x84
	ldr r0, [r0]
	mov ip, r0
	cmp r0, #0
	beq _02002E50
	ldr r2, _02002E78 ; =0x020F56C0
	mov r1, #0
	ldrh r0, [r2, r7]
	add r3, r6, #0
_02002E06:
	cmp r1, r4
	beq _02002E26
	ldrh r5, [r2]
	cmp r5, r0
	bne _02002E26
	add r5, r3, #0
	add r5, #0x9c
	ldr r5, [r5]
	cmp r5, #0
	beq _02002E26
	lsl r0, r1, #2
	add r2, r6, r0
	add r2, #0x84
	mov r0, ip
	str r0, [r2]
	b _02002E30
_02002E26:
	add r1, r1, #1
	add r2, r2, #4
	add r3, r3, #4
	cmp r1, #6
	blo _02002E06
_02002E30:
	cmp r1, #6
	bne _02002E50
	ldr r0, _02002E74 ; =0x0211188C
	lsl r5, r4, #2
	ldr r0, [r0]
	add r0, r0, r5
	add r0, #0x84
	ldr r0, [r0]
	bl sub_0201AB0C
	ldr r0, _02002E74 ; =0x0211188C
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, r5
	add r0, #0x84
	str r1, [r0]
_02002E50:
	ldr r0, _02002E74 ; =0x0211188C
	ldr r0, [r0]
	add r0, r0, r7
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	beq _02002E70
	bl sub_02025EC0
	ldr r0, _02002E74 ; =0x0211188C
	mov r2, #0
	ldr r1, [r0]
	lsl r0, r4, #2
	add r0, r1, r0
	add r0, #0x9c
	str r2, [r0]
_02002E70:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02002E74: .word 0x0211188C
_02002E78: .word 0x020F56C0
	thumb_func_end sub_02002DB4

	thumb_func_start sub_02002E7C
sub_02002E7C: ; 0x02002E7C
	push {r3, lr}
	ldr r2, _02002E94 ; =0x0211188C
	lsl r0, r0, #2
	ldr r2, [r2]
	add r0, r2, r0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0202604C
	ldr r0, _02002E94 ; =0x0211188C
	ldr r0, [r0]
	pop {r3, pc}
	.align 2, 0
_02002E94: .word 0x0211188C
	thumb_func_end sub_02002E7C

	thumb_func_start sub_02002E98
sub_02002E98: ; 0x02002E98
	push {r4, lr}
	add r3, r1, #0
	add r3, #0x20
	ldrb r2, [r3, #1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1f
	bne _02002EC0
	ldrb r2, [r3]
	mov r4, #0xf
	lsl r0, r0, #0x18
	bic r2, r4
	lsr r4, r0, #0x18
	mov r0, #0xf
	and r0, r4
	orr r0, r2
	strb r0, [r3]
	ldrb r2, [r3, #1]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r3, #1]
_02002EC0:
	add r0, r1, #0
	bl sub_02002298
	pop {r4, pc}
	thumb_func_end sub_02002E98

	thumb_func_start sub_02002EC8
sub_02002EC8: ; 0x02002EC8
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _02002EF8 ; =0x0211188C
	add r5, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _02002EE2
	bl GF_AssertFail
_02002EE2:
	ldr r0, _02002EF8 ; =0x0211188C
	add r1, r5, #0
	ldr r0, [r0]
	add r2, r6, #0
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_020261CC
	pop {r4, r5, r6, pc}
	nop
_02002EF8: .word 0x0211188C
	thumb_func_end sub_02002EC8

	thumb_func_start sub_02002EFC
sub_02002EFC: ; 0x02002EFC
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _02002F2C ; =0x0211188C
	add r5, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _02002F16
	bl GF_AssertFail
_02002F16:
	ldr r0, _02002F2C ; =0x0211188C
	add r1, r5, #0
	ldr r0, [r0]
	add r2, r6, #0
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_02026218
	pop {r4, r5, r6, pc}
	nop
_02002F2C: .word 0x0211188C
	thumb_func_end sub_02002EFC

	thumb_func_start sub_02002F30
sub_02002F30: ; 0x02002F30
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _02002F64 ; =0x0211188C
	add r5, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _02002F4A
	bl GF_AssertFail
_02002F4A:
	add r0, r5, #0
	bl sub_02026AA4
	add r1, r0, #0
	ldr r0, _02002F64 ; =0x0211188C
	add r2, r6, #0
	ldr r0, [r0]
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_020261CC
	pop {r4, r5, r6, pc}
	.align 2, 0
_02002F64: .word 0x0211188C
	thumb_func_end sub_02002F30

	thumb_func_start sub_02002F68
sub_02002F68: ; 0x02002F68
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _02002FA8 ; =0x0211188C
	add r6, r1, #0
	ldr r0, [r0]
	add r5, r2, #0
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _02002F82
	bl GF_AssertFail
_02002F82:
	add r0, r5, #0
	bl sub_020263AC
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02026B88
	add r0, r5, #0
	bl sub_02026AA4
	add r1, r0, #0
	ldr r0, _02002FA8 ; =0x0211188C
	ldr r0, [r0]
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_02026270
	pop {r4, r5, r6, pc}
	.align 2, 0
_02002FA8: .word 0x0211188C
	thumb_func_end sub_02002F68

	thumb_func_start sub_02002FAC
sub_02002FAC: ; 0x02002FAC
	mov r2, #0
	cmp r1, #7
	bhi _0200300C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02002FBE: ; jump table
	.short _02002FCE - _02002FBE - 2 ; case 0
	.short _02002FD6 - _02002FBE - 2 ; case 1
	.short _02002FDE - _02002FBE - 2 ; case 2
	.short _02002FE6 - _02002FBE - 2 ; case 3
	.short _02002FEE - _02002FBE - 2 ; case 4
	.short _02002FF6 - _02002FBE - 2 ; case 5
	.short _02002FFE - _02002FBE - 2 ; case 6
	.short _02003006 - _02002FBE - 2 ; case 7
_02002FCE:
	lsl r1, r0, #3
	ldr r0, _02003010 ; =0x020F56D8
	ldrb r2, [r0, r1]
	b _0200300C
_02002FD6:
	lsl r1, r0, #3
	ldr r0, _02003014 ; =0x020F56D9
	ldrb r2, [r0, r1]
	b _0200300C
_02002FDE:
	lsl r1, r0, #3
	ldr r0, _02003018 ; =0x020F56DA
	ldrb r2, [r0, r1]
	b _0200300C
_02002FE6:
	lsl r1, r0, #3
	ldr r0, _0200301C ; =0x020F56DB
	ldrb r2, [r0, r1]
	b _0200300C
_02002FEE:
	lsl r1, r0, #3
	ldr r0, _02003020 ; =0x020F56DC
	ldrb r2, [r0, r1]
	b _0200300C
_02002FF6:
	lsl r1, r0, #3
	ldr r0, _02003024 ; =0x020F56DD
	ldrb r2, [r0, r1]
	b _0200300C
_02002FFE:
	lsl r1, r0, #3
	ldr r0, _02003028 ; =0x020F56DE
	ldrb r2, [r0, r1]
	b _0200300C
_02003006:
	lsl r1, r0, #3
	ldr r0, _0200302C ; =0x020F56DF
	ldrb r2, [r0, r1]
_0200300C:
	add r0, r2, #0
	bx lr
	.align 2, 0
_02003010: .word 0x020F56D8
_02003014: .word 0x020F56D9
_02003018: .word 0x020F56DA
_0200301C: .word 0x020F56DB
_02003020: .word 0x020F56DC
_02003024: .word 0x020F56DD
_02003028: .word 0x020F56DE
_0200302C: .word 0x020F56DF
	thumb_func_end sub_02002FAC

	thumb_func_start sub_02003030
sub_02003030: ; 0x02003030
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	add r3, r1, #0
	str r2, [sp, #4]
	mov r0, #0x10
	mov r1, #7
	add r2, r4, #0
	bl sub_02007938
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02003030

	thumb_func_start sub_0200304C
sub_0200304C: ; 0x0200304C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	add r3, r1, #0
	str r2, [sp, #4]
	mov r0, #0x10
	mov r1, #8
	add r2, r4, #0
	bl sub_02007938
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_0200304C

	thumb_func_start sub_02003068
sub_02003068: ; 0x02003068
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _0200309C ; =0x0211188C
	add r5, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _02003082
	bl GF_AssertFail
_02003082:
	add r0, r5, #0
	bl sub_02026AA4
	add r1, r0, #0
	ldr r0, _0200309C ; =0x0211188C
	add r2, r6, #0
	ldr r0, [r0]
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_020262D4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0200309C: .word 0x0211188C
	thumb_func_end sub_02003068

	thumb_func_start sub_020030A0
sub_020030A0: ; 0x020030A0
	push {r4, lr}
	add r4, r3, #0
	bl sub_02002F30
	cmp r0, r4
	bhs _020030B2
	sub r0, r4, r0
	lsr r0, r0, #1
	pop {r4, pc}
_020030B2:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020030A0

	thumb_func_start sub_020030B8
sub_020030B8: ; 0x020030B8
	push {r3, r4, r5, lr}
	lsl r4, r0, #2
	ldr r0, _020030E4 ; =0x0211188C
	add r5, r1, #0
	ldr r0, [r0]
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _020030D0
	bl GF_AssertFail
_020030D0:
	ldr r0, _020030E4 ; =0x0211188C
	add r1, r5, #0
	ldr r0, [r0]
	add r0, r0, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0202633C
	pop {r3, r4, r5, pc}
	nop
_020030E4: .word 0x0211188C
	thumb_func_end sub_020030B8

	thumb_func_start sub_020030E8
sub_020030E8: ; 0x020030E8
	push {r4, lr}
	mov r1, #0x12
	lsl r1, r1, #4
	bl sub_0201AA8C
	mov r2, #0x12
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020D4994
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020030E8

	thumb_func_start sub_02003104
sub_02003104: ; 0x02003104
	ldr r3, _02003108 ; =sub_0201AB0C
	bx r3
	.align 2, 0
_02003108: .word sub_0201AB0C
	thumb_func_end sub_02003104

	thumb_func_start sub_0200310C
sub_0200310C: ; 0x0200310C
	push {r3, r4}
	mov r4, #0x14
	mul r4, r1
	str r2, [r0, r4]
	add r1, r0, r4
	ldr r0, [sp, #8]
	str r3, [r1, #4]
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0200310C

	thumb_func_start sub_02003120
sub_02003120: ; 0x02003120
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	str r3, [sp, #4]
	add r0, r3, #0
	add r1, r4, #0
	bl sub_0201AA8C
	add r7, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_0201AA8C
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	str r4, [sp]
	bl sub_0200310C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02003120

	thumb_func_start sub_02003150
sub_02003150: ; 0x02003150
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x14
	add r5, r1, #0
	mul r5, r0
	ldr r0, [r4, r5]
	bl sub_0201AB0C
	add r0, r4, r5
	ldr r0, [r0, #4]
	bl sub_0201AB0C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02003150

	thumb_func_start sub_0200316C
sub_0200316C: ; 0x0200316C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, sp, #8
	ldrh r7, [r0, #0x10]
	add r6, r2, #0
	mov r0, #0x14
	mul r6, r0
	str r1, [sp]
	add r0, r1, #0
	ldr r1, [r5, r6]
	lsl r4, r3, #1
	add r1, r1, r4
	add r2, r7, #0
	bl sub_020D47B8
	add r1, r5, r6
	ldr r1, [r1, #4]
	ldr r0, [sp]
	add r1, r1, r4
	add r2, r7, #0
	bl sub_020D47B8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200316C

	thumb_func_start sub_0200319C
sub_0200319C: ; 0x0200319C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, sp, #4
	ldr r4, [sp, #0x1c]
	bl sub_020079F4
	add r6, r0, #0
	bne _020031B6
	bl GF_AssertFail
_020031B6:
	cmp r4, #0
	bne _020031BE
	ldr r0, [sp, #4]
	ldr r4, [r0, #8]
_020031BE:
	add r0, sp, #8
	ldrh r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	mov r1, #0x14
	mul r1, r2
	add r1, r5, r1
	lsl r0, r0, #1
	ldr r1, [r1, #8]
	add r0, r4, r0
	cmp r0, r1
	bls _020031D8
	bl GF_AssertFail
_020031D8:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	add r3, sp, #8
	ldr r2, [r1, #0xc]
	ldrh r1, [r3, #0x1c]
	ldrh r3, [r3, #0x18]
	add r0, r5, #0
	lsl r1, r1, #1
	add r1, r2, r1
	ldr r2, [sp, #0x18]
	bl sub_0200316C
	add r0, r6, #0
	bl sub_0201AB0C
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200319C

	thumb_func_start sub_02003200
sub_02003200: ; 0x02003200
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x18]
	str r4, [sp]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #4]
	add r4, sp, #8
	ldrh r4, [r4, #0x18]
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	bl sub_0200319C
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02003200

	thumb_func_start sub_02003220
sub_02003220: ; 0x02003220
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, sp, #4
	ldr r4, [sp, #0x1c]
	bl sub_02007C48
	add r6, r0, #0
	bne _0200323A
	bl GF_AssertFail
_0200323A:
	cmp r4, #0
	bne _02003242
	ldr r0, [sp, #4]
	ldr r4, [r0, #8]
_02003242:
	add r0, sp, #8
	ldrh r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	mov r1, #0x14
	mul r1, r2
	add r1, r5, r1
	lsl r0, r0, #1
	ldr r1, [r1, #8]
	add r0, r4, r0
	cmp r0, r1
	bls _0200325C
	bl GF_AssertFail
_0200325C:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	add r3, sp, #8
	ldr r2, [r1, #0xc]
	ldrh r1, [r3, #0x1c]
	ldrh r3, [r3, #0x18]
	add r0, r5, #0
	lsl r1, r1, #1
	add r1, r2, r1
	ldr r2, [sp, #0x18]
	bl sub_0200316C
	add r0, r6, #0
	bl sub_0201AB0C
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02003220

	thumb_func_start sub_02003284
sub_02003284: ; 0x02003284
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x18]
	str r4, [sp]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #4]
	add r4, sp, #8
	ldrh r4, [r4, #0x18]
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	bl sub_02003220
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02003284

	thumb_func_start sub_020032A4
sub_020032A4: ; 0x020032A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x14
	add r6, r0, #0
	mul r1, r4
	add r5, r2, #0
	add r1, r6, r1
	add r7, r3, #0
	lsl r0, r5, #1
	ldr r1, [r1, #8]
	add r0, r7, r0
	cmp r0, r1
	bls _020032C2
	bl GF_AssertFail
_020032C2:
	cmp r4, #3
	bhi _020032FA
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020032D2: ; jump table
	.short _020032DA - _020032D2 - 2 ; case 0
	.short _020032E2 - _020032D2 - 2 ; case 1
	.short _020032EA - _020032D2 - 2 ; case 2
	.short _020032F2 - _020032D2 - 2 ; case 3
_020032DA:
	bl sub_02026E84
	add r1, r0, #0
	b _02003300
_020032E2:
	bl sub_02026E94
	add r1, r0, #0
	b _02003300
_020032EA:
	bl sub_02026EA4
	add r1, r0, #0
	b _02003300
_020032F2:
	bl sub_02026EAC
	add r1, r0, #0
	b _02003300
_020032FA:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_02003300:
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	lsl r2, r5, #1
	str r0, [sp]
	add r1, r1, r2
	add r0, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0200316C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020032A4

	thumb_func_start sub_02003318
sub_02003318: ; 0x02003318
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	ldrh r1, [r4, #0x14]
	add r6, r3, #0
	str r1, [sp]
	ldrh r1, [r4, #0x10]
	lsl r4, r2, #1
	ldr r2, [sp]
	lsl r7, r1, #1
	mov r1, #0x14
	mul r6, r1
	mul r1, r0
	ldr r0, [r5, r1]
	str r1, [sp, #4]
	ldr r1, [r5, r6]
	add r0, r0, r4
	add r1, r1, r7
	bl sub_020D47B8
	ldr r0, [sp, #4]
	add r1, r5, r6
	ldr r0, [r5, r0]
	ldr r1, [r1, #4]
	ldr r2, [sp]
	add r0, r0, r4
	add r1, r1, r7
	bl sub_020D47B8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02003318

	thumb_func_start sub_0200335C
sub_0200335C: ; 0x0200335C
	mov r2, #0x14
	mul r2, r1
	ldr r0, [r0, r2]
	bx lr
	thumb_func_end sub_0200335C

	thumb_func_start sub_02003364
sub_02003364: ; 0x02003364
	mov r2, #0x14
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_02003364

	thumb_func_start sub_02003370
sub_02003370: ; 0x02003370
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r3, [sp, #8]
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	mov r6, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	add r7, r1, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r4, r6, #0
	str r0, [sp, #0x40]
	add r0, sp, #0x28
	ldrh r0, [r0, #8]
	str r0, [sp, #0xc]
_02003392:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02003560
	cmp r0, #1
	bne _02003406
	mov r0, #0x46
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	add r1, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x12
	bl sub_02003560
	cmp r0, #0
	bne _02003406
	mov r0, #0x14
	add r6, r4, #0
	mul r6, r0
	add r0, r4, #0
	add r1, r5, r6
	add r2, sp, #0x30
	bl sub_020035B4
	ldr r0, [sp, #0x3c]
	add r1, sp, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x40]
	str r0, [sp, #4]
	add r0, r5, r6
	ldrh r1, [r1, #8]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x38]
	add r0, #0xc
	bl sub_020035F0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02003574
	cmp r4, #4
	blo _020033F4
	mov r2, #1
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #8
	bl sub_020037FC
	b _020033FE
_020033F4:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x10
	bl sub_020037FC
_020033FE:
	ldr r1, [sp, #0xc]
	add r0, sp, #0x28
	strh r1, [r0, #8]
	mov r6, #1
_02003406:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xe
	blo _02003392
	cmp r6, #1
	bne _02003460
	mov r0, #0x46
	lsl r0, r0, #2
	ldrh r2, [r5, r0]
	ldr r1, _0200346C ; =0xFFFF0003
	and r1, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x12
	orr r2, r7
	lsl r2, r2, #0x12
	lsr r2, r2, #0x10
	orr r1, r2
	strh r1, [r5, r0]
	add r1, r0, #2
	ldrh r1, [r5, r1]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1f
	bne _02003460
	add r1, r0, #2
	ldrh r2, [r5, r1]
	mov r1, #1
	lsl r1, r1, #0xe
	orr r2, r1
	add r1, r0, #2
	strh r2, [r5, r1]
	ldrh r2, [r5, r0]
	mov r1, #3
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r5, r0]
	mov r2, #0
	add r0, r0, #4
	strb r2, [r5, r0]
	ldr r0, _02003470 ; =sub_020036B0
	add r1, r5, #0
	sub r2, r2, #2
	bl sub_0200E320
_02003460:
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_0200346C: .word 0xFFFF0003
_02003470: .word sub_020036B0
	thumb_func_end sub_02003370

	thumb_func_start sub_02003474
sub_02003474: ; 0x02003474
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r3, [sp, #8]
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	mov r6, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	add r7, r1, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r4, r6, #0
	str r0, [sp, #0x40]
	add r0, sp, #0x28
	ldrh r0, [r0, #8]
	str r0, [sp, #0xc]
_02003496:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02003560
	cmp r0, #1
	bne _020034F6
	mov r0, #0x14
	add r6, r4, #0
	mul r6, r0
	add r0, r4, #0
	add r1, r5, r6
	add r2, sp, #0x30
	bl sub_020035B4
	ldr r0, [sp, #0x3c]
	add r1, sp, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x40]
	str r0, [sp, #4]
	add r0, r5, r6
	ldrh r1, [r1, #8]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x38]
	add r0, #0xc
	bl sub_020035F0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02003574
	cmp r4, #4
	blo _020034E4
	mov r2, #1
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #8
	bl sub_020037FC
	b _020034EE
_020034E4:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x10
	bl sub_020037FC
_020034EE:
	ldr r1, [sp, #0xc]
	add r0, sp, #0x28
	strh r1, [r0, #8]
	mov r6, #1
_020034F6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xe
	blo _02003496
	cmp r6, #1
	bne _0200354A
	mov r0, #0x46
	lsl r0, r0, #2
	ldrh r2, [r5, r0]
	ldr r1, _02003558 ; =0xFFFF0003
	and r2, r1
	lsl r1, r7, #0x12
	lsr r1, r1, #0x10
	orr r1, r2
	strh r1, [r5, r0]
	add r1, r0, #2
	ldrh r1, [r5, r1]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1f
	bne _0200354A
	add r1, r0, #2
	ldrh r2, [r5, r1]
	mov r1, #1
	lsl r1, r1, #0xe
	orr r2, r1
	add r1, r0, #2
	strh r2, [r5, r1]
	ldrh r2, [r5, r0]
	mov r1, #3
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r5, r0]
	mov r2, #0
	add r0, r0, #4
	strb r2, [r5, r0]
	ldr r0, _0200355C ; =sub_020036B0
	add r1, r5, #0
	sub r2, r2, #2
	bl sub_0200E320
_0200354A:
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02003558: .word 0xFFFF0003
_0200355C: .word sub_020036B0
	thumb_func_end sub_02003474

	thumb_func_start sub_02003560
sub_02003560: ; 0x02003560
	mov r3, #1
	add r2, r3, #0
	lsl r2, r1
	tst r0, r2
	bne _0200356C
	mov r3, #0
_0200356C:
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	bx lr
	.align 2, 0
	thumb_func_end sub_02003560

	thumb_func_start sub_02003574
sub_02003574: ; 0x02003574
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020035AC ; =0x0000011A
	add r4, r1, #0
	ldrh r0, [r5, r0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	bl sub_02003560
	cmp r0, #1
	beq _020035AA
	ldr r3, _020035AC ; =0x0000011A
	ldr r1, _020035B0 ; =0xFFFFC000
	ldrh r2, [r5, r3]
	add r0, r2, #0
	lsl r2, r2, #0x12
	lsr r6, r2, #0x12
	mov r2, #1
	lsl r2, r4
	orr r2, r6
	lsl r2, r2, #0x10
	and r0, r1
	lsr r2, r2, #0x10
	lsr r1, r1, #0x12
	and r1, r2
	orr r0, r1
	strh r0, [r5, r3]
_020035AA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_020035AC: .word 0x0000011A
_020035B0: .word 0xFFFFC000
	thumb_func_end sub_02003574

	thumb_func_start sub_020035B4
sub_020035B4: ; 0x020035B4
	push {r4, r5}
	cmp r0, #4
	ldr r0, [r1, #8]
	bge _020035C0
	lsl r0, r0, #0x13
	b _020035C4
_020035C0:
	lsr r0, r0, #9
	lsl r0, r0, #0x18
_020035C4:
	mov r4, #0
	lsr r0, r0, #0x18
	add r5, r4, #0
	cmp r0, #0
	bls _020035E4
	mov r3, #1
_020035D0:
	add r1, r3, #0
	lsl r1, r5
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	cmp r5, r0
	blo _020035D0
_020035E4:
	ldrh r0, [r2]
	and r0, r4
	strh r0, [r2]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end sub_020035B4

	thumb_func_start sub_020035F0
sub_020035F0: ; 0x020035F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r3, #0
	cmp r2, #0
	bge _02003620
	add r0, r2, #0
	bl sub_020E4A90
	add r0, r0, #2
	ldrh r1, [r5, #6]
	mov r2, #0xf
	lsl r0, r0, #0x10
	bic r1, r2
	lsr r2, r0, #0x10
	mov r0, #0xf
	and r0, r2
	orr r0, r1
	strh r0, [r5, #6]
	ldrh r1, [r5, #2]
	mov r0, #0x3f
	bic r1, r0
	strh r1, [r5, #2]
	b _0200363E
_02003620:
	ldrh r1, [r5, #6]
	mov r0, #0xf
	bic r1, r0
	mov r0, #2
	orr r0, r1
	strh r0, [r5, #6]
	ldrh r0, [r5, #2]
	mov r1, #0x3f
	bic r0, r1
	lsl r1, r2, #0x10
	lsr r2, r1, #0x10
	mov r1, #0x3f
	and r1, r2
	orr r0, r1
	strh r0, [r5, #2]
_0200363E:
	strh r6, [r5]
	ldrh r1, [r5, #2]
	ldr r0, _020036A0 ; =0xFFFFF83F
	add r3, sp, #0
	and r1, r0
	lsl r0, r4, #0x1b
	lsr r0, r0, #0x15
	orr r0, r1
	strh r0, [r5, #2]
	ldrh r1, [r5, #2]
	ldr r0, _020036A4 ; =0xFFFF07FF
	add r2, r1, #0
	ldrb r1, [r3, #0x10]
	and r2, r0
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r5, #2]
	ldrh r0, [r5, #4]
	ldr r2, _020036A8 ; =0xFFFF8000
	ldrh r6, [r3, #0x14]
	lsr r3, r2, #0x11
	and r0, r2
	and r3, r6
	orr r0, r3
	strh r0, [r5, #4]
	ldrh r3, [r5, #6]
	ldr r0, _020036AC ; =0xFFFFFC0F
	and r0, r3
	ldrh r3, [r5, #2]
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x1a
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x16
	orr r0, r3
	strh r0, [r5, #6]
	cmp r4, r1
	ldrh r1, [r5, #4]
	bhs _02003694
	sub r0, r2, #1
	and r0, r1
	strh r0, [r5, #4]
	pop {r4, r5, r6, pc}
_02003694:
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	strh r0, [r5, #4]
	pop {r4, r5, r6, pc}
	nop
_020036A0: .word 0xFFFFF83F
_020036A4: .word 0xFFFF07FF
_020036A8: .word 0xFFFF8000
_020036AC: .word 0xFFFFFC0F
	thumb_func_end sub_020035F0

	thumb_func_start sub_020036B0
sub_020036B0: ; 0x020036B0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0x47
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	add r5, r0, #0
	cmp r2, #1
	bne _020036F0
	mov r2, #0
	strb r2, [r4, r1]
	sub r2, r1, #2
	ldrh r3, [r4, r2]
	ldr r2, _02003740 ; =0xFFFFC000
	add r5, r3, #0
	and r5, r2
	sub r3, r1, #2
	strh r5, [r4, r3]
	sub r3, r1, #4
	ldrh r5, [r4, r3]
	ldr r3, _02003744 ; =0xFFFF0003
	sub r2, r2, #1
	and r5, r3
	sub r3, r1, #4
	strh r5, [r4, r3]
	sub r3, r1, #2
	ldrh r3, [r4, r3]
	sub r1, r1, #2
	and r2, r3
	strh r2, [r4, r1]
	bl sub_0200E390
	pop {r4, r5, r6, pc}
_020036F0:
	sub r0, r1, #4
	ldrh r2, [r4, r0]
	lsl r0, r2, #0x1e
	lsr r0, r0, #0x1e
	cmp r0, #1
	bne _0200373C
	sub r0, r1, #2
	ldrh r0, [r4, r0]
	ldr r3, _02003740 ; =0xFFFFC000
	lsl r2, r2, #0x10
	lsr r6, r2, #0x12
	lsr r2, r3, #0x12
	and r0, r3
	and r2, r6
	orr r2, r0
	sub r0, r1, #2
	strh r2, [r4, r0]
	add r0, r4, #0
	bl sub_02003760
	add r0, r4, #0
	bl sub_02003780
	mov r1, #0x46
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x12
	bne _0200373C
	add r0, r1, #2
	ldrh r2, [r4, r0]
	ldr r0, _02003748 ; =0xFFFFBFFF
	and r2, r0
	add r0, r1, #2
	strh r2, [r4, r0]
	add r0, r5, #0
	bl sub_0200E390
_0200373C:
	pop {r4, r5, r6, pc}
	nop
_02003740: .word 0xFFFFC000
_02003744: .word 0xFFFF0003
_02003748: .word 0xFFFFBFFF
	thumb_func_end sub_020036B0

	thumb_func_start sub_0200374C
sub_0200374C: ; 0x0200374C
	mov r1, #0x46
	lsl r1, r1, #2
	ldrh r2, [r0, r1]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x12
	beq _0200375E
	mov r2, #1
	add r1, r1, #4
	strb r2, [r0, r1]
_0200375E:
	bx lr
	thumb_func_end sub_0200374C

	thumb_func_start sub_02003760
sub_02003760: ; 0x02003760
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0x10
_02003768:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020037A0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02003768
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02003760

	thumb_func_start sub_02003780
sub_02003780: ; 0x02003780
	push {r4, r5, r6, lr}
	mov r4, #4
	add r6, r4, #0
	add r5, r0, #0
	add r6, #0xfc
_0200378A:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020037A0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xe
	blo _0200378A
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02003780

	thumb_func_start sub_020037A0
sub_020037A0: ; 0x020037A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x12
	bl sub_02003560
	cmp r0, #0
	beq _020037F4
	mov r0, #0x14
	mul r0, r4
	add r2, r5, r0
	ldrh r0, [r2, #0x12]
	ldrh r3, [r2, #0xe]
	lsl r1, r0, #0x16
	lsl r3, r3, #0x1a
	lsr r1, r1, #0x1a
	lsr r3, r3, #0x1a
	cmp r1, r3
	bhs _020037E4
	ldr r3, _020037F8 ; =0xFFFFFC0F
	and r3, r0
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x16
	orr r0, r3
	strh r0, [r2, #0x12]
	pop {r4, r5, r6, pc}
_020037E4:
	ldr r1, _020037F8 ; =0xFFFFFC0F
	and r0, r1
	strh r0, [r2, #0x12]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020037FC
_020037F4:
	pop {r4, r5, r6, pc}
	nop
_020037F8: .word 0xFFFFFC0F
	thumb_func_end sub_020037A0

	thumb_func_start sub_020037FC
sub_020037FC: ; 0x020037FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0x14
	mul r1, r0
	ldr r0, [sp]
	mov r6, #0
	add r5, r0, r1
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0xc
	add r7, r2, #0
	add r4, r6, #0
	str r0, [sp, #8]
_0200381C:
	ldrh r0, [r5, #0xc]
	lsl r1, r6, #0x10
	lsr r1, r1, #0x10
	bl sub_02003560
	cmp r0, #0
	beq _0200383C
	ldr r0, [r5]
	lsl r1, r4, #1
	ldr r2, [r5, #4]
	add r0, r0, r1
	add r1, r2, r1
	ldr r2, [sp, #8]
	add r3, r7, #0
	bl sub_02003858
_0200383C:
	add r6, r6, #1
	add r4, r4, r7
	cmp r6, #0x10
	blo _0200381C
	ldr r1, [sp, #4]
	add r5, #0xc
	lsl r1, r1, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	add r2, r5, #0
	bl sub_020038E4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020037FC

	thumb_func_start sub_02003858
sub_02003858: ; 0x02003858
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	mov r0, #0
	add r6, r1, #0
	mov ip, r0
	str r2, [sp]
	mov lr, r3
	add r0, r3, #0
	beq _020038E0
_0200386C:
	ldr r0, [sp, #4]
	mov r1, #0x1f
	ldrh r0, [r0]
	asr r2, r0, #5
	add r5, r2, #0
	and r5, r1
	ldr r1, [sp]
	asr r4, r0, #0xa
	ldrh r1, [r1, #4]
	lsl r1, r1, #0x11
	lsr r3, r1, #0x11
	ldr r1, [sp]
	ldrh r1, [r1, #2]
	lsl r1, r1, #0x15
	lsr r2, r1, #0x1b
	mov r1, #0x1f
	and r1, r4
	mov r4, #0x1f
	and r0, r4
	and r4, r3
	sub r4, r4, r0
	mul r4, r2
	asr r4, r4, #4
	add r0, r0, r4
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	asr r4, r3, #0xa
	mov r0, #0x1f
	and r0, r4
	sub r0, r0, r1
	mul r0, r2
	asr r0, r0, #4
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	asr r3, r3, #5
	mov r1, #0x1f
	and r1, r3
	sub r1, r1, r5
	mul r1, r2
	asr r1, r1, #4
	add r1, r5, r1
	lsl r1, r1, #0x18
	lsl r0, r0, #0xa
	lsr r1, r1, #0x13
	orr r0, r1
	orr r0, r7
	strh r0, [r6]
	ldr r0, [sp, #4]
	add r6, r6, #2
	add r0, r0, #2
	str r0, [sp, #4]
	mov r0, ip
	add r1, r0, #1
	mov r0, lr
	mov ip, r1
	cmp r1, r0
	blo _0200386C
_020038E0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02003858

	thumb_func_start sub_020038E4
sub_020038E4: ; 0x020038E4
	push {r4, r5}
	ldrh r4, [r2, #2]
	lsl r3, r4, #0x10
	lsl r4, r4, #0x15
	lsr r3, r3, #0x1b
	lsr r4, r4, #0x1b
	cmp r4, r3
	bne _0200391E
	mov r3, #0x46
	lsl r3, r3, #2
	ldrh r4, [r0, r3]
	mov r2, #1
	lsl r2, r1
	lsl r1, r4, #0x10
	lsr r5, r1, #0x12
	add r1, r5, #0
	tst r1, r2
	beq _0200397E
	eor r2, r5
	lsl r2, r2, #0x10
	ldr r1, _02003984 ; =0xFFFF0003
	lsr r2, r2, #0x10
	lsl r2, r2, #0x12
	and r1, r4
	lsr r2, r2, #0x10
	orr r1, r2
	strh r1, [r0, r3]
	pop {r4, r5}
	bx lr
_0200391E:
	ldrh r0, [r2, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	bne _02003954
	lsl r0, r4, #0x10
	asr r1, r0, #0x10
	ldrh r0, [r2, #6]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r3
	ble _0200393E
	lsl r0, r3, #0x10
	asr r4, r0, #0x10
_0200393E:
	ldrh r1, [r2, #2]
	ldr r0, _02003988 ; =0xFFFFF83F
	and r1, r0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x15
	orr r0, r1
	strh r0, [r2, #2]
	pop {r4, r5}
	bx lr
_02003954:
	lsl r0, r4, #0x10
	asr r1, r0, #0x10
	ldrh r0, [r2, #6]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r3
	bge _0200396C
	lsl r0, r3, #0x10
	asr r4, r0, #0x10
_0200396C:
	ldrh r1, [r2, #2]
	ldr r0, _02003988 ; =0xFFFFF83F
	and r1, r0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x15
	orr r0, r1
	strh r0, [r2, #2]
_0200397E:
	pop {r4, r5}
	bx lr
	nop
_02003984: .word 0xFFFF0003
_02003988: .word 0xFFFFF83F
	thumb_func_end sub_020038E4

	thumb_func_start sub_0200398C
sub_0200398C: ; 0x0200398C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02003B3C ; =0x0000011A
	ldrh r1, [r6, r0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1f
	bne _020039A8
	sub r0, r0, #2
	ldrh r0, [r6, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r0, #1
	beq _020039A8
	b _02003B3A
_020039A8:
	mov r7, #2
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #0xc
_020039B0:
	ldr r0, _02003B3C ; =0x0000011A
	ldrh r1, [r6, r0]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	bne _020039D0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020039DC
	lsl r0, r1, #0x12
	lsl r1, r5, #0x10
	lsr r0, r0, #0x12
	lsr r1, r1, #0x10
	bl sub_02003560
	cmp r0, #0
	beq _020039DC
_020039D0:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	bl DC_FlushRange
	cmp r5, #0xd
	bls _020039DE
_020039DC:
	b _02003B04
_020039DE:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020039EA: ; jump table
	.short _02003A06 - _020039EA - 2 ; case 0
	.short _02003A12 - _020039EA - 2 ; case 1
	.short _02003A1E - _020039EA - 2 ; case 2
	.short _02003A2A - _020039EA - 2 ; case 3
	.short _02003A36 - _020039EA - 2 ; case 4
	.short _02003A4A - _020039EA - 2 ; case 5
	.short _02003A5E - _020039EA - 2 ; case 6
	.short _02003A74 - _020039EA - 2 ; case 7
	.short _02003A8A - _020039EA - 2 ; case 8
	.short _02003A9E - _020039EA - 2 ; case 9
	.short _02003AB2 - _020039EA - 2 ; case 10
	.short _02003AC8 - _020039EA - 2 ; case 11
	.short _02003ADE - _020039EA - 2 ; case 12
	.short _02003AF2 - _020039EA - 2 ; case 13
_02003A06:
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020CFC6C
	b _02003B04
_02003A12:
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020CFCC0
	b _02003B04
_02003A1E:
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020CFD18
	b _02003B04
_02003A2A:
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020CFD70
	b _02003B04
_02003A36:
	bl sub_020D0524
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020D05C4
	bl sub_020D0634
	b _02003B04
_02003A4A:
	bl sub_020D0524
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	add r1, r7, #0
	bl sub_020D05C4
	bl sub_020D0634
	b _02003B04
_02003A5E:
	bl sub_020D0524
	mov r1, #1
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020D05C4
	bl sub_020D0634
	b _02003B04
_02003A74:
	bl sub_020D0524
	mov r1, #6
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0xc
	bl sub_020D05C4
	bl sub_020D0634
	b _02003B04
_02003A8A:
	bl sub_020D0774
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020D078C
	bl sub_020D07F0
	b _02003B04
_02003A9E:
	bl sub_020D0774
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	add r1, r7, #0
	bl sub_020D078C
	bl sub_020D07F0
	b _02003B04
_02003AB2:
	bl sub_020D0774
	mov r1, #1
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020D078C
	bl sub_020D07F0
	b _02003B04
_02003AC8:
	bl sub_020D0774
	mov r1, #6
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0xc
	bl sub_020D078C
	bl sub_020D07F0
	b _02003B04
_02003ADE:
	bl sub_020D067C
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020D06C4
	bl sub_020D0730
	b _02003B04
_02003AF2:
	bl sub_020D0830
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020D0848
	bl sub_020D08AC
_02003B04:
	add r5, r5, #1
	add r4, #0x14
	cmp r5, #0xe
	bge _02003B0E
	b _020039B0
_02003B0E:
	ldr r3, _02003B3C ; =0x0000011A
	ldr r1, _02003B40 ; =0xFFFFC000
	sub r2, r3, #2
	ldrh r2, [r6, r2]
	ldrh r0, [r6, r3]
	lsl r2, r2, #0x10
	and r0, r1
	lsr r2, r2, #0x12
	lsr r1, r1, #0x12
	and r1, r2
	orr r0, r1
	strh r0, [r6, r3]
	ldrh r0, [r6, r3]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	bne _02003B3A
	sub r0, r3, #2
	ldrh r1, [r6, r0]
	mov r0, #3
	bic r1, r0
	sub r0, r3, #2
	strh r1, [r6, r0]
_02003B3A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02003B3C: .word 0x0000011A
_02003B40: .word 0xFFFFC000
	thumb_func_end sub_0200398C

	thumb_func_start sub_02003B44
sub_02003B44: ; 0x02003B44
	mov r1, #0x46
	lsl r1, r1, #2
	ldrh r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x12
	bx lr
	thumb_func_end sub_02003B44

	thumb_func_start sub_02003B50
sub_02003B50: ; 0x02003B50
	push {r3, r4}
	ldr r3, _02003B6C ; =0x0000011A
	lsl r1, r1, #0x10
	ldrh r4, [r0, r3]
	ldr r2, _02003B70 ; =0xFFFF7FFF
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	and r2, r4
	lsr r1, r1, #0x10
	orr r1, r2
	strh r1, [r0, r3]
	pop {r3, r4}
	bx lr
	nop
_02003B6C: .word 0x0000011A
_02003B70: .word 0xFFFF7FFF
	thumb_func_end sub_02003B50

	thumb_func_start sub_02003B74
sub_02003B74: ; 0x02003B74
	push {r3, r4}
	mov r2, #0x46
	lsl r2, r2, #2
	ldrh r3, [r0, r2]
	mov r4, #3
	bic r3, r4
	mov r4, #1
	and r1, r4
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	mov r1, #3
	and r1, r4
	orr r1, r3
	strh r1, [r0, r2]
	ldrh r3, [r0, r2]
	ldr r1, _02003BA0 ; =0xFFFF0003
	and r3, r1
	ldr r1, _02003BA4 ; =0x0000FFFC
	orr r1, r3
	strh r1, [r0, r2]
	pop {r3, r4}
	bx lr
	.align 2, 0
_02003BA0: .word 0xFFFF0003
_02003BA4: .word 0x0000FFFC
	thumb_func_end sub_02003B74

	thumb_func_start sub_02003BA8
sub_02003BA8: ; 0x02003BA8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #2
	add r4, r0, #0
	add r0, r6, #0
	lsl r1, r1, #8
	bl sub_0201AA8C
	mov r2, #2
	mov r1, #0
	lsl r2, r2, #8
	add r5, r0, #0
	bl sub_020E5B44
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #8
	bl DC_FlushRange
	mov r2, #1
	add r0, r4, #0
	tst r0, r2
	beq _02003BE0
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #9
	bl sub_020CFC6C
_02003BE0:
	mov r2, #2
	add r0, r4, #0
	tst r0, r2
	beq _02003BF2
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020CFCC0
_02003BF2:
	mov r2, #4
	add r0, r4, #0
	tst r0, r2
	beq _02003C04
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #7
	bl sub_020CFD18
_02003C04:
	mov r2, #8
	add r0, r4, #0
	tst r0, r2
	beq _02003C16
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #6
	bl sub_020CFD70
_02003C16:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0201AB80
	mov r1, #2
	add r0, r6, #0
	lsl r1, r1, #0xc
	bl sub_0201AA8C
	mov r2, #2
	mov r1, #0
	lsl r2, r2, #0xc
	add r5, r0, #0
	bl sub_020E5B44
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl DC_FlushRange
	mov r0, #0x10
	tst r0, r4
	beq _02003C58
	bl sub_020D0524
	mov r2, #2
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #0xc
	bl sub_020D05C4
	bl sub_020D0634
_02003C58:
	mov r0, #0x20
	tst r0, r4
	beq _02003C72
	bl sub_020D0524
	mov r1, #2
	lsl r1, r1, #0xc
	add r0, r5, #0
	add r2, r1, #0
	bl sub_020D05C4
	bl sub_020D0634
_02003C72:
	mov r0, #0x40
	tst r0, r4
	beq _02003C8C
	bl sub_020D0524
	mov r1, #1
	lsl r1, r1, #0xe
	add r0, r5, #0
	lsr r2, r1, #1
	bl sub_020D05C4
	bl sub_020D0634
_02003C8C:
	mov r0, #0x80
	tst r0, r4
	beq _02003CA8
	bl sub_020D0524
	mov r1, #6
	mov r2, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl sub_020D05C4
	bl sub_020D0634
_02003CA8:
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r4
	beq _02003CC4
	bl sub_020D0774
	mov r2, #2
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #0xc
	bl sub_020D078C
	bl sub_020D07F0
_02003CC4:
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r4
	beq _02003CE0
	bl sub_020D0774
	mov r1, #2
	lsl r1, r1, #0xc
	add r0, r5, #0
	add r2, r1, #0
	bl sub_020D078C
	bl sub_020D07F0
_02003CE0:
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r4
	beq _02003CFC
	bl sub_020D0774
	mov r1, #1
	lsl r1, r1, #0xe
	add r0, r5, #0
	lsr r2, r1, #1
	bl sub_020D078C
	bl sub_020D07F0
_02003CFC:
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r4
	beq _02003D1A
	bl sub_020D0774
	mov r1, #6
	mov r2, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl sub_020D078C
	bl sub_020D07F0
_02003D1A:
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r4
	beq _02003D36
	bl sub_020D067C
	mov r2, #2
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #0xc
	bl sub_020D06C4
	bl sub_020D0730
_02003D36:
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r4
	beq _02003D52
	bl sub_020D0830
	mov r2, #2
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #0xc
	bl sub_020D0848
	bl sub_020D08AC
_02003D52:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0201AB80
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02003BA8

	thumb_func_start sub_02003D5C
sub_02003D5C: ; 0x02003D5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r3, [sp]
	mov r0, #0x14
	add r4, r1, #0
	mul r4, r0
	add r0, sp, #0x10
	ldrh r0, [r0, #0x14]
	add r7, r2, #0
	ldr r5, [sp, #0x20]
	str r0, [sp, #4]
	lsl r1, r0, #1
	add r0, r6, r4
	ldr r0, [r0, #8]
	cmp r1, r0
	bls _02003D82
	bl GF_AssertFail
_02003D82:
	sub r0, r7, #1
	cmp r0, #1
	bhi _02003D9A
	ldr r2, [r6, r4]
	lsl r1, r5, #1
	add r1, r2, r1
	ldr r2, [sp, #4]
	ldr r0, [sp]
	sub r2, r2, r5
	lsl r2, r2, #1
	bl sub_020D4790
_02003D9A:
	cmp r7, #0
	beq _02003DA2
	cmp r7, #2
	bne _02003DB6
_02003DA2:
	add r1, r6, r4
	ldr r2, [r1, #4]
	lsl r1, r5, #1
	add r1, r2, r1
	ldr r2, [sp, #4]
	ldr r0, [sp]
	sub r2, r2, r5
	lsl r2, r2, #1
	bl sub_020D4790
_02003DB6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02003D5C

	thumb_func_start sub_02003DBC
sub_02003DBC: ; 0x02003DBC
	push {r3, lr}
	cmp r2, #1
	bne _02003DCE
	mov r2, #0x14
	mul r2, r1
	ldr r1, [r0, r2]
	lsl r0, r3, #1
	ldrh r0, [r1, r0]
	pop {r3, pc}
_02003DCE:
	cmp r2, #0
	bne _02003DE0
	mov r2, #0x14
	mul r2, r1
	add r0, r0, r2
	ldr r1, [r0, #4]
	lsl r0, r3, #1
	ldrh r0, [r1, r0]
	pop {r3, pc}
_02003DE0:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02003DBC

	thumb_func_start sub_02003DE8
sub_02003DE8: ; 0x02003DE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	str r1, [sp, #4]
	add r7, r2, #0
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	mov ip, r1
	lsl r1, r0, #0x16
	lsl r0, r0, #0x11
	lsr r1, r1, #0x1b
	lsr r0, r0, #0x1b
	mov r2, #0
	mov lr, r1
	str r0, [sp, #8]
	cmp r7, #0
	bls _02003E56
_02003E0E:
	ldr r0, [sp]
	lsl r6, r2, #1
	ldrh r4, [r0, r6]
	lsl r0, r4, #0x1b
	lsr r1, r0, #0x1b
	lsl r0, r4, #0x16
	lsl r4, r4, #0x11
	lsr r5, r4, #0x1b
	ldr r4, [sp, #8]
	lsr r0, r0, #0x1b
	sub r4, r4, r5
	mul r4, r3
	asr r4, r4, #4
	add r4, r5, r4
	lsl r5, r4, #0xa
	mov r4, ip
	sub r4, r4, r1
	mul r4, r3
	asr r4, r4, #4
	add r1, r1, r4
	mov r4, lr
	sub r4, r4, r0
	mul r4, r3
	asr r4, r4, #4
	add r0, r0, r4
	lsl r0, r0, #5
	orr r0, r1
	add r1, r5, #0
	orr r1, r0
	ldr r0, [sp, #4]
	strh r1, [r0, r6]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, r7
	blo _02003E0E
_02003E56:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02003DE8

	thumb_func_start sub_02003E5C
sub_02003E5C: ; 0x02003E5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r5, r0, #0
	mov r2, #0x14
	add r6, r1, #0
	mul r6, r2
	str r3, [sp, #4]
	ldr r1, [r5, r6]
	mov r0, #0
	add r4, r5, r6
	cmp r1, #0
	beq _02003E7E
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02003E7E
	mov r0, #1
_02003E7E:
	cmp r0, #0
	bne _02003E86
	bl GF_AssertFail
_02003E86:
	add r3, sp, #0x10
	ldrh r0, [r3, #0x14]
	add r2, r5, r6
	lsl r1, r7, #1
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [r2, #4]
	add r0, r0, r1
	add r1, r2, r1
	ldrb r3, [r3, #0x10]
	ldr r2, [sp, #4]
	bl sub_02003DE8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02003E5C

	thumb_func_start sub_02003EA4
sub_02003EA4: ; 0x02003EA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r3, [sp, #8]
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #0x20]
	add r5, r2, #0
	mov r1, #0x14
	add r2, r7, #0
	str r0, [sp, #0x20]
	mul r2, r1
	mov r4, #0
	ldr r1, [r6, r2]
	add r0, r4, #0
	cmp r1, #0
	beq _02003ECE
	add r1, r6, r2
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _02003ECE
	mov r0, #1
_02003ECE:
	cmp r0, #0
	bne _02003ED6
	bl GF_AssertFail
_02003ED6:
	cmp r5, #0
	beq _02003F00
_02003EDA:
	mov r0, #1
	tst r0, r5
	beq _02003EF6
	ldr r0, [sp, #8]
	lsl r2, r4, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	str r0, [sp, #4]
	add r0, r6, #0
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_02003E5C
_02003EF6:
	lsl r0, r5, #0xf
	lsr r5, r0, #0x10
	add r4, #0x10
	cmp r5, #0
	bne _02003EDA
_02003F00:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02003EA4

	thumb_func_start sub_02003F04
sub_02003F04: ; 0x02003F04
	push {r4, r5, r6, r7}
	mov r7, #0
	cmp r1, #0
	ble _02003F46
	mov r2, #0x97
_02003F0E:
	ldrh r6, [r0]
	mov r3, #0x1f
	add r7, r7, #1
	asr r4, r6, #0xa
	and r4, r3
	add r5, r4, #0
	mov r3, #0x1d
	mul r5, r3
	mov r3, #0x1f
	and r3, r6
	mov r4, #0x4c
	mul r4, r3
	asr r6, r6, #5
	mov r3, #0x1f
	and r3, r6
	add r6, r3, #0
	mul r6, r2
	add r3, r4, r6
	add r3, r5, r3
	asr r5, r3, #8
	lsl r4, r5, #0xa
	lsl r3, r5, #5
	orr r3, r4
	orr r3, r5
	strh r3, [r0]
	add r0, r0, #2
	cmp r7, r1
	blt _02003F0E
_02003F46:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end sub_02003F04

	thumb_func_start sub_02003F4C
sub_02003F4C: ; 0x02003F4C
	push {r3, r4, r5, r6, r7, lr}
	mov lr, r1
	mov ip, r2
	add r7, r3, #0
	mov r4, #0
	cmp r1, #0
	ble _02003FC4
	ldr r6, [sp, #0x18]
_02003F5C:
	ldrh r3, [r0]
	mov r1, #0x1f
	add r2, r3, #0
	asr r5, r3, #0xa
	and r2, r1
	and r5, r1
	mov r1, #0x1d
	mul r1, r5
	mov r5, #0x4c
	mul r5, r2
	asr r3, r3, #5
	mov r2, #0x1f
	and r3, r2
	mov r2, #0x97
	mul r2, r3
	add r2, r5, r2
	add r1, r1, r2
	asr r3, r1, #8
	mov r1, ip
	add r2, r1, #0
	mul r2, r3
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	asr r2, r1, #8
	add r1, r7, #0
	mul r1, r3
	mul r3, r6
	lsl r1, r1, #0x10
	lsl r3, r3, #0x10
	lsr r1, r1, #0x10
	lsr r3, r3, #0x10
	asr r1, r1, #8
	asr r3, r3, #8
	cmp r2, #0x1f
	ble _02003FA4
	mov r2, #0x1f
_02003FA4:
	cmp r1, #0x1f
	ble _02003FAA
	mov r1, #0x1f
_02003FAA:
	cmp r3, #0x1f
	ble _02003FB0
	mov r3, #0x1f
_02003FB0:
	lsl r3, r3, #0xa
	lsl r1, r1, #5
	orr r1, r3
	orr r1, r2
	strh r1, [r0]
	add r4, r4, #1
	mov r1, lr
	add r0, r0, #2
	cmp r4, r1
	blt _02003F5C
_02003FC4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02003F4C

	thumb_func_start sub_02003FC8
sub_02003FC8: ; 0x02003FC8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, sp, #4
	bl sub_020079F4
	add r4, r0, #0
	bne _02003FE0
	bl GF_AssertFail
_02003FE0:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _02003FEC
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0x1c]
_02003FEC:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x28]
	ldr r0, [r0, #0xc]
	mov r1, #0x10
	bl sub_02003F4C
	ldr r0, [sp, #0x1c]
	add r3, sp, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	ldrh r3, [r3, #0x18]
	ldr r1, [r1, #0xc]
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200316C
	add r0, r4, #0
	bl sub_0201AB0C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02003FC8

	thumb_func_start sub_02004020
sub_02004020: ; 0x02004020
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	add r7, r2, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	add r6, r3, #0
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0xc]
_0200403C:
	ldr r0, [sp]
	mov r1, #0x1f
	ldrh r0, [r0]
	asr r2, r0, #5
	add r4, r0, #0
	add r5, r2, #0
	and r4, r1
	and r5, r1
	asr r1, r0, #0xa
	mov r0, #0x1f
	and r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	sub r0, r0, r4
	mul r0, r6
	bl sub_020F2998
	add r4, r4, r0
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	sub r0, r0, r5
	mul r0, r6
	bl sub_020F2998
	add r5, r5, r0
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	mul r0, r6
	add r1, r7, #0
	bl sub_020F2998
	ldr r1, [sp, #8]
	add r0, r1, r0
	lsl r1, r0, #0xa
	lsl r0, r5, #5
	orr r0, r1
	add r1, r4, #0
	orr r1, r0
	ldr r0, [sp, #4]
	strh r1, [r0]
	ldr r0, [sp]
	add r0, r0, #2
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0x10
	blt _0200403C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02004020

	thumb_func_start sub_020040AC
sub_020040AC: ; 0x020040AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r2, #0
	mov r2, #0x46
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	lsl r2, r2, #2
	str r1, [sp, #0xc]
	str r0, [sp, #0x38]
	ldrh r1, [r5, r2]
	mov r0, #3
	str r3, [sp, #0x10]
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r5, r2]
	add r0, r2, #2
	ldr r1, [sp, #0xc]
	ldrh r0, [r5, r0]
	ldr r3, _02004170 ; =0xFFFFC000
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	lsr r1, r3, #0x12
	and r0, r3
	and r1, r4
	orr r1, r0
	add r0, r2, #2
	strh r1, [r5, r0]
	add r0, sp, #0x28
	ldrh r2, [r0, #0x14]
	mov r1, #0x1f
	add r0, r2, #0
	and r0, r1
	str r0, [sp, #0x1c]
	asr r0, r2, #5
	and r0, r1
	str r0, [sp, #0x18]
	asr r0, r2, #0xa
	and r0, r1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x20]
_02004100:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0200415E
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x20]
	asr r1, r0
	mov r0, #1
	tst r1, r0
	beq _0200415E
	mov r6, #0
	strh r7, [r5, #0xc]
	lsl r0, r0, #9
	str r0, [r5, #8]
	add r4, r6, #0
_0200411C:
	add r1, r7, #0
	asr r1, r6
	mov r0, #1
	tst r0, r1
	beq _02004146
	ldr r0, [sp, #0x1c]
	lsl r1, r4, #1
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r2, [r5, #4]
	add r0, r0, r1
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	bl sub_02004020
	b _02004156
_02004146:
	ldr r0, [r5]
	lsl r1, r4, #1
	ldr r2, [r5, #4]
	add r0, r0, r1
	add r1, r2, r1
	mov r2, #0x20
	bl sub_020D48B4
_02004156:
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #0x10
	blt _0200411C
_0200415E:
	ldr r0, [sp, #0x20]
	add r5, #0x14
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #0xe
	blt _02004100
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02004170: .word 0xFFFFC000
	thumb_func_end sub_020040AC

	thumb_func_start sub_02004174
sub_02004174: ; 0x02004174
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_020043F8
	add r4, r0, #0
	bl sub_020C78D0
	add r0, r4, #0
	bl sub_02004858
	add r0, r4, #0
	bl sub_020048C8
	add r0, r4, #0
	ldr r1, _020041F8 ; =0x000BEAE0
	add r0, #0x98
	bl sub_020C9A0C
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r2, r4, #0
	add r2, #0x94
	ldr r1, _020041FC ; =0x0210E980
	ldr r2, [r2]
	add r0, r4, #0
	mov r3, #0
	bl sub_020C9300
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	bl sub_020CA848
	add r0, r4, #0
	add r0, #0x94
	bl sub_0200498C
	add r0, r4, #0
	bl sub_0200487C
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	bl sub_020C9CD8
	ldr r1, _02004200 ; =0x0211194C
	str r0, [r1, #8]
	bl sub_0200472C
	add r0, r4, #0
	bl sub_02004898
	ldr r0, _02004200 ; =0x0211194C
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, _02004204 ; =0x000BEC3C
	str r5, [r4, r0]
	ldrh r0, [r6]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	bl sub_0200597C
	pop {r4, r5, r6, pc}
	nop
_020041F8: .word 0x000BEAE0
_020041FC: .word 0x0210E980
_02004200: .word 0x0211194C
_02004204: .word 0x000BEC3C
	thumb_func_end sub_02004174

	thumb_func_start sub_02004208
sub_02004208: ; 0x02004208
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	bl sub_020043F8
	add r4, r0, #0
	mov r0, #0x12
	bl sub_02004400
	mov r0, #0x20
	bl sub_02004400
	bl sub_020043CC
	cmp r0, #0
	bne _02004236
	ldr r0, _020042E4 ; =0x000BEBF0
	ldr r1, [r4, r0]
	cmp r1, #0
	ble _02004232
	sub r1, r1, #1
	str r1, [r4, r0]
_02004232:
	bl sub_02004300
_02004236:
	bl sub_020C79B4
	ldr r0, _020042E8 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r1
	beq _02004264
	ldr r6, _020042EC ; =0x000BEB94
	mov r5, #0
	add r7, sp, #8
_0200424C:
	add r0, r4, r6
	add r1, r5, #0
	add r2, r7, #0
	bl sub_020C83C0
	add r0, r5, #0
	add r1, sp, #0x24
	bl sub_020C7A94
	add r5, r5, #1
	cmp r5, #0x10
	blt _0200424C
_02004264:
	bl sub_02006C8C
	mov r6, #0
	add r5, r4, #0
	add r7, r4, #0
_0200426E:
	ldr r1, _020042F0 ; =0x000BEC74
	add r0, r4, r6
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _020042AA
	ldr r1, _020042F0 ; =0x000BEC74
	ldrb r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _020042F0 ; =0x000BEC74
	strb r2, [r0, r1]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _020042AA
	add r0, r1, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	ldr r2, _020042F4 ; =0x000BEC58
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r1, #0
	sub r1, r1, #4
	ldr r3, _020042F8 ; =0x000BEC60
	sub r0, #0x24
	ldrh r1, [r7, r1]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_020063A4
_020042AA:
	add r6, r6, #1
	add r5, r5, #4
	add r7, r7, #2
	cmp r6, #2
	blt _0200426E
	ldr r0, _020042FC ; =0x000BEC80
	ldr r0, [r4, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _020042DA
	bl sub_02004924
	cmp r0, #0
	bne _020042DA
	ldr r1, _020042FC ; =0x000BEC80
	mov r0, #1
	ldr r2, [r4, r1]
	add r3, r2, #0
	and r3, r0
	lsr r0, r2, #1
	add r0, r0, #1
	lsl r0, r0, #1
	orr r0, r3
	str r0, [r4, r1]
_020042DA:
	bl sub_020C7958
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020042E4: .word 0x000BEBF0
_020042E8: .word 0x021D110C
_020042EC: .word 0x000BEB94
_020042F0: .word 0x000BEC74
_020042F4: .word 0x000BEC58
_020042F8: .word 0x000BEC60
_020042FC: .word 0x000BEC80
	thumb_func_end sub_02004208

	thumb_func_start sub_02004300
sub_02004300: ; 0x02004300
	push {r4, lr}
	bl sub_020043F8
	add r4, r0, #0
	ldr r0, _020043A4 ; =0x0211194C
	ldr r0, [r0]
	cmp r0, #6
	bhi _020043A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0200431C: ; jump table
	.short _020043A0 - _0200431C - 2 ; case 0
	.short _0200432A - _0200431C - 2 ; case 1
	.short _020043A0 - _0200431C - 2 ; case 2
	.short _02004332 - _0200431C - 2 ; case 3
	.short _02004342 - _0200431C - 2 ; case 4
	.short _02004352 - _0200431C - 2 ; case 5
	.short _02004374 - _0200431C - 2 ; case 6
_0200432A:
	mov r0, #2
	bl sub_020043B0
	pop {r4, pc}
_02004332:
	bl sub_02005F88
	cmp r0, #0
	bne _020043A0
	mov r0, #2
	bl sub_020043B0
	pop {r4, pc}
_02004342:
	bl sub_02005F88
	cmp r0, #0
	bne _020043A0
	mov r0, #2
	bl sub_020043B0
	pop {r4, pc}
_02004352:
	bl sub_02005F88
	cmp r0, #0
	bne _020043A0
	bl sub_020059B0
	cmp r0, #0
	bne _020043A0
	bl sub_020048F0
	ldr r0, _020043A8 ; =0x000BEBFE
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _020043A0
	bl sub_02005D48
	pop {r4, pc}
_02004374:
	bl sub_02005F88
	cmp r0, #0
	bne _020043A0
	bl sub_020059B0
	cmp r0, #0
	bne _020043A0
	bl sub_020048F0
	ldr r0, _020043A8 ; =0x000BEBFE
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _02004394
	bl sub_02005D48
_02004394:
	ldr r1, _020043AC ; =0x000BEBF8
	mov r0, #0x7f
	ldr r1, [r4, r1]
	mov r2, #0
	bl sub_02005F10
_020043A0:
	pop {r4, pc}
	nop
_020043A4: .word 0x0211194C
_020043A8: .word 0x000BEBFE
_020043AC: .word 0x000BEBF8
	thumb_func_end sub_02004300

	thumb_func_start sub_020043B0
sub_020043B0: ; 0x020043B0
	push {r4, lr}
	add r4, r0, #0
	bl sub_020043F8
	ldr r1, _020043C4 ; =0x000BEBEC
	mov r2, #0
	strh r2, [r0, r1]
	ldr r0, _020043C8 ; =0x0211194C
	str r4, [r0]
	pop {r4, pc}
	.align 2, 0
_020043C4: .word 0x000BEBEC
_020043C8: .word 0x0211194C
	thumb_func_end sub_020043B0

	thumb_func_start sub_020043CC
sub_020043CC: ; 0x020043CC
	push {r4, lr}
	bl sub_020043F8
	add r4, r0, #0
	mov r0, #2
	bl sub_020054C0
	cmp r0, #0
	beq _020043E2
	mov r0, #1
	pop {r4, pc}
_020043E2:
	ldr r0, _020043F4 ; =0x000BEC02
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _020043EE
	mov r0, #1
	pop {r4, pc}
_020043EE:
	mov r0, #0
	pop {r4, pc}
	nop
_020043F4: .word 0x000BEC02
	thumb_func_end sub_020043CC

	thumb_func_start sub_020043F8
sub_020043F8: ; 0x020043F8
	ldr r0, _020043FC ; =0x02111958
	bx lr
	.align 2, 0
_020043FC: .word 0x02111958
	thumb_func_end sub_020043F8

	thumb_func_start sub_02004400
sub_02004400: ; 0x02004400
	push {r4, lr}
	add r4, r0, #0
	bl sub_020043F8
	cmp r4, #0x3a
	bls _0200440E
	b _020045F2
_0200440E:
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200441A: ; jump table
	.short _0200449C - _0200441A - 2 ; case 0
	.short _020044A2 - _0200441A - 2 ; case 1
	.short _020044A8 - _0200441A - 2 ; case 2
	.short _020044AE - _0200441A - 2 ; case 3
	.short _020044B4 - _0200441A - 2 ; case 4
	.short _02004490 - _0200441A - 2 ; case 5
	.short _02004496 - _0200441A - 2 ; case 6
	.short _020044BA - _0200441A - 2 ; case 7
	.short _020044C0 - _0200441A - 2 ; case 8
	.short _020044C6 - _0200441A - 2 ; case 9
	.short _020044CC - _0200441A - 2 ; case 10
	.short _020044D2 - _0200441A - 2 ; case 11
	.short _020044D8 - _0200441A - 2 ; case 12
	.short _020044DE - _0200441A - 2 ; case 13
	.short _020044E4 - _0200441A - 2 ; case 14
	.short _020044EA - _0200441A - 2 ; case 15
	.short _020044F0 - _0200441A - 2 ; case 16
	.short _020044F6 - _0200441A - 2 ; case 17
	.short _020044FC - _0200441A - 2 ; case 18
	.short _02004502 - _0200441A - 2 ; case 19
	.short _02004508 - _0200441A - 2 ; case 20
	.short _0200450E - _0200441A - 2 ; case 21
	.short _02004514 - _0200441A - 2 ; case 22
	.short _0200451A - _0200441A - 2 ; case 23
	.short _02004520 - _0200441A - 2 ; case 24
	.short _02004526 - _0200441A - 2 ; case 25
	.short _0200452C - _0200441A - 2 ; case 26
	.short _02004532 - _0200441A - 2 ; case 27
	.short _02004538 - _0200441A - 2 ; case 28
	.short _0200453E - _0200441A - 2 ; case 29
	.short _02004544 - _0200441A - 2 ; case 30
	.short _0200454A - _0200441A - 2 ; case 31
	.short _02004550 - _0200441A - 2 ; case 32
	.short _02004556 - _0200441A - 2 ; case 33
	.short _0200455C - _0200441A - 2 ; case 34
	.short _02004562 - _0200441A - 2 ; case 35
	.short _02004568 - _0200441A - 2 ; case 36
	.short _0200456E - _0200441A - 2 ; case 37
	.short _02004574 - _0200441A - 2 ; case 38
	.short _0200457A - _0200441A - 2 ; case 39
	.short _02004580 - _0200441A - 2 ; case 40
	.short _02004586 - _0200441A - 2 ; case 41
	.short _0200458C - _0200441A - 2 ; case 42
	.short _02004592 - _0200441A - 2 ; case 43
	.short _02004598 - _0200441A - 2 ; case 44
	.short _0200459E - _0200441A - 2 ; case 45
	.short _020045A4 - _0200441A - 2 ; case 46
	.short _020045AA - _0200441A - 2 ; case 47
	.short _020045B0 - _0200441A - 2 ; case 48
	.short _020045B6 - _0200441A - 2 ; case 49
	.short _020045BC - _0200441A - 2 ; case 50
	.short _020045C2 - _0200441A - 2 ; case 51
	.short _020045C8 - _0200441A - 2 ; case 52
	.short _020045CE - _0200441A - 2 ; case 53
	.short _020045D4 - _0200441A - 2 ; case 54
	.short _020045DA - _0200441A - 2 ; case 55
	.short _020045E0 - _0200441A - 2 ; case 56
	.short _020045E6 - _0200441A - 2 ; case 57
	.short _020045EC - _0200441A - 2 ; case 58
_02004490:
	ldr r1, _020045FC ; =0x000BEBEE
	add r0, r0, r1
	pop {r4, pc}
_02004496:
	ldr r1, _02004600 ; =0x000BEBEF
	add r0, r0, r1
	pop {r4, pc}
_0200449C:
	ldr r1, _02004604 ; =0x000BEB9C
	add r0, r0, r1
	pop {r4, pc}
_020044A2:
	ldr r1, _02004608 ; =0x000BEBA0
	add r0, r0, r1
	pop {r4, pc}
_020044A8:
	ldr r1, _0200460C ; =0x000BEBA4
	add r0, r0, r1
	pop {r4, pc}
_020044AE:
	ldr r1, _02004610 ; =0x000BEBC0
	add r0, r0, r1
	pop {r4, pc}
_020044B4:
	ldr r1, _02004614 ; =0x000BEBD0
	add r0, r0, r1
	pop {r4, pc}
_020044BA:
	ldr r1, _02004618 ; =0x000BEBF0
	add r0, r0, r1
	pop {r4, pc}
_020044C0:
	ldr r1, _0200461C ; =0x000BEBF4
	add r0, r0, r1
	pop {r4, pc}
_020044C6:
	ldr r1, _02004620 ; =0x000BEBF8
	add r0, r0, r1
	pop {r4, pc}
_020044CC:
	ldr r1, _02004624 ; =0x000BEBFC
	add r0, r0, r1
	pop {r4, pc}
_020044D2:
	ldr r1, _02004628 ; =0x000BEBFE
	add r0, r0, r1
	pop {r4, pc}
_020044D8:
	ldr r1, _0200462C ; =0x000BEC00
	add r0, r0, r1
	pop {r4, pc}
_020044DE:
	ldr r1, _02004630 ; =0x000BEC01
	add r0, r0, r1
	pop {r4, pc}
_020044E4:
	ldr r1, _02004634 ; =0x000BEC02
	add r0, r0, r1
	pop {r4, pc}
_020044EA:
	ldr r1, _02004638 ; =0x000BEC04
	add r0, r0, r1
	pop {r4, pc}
_020044F0:
	ldr r1, _0200463C ; =0x000BEC05
	add r0, r0, r1
	pop {r4, pc}
_020044F6:
	ldr r1, _02004640 ; =0x000BEC06
	add r0, r0, r1
	pop {r4, pc}
_020044FC:
	ldr r1, _02004644 ; =0x000BEC07
	add r0, r0, r1
	pop {r4, pc}
_02004502:
	ldr r1, _02004648 ; =0x000BEC08
	add r0, r0, r1
	pop {r4, pc}
_02004508:
	ldr r1, _0200464C ; =0x000BEC09
	add r0, r0, r1
	pop {r4, pc}
_0200450E:
	ldr r1, _02004650 ; =0x000BEC0A
	add r0, r0, r1
	pop {r4, pc}
_02004514:
	ldr r1, _02004654 ; =0x000BEC0B
	add r0, r0, r1
	pop {r4, pc}
_0200451A:
	ldr r1, _02004658 ; =0x000BEC0C
	add r0, r0, r1
	pop {r4, pc}
_02004520:
	ldr r1, _0200465C ; =0x000BEC10
	add r0, r0, r1
	pop {r4, pc}
_02004526:
	ldr r1, _02004660 ; =0x000BEC14
	add r0, r0, r1
	pop {r4, pc}
_0200452C:
	ldr r1, _02004664 ; =0x000BEC18
	add r0, r0, r1
	pop {r4, pc}
_02004532:
	ldr r1, _02004668 ; =0x000BEC1C
	add r0, r0, r1
	pop {r4, pc}
_02004538:
	ldr r1, _0200466C ; =0x000BEC20
	add r0, r0, r1
	pop {r4, pc}
_0200453E:
	ldr r1, _02004670 ; =0x000BEC24
	add r0, r0, r1
	pop {r4, pc}
_02004544:
	ldr r1, _02004674 ; =0x000BEC28
	add r0, r0, r1
	pop {r4, pc}
_0200454A:
	ldr r1, _02004678 ; =0x000BEC29
	add r0, r0, r1
	pop {r4, pc}
_02004550:
	ldr r1, _0200467C ; =0x000BEC2A
	add r0, r0, r1
	pop {r4, pc}
_02004556:
	ldr r1, _02004680 ; =0x000BEC2C
	add r0, r0, r1
	pop {r4, pc}
_0200455C:
	ldr r1, _02004684 ; =0x000BEC30
	add r0, r0, r1
	pop {r4, pc}
_02004562:
	ldr r1, _02004688 ; =0x000BEC38
	add r0, r0, r1
	pop {r4, pc}
_02004568:
	ldr r1, _0200468C ; =0x000BEC3C
	add r0, r0, r1
	pop {r4, pc}
_0200456E:
	ldr r1, _02004690 ; =0x000BEC40
	add r0, r0, r1
	pop {r4, pc}
_02004574:
	ldr r1, _02004694 ; =0x000BEC44
	add r0, r0, r1
	pop {r4, pc}
_0200457A:
	ldr r1, _02004698 ; =0x000BEC48
	add r0, r0, r1
	pop {r4, pc}
_02004580:
	ldr r1, _0200469C ; =0x000BEC4C
	add r0, r0, r1
	pop {r4, pc}
_02004586:
	ldr r1, _020046A0 ; =0x000BEC50
	add r0, r0, r1
	pop {r4, pc}
_0200458C:
	ldr r1, _020046A4 ; =0x000BEC58
	add r0, r0, r1
	pop {r4, pc}
_02004592:
	ldr r1, _020046A8 ; =0x000BEC60
	add r0, r0, r1
	pop {r4, pc}
_02004598:
	ldr r1, _020046AC ; =0x000BEC68
	add r0, r0, r1
	pop {r4, pc}
_0200459E:
	ldr r1, _020046B0 ; =0x000BEC70
	add r0, r0, r1
	pop {r4, pc}
_020045A4:
	ldr r1, _020046B4 ; =0x000BEC74
	add r0, r0, r1
	pop {r4, pc}
_020045AA:
	ldr r1, _020046B8 ; =0x000BEC54
	add r0, r0, r1
	pop {r4, pc}
_020045B0:
	ldr r1, _020046BC ; =0x000BEC5C
	add r0, r0, r1
	pop {r4, pc}
_020045B6:
	ldr r1, _020046C0 ; =0x000BEC64
	add r0, r0, r1
	pop {r4, pc}
_020045BC:
	ldr r1, _020046C4 ; =0x000BEC6C
	add r0, r0, r1
	pop {r4, pc}
_020045C2:
	ldr r1, _020046C8 ; =0x000BEC72
	add r0, r0, r1
	pop {r4, pc}
_020045C8:
	ldr r1, _020046CC ; =0x000BEC75
	add r0, r0, r1
	pop {r4, pc}
_020045CE:
	ldr r1, _020046D0 ; =0x000BEC76
	add r0, r0, r1
	pop {r4, pc}
_020045D4:
	ldr r1, _020046D4 ; =0x000BEC77
	add r0, r0, r1
	pop {r4, pc}
_020045DA:
	ldr r1, _020046D8 ; =0x000BEC78
	add r0, r0, r1
	pop {r4, pc}
_020045E0:
	ldr r1, _020046DC ; =0x000BEC79
	add r0, r0, r1
	pop {r4, pc}
_020045E6:
	ldr r1, _020046E0 ; =0x000BEC7A
	add r0, r0, r1
	pop {r4, pc}
_020045EC:
	ldr r1, _020046E4 ; =0x000BEC7C
	add r0, r0, r1
	pop {r4, pc}
_020045F2:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
	nop
_020045FC: .word 0x000BEBEE
_02004600: .word 0x000BEBEF
_02004604: .word 0x000BEB9C
_02004608: .word 0x000BEBA0
_0200460C: .word 0x000BEBA4
_02004610: .word 0x000BEBC0
_02004614: .word 0x000BEBD0
_02004618: .word 0x000BEBF0
_0200461C: .word 0x000BEBF4
_02004620: .word 0x000BEBF8
_02004624: .word 0x000BEBFC
_02004628: .word 0x000BEBFE
_0200462C: .word 0x000BEC00
_02004630: .word 0x000BEC01
_02004634: .word 0x000BEC02
_02004638: .word 0x000BEC04
_0200463C: .word 0x000BEC05
_02004640: .word 0x000BEC06
_02004644: .word 0x000BEC07
_02004648: .word 0x000BEC08
_0200464C: .word 0x000BEC09
_02004650: .word 0x000BEC0A
_02004654: .word 0x000BEC0B
_02004658: .word 0x000BEC0C
_0200465C: .word 0x000BEC10
_02004660: .word 0x000BEC14
_02004664: .word 0x000BEC18
_02004668: .word 0x000BEC1C
_0200466C: .word 0x000BEC20
_02004670: .word 0x000BEC24
_02004674: .word 0x000BEC28
_02004678: .word 0x000BEC29
_0200467C: .word 0x000BEC2A
_02004680: .word 0x000BEC2C
_02004684: .word 0x000BEC30
_02004688: .word 0x000BEC38
_0200468C: .word 0x000BEC3C
_02004690: .word 0x000BEC40
_02004694: .word 0x000BEC44
_02004698: .word 0x000BEC48
_0200469C: .word 0x000BEC4C
_020046A0: .word 0x000BEC50
_020046A4: .word 0x000BEC58
_020046A8: .word 0x000BEC60
_020046AC: .word 0x000BEC68
_020046B0: .word 0x000BEC70
_020046B4: .word 0x000BEC74
_020046B8: .word 0x000BEC54
_020046BC: .word 0x000BEC5C
_020046C0: .word 0x000BEC64
_020046C4: .word 0x000BEC6C
_020046C8: .word 0x000BEC72
_020046CC: .word 0x000BEC75
_020046D0: .word 0x000BEC76
_020046D4: .word 0x000BEC77
_020046D8: .word 0x000BEC78
_020046DC: .word 0x000BEC79
_020046E0: .word 0x000BEC7A
_020046E4: .word 0x000BEC7C
	thumb_func_end sub_02004400

	thumb_func_start sub_020046E8
sub_020046E8: ; 0x020046E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020043F8
	add r0, #0x94
	ldr r0, [r0]
	bl sub_020C9BB8
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02004706
	bl GF_AssertFail
_02004706:
	cmp r5, #0
	beq _0200470C
	str r4, [r5]
_0200470C:
	bl sub_0200472C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020046E8

	thumb_func_start sub_02004714
sub_02004714: ; 0x02004714
	push {r4, lr}
	add r4, r0, #0
	bl sub_020043F8
	add r0, #0x94
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_020C9C04
	bl sub_0200472C
	pop {r4, pc}
	thumb_func_end sub_02004714

	thumb_func_start sub_0200472C
sub_0200472C: ; 0x0200472C
	push {r3, lr}
	bl sub_020043F8
	add r0, #0x94
	ldr r0, [r0]
	bl sub_020C9CE8
	ldr r1, _02004740 ; =0x0211194C
	str r0, [r1, #8]
	pop {r3, pc}
	.align 2, 0
_02004740: .word 0x0211194C
	thumb_func_end sub_0200472C

	thumb_func_start sub_02004744
sub_02004744: ; 0x02004744
	push {r4, lr}
	add r4, r0, #0
	bl sub_020043F8
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r4, #0
	bl sub_020C9DAC
	add r4, r0, #0
	bl sub_0200472C
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02004744

	thumb_func_start sub_02004764
sub_02004764: ; 0x02004764
	push {r4, lr}
	add r4, r0, #0
	bl sub_020043F8
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r4, #0
	bl sub_020C9DC4
	add r4, r0, #0
	bl sub_0200472C
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02004764

	thumb_func_start sub_02004784
sub_02004784: ; 0x02004784
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020043F8
	add r2, r0, #0
	add r2, #0x94
	ldr r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020C9E48
	add r4, r0, #0
	bl sub_0200472C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02004784

	thumb_func_start sub_020047A8
sub_020047A8: ; 0x020047A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020043F8
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r4, #0
	bl sub_020C9E1C
	add r4, r0, #0
	bl sub_0200472C
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020047A8

	thumb_func_start sub_020047C8
sub_020047C8: ; 0x020047C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020043F8
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r4, #0
	bl sub_020C9DF0
	add r4, r0, #0
	bl sub_0200472C
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020047C8

	thumb_func_start sub_020047E8
sub_020047E8: ; 0x020047E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020043F8
	add r4, r0, #0
	cmp r5, #9
	blt _020047FC
	bl GF_AssertFail
	mov r5, #0
_020047FC:
	ldr r0, _02004808 ; =0x000BEB78
	add r1, r4, r0
	lsl r0, r5, #2
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	nop
_02004808: .word 0x000BEB78
	thumb_func_end sub_020047E8

	thumb_func_start sub_0200480C
sub_0200480C: ; 0x0200480C
	push {r3, lr}
	cmp r0, #7
	bhi _0200484E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0200481E: ; jump table
	.short _02004832 - _0200481E - 2 ; case 0
	.short _0200482E - _0200481E - 2 ; case 1
	.short _02004836 - _0200481E - 2 ; case 2
	.short _0200483A - _0200481E - 2 ; case 3
	.short _0200483E - _0200481E - 2 ; case 4
	.short _02004842 - _0200481E - 2 ; case 5
	.short _02004846 - _0200481E - 2 ; case 6
	.short _0200484A - _0200481E - 2 ; case 7
_0200482E:
	mov r0, #0
	pop {r3, pc}
_02004832:
	mov r0, #1
	pop {r3, pc}
_02004836:
	mov r0, #2
	pop {r3, pc}
_0200483A:
	mov r0, #3
	pop {r3, pc}
_0200483E:
	mov r0, #4
	pop {r3, pc}
_02004842:
	mov r0, #5
	pop {r3, pc}
_02004846:
	mov r0, #6
	pop {r3, pc}
_0200484A:
	mov r0, #7
	pop {r3, pc}
_0200484E:
	bl GF_AssertFail
	mov r0, #3
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0200480C

	thumb_func_start sub_02004858
sub_02004858: ; 0x02004858
	push {r4, lr}
	ldr r2, _02004874 ; =0x000BEC88
	mov r1, #0
	add r4, r0, #0
	bl sub_020E5B44
	ldr r0, _02004878 ; =0x000BEC0C
	mov r1, #0
_02004868:
	add r1, r1, #1
	str r1, [r4, r0]
	add r4, r4, #4
	cmp r1, #7
	blt _02004868
	pop {r4, pc}
	.align 2, 0
_02004874: .word 0x000BEC88
_02004878: .word 0x000BEC0C
	thumb_func_end sub_02004858

	thumb_func_start sub_0200487C
sub_0200487C: ; 0x0200487C
	push {r3, r4, r5, lr}
	ldr r1, _02004894 ; =0x000BEB78
	mov r4, #0
	add r5, r0, r1
_02004884:
	add r0, r5, #0
	bl sub_020C81C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #9
	blt _02004884
	pop {r3, r4, r5, pc}
	.align 2, 0
_02004894: .word 0x000BEB78
	thumb_func_end sub_0200487C

	thumb_func_start sub_02004898
sub_02004898: ; 0x02004898
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020048BC ; =0x000BEC0C
	add r0, r4, r0
	bl sub_020046E8
	mov r0, #0
	bl sub_02004744
	ldr r0, _020048C0 ; =0x000002BD
	bl sub_020047C8
	ldr r0, _020048C4 ; =0x000BEC10
	add r0, r4, r0
	bl sub_020046E8
	pop {r4, pc}
	nop
_020048BC: .word 0x000BEC0C
_020048C0: .word 0x000002BD
_020048C4: .word 0x000BEC10
	thumb_func_end sub_02004898

	thumb_func_start sub_020048C8
sub_020048C8: ; 0x020048C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020DA830
	mov r0, #1
	bl sub_020DB358
	mov r0, #2
	bl sub_020DB39C
	ldr r1, _020048EC ; =0x000BEC80
	mov r0, #1
	ldr r2, [r4, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
_020048EC: .word 0x000BEC80
	thumb_func_end sub_020048C8

	thumb_func_start sub_020048F0
sub_020048F0: ; 0x020048F0
	push {r3, lr}
	mov r0, #7
	mov r1, #0
	bl sub_020C8068
	mov r0, #7
	bl sub_020047E8
	bl sub_020C81D0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020048F0

	thumb_func_start sub_02004908
sub_02004908: ; 0x02004908
	push {r3, lr}
	mov r0, #1
	mov r1, #0
	bl sub_020C8068
	mov r0, #0
	bl sub_020047E8
	bl sub_020C81D0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02004908

	thumb_func_start sub_02004920
sub_02004920: ; 0x02004920
	bx lr
	.align 2, 0
	thumb_func_end sub_02004920

	thumb_func_start sub_02004924
sub_02004924: ; 0x02004924
	push {r3, lr}
	bl sub_020043F8
	ldr r1, _0200493C ; =0x000BEC80
	ldr r0, [r0, r1]
	lsr r0, r0, #1
	cmp r0, #0x5a
	bls _02004938
	mov r0, #1
	pop {r3, pc}
_02004938:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_0200493C: .word 0x000BEC80
	thumb_func_end sub_02004924

	thumb_func_start sub_02004940
sub_02004940: ; 0x02004940
	push {r3, lr}
	bl sub_020043F8
	ldr r2, _02004954 ; =0x000BEC80
	mov r1, #1
	ldr r3, [r0, r2]
	and r1, r3
	str r1, [r0, r2]
	pop {r3, pc}
	nop
_02004954: .word 0x000BEC80
	thumb_func_end sub_02004940

	thumb_func_start sub_02004958
sub_02004958: ; 0x02004958
	push {r4, lr}
	add r4, r0, #0
	bl sub_020043F8
	ldr r1, _02004968 ; =0x000BEC84
	str r4, [r0, r1]
	pop {r4, pc}
	nop
_02004968: .word 0x000BEC84
	thumb_func_end sub_02004958

	thumb_func_start sub_0200496C
sub_0200496C: ; 0x0200496C
	push {r3, lr}
	bl sub_020043F8
	ldr r1, _0200497C ; =0x000BEC84
	ldr r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	.align 2, 0
_0200497C: .word 0x000BEC84
	thumb_func_end sub_0200496C

	thumb_func_start sub_02004980
sub_02004980: ; 0x02004980
	push {r3, lr}
	bl sub_02004908
	bl sub_020048F0
	pop {r3, pc}
	thumb_func_end sub_02004980

	thumb_func_start sub_0200498C
sub_0200498C: ; 0x0200498C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020049C0 ; =0x021D05E4
	bl sub_020C81C4
	ldr r1, _020049C4 ; =0x0000A7FE
	mov r0, #9
	bl sub_020C7FAC
	mov r0, #9
	mov r1, #1
	bl sub_020C7F8C
	ldr r1, [r4]
	ldr r2, _020049C8 ; =0x00002EE0
	mov r0, #9
	bl sub_020C7FC4
	cmp r0, #1
	beq _020049B8
	bl GF_AssertFail
_020049B8:
	ldr r0, _020049CC ; =0x021D05E0
	mov r1, #0
	str r1, [r0]
	pop {r4, pc}
	.align 2, 0
_020049C0: .word 0x021D05E4
_020049C4: .word 0x0000A7FE
_020049C8: .word 0x00002EE0
_020049CC: .word 0x021D05E0
	thumb_func_end sub_0200498C

	thumb_func_start sub_020049D0
sub_020049D0: ; 0x020049D0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_02004980
	add r0, r4, #0
	bl sub_020C9644
	add r2, r0, #0
	str r4, [sp]
	ldrh r2, [r2]
	ldr r0, _02004A00 ; =0x021D05E4
	mov r1, #9
	mov r3, #0x41
	bl sub_020CA8E4
	cmp r0, #1
	beq _020049F6
	mov r4, #0
_020049F6:
	ldr r1, _02004A04 ; =0x021D05E0
	str r4, [r1]
	add sp, #4
	pop {r3, r4, pc}
	nop
_02004A00: .word 0x021D05E4
_02004A04: .word 0x021D05E0
	thumb_func_end sub_020049D0

	thumb_func_start sub_02004A08
sub_02004A08: ; 0x02004A08
	push {r3, lr}
	add r1, r0, #0
	mov r0, #9
	bl sub_020C8068
	ldr r0, _02004A1C ; =0x021D05E0
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	nop
_02004A1C: .word 0x021D05E0
	thumb_func_end sub_02004A08

	thumb_func_start sub_02004A20
sub_02004A20: ; 0x02004A20
	ldr r0, _02004A28 ; =0x021D05E0
	ldr r0, [r0]
	bx lr
	nop
_02004A28: .word 0x021D05E0
	thumb_func_end sub_02004A20

	thumb_func_start sub_02004A2C
sub_02004A2C: ; 0x02004A2C
	ldr r3, _02004A34 ; =sub_020C816C
	add r1, r0, #0
	mov r0, #9
	bx r3
	.align 2, 0
_02004A34: .word sub_020C816C
	thumb_func_end sub_02004A2C

	thumb_func_start sub_02004A38
sub_02004A38: ; 0x02004A38
	ldr r3, _02004A40 ; =sub_020C81F0
	mov r0, #9
	bx r3
	nop
_02004A40: .word sub_020C81F0
	thumb_func_end sub_02004A38

	thumb_func_start sub_02004A44
sub_02004A44: ; 0x02004A44
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	bl sub_02004400
	strb r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02004A44

	thumb_func_start sub_02004A54
sub_02004A54: ; 0x02004A54
	push {r3, lr}
	mov r0, #5
	bl sub_02004400
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02004A54

	thumb_func_start sub_02004A60
sub_02004A60: ; 0x02004A60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xa
	bl sub_02004400
	add r4, r0, #0
	ldr r0, _02004A8C ; =0x000004C1
	cmp r5, r0
	bls _02004A82
	add r0, r5, #0
	bl sub_02004AB8
	add r0, r5, #0
	bl sub_02005C98
	strh r0, [r4]
	b _02004A84
_02004A82:
	strh r5, [r4]
_02004A84:
	mov r0, #0
	bl sub_02004A9C
	pop {r3, r4, r5, pc}
	.align 2, 0
_02004A8C: .word 0x000004C1
	thumb_func_end sub_02004A60

	thumb_func_start sub_02004A90
sub_02004A90: ; 0x02004A90
	push {r3, lr}
	mov r0, #0xa
	bl sub_02004400
	ldrh r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02004A90

	thumb_func_start sub_02004A9C
sub_02004A9C: ; 0x02004A9C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	bl sub_02004400
	strh r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02004A9C

	thumb_func_start sub_02004AAC
sub_02004AAC: ; 0x02004AAC
	push {r3, lr}
	mov r0, #0xb
	bl sub_02004400
	ldrh r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02004AAC

	thumb_func_start sub_02004AB8
sub_02004AB8: ; 0x02004AB8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x3a
	bl sub_02004400
	strh r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02004AB8

	thumb_func_start sub_02004AC8
sub_02004AC8: ; 0x02004AC8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x20
	bl sub_02004400
	strh r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02004AC8

	thumb_func_start sub_02004AD8
sub_02004AD8: ; 0x02004AD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x15
	bl sub_02004400
	add r4, r0, #0
	mov r0, #0x16
	bl sub_02004400
	cmp r5, #0x33
	bhs _02004AF6
	strb r5, [r4]
	mov r1, #0
	strb r1, [r0]
	pop {r3, r4, r5, pc}
_02004AF6:
	strb r5, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02004AD8

	thumb_func_start sub_02004AFC
sub_02004AFC: ; 0x02004AFC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x15
	bl sub_02004400
	mov r0, #0x16
	bl sub_02004400
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end sub_02004AFC

	thumb_func_start sub_02004B10
sub_02004B10: ; 0x02004B10
	push {r4, lr}
	mov r0, #0x16
	bl sub_02004400
	add r4, r0, #0
	bl sub_02005318
	mov r0, #0
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02004B10

	thumb_func_start sub_02004B24
sub_02004B24: ; 0x02004B24
	push {r4, lr}
	cmp r0, #0x4b
	bls _02004B2C
	b _02004E42
_02004B2C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02004B38: ; jump table
	.short _02004E42 - _02004B38 - 2 ; case 0
	.short _02004BD0 - _02004B38 - 2 ; case 1
	.short _02004C76 - _02004B38 - 2 ; case 2
	.short _02004C94 - _02004B38 - 2 ; case 3
	.short _02004C9E - _02004B38 - 2 ; case 4
	.short _02004CA8 - _02004B38 - 2 ; case 5
	.short _02004CBC - _02004B38 - 2 ; case 6
	.short _02004D32 - _02004B38 - 2 ; case 7
	.short _02004CC6 - _02004B38 - 2 ; case 8
	.short _02004BD0 - _02004B38 - 2 ; case 9
	.short _02004BD0 - _02004B38 - 2 ; case 10
	.short _02004CB2 - _02004B38 - 2 ; case 11
	.short _02004CD0 - _02004B38 - 2 ; case 12
	.short _02004C76 - _02004B38 - 2 ; case 13
	.short _02004C6C - _02004B38 - 2 ; case 14
	.short _02004CEA - _02004B38 - 2 ; case 15
	.short _02004CDA - _02004B38 - 2 ; case 16
	.short _02004BD0 - _02004B38 - 2 ; case 17
	.short _02004E42 - _02004B38 - 2 ; case 18
	.short _02004BDA - _02004B38 - 2 ; case 19
	.short _02004BD0 - _02004B38 - 2 ; case 20
	.short _02004C80 - _02004B38 - 2 ; case 21
	.short _02004C9E - _02004B38 - 2 ; case 22
	.short _02004BD0 - _02004B38 - 2 ; case 23
	.short _02004CF4 - _02004B38 - 2 ; case 24
	.short _02004D04 - _02004B38 - 2 ; case 25
	.short _02004E42 - _02004B38 - 2 ; case 26
	.short _02004E42 - _02004B38 - 2 ; case 27
	.short _02004E42 - _02004B38 - 2 ; case 28
	.short _02004E42 - _02004B38 - 2 ; case 29
	.short _02004E42 - _02004B38 - 2 ; case 30
	.short _02004E42 - _02004B38 - 2 ; case 31
	.short _02004E42 - _02004B38 - 2 ; case 32
	.short _02004E42 - _02004B38 - 2 ; case 33
	.short _02004E42 - _02004B38 - 2 ; case 34
	.short _02004E42 - _02004B38 - 2 ; case 35
	.short _02004E42 - _02004B38 - 2 ; case 36
	.short _02004E42 - _02004B38 - 2 ; case 37
	.short _02004E42 - _02004B38 - 2 ; case 38
	.short _02004E42 - _02004B38 - 2 ; case 39
	.short _02004E42 - _02004B38 - 2 ; case 40
	.short _02004E42 - _02004B38 - 2 ; case 41
	.short _02004E42 - _02004B38 - 2 ; case 42
	.short _02004E42 - _02004B38 - 2 ; case 43
	.short _02004E42 - _02004B38 - 2 ; case 44
	.short _02004E42 - _02004B38 - 2 ; case 45
	.short _02004E42 - _02004B38 - 2 ; case 46
	.short _02004E42 - _02004B38 - 2 ; case 47
	.short _02004E42 - _02004B38 - 2 ; case 48
	.short _02004E42 - _02004B38 - 2 ; case 49
	.short _02004E42 - _02004B38 - 2 ; case 50
	.short _02004D14 - _02004B38 - 2 ; case 51
	.short _02004D28 - _02004B38 - 2 ; case 52
	.short _02004D32 - _02004B38 - 2 ; case 53
	.short _02004D3C - _02004B38 - 2 ; case 54
	.short _02004D46 - _02004B38 - 2 ; case 55
	.short _02004D56 - _02004B38 - 2 ; case 56
	.short _02004D60 - _02004B38 - 2 ; case 57
	.short _02004D6A - _02004B38 - 2 ; case 58
	.short _02004D74 - _02004B38 - 2 ; case 59
	.short _02004D7E - _02004B38 - 2 ; case 60
	.short _02004D88 - _02004B38 - 2 ; case 61
	.short _02004D92 - _02004B38 - 2 ; case 62
	.short _02004D9C - _02004B38 - 2 ; case 63
	.short _02004D1E - _02004B38 - 2 ; case 64
	.short _02004D46 - _02004B38 - 2 ; case 65
	.short _02004DA6 - _02004B38 - 2 ; case 66
	.short _02004D28 - _02004B38 - 2 ; case 67
	.short _02004DC6 - _02004B38 - 2 ; case 68
	.short _02004DB6 - _02004B38 - 2 ; case 69
	.short _02004DDA - _02004B38 - 2 ; case 70
	.short _02004DEA - _02004B38 - 2 ; case 71
	.short _02004DFA - _02004B38 - 2 ; case 72
	.short _02004E0E - _02004B38 - 2 ; case 73
	.short _02004E22 - _02004B38 - 2 ; case 74
	.short _02004E32 - _02004B38 - 2 ; case 75
_02004BD0:
	mov r0, #1
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004BDA:
	mov r0, #1
	bl sub_02004744
	add r4, r0, #0
	ldr r0, _02004E4C ; =0x0000058F
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E50 ; =0x00000591
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E54 ; =0x00000593
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E58 ; =0x0000058E
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E5C ; =0x00000594
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E60 ; =0x00000596
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E64 ; =0x0000064F
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E68 ; =0x00000582
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E6C ; =0x00000722
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E70 ; =0x00000583
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E74 ; =0x00000584
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E78 ; =0x00000585
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E7C ; =0x00000587
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E80 ; =0x0000063D
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E84 ; =0x00000642
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E88 ; =0x0000058A
	mov r1, #1
	bl sub_02004784
	ldr r0, _02004E8C ; =0x00000581
	mov r1, #1
	bl sub_02004784
	b _02004E48
_02004C6C:
	mov r0, #0xe
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004C76:
	mov r0, #2
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004C80:
	mov r0, #3
	lsl r0, r0, #8
	bl sub_020047C8
	mov r0, #3
	lsl r0, r0, #8
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004C94:
	mov r0, #0xd
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004C9E:
	mov r0, #1
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004CA8:
	mov r0, #2
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004CB2:
	mov r0, #1
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004CBC:
	mov r0, #0xb
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004CC6:
	mov r0, #1
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004CD0:
	mov r0, #0xe
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004CDA:
	mov r0, #1
	bl sub_02004744
	mov r0, #8
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004CEA:
	mov r0, #1
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004CF4:
	ldr r0, _02004E90 ; =0x00000302
	bl sub_020047C8
	ldr r0, _02004E90 ; =0x00000302
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004D04:
	ldr r0, _02004E94 ; =0x00000303
	bl sub_020047C8
	ldr r0, _02004E94 ; =0x00000303
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004D14:
	mov r0, #3
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004D1E:
	mov r0, #6
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004D28:
	mov r0, #5
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004D32:
	mov r0, #9
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004D3C:
	mov r0, #0xa
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004D46:
	ldr r0, _02004E98 ; =0x000002F5
	bl sub_020047C8
	ldr r0, _02004E98 ; =0x000002F5
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004D56:
	mov r0, #0xc
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004D60:
	mov r0, #7
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004D6A:
	mov r0, #8
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004D74:
	mov r0, #0xf
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004D7E:
	mov r0, #3
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004D88:
	mov r0, #5
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004D92:
	mov r0, #0xf
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004D9C:
	mov r0, #4
	bl sub_02004744
	add r4, r0, #0
	b _02004E48
_02004DA6:
	ldr r0, _02004E9C ; =0x000002FF
	bl sub_020047C8
	ldr r0, _02004E9C ; =0x000002FF
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004DB6:
	ldr r0, _02004EA0 ; =0x00000301
	bl sub_020047C8
	ldr r0, _02004EA0 ; =0x00000301
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004DC6:
	mov r0, #0xbf
	lsl r0, r0, #2
	bl sub_020047C8
	mov r0, #0xbf
	lsl r0, r0, #2
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004DDA:
	ldr r0, _02004EA4 ; =0x00000305
	bl sub_020047C8
	ldr r0, _02004EA4 ; =0x00000305
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004DEA:
	ldr r0, _02004EA8 ; =0x00000306
	bl sub_020047C8
	ldr r0, _02004EA8 ; =0x00000306
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004DFA:
	mov r0, #0xc1
	lsl r0, r0, #2
	bl sub_020047C8
	mov r0, #0xc1
	lsl r0, r0, #2
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004E0E:
	mov r0, #0xc2
	lsl r0, r0, #2
	bl sub_020047C8
	mov r0, #0xc2
	lsl r0, r0, #2
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004E22:
	ldr r0, _02004EAC ; =0x00000307
	bl sub_020047C8
	ldr r0, _02004EAC ; =0x00000307
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004E32:
	ldr r0, _02004EB0 ; =0x00000309
	bl sub_020047C8
	ldr r0, _02004EB0 ; =0x00000309
	bl sub_020047A8
	add r4, r0, #0
	b _02004E48
_02004E42:
	bl GF_AssertFail
	mov r4, #0
_02004E48:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02004E4C: .word 0x0000058F
_02004E50: .word 0x00000591
_02004E54: .word 0x00000593
_02004E58: .word 0x0000058E
_02004E5C: .word 0x00000594
_02004E60: .word 0x00000596
_02004E64: .word 0x0000064F
_02004E68: .word 0x00000582
_02004E6C: .word 0x00000722
_02004E70: .word 0x00000583
_02004E74: .word 0x00000584
_02004E78: .word 0x00000585
_02004E7C: .word 0x00000587
_02004E80: .word 0x0000063D
_02004E84: .word 0x00000642
_02004E88: .word 0x0000058A
_02004E8C: .word 0x00000581
_02004E90: .word 0x00000302
_02004E94: .word 0x00000303
_02004E98: .word 0x000002F5
_02004E9C: .word 0x000002FF
_02004EA0: .word 0x00000301
_02004EA4: .word 0x00000305
_02004EA8: .word 0x00000306
_02004EAC: .word 0x00000307
_02004EB0: .word 0x00000309
	thumb_func_end sub_02004B24

	thumb_func_start sub_02004EB4
sub_02004EB4: ; 0x02004EB4
	ldr r3, _02004EC0 ; =sub_02004EC4
	add r1, r0, #0
	mov r0, #4
	mov r2, #1
	bx r3
	nop
_02004EC0: .word sub_02004EC4
	thumb_func_end sub_02004EB4

	thumb_func_start sub_02004EC4
sub_02004EC4: ; 0x02004EC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x15
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02004400
	str r0, [sp]
	mov r0, #0x16
	bl sub_02004400
	str r0, [sp, #4]
	mov r0, #0xe
	bl sub_02004400
	add r7, r0, #0
	cmp r4, #0x33
	bhs _02004EF8
	ldr r0, [sp]
	ldrb r0, [r0]
	cmp r0, r4
	bne _02004F06
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004EF8:
	ldr r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, r4
	bne _02004F06
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004F06:
	add r0, r4, #0
	bl sub_02004AD8
	cmp r4, #0x4a
	bls _02004F12
	b _02005054
_02004F12:
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02004F1E: ; jump table
	.short _02005054 - _02004F1E - 2 ; case 0
	.short _02005006 - _02004F1E - 2 ; case 1
	.short _0200502A - _02004F1E - 2 ; case 2
	.short _0200503C - _02004F1E - 2 ; case 3
	.short _02004FB4 - _02004F1E - 2 ; case 4
	.short _02004FC8 - _02004F1E - 2 ; case 5
	.short _02004FDC - _02004F1E - 2 ; case 6
	.short _02004FE6 - _02004F1E - 2 ; case 7
	.short _0200503C - _02004F1E - 2 ; case 8
	.short _0200503C - _02004F1E - 2 ; case 9
	.short _0200503C - _02004F1E - 2 ; case 10
	.short _02004FD2 - _02004F1E - 2 ; case 11
	.short _0200503C - _02004F1E - 2 ; case 12
	.short _0200503C - _02004F1E - 2 ; case 13
	.short _02005018 - _02004F1E - 2 ; case 14
	.short _0200503C - _02004F1E - 2 ; case 15
	.short _0200503C - _02004F1E - 2 ; case 16
	.short _0200503C - _02004F1E - 2 ; case 17
	.short _0200503C - _02004F1E - 2 ; case 18
	.short _0200503C - _02004F1E - 2 ; case 19
	.short _0200503C - _02004F1E - 2 ; case 20
	.short _0200503C - _02004F1E - 2 ; case 21
	.short _02005048 - _02004F1E - 2 ; case 22
	.short _0200503C - _02004F1E - 2 ; case 23
	.short _0200503C - _02004F1E - 2 ; case 24
	.short _0200503C - _02004F1E - 2 ; case 25
	.short _02005054 - _02004F1E - 2 ; case 26
	.short _02005054 - _02004F1E - 2 ; case 27
	.short _02005054 - _02004F1E - 2 ; case 28
	.short _02005054 - _02004F1E - 2 ; case 29
	.short _02005054 - _02004F1E - 2 ; case 30
	.short _02005054 - _02004F1E - 2 ; case 31
	.short _02005054 - _02004F1E - 2 ; case 32
	.short _02005054 - _02004F1E - 2 ; case 33
	.short _02005054 - _02004F1E - 2 ; case 34
	.short _02005054 - _02004F1E - 2 ; case 35
	.short _02005054 - _02004F1E - 2 ; case 36
	.short _02005054 - _02004F1E - 2 ; case 37
	.short _02005054 - _02004F1E - 2 ; case 38
	.short _02005054 - _02004F1E - 2 ; case 39
	.short _02005054 - _02004F1E - 2 ; case 40
	.short _02005054 - _02004F1E - 2 ; case 41
	.short _02005054 - _02004F1E - 2 ; case 42
	.short _02005054 - _02004F1E - 2 ; case 43
	.short _02005054 - _02004F1E - 2 ; case 44
	.short _02005054 - _02004F1E - 2 ; case 45
	.short _02005054 - _02004F1E - 2 ; case 46
	.short _02005054 - _02004F1E - 2 ; case 47
	.short _02005054 - _02004F1E - 2 ; case 48
	.short _02005054 - _02004F1E - 2 ; case 49
	.short _02005054 - _02004F1E - 2 ; case 50
	.short _02004FF0 - _02004F1E - 2 ; case 51
	.short _02004FF0 - _02004F1E - 2 ; case 52
	.short _02004FF0 - _02004F1E - 2 ; case 53
	.short _02004FF0 - _02004F1E - 2 ; case 54
	.short _02004FF0 - _02004F1E - 2 ; case 55
	.short _02004FF0 - _02004F1E - 2 ; case 56
	.short _02004FF0 - _02004F1E - 2 ; case 57
	.short _02004FF0 - _02004F1E - 2 ; case 58
	.short _02004FF0 - _02004F1E - 2 ; case 59
	.short _02004FF0 - _02004F1E - 2 ; case 60
	.short _02004FF0 - _02004F1E - 2 ; case 61
	.short _02004FF0 - _02004F1E - 2 ; case 62
	.short _02004FF0 - _02004F1E - 2 ; case 63
	.short _02004FF0 - _02004F1E - 2 ; case 64
	.short _02004FF0 - _02004F1E - 2 ; case 65
	.short _02004FF0 - _02004F1E - 2 ; case 66
	.short _02004FF0 - _02004F1E - 2 ; case 67
	.short _02004FF8 - _02004F1E - 2 ; case 68
	.short _02004FF0 - _02004F1E - 2 ; case 69
	.short _02004FF0 - _02004F1E - 2 ; case 70
	.short _02004FF0 - _02004F1E - 2 ; case 71
	.short _02004FF0 - _02004F1E - 2 ; case 72
	.short _0200503C - _02004F1E - 2 ; case 73
	.short _02004FF0 - _02004F1E - 2 ; case 74
_02004FB4:
	mov r0, #0
	bl sub_02005AF8
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200508C
	mov r0, #0
	strh r0, [r7]
	b _0200505A
_02004FC8:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02005228
	b _0200505A
_02004FD2:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02005260
	b _0200505A
_02004FDC:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02005280
	b _0200505A
_02004FE6:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020052A4
	b _0200505A
_02004FF0:
	add r0, r4, #0
	bl sub_020052C8
	b _0200505A
_02004FF8:
	add r0, r4, #0
	bl sub_020052C8
	add r0, r5, #0
	bl sub_02005D48
	b _0200505A
_02005006:
	mov r0, #1
	bl sub_02005AF8
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020052E4
	b _0200505A
_02005018:
	mov r0, #2
	bl sub_02005AF8
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020052E4
	b _0200505A
_0200502A:
	mov r0, #0
	bl sub_02005AF8
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020052E4
	b _0200505A
_0200503C:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020052E4
	b _0200505A
_02005048:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020052E4
	b _0200505A
_02005054:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200505A:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02004EC4

	thumb_func_start sub_02005060
sub_02005060: ; 0x02005060
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02004400
	ldr r0, [r0]
	bl sub_02004714
	mov r0, #0x19
	bl sub_02004400
	bl sub_020046E8
	add r0, r4, #0
	bl sub_02004B24
	mov r0, #0x1a
	bl sub_02004400
	bl sub_020046E8
	pop {r4, pc}
	thumb_func_end sub_02005060

	thumb_func_start sub_0200508C
sub_0200508C: ; 0x0200508C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xc
	bl sub_02004400
	add r6, r0, #0
	mov r0, #0x18
	bl sub_02004400
	mov r0, #0x20
	bl sub_02004400
	mov r0, #0
	bl sub_020047E8
	bl sub_020054F0
	add r7, r0, #0
	lsl r0, r7, #0x10
	lsr r4, r0, #0x10
	ldr r0, _02005144 ; =0x000004C1
	cmp r7, r0
	ble _020050C2
	add r0, r4, #0
	bl sub_02005C98
	add r4, r0, #0
_020050C2:
	ldrb r0, [r6]
	cmp r0, #0
	bne _020050D6
	cmp r4, r5
	bne _020050D6
	bl sub_02004AAC
	ldr r1, _02005148 ; =0x000003F5
	cmp r0, r1
	bne _02005142
_020050D6:
	mov r0, #1
	bl sub_020059E0
	ldr r0, _0200514C ; =0x021D05E8
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _020050EA
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _020050F4
_020050EA:
	bl sub_02005FD8
	ldr r0, _0200514C ; =0x021D05E8
	mov r1, #1
	str r1, [r0, #4]
_020050F4:
	cmp r4, r5
	beq _02005104
	mov r0, #1
	mov r1, #0
	bl sub_020053A8
	bl sub_02005FA0
_02005104:
	ldrb r0, [r6]
	cmp r0, #1
	bne _0200513C
	mov r0, #2
	bl sub_02005328
	bl sub_02004714
	mov r0, #4
	bl sub_02004B24
	mov r0, #0x1a
	bl sub_02004400
	bl sub_020046E8
	cmp r4, r5
	beq _02005130
	mov r0, #1
	mov r1, #0
	bl sub_020053A8
_02005130:
	lsl r1, r7, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_02005150
	pop {r3, r4, r5, r6, r7, pc}
_0200513C:
	add r0, r5, #0
	bl sub_02005D48
_02005142:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02005144: .word 0x000004C1
_02005148: .word 0x000003F5
_0200514C: .word 0x021D05E8
	thumb_func_end sub_0200508C

	thumb_func_start sub_02005150
sub_02005150: ; 0x02005150
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x20
	bl sub_02004400
	add r4, r0, #0
	ldrh r0, [r4]
	bl sub_02005504
	mov r1, #0xaf
	lsl r1, r1, #2
	cmp r0, r1
	bne _02005178
	add r0, r5, #0
	mov r1, #4
	bl sub_02004784
	bl GF_AssertFail
	b _02005180
_02005178:
	ldrh r0, [r4]
	mov r1, #6
	bl sub_02004784
_02005180:
	mov r0, #0x1b
	bl sub_02004400
	bl sub_020046E8
	mov r0, #1
	mov r1, #0
	bl sub_020053A8
	mov r0, #0x7f
	mov r1, #0x28
	mov r2, #0
	bl sub_02005F10
	mov r0, #0
	bl sub_020059E0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005150

	thumb_func_start sub_020051A4
sub_020051A4: ; 0x020051A4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x13
	add r5, r1, #0
	bl sub_02004400
	add r6, r0, #0
	mov r0, #0x20
	bl sub_02004400
	add r4, r0, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _020051C4
	cmp r5, #0
	bne _02005224
_020051C4:
	mov r0, #1
	bl sub_02005328
	bl sub_02004714
	mov r0, #0
	bl sub_02004AFC
	ldrh r0, [r4]
	mov r1, #2
	bl sub_02004784
	mov r0, #0x19
	bl sub_02004400
	bl sub_020046E8
	mov r0, #4
	bl sub_02004B24
	mov r0, #0x1a
	bl sub_02004400
	bl sub_020046E8
	ldrh r0, [r4]
	bl sub_02005504
	mov r1, #0xaf
	lsl r1, r1, #2
	cmp r0, r1
	bne _02005212
	add r0, r7, #0
	mov r1, #4
	bl sub_02004784
	bl GF_AssertFail
	b _0200521A
_02005212:
	ldrh r0, [r4]
	mov r1, #4
	bl sub_02004784
_0200521A:
	mov r0, #0x1b
	bl sub_02004400
	bl sub_020046E8
_02005224:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020051A4

	thumb_func_start sub_02005228
sub_02005228: ; 0x02005228
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02004400
	bl sub_02005B20
	mov r0, #2
	bl sub_02005328
	bl sub_02004714
	mov r0, #5
	bl sub_02004B24
	mov r0, #0x1a
	bl sub_02004400
	bl sub_020046E8
	mov r0, #1
	bl sub_020059E0
	add r0, r4, #0
	bl sub_02005D48
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02005228

	thumb_func_start sub_02005260
sub_02005260: ; 0x02005260
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02004400
	bl sub_02005FA0
	bl sub_020053F0
	mov r0, #4
	bl sub_02005060
	add r0, r4, #0
	bl sub_02005D48
	pop {r4, pc}
	thumb_func_end sub_02005260

	thumb_func_start sub_02005280
sub_02005280: ; 0x02005280
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02004400
	bl sub_02005FA0
	mov r0, #6
	bl sub_02005060
	mov r0, #1
	bl sub_020059E0
	add r0, r4, #0
	bl sub_02005D48
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02005280

	thumb_func_start sub_020052A4
sub_020052A4: ; 0x020052A4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02004400
	bl sub_02005FA0
	mov r0, #7
	bl sub_02005060
	mov r0, #1
	bl sub_020059E0
	add r0, r4, #0
	bl sub_02005D48
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020052A4

	thumb_func_start sub_020052C8
sub_020052C8: ; 0x020052C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02005318
	add r0, r4, #0
	bl sub_02004B24
	mov r0, #0x1c
	bl sub_02004400
	bl sub_020046E8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020052C8

	thumb_func_start sub_020052E4
sub_020052E4: ; 0x020052E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x18
	add r4, r1, #0
	bl sub_02004400
	bl sub_02005FA0
	add r0, r5, #0
	bl sub_02005060
	add r0, r4, #0
	bl sub_02005D48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020052E4

	thumb_func_start sub_02005304
sub_02005304: ; 0x02005304
	push {r4, lr}
	add r4, r0, #0
	bl sub_020043F8
	bl sub_02005B20
	add r0, r4, #0
	bl sub_02005D48
	pop {r4, pc}
	thumb_func_end sub_02005304

	thumb_func_start sub_02005318
sub_02005318: ; 0x02005318
	push {r3, lr}
	mov r0, #4
	bl sub_02005328
	bl sub_02004714
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02005318

	thumb_func_start sub_02005328
sub_02005328: ; 0x02005328
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_020043F8
	cmp r4, #7
	blt _02005342
	bl GF_AssertFail
	mov r0, #0x1b
	bl sub_02004400
	ldr r0, [r0]
	pop {r3, r4, r5, pc}
_02005342:
	cmp r4, #6
	bhi _020053A4
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02005352: ; jump table
	.short _02005360 - _02005352 - 2 ; case 0
	.short _0200536A - _02005352 - 2 ; case 1
	.short _02005374 - _02005352 - 2 ; case 2
	.short _0200537E - _02005352 - 2 ; case 3
	.short _02005388 - _02005352 - 2 ; case 4
	.short _02005392 - _02005352 - 2 ; case 5
	.short _0200539C - _02005352 - 2 ; case 6
_02005360:
	mov r0, #0x17
	bl sub_02004400
	add r5, r0, #0
	b _020053A4
_0200536A:
	mov r0, #0x18
	bl sub_02004400
	add r5, r0, #0
	b _020053A4
_02005374:
	mov r0, #0x19
	bl sub_02004400
	add r5, r0, #0
	b _020053A4
_0200537E:
	mov r0, #0x1a
	bl sub_02004400
	add r5, r0, #0
	b _020053A4
_02005388:
	mov r0, #0x1b
	bl sub_02004400
	add r5, r0, #0
	b _020053A4
_02005392:
	mov r0, #0x1c
	bl sub_02004400
	add r5, r0, #0
	b _020053A4
_0200539C:
	mov r0, #0x1d
	bl sub_02004400
	add r5, r0, #0
_020053A4:
	ldr r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005328

	thumb_func_start sub_020053A8
sub_020053A8: ; 0x020053A8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	cmp r0, #1
	bne _020053BC
	mov r0, #0xc
	bl sub_02004400
	add r6, r0, #0
	mov r4, #0
	b _020053CA
_020053BC:
	cmp r0, #7
	bne _020053EE
	mov r0, #0xd
	bl sub_02004400
	add r6, r0, #0
	mov r4, #7
_020053CA:
	cmp r5, #0
	bne _020053E0
	add r0, r4, #0
	bl sub_020047E8
	bl sub_020054F0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02004A60
_020053E0:
	add r0, r4, #0
	bl sub_020047E8
	add r1, r5, #0
	bl sub_020C815C
	strb r5, [r6]
_020053EE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020053A8

	thumb_func_start sub_020053F0
sub_020053F0: ; 0x020053F0
	push {r4, lr}
	mov r0, #0xc
	bl sub_02004400
	add r4, r0, #0
	mov r0, #0xd
	bl sub_02004400
	mov r1, #0
	strb r1, [r4]
	strb r1, [r0]
	pop {r4, pc}
	thumb_func_end sub_020053F0

	thumb_func_start sub_02005408
sub_02005408: ; 0x02005408
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	bl sub_020047E8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020C8230
	cmp r6, #0
	bne _02005428
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02004958
_02005428:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02005408

	thumb_func_start sub_0200542C
sub_0200542C: ; 0x0200542C
	push {r4, lr}
	add r4, r1, #0
	bpl _02005434
	mov r4, #0
_02005434:
	cmp r4, #0x7f
	ble _0200543A
	mov r4, #0x7f
_0200543A:
	bl sub_020047E8
	add r1, r4, #0
	bl sub_020C821C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200542C

	thumb_func_start sub_02005448
sub_02005448: ; 0x02005448
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020054D4
	bl sub_0200480C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02005464
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02005448

	thumb_func_start sub_02005464
sub_02005464: ; 0x02005464
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_020C9644
	cmp r5, #1
	beq _02005474
	cmp r5, #8
	bne _02005478
_02005474:
	mov r4, #0x7f
	b _0200547E
_02005478:
	cmp r0, #0
	beq _02005496
	ldrb r4, [r0, #2]
_0200547E:
	bl sub_020378CC
	cmp r0, #1
	bne _02005496
	add r0, r4, #0
	mov r1, #5
	bl sub_020F2998
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0200542C
_02005496:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005464

	thumb_func_start sub_02005498
sub_02005498: ; 0x02005498
	push {r3, lr}
	bl sub_020C9644
	cmp r0, #0
	bne _020054A6
	mov r0, #0
	pop {r3, pc}
_020054A6:
	ldrb r0, [r0, #2]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02005498

	thumb_func_start sub_020054AC
sub_020054AC: ; 0x020054AC
	push {r4, lr}
	add r4, r1, #0
	bl sub_020054D4
	bl sub_0200480C
	add r1, r4, #0
	bl sub_0200542C
	pop {r4, pc}
	thumb_func_end sub_020054AC

	thumb_func_start sub_020054C0
sub_020054C0: ; 0x020054C0
	push {r4, lr}
	add r4, r0, #0
	bpl _020054CA
	bl GF_AssertFail
_020054CA:
	add r0, r4, #0
	bl sub_020C81F0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020054C0

	thumb_func_start sub_020054D4
sub_020054D4: ; 0x020054D4
	push {r3, lr}
	cmp r0, #0
	bne _020054DE
	mov r0, #0xff
	pop {r3, pc}
_020054DE:
	bl sub_020C9644
	cmp r0, #0
	bne _020054EA
	mov r0, #0xff
	pop {r3, pc}
_020054EA:
	ldrb r0, [r0, #5]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020054D4

	thumb_func_start sub_020054F0
sub_020054F0: ; 0x020054F0
	ldr r3, _020054F4 ; =sub_020C834C
	bx r3
	.align 2, 0
_020054F4: .word sub_020C834C
	thumb_func_end sub_020054F0

	thumb_func_start sub_020054F8
sub_020054F8: ; 0x020054F8
	push {r3, lr}
	bl sub_02005504
	bl sub_020C9724
	pop {r3, pc}
	thumb_func_end sub_020054F8

	thumb_func_start sub_02005504
sub_02005504: ; 0x02005504
	push {r3, lr}
	bl sub_020C9644
	cmp r0, #0
	bne _02005512
	mov r0, #0
	pop {r3, pc}
_02005512:
	ldrh r0, [r0]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02005504

	thumb_func_start sub_02005518
sub_02005518: ; 0x02005518
	ldr r3, _0200551C ; =sub_02004924
	bx r3
	.align 2, 0
_0200551C: .word sub_02004924
	thumb_func_end sub_02005518

	thumb_func_start sub_02005520
sub_02005520: ; 0x02005520
	push {r4, lr}
	add r4, r0, #0
	bl sub_020DA9CC
	add r3, r0, #0
	ldr r0, _02005548 ; =0x021D05E8
	mov r1, #1
	strb r1, [r0]
	ldr r2, _0200554C ; =0x021D05F8
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
	add r0, r3, #0
	pop {r4, pc}
	nop
_02005548: .word 0x021D05E8
_0200554C: .word 0x021D05F8
	thumb_func_end sub_02005520

	thumb_func_start sub_02005550
sub_02005550: ; 0x02005550
	push {r3, lr}
	bl sub_020043F8
	ldr r0, _02005564 ; =0x021D05E8
	mov r1, #0
	strb r1, [r0]
	bl sub_020DAA60
	pop {r3, pc}
	nop
_02005564: .word 0x021D05E8
	thumb_func_end sub_02005550

	thumb_func_start sub_02005568
sub_02005568: ; 0x02005568
	push {r3, lr}
	ldr r0, _02005580 ; =0x021D05E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0200557E
	bl sub_020DAA60
	cmp r0, #0
	beq _0200557E
	bl GF_AssertFail
_0200557E:
	pop {r3, pc}
	.align 2, 0
_02005580: .word 0x021D05E8
	thumb_func_end sub_02005568

	thumb_func_start sub_02005584
sub_02005584: ; 0x02005584
	push {r3, lr}
	ldr r0, _020055A4 ; =0x021D05E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0200559C
	ldr r0, _020055A8 ; =0x021D05F8
	bl sub_020DA9CC
	cmp r0, #0
	beq _0200559C
	bl GF_AssertFail
_0200559C:
	bl sub_02004940
	pop {r3, pc}
	nop
_020055A4: .word 0x021D05E8
_020055A8: .word 0x021D05F8
	thumb_func_end sub_02005584

	thumb_func_start sub_020055AC
sub_020055AC: ; 0x020055AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_020043F8
	mov r0, #0x10
	bl sub_02004400
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02004400
	add r4, r0, #0
	cmp r5, #0xe
	beq _020055D0
	cmp r5, #0xf
	beq _020055D0
	bl GF_AssertFail
_020055D0:
	cmp r5, #0xe
	bne _020055DE
	ldrb r0, [r6]
	cmp r0, #0
	bne _020055DE
	bl GF_AssertFail
_020055DE:
	cmp r5, #0xf
	bne _020055EC
	ldrb r0, [r4]
	cmp r0, #0
	bne _020055EC
	bl GF_AssertFail
_020055EC:
	cmp r5, #0xe
	bne _020055F8
	mov r0, #0
	bl sub_02004400
	pop {r4, r5, r6, pc}
_020055F8:
	mov r0, #1
	bl sub_02004400
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020055AC

	thumb_func_start sub_02005600
sub_02005600: ; 0x02005600
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_020043F8
	mov r0, #0x10
	bl sub_02004400
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02004400
	add r4, r0, #0
	cmp r5, #0xe
	beq _02005624
	cmp r5, #0xf
	beq _02005624
	bl GF_AssertFail
_02005624:
	cmp r5, #0xe
	bne _02005652
	ldrb r0, [r6]
	cmp r0, #0
	bne _0200564C
	mov r0, #0
	bl sub_02004400
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020C7C90
	str r0, [r4]
	cmp r0, #0
	bne _02005646
	mov r0, #0
	pop {r4, r5, r6, pc}
_02005646:
	mov r0, #1
	strb r0, [r6]
	b _0200567A
_0200564C:
	bl GF_AssertFail
	b _0200567A
_02005652:
	ldrb r0, [r4]
	cmp r0, #0
	bne _02005676
	mov r0, #1
	bl sub_02004400
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020C7C90
	str r0, [r6]
	cmp r0, #0
	bne _02005670
	mov r0, #0
	pop {r4, r5, r6, pc}
_02005670:
	mov r0, #1
	strb r0, [r4]
	b _0200567A
_02005676:
	bl GF_AssertFail
_0200567A:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02005600

	thumb_func_start sub_02005680
sub_02005680: ; 0x02005680
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_020043F8
	mov r0, #0x10
	bl sub_02004400
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02004400
	add r4, r0, #0
	cmp r5, #0xe
	beq _020056A6
	cmp r5, #0xf
	beq _020056A6
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
_020056A6:
	cmp r5, #0xe
	bne _020056C8
	ldrb r0, [r6]
	cmp r0, #1
	bne _020056C2
	add r0, r5, #0
	bl sub_020055AC
	ldr r0, [r0]
	bl sub_020C7CD4
	mov r0, #0
	strb r0, [r6]
	pop {r4, r5, r6, pc}
_020056C2:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
_020056C8:
	ldrb r0, [r4]
	cmp r0, #1
	bne _020056E0
	add r0, r5, #0
	bl sub_020055AC
	ldr r0, [r0]
	bl sub_020C7CD4
	mov r0, #0
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_020056E0:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02005680

	thumb_func_start sub_020056E8
sub_020056E8: ; 0x020056E8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r3, r0, #0
	ldr r0, [r3, #0x10]
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r3, #0x14]
	str r0, [sp, #4]
	ldr r0, [r3, #0x18]
	str r0, [sp, #8]
	ldr r0, [r3, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r3, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r3]
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r0, [r0]
	ldr r3, [r3, #0xc]
	bl sub_020C7CEC
	add r5, r0, #0
	bne _02005720
	add r0, r4, #0
	bl sub_02005680
_02005720:
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020056E8

	thumb_func_start sub_02005728
sub_02005728: ; 0x02005728
	push {r3, lr}
	bl sub_020055AC
	ldr r0, [r0]
	bl sub_020C7E0C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02005728

	thumb_func_start sub_02005738
sub_02005738: ; 0x02005738
	push {r3, lr}
	bl sub_020055AC
	ldr r0, [r0]
	bl sub_020C7F18
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02005738

	thumb_func_start sub_02005748
sub_02005748: ; 0x02005748
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0x7f
	bls _02005752
	mov r4, #0x7f
_02005752:
	bl sub_020055AC
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_020C7EF4
	pop {r4, pc}
	thumb_func_end sub_02005748

	thumb_func_start sub_02005760
sub_02005760: ; 0x02005760
	push {r4, lr}
	add r4, r1, #0
	bl sub_020055AC
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_020C7E70
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02005760

	thumb_func_start sub_02005774
sub_02005774: ; 0x02005774
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_020378CC
	cmp r0, #1
	bne _0200579C
	add r0, r4, #0
	bl sub_020055AC
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #5
	bl sub_020F2998
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_020C7E48
	pop {r3, r4, r5, pc}
_0200579C:
	add r0, r4, #0
	bl sub_020055AC
	ldr r0, [r0]
	add r1, r5, #0
	bl sub_020C7E48
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005774

	thumb_func_start sub_020057AC
sub_020057AC: ; 0x020057AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r5, r3, #0
	bl sub_020043F8
	mov r0, #0x22
	bl sub_02004400
	add r4, r0, #0
	cmp r5, #0xe
	beq _020057D0
	cmp r5, #0xf
	beq _020057D0
	bl GF_AssertFail
_020057D0:
	add r0, r6, #0
	bl sub_020C9788
	add r7, r0, #0
	bne _020057E4
	bl GF_AssertFail
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020057E4:
	ldr r0, [r7]
	lsl r0, r0, #8
	lsr r0, r0, #8
	bl sub_020C98B4
	add r6, r0, #0
	bne _020057FC
	bl GF_AssertFail
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020057FC:
	cmp r5, #0xe
	bne _0200584A
	ldr r0, [sp, #0x48]
	add r1, r6, #0
	bl sub_0201AA8C
	str r0, [r4]
	cmp r0, #0
	bne _02005818
	bl GF_AssertFail
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02005818:
	mov r1, #0
	add r2, r6, #0
	bl sub_020E5B44
	ldr r0, [r7]
	ldr r1, [r4]
	lsl r0, r0, #8
	lsr r0, r0, #8
	add r2, r6, #0
	mov r3, #0
	bl sub_020C98DC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02005842
	bl GF_AssertFail
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02005842:
	ldr r0, [r4]
	add r1, r6, #0
	bl sub_02005898
_0200584A:
	add r0, r5, #0
	bl sub_020055AC
	mov r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0x10]
	ldr r0, _02005894 ; =0x00003443
	str r1, [sp, #0x14]
	str r0, [sp, #0x20]
	ldr r0, [sp]
	str r1, [sp, #0x18]
	str r0, [sp, #0x24]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #4]
	add r1, r5, #0
	str r0, [sp, #0x2c]
	add r0, sp, #8
	str r6, [sp, #0x1c]
	bl sub_020056E8
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02005774
	mov r0, #0xf
	bl sub_02004400
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02005894: .word 0x00003443
	thumb_func_end sub_020057AC

	thumb_func_start sub_02005898
sub_02005898: ; 0x02005898
	push {r3, r4, r5, r6}
	mov r5, #0
	lsr r6, r1, #1
	beq _020058B2
	sub r2, r1, #1
_020058A2:
	sub r3, r2, r5
	ldrb r4, [r0, r5]
	ldrb r1, [r0, r3]
	strb r1, [r0, r5]
	add r5, r5, #1
	strb r4, [r0, r3]
	cmp r5, r6
	blo _020058A2
_020058B2:
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end sub_02005898

	thumb_func_start sub_020058B8
sub_020058B8: ; 0x020058B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_020043F8
	mov r0, #0xf
	bl sub_02004400
	add r4, r0, #0
	mov r0, #0x22
	bl sub_02004400
	add r6, r0, #0
	cmp r5, #0xe
	beq _020058DC
	cmp r5, #0xf
	beq _020058DC
	bl GF_AssertFail
_020058DC:
	add r0, r5, #0
	bl sub_02005728
	ldrb r0, [r4]
	cmp r0, #1
	bne _020058F2
	mov r0, #0
	strb r0, [r4]
	ldr r0, [r6]
	bl sub_0201AB0C
_020058F2:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020058B8

	thumb_func_start sub_020058F4
sub_020058F4: ; 0x020058F4
	push {r4, lr}
	bl sub_020C906C
	add r4, r0, #0
	cmp r4, #1
	bne _02005904
	bl sub_02005908
_02005904:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020058F4

	thumb_func_start sub_02005908
sub_02005908: ; 0x02005908
	ldr r3, _0200590C ; =sub_020C907C
	bx r3
	.align 2, 0
_0200590C: .word sub_020C907C
	thumb_func_end sub_02005908

	thumb_func_start sub_02005910
sub_02005910: ; 0x02005910
	ldr r3, _02005914 ; =sub_020C9014
	bx r3
	.align 2, 0
_02005914: .word sub_020C9014
	thumb_func_end sub_02005910

	thumb_func_start sub_02005918
sub_02005918: ; 0x02005918
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020047E8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020C827C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005918

	thumb_func_start sub_0200592C
sub_0200592C: ; 0x0200592C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020054D4
	bl sub_0200480C
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02005918
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200592C

	thumb_func_start sub_02005944
sub_02005944: ; 0x02005944
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0200480C
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02005918
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005944

	thumb_func_start sub_02005958
sub_02005958: ; 0x02005958
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020047E8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020C829C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005958

	thumb_func_start sub_0200596C
sub_0200596C: ; 0x0200596C
	push {r4, lr}
	add r4, r1, #0
	bl sub_020047E8
	add r1, r4, #0
	bl sub_020C82DC
	pop {r4, pc}
	thumb_func_end sub_0200596C

	thumb_func_start sub_0200597C
sub_0200597C: ; 0x0200597C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020C7994
	ldr r0, _0200598C ; =0x021D05E8
	str r4, [r0, #8]
	pop {r4, pc}
	nop
_0200598C: .word 0x021D05E8
	thumb_func_end sub_0200597C

	thumb_func_start sub_02005990
sub_02005990: ; 0x02005990
	push {r4, lr}
	add r4, r0, #0
	mov r0, #7
	bl sub_02004400
	str r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02005990

	thumb_func_start sub_020059A0
sub_020059A0: ; 0x020059A0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	bl sub_02004400
	str r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020059A0

	thumb_func_start sub_020059B0
sub_020059B0: ; 0x020059B0
	push {r3, lr}
	mov r0, #8
	bl sub_02004400
	ldrh r1, [r0]
	cmp r1, #0
	bne _020059C6
	mov r1, #0
	strh r1, [r0]
	add r0, r1, #0
	pop {r3, pc}
_020059C6:
	sub r1, r1, #1
	strh r1, [r0]
	ldrh r0, [r0]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020059B0

	thumb_func_start sub_020059D0
sub_020059D0: ; 0x020059D0
	ldr r3, _020059D4 ; =sub_020C7988
	bx r3
	.align 2, 0
_020059D4: .word sub_020C7988
	thumb_func_end sub_020059D0

	thumb_func_start sub_020059D8
sub_020059D8: ; 0x020059D8
	ldr r0, _020059DC ; =0x021D0620
	bx lr
	.align 2, 0
_020059DC: .word 0x021D0620
	thumb_func_end sub_020059D8

	thumb_func_start sub_020059E0
sub_020059E0: ; 0x020059E0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x13
	bl sub_02004400
	strb r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020059E0

	thumb_func_start sub_020059F0
sub_020059F0: ; 0x020059F0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	str r0, [sp, #4]
	mov r0, #4
	add r2, r5, #0
	add r3, r4, #0
	bl sub_02005A10
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020059F0

	thumb_func_start sub_02005A10
sub_02005A10: ; 0x02005A10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x16
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02004400
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	ldr r3, [sp, #8]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02005AB0
	mov r0, #0
	strb r0, [r4]
	mov r0, #5
	bl sub_020043B0
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02005A10

	thumb_func_start sub_02005A4C
sub_02005A4C: ; 0x02005A4C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	str r3, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	add r5, r1, #0
	add r4, r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #8]
	mov r0, #4
	add r2, r5, #0
	add r3, r4, #0
	bl sub_02005A74
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02005A4C

	thumb_func_start sub_02005A74
sub_02005A74: ; 0x02005A74
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #9
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02004400
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	ldr r3, [sp, #8]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02005AB0
	ldr r0, [sp, #0x20]
	str r0, [r4]
	mov r0, #6
	bl sub_020043B0
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02005A74

	thumb_func_start sub_02005AB0
sub_02005AB0: ; 0x02005AB0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	mov r0, #2
	add r5, r1, #0
	add r7, r3, #0
	bl sub_02004400
	add r4, r0, #0
	mov r0, #0
	add r1, r6, #0
	bl sub_02005F50
	mov r0, #0
	bl sub_02004A60
	add r0, r5, #0
	bl sub_02004A9C
	add r0, r7, #0
	bl sub_020059A0
	add r0, r5, #0
	bl sub_020054F8
	str r0, [r4]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	bl sub_020059E0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02005AB0

	thumb_func_start sub_02005AEC
sub_02005AEC: ; 0x02005AEC
	ldr r3, _02005AF4 ; =sub_020C7FAC
	add r1, r0, #0
	mov r0, #7
	bx r3
	.align 2, 0
_02005AF4: .word sub_020C7FAC
	thumb_func_end sub_02005AEC

	thumb_func_start sub_02005AF8
sub_02005AF8: ; 0x02005AF8
	push {r3, lr}
	cmp r0, #0
	bne _02005B0C
	ldr r0, _02005B18 ; =0x0000A7FE
	bl sub_02005AEC
	mov r0, #0
	bl sub_02005910
	b _02005B12
_02005B0C:
	ldr r0, _02005B1C ; =0x00003FFF
	bl sub_02005AEC
_02005B12:
	bl sub_020058F4
	pop {r3, pc}
	.align 2, 0
_02005B18: .word 0x0000A7FE
_02005B1C: .word 0x00003FFF
	thumb_func_end sub_02005AF8

	thumb_func_start sub_02005B20
sub_02005B20: ; 0x02005B20
	push {r3, lr}
	bl sub_02005F88
	cmp r0, #0
	bne _02005B4A
	mov r0, #0
	bl sub_020047E8
	bl sub_020054F0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02005B4A
	bl sub_02005FD8
	mov r0, #1
	add r1, r0, #0
	bl sub_020053A8
	pop {r3, pc}
_02005B4A:
	bl sub_02005FA0
	pop {r3, pc}
	thumb_func_end sub_02005B20

	thumb_func_start sub_02005B50
sub_02005B50: ; 0x02005B50
	ldr r3, _02005B54 ; =sub_020C7F74
	bx r3
	.align 2, 0
_02005B54: .word sub_020C7F74
	thumb_func_end sub_02005B50

	thumb_func_start sub_02005B58
sub_02005B58: ; 0x02005B58
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x35
	bl sub_02004400
	strb r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02005B58

	thumb_func_start sub_02005B68
sub_02005B68: ; 0x02005B68
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x36
	bl sub_02004400
	strb r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02005B68

	thumb_func_start sub_02005B78
sub_02005B78: ; 0x02005B78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bne _02005B86
	bl GF_AssertFail
_02005B86:
	cmp r4, #0xf
	bls _02005B8E
	bl GF_AssertFail
_02005B8E:
	add r0, r5, #0
	bl sub_020054D4
	bl sub_0200480C
	bl sub_020047E8
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020C8374
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02005B78

	thumb_func_start sub_02005BA8
sub_02005BA8: ; 0x02005BA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x37
	bl sub_02004400
	add r4, r0, #0
	ldrb r1, [r4]
	add r0, r5, #0
	lsl r2, r1, #2
	ldr r1, _02005BE0 ; =0x020F5711
	ldrb r1, [r1, r2]
	bl sub_020054AC
	ldrb r2, [r4]
	ldr r1, _02005BE4 ; =0x0000FFFF
	mov r0, #4
	lsl r3, r2, #2
	ldr r2, _02005BE8 ; =0x020F5710
	ldrb r2, [r2, r3]
	bl sub_02005918
	ldrb r0, [r4, #1]
	cmp r0, #8
	blo _02005BDC
	mov r0, #0
	strb r0, [r4, #1]
_02005BDC:
	pop {r3, r4, r5, pc}
	nop
_02005BE0: .word 0x020F5711
_02005BE4: .word 0x0000FFFF
_02005BE8: .word 0x020F5710
	thumb_func_end sub_02005BA8

	thumb_func_start sub_02005BEC
sub_02005BEC: ; 0x02005BEC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x38
	bl sub_02004400
	strb r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02005BEC

	thumb_func_start sub_02005BFC
sub_02005BFC: ; 0x02005BFC
	push {r3, lr}
	mov r0, #0x38
	bl sub_02004400
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02005BFC

	thumb_func_start sub_02005C08
sub_02005C08: ; 0x02005C08
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x39
	bl sub_02004400
	strb r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02005C08

	thumb_func_start sub_02005C18
sub_02005C18: ; 0x02005C18
	push {r3, lr}
	mov r0, #0x39
	bl sub_02004400
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02005C18

	thumb_func_start sub_02005C24
sub_02005C24: ; 0x02005C24
	push {r3, r4, r5, lr}
	bl sub_02005C18
	cmp r0, #0
	bne _02005C36
	mov r0, #1
	bl sub_02005C08
	b _02005C3C
_02005C36:
	mov r0, #0
	bl sub_02005C08
_02005C3C:
	bl sub_02004AAC
	cmp r0, #0
	bne _02005C6A
	bl sub_02004A90
	add r4, r0, #0
	bl sub_0200496C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02005C6C
	cmp r4, r0
	beq _02005C60
	add r0, r4, #0
	bl sub_02005D48
_02005C60:
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02005408
_02005C6A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005C24

	thumb_func_start sub_02005C6C
sub_02005C6C: ; 0x02005C6C
	push {r3, r4}
	ldr r2, _02005C90 ; =0x020F5730
	mov r4, #0
_02005C72:
	lsl r3, r4, #2
	ldrh r1, [r2, r3]
	cmp r0, r1
	bne _02005C82
	ldr r0, _02005C94 ; =0x020F5732
	ldrh r0, [r0, r3]
	pop {r3, r4}
	bx lr
_02005C82:
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r4, #0x88
	blo _02005C72
	pop {r3, r4}
	bx lr
	.align 2, 0
_02005C90: .word 0x020F5730
_02005C94: .word 0x020F5732
	thumb_func_end sub_02005C6C

	thumb_func_start sub_02005C98
sub_02005C98: ; 0x02005C98
	push {r3, r4}
	ldr r2, _02005CBC ; =0x020F5730
	mov r4, #0
_02005C9E:
	lsl r3, r4, #2
	add r1, r2, r3
	ldrh r1, [r1, #2]
	cmp r0, r1
	bne _02005CAE
	ldrh r0, [r2, r3]
	pop {r3, r4}
	bx lr
_02005CAE:
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r4, #0x88
	blo _02005C9E
	pop {r3, r4}
	bx lr
	.align 2, 0
_02005CBC: .word 0x020F5730
	thumb_func_end sub_02005C98

	thumb_func_start sub_02005CC0
sub_02005CC0: ; 0x02005CC0
	push {r3, lr}
	mov r0, #0
	bl sub_020047E8
	ldr r2, _02005CF0 ; =0x0000A7FE
	mov r1, #0xf
	bl sub_020C82BC
	mov r0, #7
	bl sub_020047E8
	ldr r2, _02005CF0 ; =0x0000A7FE
	mov r1, #0xf
	bl sub_020C82BC
	mov r0, #2
	bl sub_020047E8
	ldr r2, _02005CF0 ; =0x0000A7FE
	mov r1, #0xf
	bl sub_020C82BC
	pop {r3, pc}
	nop
_02005CF0: .word 0x0000A7FE
	thumb_func_end sub_02005CC0

	thumb_func_start sub_02005CF4
sub_02005CF4: ; 0x02005CF4
	ldr r1, _02005CFC ; =0x021D05E8
	str r0, [r1, #0xc]
	bx lr
	nop
_02005CFC: .word 0x021D05E8
	thumb_func_end sub_02005CF4

	thumb_func_start sub_02005D00
sub_02005D00: ; 0x02005D00
	ldr r0, _02005D0C ; =0x021D05E8
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #4]
	bx lr
	nop
_02005D0C: .word 0x021D05E8
	thumb_func_end sub_02005D00

	thumb_func_start sub_02005D10
sub_02005D10: ; 0x02005D10
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_020054D4
	bl sub_0200480C
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	sub r1, r1, #2
	add r2, r1, #0
	add r3, r1, #0
	add r4, r0, #0
	bl sub_02006C14
	add r6, r0, #0
	bne _02005D3A
	add r0, r5, #0
	bl sub_02004920
_02005D3A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02005DA0
	add r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02005D10

	thumb_func_start sub_02005D48
sub_02005D48: ; 0x02005D48
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_020054D4
	add r5, r0, #0
	bl sub_0200480C
	add r6, r0, #0
	cmp r5, #7
	bne _02005D6A
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02005DC4
	add r5, r0, #0
	b _02005D84
_02005D6A:
	cmp r5, #1
	bne _02005D7C
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02005DF4
	add r5, r0, #0
	b _02005D84
_02005D7C:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
_02005D84:
	mov r0, #0
	bl sub_020059E0
	cmp r5, #0
	bne _02005D94
	add r0, r4, #0
	bl sub_02004920
_02005D94:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02005DA0
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02005D48

	thumb_func_start sub_02005DA0
sub_02005DA0: ; 0x02005DA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02004A60
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02005464
	mov r0, #1
	bl sub_020043B0
	cmp r4, #0
	bne _02005DC2
	mov r0, #0x80
	bl sub_02004958
_02005DC2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005DA0

	thumb_func_start sub_02005DC4
sub_02005DC4: ; 0x02005DC4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #3
	add r4, r2, #0
	bl sub_02005328
	bl sub_02004714
	add r0, r5, #0
	bl sub_02004764
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	sub r1, r1, #2
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02006C14
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02005DC4

	thumb_func_start sub_02005DF4
sub_02005DF4: ; 0x02005DF4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x13
	add r6, r2, #0
	bl sub_02004400
	mov r0, #0x20
	bl sub_02004400
	add r4, r0, #0
	mov r0, #0
	bl sub_020047E8
	bl sub_020054F0
	bl sub_02005504
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020051A4
	mov r0, #0
	bl sub_02004A08
	ldrh r0, [r4]
	bl sub_02005504
	add r2, r0, #0
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	sub r1, r1, #2
	add r0, r6, #0
	add r3, r1, #0
	bl sub_02006C14
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02005DF4

	thumb_func_start sub_02005E44
sub_02005E44: ; 0x02005E44
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x15
	bl sub_02004400
	ldrb r0, [r0]
	cmp r0, #4
	beq _02005E60
	bl GF_AssertFail
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02005E60:
	add r0, r4, #0
	bl sub_020054D4
	cmp r0, #7
	beq _02005E74
	bl GF_AssertFail
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02005E74:
	add r0, r4, #0
	mov r1, #1
	bl sub_02004784
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	add r1, r0, #0
	sub r1, #8
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02006C14
	add r5, r0, #0
	bne _02005E9A
	add r0, r4, #0
	bl sub_02004920
_02005E9A:
	mov r0, #0
	bl sub_02004A08
	add r0, r4, #0
	bl sub_02004A60
	mov r0, #1
	bl sub_020043B0
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02005E44

	thumb_func_start sub_02005EB4
sub_02005EB4: ; 0x02005EB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020C80C4
	add r0, r5, #0
	bl sub_02005C6C
	cmp r5, r0
	beq _02005ECE
	add r1, r4, #0
	bl sub_020C80C4
_02005ECE:
	add r0, r5, #0
	bl sub_020054D4
	cmp r0, #0xff
	beq _02005EE4
	bl sub_0200480C
	bl sub_020047E8
	bl sub_020C81D0
_02005EE4:
	bl sub_02005EEC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02005EB4

	thumb_func_start sub_02005EEC
sub_02005EEC: ; 0x02005EEC
	push {r3, lr}
	mov r0, #0
	bl sub_02004A08
	mov r0, #0
	bl sub_02004A60
	mov r0, #0
	bl sub_02004A9C
	mov r0, #0
	bl sub_02004AB8
	mov r0, #0
	bl sub_020043B0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02005EEC

	thumb_func_start sub_02005F10
sub_02005F10: ; 0x02005F10
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02004A90
	bl sub_020054D4
	cmp r0, #0xff
	beq _02005F4C
	bl sub_0200480C
	add r7, r0, #0
	cmp r4, #0
	bne _02005F36
	mov r1, #0
	add r2, r1, #0
	bl sub_02005408
_02005F36:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02005408
	add r0, r5, #0
	bl sub_02005990
	mov r0, #3
	bl sub_020043B0
_02005F4C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02005F10

	thumb_func_start sub_02005F50
sub_02005F50: ; 0x02005F50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02004A90
	bl sub_020054D4
	add r6, r0, #0
	cmp r6, #0xff
	beq _02005F86
	bl sub_02005F88
	cmp r0, #0
	bne _02005F80
	add r0, r6, #0
	bl sub_0200480C
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02005408
	add r0, r4, #0
	bl sub_02005990
_02005F80:
	mov r0, #4
	bl sub_020043B0
_02005F86:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02005F50

	thumb_func_start sub_02005F88
sub_02005F88: ; 0x02005F88
	push {r3, lr}
	mov r0, #7
	bl sub_02004400
	ldrh r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02005F88

	thumb_func_start sub_02005F94
sub_02005F94: ; 0x02005F94
	push {r3, lr}
	bl sub_020054D4
	bl sub_020054C0
	pop {r3, pc}
	thumb_func_end sub_02005F94

	thumb_func_start sub_02005FA0
sub_02005FA0: ; 0x02005FA0
	push {r3, r4, r5, lr}
	mov r0, #0x10
	bl sub_02004400
	add r5, r0, #0
	mov r0, #0x11
	bl sub_02004400
	add r4, r0, #0
	mov r0, #0
	bl sub_020C811C
	ldrb r0, [r5]
	cmp r0, #1
	bne _02005FC4
	mov r0, #0xe
	bl sub_02005728
_02005FC4:
	ldrb r0, [r4]
	cmp r0, #1
	bne _02005FD0
	mov r0, #0xf
	bl sub_02005728
_02005FD0:
	mov r0, #0
	bl sub_020043B0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005FA0

	thumb_func_start sub_02005FD8
sub_02005FD8: ; 0x02005FD8
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x10
	bl sub_02004400
	add r7, r0, #0
	mov r0, #0x11
	bl sub_02004400
	add r6, r0, #0
	mov r0, #7
	bl sub_020047E8
	mov r1, #0
	bl sub_020C8058
	bl sub_02005EEC
	mov r5, #0
	add r4, r5, #0
_02005FFE:
	add r0, r5, #3
	add r1, r4, #0
	bl sub_0200615C
	add r5, r5, #1
	cmp r5, #4
	blt _02005FFE
	mov r0, #0
	bl sub_02006300
	ldrb r0, [r7]
	cmp r0, #1
	bne _0200601E
	mov r0, #0xe
	bl sub_02005728
_0200601E:
	ldrb r0, [r6]
	cmp r0, #1
	bne _0200602A
	mov r0, #0xf
	bl sub_02005728
_0200602A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02005FD8

	thumb_func_start sub_0200602C
sub_0200602C: ; 0x0200602C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200604C
	add r6, r0, #0
	ldr r1, _02006048 ; =0x0000FFFF
	add r0, r5, #0
	add r2, r4, #0
	bl sub_020061B4
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02006048: .word 0x0000FFFF
	thumb_func_end sub_0200602C

	thumb_func_start sub_0200604C
sub_0200604C: ; 0x0200604C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_020054D4
	bl sub_0200480C
	mov r1, #0
	mvn r1, r1
	add r2, r1, #0
	add r3, r1, #0
	str r4, [sp]
	bl sub_020060BC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0200604C

	thumb_func_start sub_0200606C
sub_0200606C: ; 0x0200606C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0200480C
	mov r2, #0
	mvn r2, r2
	add r1, r4, #0
	add r3, r2, #0
	str r5, [sp]
	bl sub_020060BC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200606C

	thumb_func_start sub_02006088
sub_02006088: ; 0x02006088
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x20
	bl sub_02004400
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020054D4
	bl sub_0200480C
	add r6, r0, #0
	ldrh r0, [r4]
	bl sub_02005504
	mov r1, #0
	mvn r1, r1
	add r2, r0, #0
	add r0, r6, #0
	add r3, r1, #0
	str r5, [sp]
	bl sub_020060BC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02006088

	thumb_func_start sub_020060BC
sub_020060BC: ; 0x020060BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	ldr r5, [sp, #0x20]
	bl sub_02005BFC
	cmp r0, #1
	bne _020060E0
	ldr r0, _02006114 ; =0x000005DC
	sub r0, r5, r0
	cmp r0, #1
	bhi _020060E0
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020060E0:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02006C14
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02005464
	cmp r4, #0
	bne _0200610C
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02004920
_0200610C:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02006114: .word 0x000005DC
	thumb_func_end sub_020060BC

	thumb_func_start sub_02006118
sub_02006118: ; 0x02006118
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200604C
	add r6, r0, #0
	beq _0200612E
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020054AC
_0200612E:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02006118

	thumb_func_start sub_02006134
sub_02006134: ; 0x02006134
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200604C
	add r6, r0, #0
	beq _0200614C
	ldr r1, _02006150 ; =0x0000FFFF
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0200592C
_0200614C:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02006150: .word 0x0000FFFF
	thumb_func_end sub_02006134

	thumb_func_start sub_02006154
sub_02006154: ; 0x02006154
	ldr r3, _02006158 ; =sub_020C80C4
	bx r3
	.align 2, 0
_02006158: .word sub_020C80C4
	thumb_func_end sub_02006154

	thumb_func_start sub_0200615C
sub_0200615C: ; 0x0200615C
	push {r4, lr}
	add r4, r1, #0
	bl sub_020047E8
	add r1, r4, #0
	bl sub_020C8058
	pop {r4, pc}
	thumb_func_end sub_0200615C

	thumb_func_start sub_0200616C
sub_0200616C: ; 0x0200616C
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r5, #0
_02006172:
	add r0, r5, #3
	add r1, r4, #0
	bl sub_0200615C
	add r5, r5, #1
	cmp r5, #4
	blt _02006172
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200616C

	thumb_func_start sub_02006184
sub_02006184: ; 0x02006184
	push {r3, lr}
	bl sub_020054D4
	bl sub_020054C0
	pop {r3, pc}
	thumb_func_end sub_02006184

	thumb_func_start sub_02006190
sub_02006190: ; 0x02006190
	ldr r3, _02006194 ; =sub_020054C0
	bx r3
	.align 2, 0
_02006194: .word sub_020054C0
	thumb_func_end sub_02006190

	thumb_func_start sub_02006198
sub_02006198: ; 0x02006198
	push {r4, lr}
	mov r4, #0
_0200619C:
	add r0, r4, #3
	bl sub_020054C0
	cmp r0, #1
	bne _020061AA
	mov r0, #1
	pop {r4, pc}
_020061AA:
	add r4, r4, #1
	cmp r4, #4
	blt _0200619C
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02006198

	thumb_func_start sub_020061B4
sub_020061B4: ; 0x020061B4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020054D4
	bl sub_0200480C
	bl sub_020047E8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020C829C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020061B4

	thumb_func_start sub_020061D0
sub_020061D0: ; 0x020061D0
	push {r4, lr}
	add r4, r1, #0
	bl sub_0200480C
	bl sub_020047E8
	ldr r1, _020061E8 ; =0x0000FFFF
	add r2, r4, #0
	bl sub_020C829C
	pop {r4, pc}
	nop
_020061E8: .word 0x0000FFFF
	thumb_func_end sub_020061D0

	thumb_func_start sub_020061EC
sub_020061EC: ; 0x020061EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #3
	bl sub_0200480C
	ldr r7, _02006214 ; =0x0000FFFF
	add r4, r0, #0
	mov r5, #0
_020061FC:
	add r0, r4, r5
	bl sub_020047E8
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020C829C
	add r5, r5, #1
	cmp r5, #4
	blt _020061FC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02006214: .word 0x0000FFFF
	thumb_func_end sub_020061EC

	thumb_func_start sub_02006218
sub_02006218: ; 0x02006218
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x12
	str r1, [sp, #8]
	bl sub_02004400
	add r7, r0, #0
	mov r0, #0x24
	bl sub_02004400
	add r6, r0, #0
	mov r0, #0x35
	bl sub_02004400
	add r4, r0, #0
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl sub_02006A0C
	cmp r0, #1
	bne _02006246
	ldr r5, _020062D8 ; =0x000001EE
_02006246:
	ldr r0, _020062D8 ; =0x000001EE
	cmp r5, r0
	beq _02006258
	add r0, r0, #1
	cmp r5, r0
	bhi _02006256
	cmp r5, #0
	bne _02006258
_02006256:
	mov r5, #1
_02006258:
	ldr r0, _020062DC ; =0x000001B9
	cmp r5, r0
	bne _0200627A
	mov r1, #0
	ldr r0, [r6]
	mov r2, #0x7f
	add r3, r1, #0
	bl sub_02006D04
	cmp r0, #1
	bne _0200627A
	mov r0, #0
	bl sub_02006E3C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200627A:
	ldrb r0, [r7]
	cmp r0, #0
	bne _020062AC
	ldrb r0, [r4]
	cmp r0, #0
	bne _0200628C
	mov r0, #0
	bl sub_02006300
_0200628C:
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	sub r1, r0, #2
	add r2, r5, #0
	add r3, r1, #0
	bl sub_02006C14
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_02005464
	b _020062CC
_020062AC:
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #8
	add r1, r0, #0
	sub r1, #9
	add r2, r5, #0
	add r3, r1, #0
	bl sub_02006C14
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_02005464
_020062CC:
	mov r0, #0
	bl sub_02006E3C
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020062D8: .word 0x000001EE
_020062DC: .word 0x000001B9
	thumb_func_end sub_02006218

	thumb_func_start sub_020062E0
sub_020062E0: ; 0x020062E0
	push {lr}
	sub sp, #0xc
	add r3, r0, #0
	mov r0, #0xb
	str r0, [sp]
	str r1, [sp, #4]
	add r1, r3, #0
	mov r0, #0
	str r2, [sp, #8]
	add r2, r0, #0
	mov r3, #0x7f
	bl sub_02006920
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_020062E0

	thumb_func_start sub_02006300
sub_02006300: ; 0x02006300
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x10
	bl sub_02004400
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02004400
	add r4, r0, #0
	mov r0, #0xf
	bl sub_02004400
	mov r0, #1
	bl sub_020047E8
	add r1, r5, #0
	bl sub_020C8058
	mov r0, #8
	bl sub_020047E8
	add r1, r5, #0
	bl sub_020C8058
	ldrb r0, [r6]
	cmp r0, #1
	bne _02006344
	mov r0, #0xe
	bl sub_020058B8
	mov r0, #0xe
	bl sub_02005680
_02006344:
	ldrb r0, [r4]
	cmp r0, #1
	bne _02006356
	mov r0, #0xf
	bl sub_020058B8
	mov r0, #0xf
	bl sub_02005680
_02006356:
	bl sub_02006DB8
	bl sub_02006A30
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02006300

	thumb_func_start sub_02006360
sub_02006360: ; 0x02006360
	push {r3, r4, r5, lr}
	mov r0, #0x10
	bl sub_02004400
	add r5, r0, #0
	mov r0, #0x11
	bl sub_02004400
	add r4, r0, #0
	mov r0, #0xf
	bl sub_02004400
	mov r0, #0x2e
	bl sub_02004400
	ldrb r0, [r5]
	cmp r0, #1
	bne _0200638C
	mov r0, #0xe
	bl sub_02005738
	pop {r3, r4, r5, pc}
_0200638C:
	ldrb r0, [r4]
	cmp r0, #1
	bne _0200639A
	mov r0, #0xf
	bl sub_02005738
	pop {r3, r4, r5, pc}
_0200639A:
	mov r0, #0
	bl sub_020054C0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02006360

	thumb_func_start sub_020063A4
sub_020063A4: ; 0x020063A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r4, r1, #0
	str r0, [sp, #0x38]
	mov r0, #0x10
	add r6, r2, #0
	add r7, r3, #0
	ldr r5, [sp, #0x3c]
	bl sub_02004400
	str r0, [sp, #0x14]
	mov r0, #0x11
	bl sub_02004400
	str r0, [sp, #0x10]
	mov r0, #0x12
	bl sub_02004400
	str r0, [sp, #0xc]
	mov r0, #0x1e
	bl sub_02004400
	str r0, [sp, #8]
	mov r0, #0x24
	bl sub_02004400
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006A0C
	cmp r0, #1
	bne _020063EA
	ldr r4, _02006740 ; =0x000001EE
_020063EA:
	ldr r0, _02006740 ; =0x000001EE
	cmp r4, r0
	beq _020063FC
	add r0, r0, #1
	cmp r4, r0
	bhi _020063FA
	cmp r4, #0
	bne _020063FC
_020063FA:
	mov r4, #1
_020063FC:
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r0, r0, #1
	str r0, [sp, #0x1c]
	add r0, #0x40
	str r0, [sp, #0x1c]
	add r0, r7, #0
	str r0, [sp, #0x18]
	sub r0, #0x1e
	str r0, [sp, #0x18]
	cmp r0, #0
	bgt _02006418
	mov r0, #1
	str r0, [sp, #0x18]
_02006418:
	ldr r0, [sp, #0xc]
	mov r1, #0
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r0, #1
	bne _02006432
	mov r0, #0xe
	bl sub_020058B8
	mov r0, #0xe
	bl sub_02005680
_02006432:
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #1
	bne _02006446
	mov r0, #0xf
	bl sub_020058B8
	mov r0, #0xf
	bl sub_02005680
_02006446:
	ldr r0, _02006744 ; =0x000001B9
	cmp r4, r0
	bne _020064DA
	ldr r1, [sp, #4]
	cmp r1, #0xc
	bhi _020064D4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200645E: ; jump table
	.short _02006478 - _0200645E - 2 ; case 0
	.short _02006478 - _0200645E - 2 ; case 1
	.short _02006478 - _0200645E - 2 ; case 2
	.short _020064D4 - _0200645E - 2 ; case 3
	.short _020064D4 - _0200645E - 2 ; case 4
	.short _02006478 - _0200645E - 2 ; case 5
	.short _020064D4 - _0200645E - 2 ; case 6
	.short _020064D4 - _0200645E - 2 ; case 7
	.short _020064D4 - _0200645E - 2 ; case 8
	.short _020064D4 - _0200645E - 2 ; case 9
	.short _020064D4 - _0200645E - 2 ; case 10
	.short _02006478 - _0200645E - 2 ; case 11
	.short _02006478 - _0200645E - 2 ; case 12
_02006478:
	add r1, r5, #0
	bl sub_02006218
	ldr r0, [sp, #8]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0200649C
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
	b _020064CE
_0200649C:
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r0, #1
	bne _020064BA
	ldr r1, [sp, #0x1c]
	mov r0, #0xe
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02005748
	mov r0, #0xe
	add r1, r7, #0
	bl sub_02005774
	b _020064CE
_020064BA:
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
_020064CE:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020064D4:
	mov r0, #1
	bl sub_02006E3C
_020064DA:
	ldr r0, [sp, #4]
	cmp r0, #0xe
	bls _020064E2
	b _02006814
_020064E2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020064EE: ; jump table
	.short _0200650C - _020064EE - 2 ; case 0
	.short _0200652A - _020064EE - 2 ; case 1
	.short _02006550 - _020064EE - 2 ; case 2
	.short _02006596 - _020064EE - 2 ; case 3
	.short _020065E4 - _020064EE - 2 ; case 4
	.short _02006636 - _020064EE - 2 ; case 5
	.short _02006660 - _020064EE - 2 ; case 6
	.short _020066A8 - _020064EE - 2 ; case 7
	.short _020066DA - _020064EE - 2 ; case 8
	.short _0200670A - _020064EE - 2 ; case 9
	.short _0200674C - _020064EE - 2 ; case 10
	.short _0200677E - _020064EE - 2 ; case 11
	.short _020067A8 - _020064EE - 2 ; case 12
	.short _020067DA - _020064EE - 2 ; case 13
	.short _0200680C - _020064EE - 2 ; case 14
_0200650C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
	b _02006814
_0200652A:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
	ldr r1, [sp, #0x38]
	mov r0, #0x14
	bl sub_02006838
	b _02006814
_02006550:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	mov r2, #0x40
	bl sub_02005918
	add r0, r4, #0
	mov r1, #0x14
	add r2, r5, #0
	bl sub_02006AC0
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #8
	add r2, r6, #0
	bl sub_02005958
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	mov r1, #8
	bl sub_02006820
	b _02006814
_02006596:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
	ldr r1, [sp, #0x38]
	mov r0, #0x1e
	bl sub_02006838
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	mov r2, #0xc0
	bl sub_02005918
	add r0, r4, #0
	mov r1, #0x10
	add r2, r5, #0
	bl sub_02006AC0
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #8
	add r2, r6, #0
	bl sub_02005958
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	mov r1, #8
	bl sub_02006820
	b _02006814
_020065E4:
	mov r0, #0xe
	bl sub_02005600
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0xe
	bl sub_020057AC
	ldr r1, [sp, #0x1c]
	mov r0, #0xe
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02005748
	ldr r1, [sp, #0x38]
	mov r0, #0xf
	bl sub_02006838
	mov r1, #0x86
	mov r0, #0xe
	lsl r1, r1, #8
	bl sub_02005760
	ldr r0, [sp, #0x38]
	mov r1, #0x3f
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	mvn r1, r1
	bl sub_02006AF4
	mov r1, #0x86
	mov r0, #0xf
	lsl r1, r1, #8
	bl sub_02005760
	b _02006814
_02006636:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
	mov r0, #1
	add r2, r0, #0
	ldr r1, _02006748 ; =0x0000FFFF
	sub r2, #0xe1
	bl sub_02005918
	b _02006814
_02006660:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	mov r2, #0x2c
	bl sub_02005918
	mov r1, #0x3f
	add r0, r4, #0
	mvn r1, r1
	add r2, r5, #0
	bl sub_02006AC0
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #8
	add r2, r6, #0
	bl sub_02005958
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	mov r1, #8
	bl sub_02006820
	b _02006814
_020066A8:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
	ldr r1, [sp, #0x38]
	mov r0, #0xb
	bl sub_02006838
	mov r0, #1
	add r2, r0, #0
	ldr r1, _02006748 ; =0x0000FFFF
	sub r2, #0x81
	bl sub_02005918
	b _02006814
_020066DA:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
	ldr r1, [sp, #0x38]
	mov r0, #0x3c
	bl sub_02006838
	ldr r1, _02006748 ; =0x0000FFFF
	mov r0, #1
	mov r2, #0x3c
	bl sub_02005918
	b _02006814
_0200670A:
	mov r0, #0xe
	bl sub_02005600
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0xe
	bl sub_020057AC
	ldr r1, [sp, #0x1c]
	mov r0, #0xe
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02005748
	ldr r1, [sp, #0x38]
	mov r0, #0xd
	bl sub_02006838
	mov r1, #0x1a
	mov r0, #0xe
	lsl r1, r1, #0xa
	bl sub_02005760
	b _02006814
	.align 2, 0
_02006740: .word 0x000001EE
_02006744: .word 0x000001B9
_02006748: .word 0x0000FFFF
_0200674C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
	ldr r1, _0200681C ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
	ldr r1, [sp, #0x38]
	mov r0, #0x64
	bl sub_02006838
	mov r0, #1
	add r2, r0, #0
	ldr r1, _0200681C ; =0x0000FFFF
	sub r2, #0x2d
	bl sub_02005918
	b _02006814
_0200677E:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
	ldr r1, _0200681C ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
	mov r0, #1
	add r2, r0, #0
	ldr r1, _0200681C ; =0x0000FFFF
	sub r2, #0x61
	bl sub_02005918
	b _02006814
_020067A8:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
	ldr r1, _0200681C ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02005958
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02006820
	ldr r1, [sp, #0x38]
	mov r0, #0x14
	bl sub_02006838
	mov r0, #1
	add r2, r0, #0
	ldr r1, _0200681C ; =0x0000FFFF
	sub r2, #0x61
	bl sub_02005918
	b _02006814
_020067DA:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x7f
	bl sub_02006820
	add r0, r4, #0
	mov r1, #0x14
	add r2, r5, #0
	bl sub_02006AC0
	ldr r1, _0200681C ; =0x0000FFFF
	mov r0, #8
	add r2, r6, #0
	bl sub_02005958
	mov r0, #8
	add r1, r7, #0
	mov r2, #0
	bl sub_02005408
	b _02006814
_0200680C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006218
_02006814:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200681C: .word 0x0000FFFF
	thumb_func_end sub_020063A4

	thumb_func_start sub_02006820
sub_02006820: ; 0x02006820
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r2, #0
	bl sub_0200542C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02005464
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02006820

	thumb_func_start sub_02006838
sub_02006838: ; 0x02006838
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x23
	bl sub_02004400
	add r6, r0, #0
	bl sub_020068F8
	add r0, r4, #0
	mov r1, #8
	bl sub_0201AA8C
	add r4, r0, #0
	bne _0200685C
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
_0200685C:
	mov r2, #0
	strb r2, [r4]
	strb r2, [r4, #1]
	strb r2, [r4, #2]
	strb r2, [r4, #3]
	strb r2, [r4, #4]
	strb r2, [r4, #5]
	strb r2, [r4, #6]
	strb r2, [r4, #7]
	ldr r0, _02006880 ; =sub_02006884
	add r1, r4, #0
	str r5, [r4]
	bl sub_0200E320
	str r0, [r4, #4]
	str r0, [r6]
	pop {r4, r5, r6, pc}
	nop
_02006880: .word sub_02006884
	thumb_func_end sub_02006838

	thumb_func_start sub_02006884
sub_02006884: ; 0x02006884
	push {r4, r5, r6, lr}
	mov r0, #0x10
	add r5, r1, #0
	bl sub_02004400
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02004400
	ldr r2, [r5]
	add r4, r0, #0
	cmp r2, #0xa
	bne _020068B0
	mov r0, #1
	mov r1, #0
	bl sub_02005408
	ldr r2, [r5]
	mov r0, #8
	mov r1, #0
	bl sub_02005408
_020068B0:
	ldr r0, [r5]
	sub r0, r0, #1
	str r0, [r5]
	bl sub_02006360
	cmp r0, #0
	bne _020068C2
	mov r0, #0
	str r0, [r5]
_020068C2:
	ldr r0, [r5]
	cmp r0, #0
	bgt _020068F6
	mov r0, #0
	bl sub_02006300
	ldrb r0, [r6]
	cmp r0, #1
	bne _020068E0
	mov r0, #0xe
	bl sub_020058B8
	mov r0, #0xe
	bl sub_02005680
_020068E0:
	ldrb r0, [r4]
	cmp r0, #1
	bne _020068F2
	mov r0, #0xf
	bl sub_020058B8
	mov r0, #0xf
	bl sub_02005680
_020068F2:
	bl sub_020068F8
_020068F6:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02006884

	thumb_func_start sub_020068F8
sub_020068F8: ; 0x020068F8
	push {r3, r4, r5, lr}
	mov r0, #0x23
	bl sub_02004400
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0200691A
	bl sub_0201F988
	add r5, r0, #0
	ldr r0, [r4]
	bl sub_0200E390
	add r0, r5, #0
	bl sub_0201AB0C
_0200691A:
	mov r0, #0
	str r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020068F8

	thumb_func_start sub_02006920
sub_02006920: ; 0x02006920
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	mov r0, #6
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02004400
	add r4, r0, #0
	mov r0, #0x35
	bl sub_02004400
	str r0, [sp, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	bne _02006974
	mov r0, #0x29
	bl sub_02004400
	str r0, [sp, #0x24]
	mov r0, #0x2d
	bl sub_02004400
	str r0, [sp, #0x20]
	mov r0, #0x2a
	bl sub_02004400
	str r0, [sp, #0x1c]
	mov r0, #0x2b
	bl sub_02004400
	str r0, [sp, #0x18]
	mov r0, #0x2c
	bl sub_02004400
	str r0, [sp, #0x14]
	mov r0, #0x2e
	bl sub_02004400
	str r0, [sp, #0x10]
	b _020069A4
_02006974:
	mov r0, #0x2f
	bl sub_02004400
	str r0, [sp, #0x24]
	mov r0, #0x33
	bl sub_02004400
	str r0, [sp, #0x20]
	mov r0, #0x30
	bl sub_02004400
	str r0, [sp, #0x1c]
	mov r0, #0x31
	bl sub_02004400
	str r0, [sp, #0x18]
	mov r0, #0x32
	bl sub_02004400
	str r0, [sp, #0x14]
	mov r0, #0x34
	bl sub_02004400
	str r0, [sp, #0x10]
_020069A4:
	ldr r0, [sp, #0xc]
	ldrb r0, [r0]
	cmp r0, #1
	bne _020069B4
	ldrb r1, [r4]
	mov r0, #1
	eor r0, r1
	strb r0, [r4]
_020069B4:
	add r1, sp, #0x30
	ldrb r1, [r1, #0x18]
	add r0, r5, #0
	bl sub_02006A0C
	cmp r0, #1
	bne _020069C4
	ldr r5, _02006A08 ; =0x000001EE
_020069C4:
	cmp r5, #0
	beq _02006A04
	add r1, sp, #0x30
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _020069E8
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldrb r0, [r1, #0x18]
	add r1, r5, #0
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_020063A4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_020069E8:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #8]
	str r6, [r1]
	ldr r1, [sp, #0x20]
	strh r5, [r1]
	ldr r1, [sp, #0x1c]
	str r7, [r1]
	ldr r1, [sp, #0x18]
	str r2, [r1]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x14]
	str r2, [r1]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
_02006A04:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02006A08: .word 0x000001EE
	thumb_func_end sub_02006920

	thumb_func_start sub_02006A0C
sub_02006A0C: ; 0x02006A0C
	mov r2, #0x7b
	lsl r2, r2, #2
	cmp r0, r2
	bne _02006A1C
	cmp r1, #1
	bne _02006A1C
	mov r0, #1
	bx lr
_02006A1C:
	ldr r1, _02006A2C ; =0x000001EE
	cmp r0, r1
	bne _02006A26
	mov r0, #1
	bx lr
_02006A26:
	mov r0, #0
	bx lr
	nop
_02006A2C: .word 0x000001EE
	thumb_func_end sub_02006A0C

	thumb_func_start sub_02006A30
sub_02006A30: ; 0x02006A30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r0, #0x29
	bl sub_02004400
	add r5, r0, #0
	mov r0, #0x2d
	bl sub_02004400
	add r4, r0, #0
	mov r0, #0x2a
	bl sub_02004400
	add r6, r0, #0
	mov r0, #0x2b
	bl sub_02004400
	add r7, r0, #0
	mov r0, #0x2c
	bl sub_02004400
	str r0, [sp]
	mov r0, #0x2e
	bl sub_02004400
	str r0, [sp, #4]
	mov r0, #0x2f
	bl sub_02004400
	str r0, [sp, #8]
	mov r0, #0x33
	bl sub_02004400
	str r0, [sp, #0xc]
	mov r0, #0x30
	bl sub_02004400
	str r0, [sp, #0x10]
	mov r0, #0x31
	bl sub_02004400
	str r0, [sp, #0x14]
	mov r0, #0x32
	bl sub_02004400
	str r0, [sp, #0x18]
	mov r0, #0x34
	bl sub_02004400
	mov r1, #0
	str r1, [r5]
	strh r1, [r4]
	str r1, [r6]
	ldr r2, [sp]
	str r1, [r7]
	str r1, [r2]
	ldr r2, [sp, #4]
	strb r1, [r2]
	ldr r2, [sp, #8]
	str r1, [r2]
	ldr r2, [sp, #0xc]
	strh r1, [r2]
	ldr r2, [sp, #0x10]
	str r1, [r2]
	ldr r2, [sp, #0x14]
	str r1, [r2]
	ldr r2, [sp, #0x18]
	str r1, [r2]
	strb r1, [r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02006A30

	thumb_func_start sub_02006AC0
sub_02006AC0: ; 0x02006AC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x12
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02004400
	mov r1, #1
	strb r1, [r0]
	add r0, r1, #0
	bl sub_02006E3C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02006218
	add r5, r0, #0
	ldr r1, _02006AF0 ; =0x0000FFFF
	mov r0, #8
	add r2, r4, #0
	bl sub_02005918
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02006AF0: .word 0x0000FFFF
	thumb_func_end sub_02006AC0

	thumb_func_start sub_02006AF4
sub_02006AF4: ; 0x02006AF4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x12
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02004400
	mov r1, #1
	strb r1, [r0]
	mov r0, #0xf
	bl sub_02005600
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xf
	bl sub_020057AC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02006AF4

	thumb_func_start sub_02006B24
sub_02006B24: ; 0x02006B24
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_020054F8
	add r0, r4, #0
	bl sub_02006C04
	bl sub_02004A90
	bl sub_020054D4
	cmp r0, #0xff
	beq _02006B48
	mov r1, #1
	bl sub_020053A8
	b _02006B4E
_02006B48:
	mov r0, #1
	bl sub_02004A2C
_02006B4E:
	mov r0, #0x1d
	bl sub_02004400
	bl sub_020046E8
	add r0, r4, #0
	mov r1, #3
	bl sub_02004784
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	sub r1, r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02006C14
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl sub_02005464
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02006B24

	thumb_func_start sub_02006B84
sub_02006B84: ; 0x02006B84
	push {r4, lr}
	mov r0, #0xe
	bl sub_02004400
	add r4, r0, #0
	mov r0, #2
	bl sub_020054C0
	cmp r0, #0
	beq _02006B9C
	mov r0, #1
	pop {r4, pc}
_02006B9C:
	ldrh r0, [r4]
	cmp r0, #0
	beq _02006BAA
	sub r0, r0, #1
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_02006BAA:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02006B84

	thumb_func_start sub_02006BB0
sub_02006BB0: ; 0x02006BB0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	bl sub_020047E8
	add r1, r4, #0
	bl sub_020C8058
	mov r0, #6
	bl sub_02005328
	bl sub_02004714
	pop {r4, pc}
	thumb_func_end sub_02006BB0

	thumb_func_start sub_02006BCC
sub_02006BCC: ; 0x02006BCC
	push {r3, lr}
	mov r0, #0xe
	bl sub_02004400
	bl sub_02006B84
	cmp r0, #1
	bne _02006BE0
	mov r0, #1
	pop {r3, pc}
_02006BE0:
	mov r0, #0
	bl sub_02006BB0
	bl sub_02004A90
	bl sub_020054D4
	cmp r0, #0xff
	beq _02006BF8
	mov r1, #0
	bl sub_020053A8
_02006BF8:
	mov r0, #0
	bl sub_02004A2C
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02006BCC

	thumb_func_start sub_02006C04
sub_02006C04: ; 0x02006C04
	push {r3, lr}
	mov r0, #0xe
	bl sub_02004400
	mov r1, #0xf
	strh r1, [r0]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02006C04

	thumb_func_start sub_02006C14
sub_02006C14: ; 0x02006C14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r0, sp, #0x10
	ldrh r6, [r0, #0x10]
	ldrb r0, [r0, #0x14]
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	cmp r0, #1
	bne _02006C6A
	bl sub_02005C18
	cmp r0, #1
	bne _02006C6A
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	bl sub_02005C6C
	add r1, sp, #0x10
	ldrh r1, [r1, #0x10]
	add r4, r0, #0
	cmp r1, r4
	beq _02006C6A
	add r6, r4, #0
	ldr r7, _02006C88 ; =0x000002BD
	bl sub_02004AB8
	add r0, r4, #0
	bl sub_020054D4
	mov r1, #0
	mvn r1, r1
	cmp r5, r1
	beq _02006C5E
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
_02006C5E:
	cmp r0, #7
	bne _02006C6A
	add r0, r4, #0
	mov r1, #1
	bl sub_02004784
_02006C6A:
	ldr r0, [sp, #4]
	bl sub_020047E8
	ldr r3, [sp, #8]
	add r1, r5, #0
	add r2, r7, #0
	str r6, [sp]
	bl sub_020CA8E4
	add r4, r0, #0
	bl sub_02005CC0
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02006C88: .word 0x000002BD
	thumb_func_end sub_02006C14

	thumb_func_start sub_02006C8C
sub_02006C8C: ; 0x02006C8C
	push {r4, lr}
	mov r0, #0x10
	bl sub_02004400
	add r4, r0, #0
	mov r0, #0x1e
	bl sub_02004400
	ldrb r0, [r0]
	cmp r0, #1
	bne _02006CC2
	ldrb r0, [r4]
	cmp r0, #1
	bne _02006CBA
	mov r0, #0xe
	bl sub_02005738
	cmp r0, #0
	bne _02006CC2
	bl sub_02006DB8
	mov r0, #1
	pop {r4, pc}
_02006CBA:
	bl sub_02006DB8
	mov r0, #1
	pop {r4, pc}
_02006CC2:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02006C8C

	thumb_func_start sub_02006CC8
sub_02006CC8: ; 0x02006CC8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x1f
	bl sub_02004400
	add r5, r0, #0
	mov r0, #0x36
	bl sub_02004400
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202CE70
	cmp r0, #0
	bne _02006CEA
	mov r0, #0
	pop {r4, r5, r6, pc}
_02006CEA:
	ldrb r0, [r4]
	cmp r0, #1
	bne _02006CF4
	mov r0, #0
	pop {r4, r5, r6, pc}
_02006CF4:
	ldrb r0, [r5]
	cmp r0, #1
	beq _02006CFE
	mov r0, #1
	pop {r4, r5, r6, pc}
_02006CFE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02006CC8

	thumb_func_start sub_02006D04
sub_02006D04: ; 0x02006D04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	add r5, r2, #0
	add r7, r3, #0
	bl sub_020059D8
	str r0, [sp]
	mov r0, #0x1e
	bl sub_02004400
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_02006CC8
	cmp r0, #0
	bne _02006D2C
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02006D2C:
	mov r0, #0
	bl sub_02006300
	bl sub_02006DB8
	mov r0, #0xe
	bl sub_02005600
	bl sub_0201FD44
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x13
	sub r1, r1, r2
	mov r0, #0x13
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #0
	bl sub_0202CE7C
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_0202CE80
	mov r0, #0xe
	bl sub_020055AC
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	bl sub_020059D8
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r0, #0x7d
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r4, r0
	str r0, [sp, #0x28]
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	add r0, #0x40
	str r0, [sp, #0x2c]
	add r0, sp, #8
	mov r1, #0xe
	str r5, [sp, #0x24]
	bl sub_020056E8
	add r4, r0, #0
	mov r0, #0xe
	add r1, r5, #0
	bl sub_02005774
	ldr r0, [sp, #4]
	mov r1, #1
	strb r1, [r0]
	mov r0, #0
	bl sub_02006E3C
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02006D04

	thumb_func_start sub_02006DB8
sub_02006DB8: ; 0x02006DB8
	push {r3, r4, r5, lr}
	mov r0, #0x10
	bl sub_02004400
	add r5, r0, #0
	mov r0, #0x1e
	bl sub_02004400
	add r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	bne _02006DDC
	mov r0, #0xe
	bl sub_020058B8
	mov r0, #0xe
	bl sub_02005680
_02006DDC:
	mov r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02006DB8

	thumb_func_start sub_02006DE4
sub_02006DE4: ; 0x02006DE4
	push {lr}
	sub sp, #0x1c
	mov r0, #2
	str r0, [sp]
	bl sub_020059D8
	mov r1, #0x7d
	str r0, [sp, #4]
	lsl r1, r1, #4
	mov r0, #0x1f
	str r1, [sp, #8]
	tst r0, r1
	beq _02006E04
	mov r0, #0x1f
	bic r1, r0
	str r1, [sp, #8]
_02006E04:
	ldr r0, _02006E1C ; =0x00004174
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, sp, #0
	bl sub_02005520
	add sp, #0x1c
	pop {pc}
	nop
_02006E1C: .word 0x00004174
	thumb_func_end sub_02006DE4

	thumb_func_start sub_02006E20
sub_02006E20: ; 0x02006E20
	ldr r3, _02006E24 ; =sub_02005550
	bx r3
	.align 2, 0
_02006E24: .word sub_02005550
	thumb_func_end sub_02006E20

	thumb_func_start sub_02006E28
sub_02006E28: ; 0x02006E28
	push {r4, lr}
	add r4, r0, #0
	bl sub_020059D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202CEB8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02006E28

	thumb_func_start sub_02006E3C
sub_02006E3C: ; 0x02006E3C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	bl sub_02004400
	strb r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02006E3C

	thumb_func_start sub_02006E4C
sub_02006E4C: ; 0x02006E4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x24
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02004400
	cmp r5, #0
	bne _02006E70
	ldr r0, [r0]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02006D04
	b _02006E7C
_02006E70:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02006D04
_02006E7C:
	cmp r0, #0
	bne _02006E98
	mov r0, #1
	bl sub_02006E3C
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0
	ldr r1, _02006E9C ; =0x000001B9
	add r2, r6, #0
	add r3, r4, #0
	str r0, [sp, #4]
	bl sub_020063A4
_02006E98:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02006E9C: .word 0x000001B9
	thumb_func_end sub_02006E4C

	thumb_func_start sub_02006EA0
sub_02006EA0: ; 0x02006EA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x24
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02004400
	cmp r5, #0
	bne _02006EC4
	ldr r0, [r0]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02006D04
	b _02006ED0
_02006EC4:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02006D04
_02006ED0:
	cmp r0, #0
	bne _02006EF4
	mov r0, #1
	bl sub_02006E3C
	mov r0, #0xb
	str r0, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	ldr r1, _02006EF8 ; =0x000001B9
	add r2, r6, #0
	str r0, [sp, #4]
	mov r0, #0
	add r3, r4, #0
	str r0, [sp, #8]
	bl sub_02006920
	mov r0, #1
_02006EF4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02006EF8: .word 0x000001B9
	thumb_func_end sub_02006EA0

	thumb_func_start sub_02006EFC
sub_02006EFC: ; 0x02006EFC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0202CE70
	cmp r0, #0
	bne _02006F0C
	mov r0, #0
	pop {r4, pc}
_02006F0C:
	add r0, r4, #0
	bl sub_0202CE7C
	mov r1, #0xf
	ldrsb r0, [r0, r1]
	sub r1, #0x2d
	cmp r0, r1
	bge _02006F20
	mov r0, #1
	pop {r4, pc}
_02006F20:
	cmp r0, #0x1e
	blt _02006F2C
	cmp r0, #0x80
	bge _02006F2C
	mov r0, #2
	pop {r4, pc}
_02006F2C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02006EFC

	thumb_func_start sub_02006F30
sub_02006F30: ; 0x02006F30
	cmp r0, #0xb
	bgt _02006F4A
	bge _02006F4E
	cmp r0, #5
	bgt _02006F52
	cmp r0, #0
	blt _02006F52
	beq _02006F4E
	cmp r0, #1
	beq _02006F4E
	cmp r0, #5
	beq _02006F4E
	b _02006F52
_02006F4A:
	cmp r0, #0xc
	bne _02006F52
_02006F4E:
	mov r0, #1
	bx lr
_02006F52:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02006F30

	thumb_func_start sub_02006F58
sub_02006F58: ; 0x02006F58
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _02006F66
	bl GF_AssertFail
_02006F66:
	ldr r1, [r4]
	mov r0, #0
	bl FS_UnloadOverlay
	cmp r0, #1
	beq _02006F76
	bl GF_AssertFail
_02006F76:
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end sub_02006F58

	thumb_func_start sub_02006F7C
sub_02006F7C: ; 0x02006F7C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02006FAC
	bl sub_02007124
	mov r2, #0
	add r3, r0, #0
_02006F8C:
	ldr r1, [r3, #4]
	cmp r1, #1
	bne _02006FA2
	ldr r1, [r3]
	cmp r4, r1
	bne _02006FA2
	lsl r1, r2, #3
	add r0, r0, r1
	bl sub_02006F58
	pop {r4, pc}
_02006FA2:
	add r2, r2, #1
	add r3, #8
	cmp r2, #8
	blt _02006F8C
	pop {r4, pc}
	thumb_func_end sub_02006F7C

	thumb_func_start sub_02006FAC
sub_02006FAC: ; 0x02006FAC
	push {lr}
	sub sp, #0x2c
	add r2, r0, #0
	add r0, sp, #0
	mov r1, #0
	bl FS_LoadOverlayInfo
	cmp r0, #1
	beq _02006FC2
	bl GF_AssertFail
_02006FC2:
	mov r0, #2
	ldr r2, [sp, #4]
	lsl r0, r0, #0x18
	cmp r2, r0
	bhi _02006FD8
	lsr r0, r0, #1
	cmp r2, r0
	blo _02006FD8
	add sp, #0x2c
	mov r0, #1
	pop {pc}
_02006FD8:
	mov r0, #1
	ldr r1, _02006FF4 ; =OSi_IntrTable
	lsl r0, r0, #0xe
	add r0, r1, r0
	cmp r2, r0
	bhi _02006FEE
	cmp r2, r1
	blo _02006FEE
	add sp, #0x2c
	mov r0, #2
	pop {pc}
_02006FEE:
	mov r0, #0
	add sp, #0x2c
	pop {pc}
	.align 2, 0
_02006FF4: .word OSi_IntrTable
	thumb_func_end sub_02006FAC

	thumb_func_start sub_02006FF8
sub_02006FF8: ; 0x02006FF8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	str r1, [sp]
	bl sub_020070AC
	cmp r0, #0
	bne _02007010
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02007010:
	add r0, r5, #0
	bl sub_02006FAC
	add r7, r0, #0
	bl sub_02007124
	add r3, r0, #0
	mov r6, #0
	add r1, r3, #0
_02007022:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _02007034
	lsl r1, r6, #3
	add r2, r3, r1
	mov r0, #1
	str r0, [r2, #4]
	str r5, [r3, r1]
	b _0200703C
_02007034:
	add r6, r6, #1
	add r1, #8
	cmp r6, #8
	blt _02007022
_0200703C:
	cmp r6, #8
	blt _02007048
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02007048:
	sub r6, r7, #1
	cmp r6, #1
	bhi _02007058
	mov r0, #0
	mvn r0, r0
	bl sub_020D86D8
	str r0, [sp]
_02007058:
	cmp r4, #0
	beq _02007066
	cmp r4, #1
	beq _02007072
	cmp r4, #2
	beq _0200707E
	b _0200708A
_02007066:
	mov r0, #0
	add r1, r5, #0
	bl sub_02007180
	add r4, r0, #0
	b _02007092
_02007072:
	mov r0, #0
	add r1, r5, #0
	bl sub_02007188
	add r4, r0, #0
	b _02007092
_0200707E:
	mov r0, #0
	add r1, r5, #0
	bl sub_020071C0
	add r4, r0, #0
	b _02007092
_0200708A:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02007092:
	cmp r6, #1
	bhi _0200709C
	ldr r0, [sp]
	bl sub_020D86D8
_0200709C:
	cmp r4, #0
	bne _020070A8
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020070A8:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02006FF8

	thumb_func_start sub_020070AC
sub_020070AC: ; 0x020070AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r1, sp, #0xc
	add r2, sp, #8
	add r4, r0, #0
	bl sub_02007148
	cmp r0, #0
	bne _020070C4
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020070C4:
	add r0, r4, #0
	bl sub_02006FAC
	bl sub_02007124
	add r5, r0, #0
	mov r4, #0
	add r6, sp, #4
	add r7, sp, #0
_020070D6:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _02007114
	ldr r0, [r5]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02007148
	cmp r0, #1
	bne _02007114
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	cmp r2, r1
	blo _020070F8
	ldr r0, [sp]
	cmp r2, r0
	blo _0200710E
_020070F8:
	ldr r3, [sp, #8]
	cmp r3, r1
	bls _02007104
	ldr r0, [sp]
	cmp r3, r0
	bls _0200710E
_02007104:
	cmp r2, r1
	bhi _02007114
	ldr r0, [sp]
	cmp r3, r0
	blo _02007114
_0200710E:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02007114:
	add r4, r4, #1
	add r5, #8
	cmp r4, #8
	blt _020070D6
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020070AC

	thumb_func_start sub_02007124
sub_02007124: ; 0x02007124
	cmp r0, #0
	beq _02007130
	cmp r0, #1
	beq _02007134
	cmp r0, #2
	beq _02007138
_02007130:
	ldr r0, _0200713C ; =0x021D0DF0
	bx lr
_02007134:
	ldr r0, _02007140 ; =0x021D0E30
	bx lr
_02007138:
	ldr r0, _02007144 ; =0x021D0E70
	bx lr
	.align 2, 0
_0200713C: .word 0x021D0DF0
_02007140: .word 0x021D0E30
_02007144: .word 0x021D0E70
	thumb_func_end sub_02007124

	thumb_func_start sub_02007148
sub_02007148: ; 0x02007148
	push {r4, r5, lr}
	sub sp, #0x2c
	add r3, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	add r2, r3, #0
	bl FS_LoadOverlayInfo
	cmp r0, #0
	bne _0200716A
	bl GF_AssertFail
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, pc}
_0200716A:
	ldr r2, [sp, #4]
	str r2, [r5]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4]
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02007148

	thumb_func_start sub_02007180
sub_02007180: ; 0x02007180
	ldr r3, _02007184 ; =FS_LoadOverlay
	bx r3
	.align 2, 0
_02007184: .word FS_LoadOverlay
	thumb_func_end sub_02007180

	thumb_func_start sub_02007188
sub_02007188: ; 0x02007188
	push {lr}
	sub sp, #0x2c
	add r3, r0, #0
	add r2, r1, #0
	add r0, sp, #0
	add r1, r3, #0
	bl FS_LoadOverlayInfo
	cmp r0, #0
	bne _020071A2
	add sp, #0x2c
	mov r0, #0
	pop {pc}
_020071A2:
	add r0, sp, #0
	bl FS_LoadOverlayImage
	cmp r0, #0
	bne _020071B2
	add sp, #0x2c
	mov r0, #0
	pop {pc}
_020071B2:
	add r0, sp, #0
	bl FS_StartOverlay
	mov r0, #1
	add sp, #0x2c
	pop {pc}
	.align 2, 0
	thumb_func_end sub_02007188

	thumb_func_start sub_020071C0
sub_020071C0: ; 0x020071C0
	push {lr}
	sub sp, #0x74
	add r3, r0, #0
	add r2, r1, #0
	add r0, sp, #0
	add r1, r3, #0
	bl FS_LoadOverlayInfo
	cmp r0, #0
	bne _020071DA
	add sp, #0x74
	mov r0, #0
	pop {pc}
_020071DA:
	add r0, sp, #0x2c
	bl sub_020D7F98
	add r0, sp, #0
	add r1, sp, #0x2c
	bl FS_LoadOverlayImageAsync
	add r0, sp, #0x2c
	bl sub_020D82FC
	add r0, sp, #0x2c
	bl sub_020D82C0
	add r0, sp, #0
	bl FS_StartOverlay
	mov r0, #1
	add sp, #0x74
	pop {pc}
	thumb_func_end sub_020071C0

	thumb_func_start sub_02007200
sub_02007200: ; 0x02007200
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	cmp r5, #0
	beq _02007224
	add r0, r3, #0
	bl sub_0201AA8C
	add r4, r0, #0
	bne _0200721A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200721A:
	mov r1, #0
	add r2, r5, #0
	bl sub_020E5B44
	b _02007226
_02007224:
	mov r4, #0
_02007226:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200E320
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02007200

	thumb_func_start sub_02007234
sub_02007234: ; 0x02007234
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201F988
	cmp r0, #0
	beq _02007244
	bl sub_0201AB0C
_02007244:
	add r0, r4, #0
	bl sub_0200E390
	pop {r4, pc}
	thumb_func_end sub_02007234

	thumb_func_start sub_0200724C
sub_0200724C: ; 0x0200724C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #0x28
	bl sub_0201AA8C
	add r3, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	str r0, [r3, #0x10]
	str r0, [r3, #0x14]
	str r4, [r3, #0x18]
	str r0, [r3, #0x1c]
	str r0, [r3, #0x20]
	str r0, [r3, #0x24]
	add r0, r3, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200724C

	thumb_func_start sub_02007278
sub_02007278: ; 0x02007278
	ldr r3, _0200727C ; =sub_0201AB0C
	bx r3
	.align 2, 0
_0200727C: .word sub_0201AB0C
	thumb_func_end sub_02007278

	thumb_func_start sub_02007280
sub_02007280: ; 0x02007280
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	bl sub_0201AA8C
	str r0, [r4, #0x1c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02007280

	thumb_func_start sub_02007290
sub_02007290: ; 0x02007290
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02007290

	thumb_func_start sub_02007294
sub_02007294: ; 0x02007294
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0201AB0C
	mov r0, #0
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end sub_02007294

	thumb_func_start sub_020072A4
sub_020072A4: ; 0x020072A4
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_020072A4

	thumb_func_start sub_020072A8
sub_020072A8: ; 0x020072A8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	cmp r1, #3
	bhi _02007326
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020072BE: ; jump table
	.short _020072C6 - _020072BE - 2 ; case 0
	.short _020072DA - _020072BE - 2 ; case 1
	.short _020072F2 - _020072BE - 2 ; case 2
	.short _02007308 - _020072BE - 2 ; case 3
_020072C6:
	mov r1, #0
	ldr r0, [r4, #0xc]
	mvn r1, r1
	cmp r0, r1
	beq _020072D6
	mov r1, #2
	bl sub_02006FF8
_020072D6:
	mov r0, #1
	str r0, [r4, #0x10]
_020072DA:
	add r1, r4, #0
	ldr r2, [r4]
	add r0, r4, #0
	add r1, #0x14
	blx r2
	cmp r0, #1
	bne _02007326
	mov r0, #2
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _02007326
_020072F2:
	add r1, r4, #0
	ldr r2, [r4, #4]
	add r1, #0x14
	blx r2
	cmp r0, #1
	bne _02007326
	mov r0, #3
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _02007326
_02007308:
	add r1, r4, #0
	ldr r2, [r4, #8]
	add r1, #0x14
	blx r2
	cmp r0, #1
	bne _02007326
	mov r1, #0
	ldr r0, [r4, #0xc]
	mvn r1, r1
	cmp r0, r1
	beq _02007322
	bl sub_02006F7C
_02007322:
	mov r0, #1
	pop {r4, pc}
_02007326:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020072A8

	thumb_func_start sub_0200732C
sub_0200732C: ; 0x0200732C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r4, r1, #0
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #0x14]
	str r1, [sp, #0x10]
	str r1, [sp, #0xc]
	add r0, sp, #8
	strh r1, [r0]
	add r0, sp, #0x18
	add r5, r2, #0
	str r3, [sp, #4]
	bl sub_020D7F98
	add r0, sp, #0x18
	add r1, r4, #0
	bl sub_020D8278
	add r0, sp, #0x18
	mov r1, #0xc
	mov r2, #0
	bl sub_020D83DC
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #2
	bl sub_020D83CC
	ldr r4, [sp, #0x14]
	add r0, sp, #0x18
	add r1, r4, #4
	mov r2, #0
	bl sub_020D83DC
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #4
	bl sub_020D83CC
	add r0, sp, #0x18
	add r1, sp, #8
	mov r2, #2
	bl sub_020D83CC
	add r0, sp, #8
	ldrh r0, [r0]
	cmp r0, r5
	bgt _02007392
	bl GF_AssertFail
_02007392:
	ldr r0, [sp, #0x14]
	mov r2, #0
	add r6, r4, r0
	add r0, sp, #0x18
	add r1, r6, #4
	bl sub_020D83DC
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #4
	bl sub_020D83CC
	add r4, #0xc
	lsl r1, r5, #3
	add r0, sp, #0x18
	add r1, r4, r1
	mov r2, #0
	ldr r7, [sp, #0x14]
	bl sub_020D83DC
	add r0, sp, #0x18
	add r1, sp, #0x10
	mov r2, #4
	bl sub_020D83CC
	add r0, sp, #0x18
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020D83CC
	add r2, r6, r7
	ldr r1, [sp, #0x10]
	add r2, #8
	add r2, r2, r1
	ldr r1, [sp, #4]
	add r0, sp, #0x18
	add r1, r1, r2
	mov r2, #0
	bl sub_020D83DC
	ldr r0, [sp, #0x78]
	cmp r0, #0
	bne _020073EE
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	sub r0, r1, r0
_020073EE:
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _020073F8
	bl GF_AssertFail
_020073F8:
	ldr r1, [sp]
	ldr r2, [sp, #0x14]
	add r0, sp, #0x18
	bl sub_020D83CC
	add r0, sp, #0x18
	bl sub_020D82C0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200732C

	thumb_func_start sub_0200740C
sub_0200740C: ; 0x0200740C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r1, #0
	mov r1, #0
	add r4, r0, #0
	str r1, [sp, #0x14]
	str r1, [sp, #0x10]
	str r1, [sp, #0xc]
	add r0, sp, #8
	strh r1, [r0]
	add r0, sp, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_020D7F98
	add r0, sp, #0x18
	add r1, r4, #0
	bl sub_020D8278
	add r0, sp, #0x18
	mov r1, #0xc
	mov r2, #0
	bl sub_020D83DC
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #2
	bl sub_020D83CC
	ldr r4, [sp, #0x14]
	add r0, sp, #0x18
	add r1, r4, #4
	mov r2, #0
	bl sub_020D83DC
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #4
	bl sub_020D83CC
	add r0, sp, #0x18
	add r1, sp, #8
	mov r2, #2
	bl sub_020D83CC
	add r0, sp, #8
	ldrh r0, [r0]
	cmp r0, r5
	bgt _02007472
	bl GF_AssertFail
_02007472:
	ldr r0, [sp, #0x14]
	mov r2, #0
	add r6, r4, r0
	add r0, sp, #0x18
	add r1, r6, #4
	bl sub_020D83DC
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #4
	bl sub_020D83CC
	add r4, #0xc
	lsl r1, r5, #3
	add r0, sp, #0x18
	add r1, r4, r1
	mov r2, #0
	ldr r7, [sp, #0x14]
	bl sub_020D83DC
	add r0, sp, #0x18
	add r1, sp, #0x10
	mov r2, #4
	bl sub_020D83CC
	add r0, sp, #0x18
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020D83CC
	add r2, r6, r7
	ldr r1, [sp, #0x10]
	add r2, #8
	add r2, r2, r1
	ldr r1, [sp, #4]
	add r0, sp, #0x18
	add r1, r1, r2
	mov r2, #0
	bl sub_020D83DC
	ldr r0, [sp, #0x78]
	cmp r0, #0
	bne _020074CE
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	sub r0, r1, r0
_020074CE:
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _020074D8
	bl GF_AssertFail
_020074D8:
	ldr r0, [sp, #0x7c]
	cmp r0, #0
	bne _020074E8
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	bl sub_0201AA8C
	b _020074F0
_020074E8:
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	bl sub_0201AACC
_020074F0:
	add r4, r0, #0
	ldr r2, [sp, #0x14]
	add r0, sp, #0x18
	add r1, r4, #0
	bl sub_020D83CC
	add r0, sp, #0x18
	bl sub_020D82C0
	add r0, r4, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200740C

	thumb_func_start sub_02007508
sub_02007508: ; 0x02007508
	push {r3, r4, lr}
	sub sp, #4
	mov r3, #0
	lsl r4, r1, #2
	ldr r1, _02007520 ; =0x0210F210
	str r3, [sp]
	ldr r1, [r1, r4]
	bl sub_0200732C
	add sp, #4
	pop {r3, r4, pc}
	nop
_02007520: .word 0x0210F210
	thumb_func_end sub_02007508

	thumb_func_start sub_02007524
sub_02007524: ; 0x02007524
	push {r4, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	lsl r4, r0, #2
	ldr r0, _0200753C ; =0x0210F210
	str r3, [sp, #4]
	ldr r0, [r0, r4]
	bl sub_0200740C
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_0200753C: .word 0x0210F210
	thumb_func_end sub_02007524

	thumb_func_start sub_02007540
sub_02007540: ; 0x02007540
	push {r4, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	mov r4, #1
	str r4, [sp, #4]
	lsl r4, r0, #2
	ldr r0, _0200755C ; =0x0210F210
	ldr r0, [r0, r4]
	bl sub_0200740C
	add sp, #8
	pop {r4, pc}
	nop
_0200755C: .word 0x0210F210
	thumb_func_end sub_02007540

	thumb_func_start sub_02007560
sub_02007560: ; 0x02007560
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	lsl r4, r1, #2
	ldr r1, _02007578 ; =0x0210F210
	ldr r1, [r1, r4]
	bl sub_0200732C
	add sp, #4
	pop {r3, r4, pc}
	nop
_02007578: .word 0x0210F210
	thumb_func_end sub_02007560

	thumb_func_start sub_0200757C
sub_0200757C: ; 0x0200757C
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	lsl r4, r0, #2
	ldr r0, _02007598 ; =0x0210F210
	ldr r0, [r0, r4]
	bl sub_0200740C
	add sp, #8
	pop {r4, pc}
	nop
_02007598: .word 0x0210F210
	thumb_func_end sub_0200757C

	thumb_func_start sub_0200759C
sub_0200759C: ; 0x0200759C
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	lsl r4, r0, #2
	ldr r0, _020075B8 ; =0x0210F210
	ldr r0, [r0, r4]
	bl sub_0200740C
	add sp, #8
	pop {r4, pc}
	nop
_020075B8: .word 0x0210F210
	thumb_func_end sub_0200759C

	thumb_func_start sub_020075BC
sub_020075BC: ; 0x020075BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r1, #0
	mov r1, #0
	add r4, r0, #0
	str r1, [sp, #0xc]
	str r1, [sp, #8]
	str r1, [sp, #4]
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0x10
	bl sub_020D7F98
	ldr r1, _02007684 ; =0x0210F210
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, sp, #0x10
	bl sub_020D8278
	add r0, sp, #0x10
	mov r1, #0xc
	mov r2, #0
	bl sub_020D83DC
	add r0, sp, #0x10
	add r1, sp, #0xc
	mov r2, #2
	bl sub_020D83CC
	ldr r4, [sp, #0xc]
	add r0, sp, #0x10
	add r1, r4, #4
	mov r2, #0
	bl sub_020D83DC
	add r0, sp, #0x10
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020D83CC
	add r0, sp, #0x10
	add r1, sp, #0
	mov r2, #2
	bl sub_020D83CC
	add r0, sp, #0
	ldrh r0, [r0]
	cmp r0, r5
	bgt _02007622
	bl GF_AssertFail
_02007622:
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r6, r4, r0
	add r0, sp, #0x10
	add r1, r6, #4
	bl sub_020D83DC
	add r0, sp, #0x10
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020D83CC
	add r4, #0xc
	lsl r1, r5, #3
	add r0, sp, #0x10
	add r1, r4, r1
	mov r2, #0
	ldr r7, [sp, #0xc]
	bl sub_020D83DC
	add r0, sp, #0x10
	add r1, sp, #8
	mov r2, #4
	bl sub_020D83CC
	add r0, sp, #0x10
	add r1, sp, #4
	mov r2, #4
	bl sub_020D83CC
	add r2, r6, r7
	ldr r1, [sp, #8]
	add r2, #8
	add r1, r2, r1
	add r0, sp, #0x10
	mov r2, #0
	bl sub_020D83DC
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	bne _0200767C
	bl GF_AssertFail
_0200767C:
	ldr r0, [sp, #0xc]
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02007684: .word 0x0210F210
	thumb_func_end sub_020075BC

	thumb_func_start sub_02007688
sub_02007688: ; 0x02007688
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x54
	bl sub_0201AA8C
	add r4, r0, #0
	beq _02007704
	mov r1, #0
	str r1, [r4, #0x48]
	bl sub_020D7F98
	ldr r1, _02007708 ; =0x0210F210
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_020D8278
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_020D83DC
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x48
	mov r2, #2
	bl sub_020D83CC
	ldr r1, [r4, #0x48]
	add r0, r4, #0
	add r1, r1, #4
	mov r2, #0
	bl sub_020D83DC
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020D83CC
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	mov r2, #2
	bl sub_020D83CC
	ldr r1, [r4, #0x48]
	ldr r0, [sp]
	mov r2, #0
	add r5, r1, r0
	add r0, r4, #0
	add r1, r5, #4
	bl sub_020D83DC
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020D83CC
	ldr r0, [sp]
	add r0, r5, r0
	str r0, [r4, #0x4c]
_02007704:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02007708: .word 0x0210F210
	thumb_func_end sub_02007688

	thumb_func_start sub_0200770C
sub_0200770C: ; 0x0200770C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020D82C0
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	thumb_func_end sub_0200770C

	thumb_func_start sub_0200771C
sub_0200771C: ; 0x0200771C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, r4
	bhi _02007732
	bl GF_AssertFail
_02007732:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020D83DC
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_020D83CC
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020D83CC
	ldr r2, [r5, #0x4c]
	ldr r1, [sp, #4]
	add r2, #8
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020D83DC
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r0, r6, #0
	sub r1, r2, r1
	bl sub_0201AA8C
	add r4, r0, #0
	beq _02007784
	ldr r3, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	sub r2, r3, r2
	bl sub_020D83CC
_02007784:
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200771C

	thumb_func_start sub_0200778C
sub_0200778C: ; 0x0200778C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, r4
	bhi _020077A2
	bl GF_AssertFail
_020077A2:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020D83DC
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_020D83CC
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020D83CC
	ldr r2, [r5, #0x4c]
	ldr r1, [sp, #4]
	add r2, #8
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020D83DC
	ldr r3, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	sub r2, r3, r2
	bl sub_020D83CC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200778C

	thumb_func_start sub_020077E8
sub_020077E8: ; 0x020077E8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	cmp r0, r4
	bhi _020077FC
	bl GF_AssertFail
_020077FC:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020D83DC
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_020D83CC
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020D83CC
	ldr r1, [sp]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020077E8

	thumb_func_start sub_0200782C
sub_0200782C: ; 0x0200782C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, r4
	bhi _02007842
	bl GF_AssertFail
_02007842:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020D83DC
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020D83CC
	ldr r2, [r5, #0x4c]
	ldr r1, [sp]
	add r2, #8
	add r1, r2, r1
	add r0, r5, #0
	add r1, r6, r1
	mov r2, #0
	bl sub_020D83DC
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_020D83CC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200782C

	thumb_func_start sub_0200787C
sub_0200787C: ; 0x0200787C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r3, #0
	mov r2, #0
	bl sub_020D83DC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020D83CC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200787C

	thumb_func_start sub_02007898
sub_02007898: ; 0x02007898
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, r4
	bhi _020078AE
	bl GF_AssertFail
_020078AE:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020D83DC
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020D83CC
	ldr r1, [r5, #0x4c]
	ldr r0, [sp]
	add r1, #8
	add r0, r1, r0
	str r0, [r6]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02007898

	thumb_func_start sub_020078D8
sub_020078D8: ; 0x020078D8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _020078E4 ; =sub_020D83CC
	bx r3
	nop
_020078E4: .word sub_020D83CC
	thumb_func_end sub_020078D8

	thumb_func_start sub_020078E8
sub_020078E8: ; 0x020078E8
	add r0, #0x50
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_020078E8

	thumb_func_start sub_020078F0
sub_020078F0: ; 0x020078F0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_02007A44
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007D2C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020078F0

	thumb_func_start sub_02007914
sub_02007914: ; 0x02007914
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_02007A44
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007D70
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02007914

	thumb_func_start sub_02007938
sub_02007938: ; 0x02007938
	push {lr}
	sub sp, #0xc
	str r3, [sp]
	ldr r3, [sp, #0x10]
	str r3, [sp, #4]
	ldr r3, [sp, #0x14]
	str r3, [sp, #8]
	mov r3, #0
	bl sub_02007950
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02007938

	thumb_func_start sub_02007950
sub_02007950: ; 0x02007950
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	str r2, [sp]
	ldr r3, [sp, #0x18]
	mov r2, #0
	bl sub_02007A44
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007DD0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02007950

	thumb_func_start sub_02007974
sub_02007974: ; 0x02007974
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	str r2, [sp]
	ldr r3, [sp, #0x10]
	mov r2, #0
	bl sub_02007A44
	ldr r3, [sp, #0x14]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007EB0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02007974

	thumb_func_start sub_02007994
sub_02007994: ; 0x02007994
	push {r4, lr}
	sub sp, #8
	add r4, r3, #0
	mov r3, #1
	str r3, [sp]
	ldr r3, [sp, #0x1c]
	bl sub_02007A44
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x14]
	str r1, [sp, #4]
	add r1, r4, #0
	bl sub_02007F00
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02007994

	thumb_func_start sub_020079BC
sub_020079BC: ; 0x020079BC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02007A44
	add r1, r4, #0
	bl sub_02007F48
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_020079BC

	thumb_func_start sub_020079D8
sub_020079D8: ; 0x020079D8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02007A44
	add r1, r4, #0
	bl sub_02007F64
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_020079D8

	thumb_func_start sub_020079F4
sub_020079F4: ; 0x020079F4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	mov r2, #0
	str r2, [sp]
	bl sub_02007A44
	add r1, r4, #0
	bl sub_02007F80
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_020079F4

	thumb_func_start sub_02007A0C
sub_02007A0C: ; 0x02007A0C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02007A44
	add r1, r4, #0
	bl sub_02007F9C
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02007A0C

	thumb_func_start sub_02007A28
sub_02007A28: ; 0x02007A28
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02007A44
	add r1, r4, #0
	bl sub_02007FB8
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02007A28

	thumb_func_start sub_02007A44
sub_02007A44: ; 0x02007A44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r7, r0, #0
	add r6, r3, #0
	str r1, [sp]
	cmp r5, #0
	bne _02007A58
	ldr r2, [sp, #0x18]
	cmp r2, #1
	bne _02007A6C
_02007A58:
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_020075BC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0201AACC
	add r4, r0, #0
	b _02007A7A
_02007A6C:
	bl sub_020075BC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0201AA8C
	add r4, r0, #0
_02007A7A:
	cmp r4, #0
	beq _02007ABE
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02007508
	cmp r5, #0
	beq _02007ABE
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _02007A9E
	ldr r1, [r4]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_0201AA8C
	b _02007AA8
_02007A9E:
	ldr r1, [r4]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_0201AACC
_02007AA8:
	add r5, r0, #0
	cmp r5, #0
	beq _02007ABC
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020D4BE8
	add r0, r4, #0
	bl sub_0201AB0C
_02007ABC:
	add r4, r5, #0
_02007ABE:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02007A44

	thumb_func_start sub_02007AC4
sub_02007AC4: ; 0x02007AC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, [sp, #0x24]
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020075BC
	str r0, [r5]
	cmp r6, #0
	bne _02007AE2
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _02007AEE
_02007AE2:
	ldr r1, [r5]
	add r0, r7, #0
	bl sub_0201AACC
	add r4, r0, #0
	b _02007AF8
_02007AEE:
	ldr r1, [r5]
	add r0, r7, #0
	bl sub_0201AA8C
	add r4, r0, #0
_02007AF8:
	cmp r4, #0
	beq _02007B3E
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r4, #0
	bl sub_02007508
	cmp r6, #0
	beq _02007B3E
	ldr r0, [r4]
	lsr r0, r0, #8
	str r0, [r5]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02007B20
	ldr r1, [r5]
	add r0, r7, #0
	bl sub_0201AA8C
	b _02007B28
_02007B20:
	ldr r1, [r5]
	add r0, r7, #0
	bl sub_0201AACC
_02007B28:
	add r5, r0, #0
	cmp r5, #0
	beq _02007B3C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020D4BE8
	add r0, r4, #0
	bl sub_0201AB0C
_02007B3C:
	add r4, r5, #0
_02007B3E:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02007AC4

	thumb_func_start sub_02007B44
sub_02007B44: ; 0x02007B44
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_02007C98
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007D2C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02007B44

	thumb_func_start sub_02007B68
sub_02007B68: ; 0x02007B68
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_02007C98
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007D70
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02007B68

	thumb_func_start sub_02007B8C
sub_02007B8C: ; 0x02007B8C
	push {lr}
	sub sp, #0xc
	str r3, [sp]
	ldr r3, [sp, #0x10]
	str r3, [sp, #4]
	ldr r3, [sp, #0x14]
	str r3, [sp, #8]
	mov r3, #0
	bl sub_02007BA4
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02007B8C

	thumb_func_start sub_02007BA4
sub_02007BA4: ; 0x02007BA4
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	str r2, [sp]
	ldr r3, [sp, #0x18]
	mov r2, #0
	bl sub_02007C98
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007DD0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02007BA4

	thumb_func_start sub_02007BC8
sub_02007BC8: ; 0x02007BC8
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	str r2, [sp]
	ldr r3, [sp, #0x10]
	mov r2, #0
	bl sub_02007C98
	ldr r3, [sp, #0x14]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007EB0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02007BC8

	thumb_func_start sub_02007BE8
sub_02007BE8: ; 0x02007BE8
	push {r4, lr}
	sub sp, #8
	add r4, r3, #0
	mov r3, #1
	str r3, [sp]
	ldr r3, [sp, #0x1c]
	bl sub_02007C98
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x14]
	str r1, [sp, #4]
	add r1, r4, #0
	bl sub_02007F00
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02007BE8

	thumb_func_start sub_02007C10
sub_02007C10: ; 0x02007C10
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02007C98
	add r1, r4, #0
	bl sub_02007F48
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02007C10

	thumb_func_start sub_02007C2C
sub_02007C2C: ; 0x02007C2C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02007C98
	add r1, r4, #0
	bl sub_02007F64
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02007C2C

	thumb_func_start sub_02007C48
sub_02007C48: ; 0x02007C48
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	mov r2, #0
	str r2, [sp]
	bl sub_02007C98
	add r1, r4, #0
	bl sub_02007F80
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02007C48

	thumb_func_start sub_02007C60
sub_02007C60: ; 0x02007C60
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02007C98
	add r1, r4, #0
	bl sub_02007F9C
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02007C60

	thumb_func_start sub_02007C7C
sub_02007C7C: ; 0x02007C7C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02007C98
	add r1, r4, #0
	bl sub_02007FB8
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02007C7C

	thumb_func_start sub_02007C98
sub_02007C98: ; 0x02007C98
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	add r4, sp, #8
	str r4, [sp, #4]
	bl sub_02007CAC
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02007C98

	thumb_func_start sub_02007CAC
sub_02007CAC: ; 0x02007CAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, [sp, #0x24]
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020077E8
	str r0, [r5]
	cmp r6, #0
	bne _02007CCA
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _02007CD6
_02007CCA:
	ldr r1, [r5]
	add r0, r7, #0
	bl sub_0201AACC
	add r4, r0, #0
	b _02007CE0
_02007CD6:
	ldr r1, [r5]
	add r0, r7, #0
	bl sub_0201AA8C
	add r4, r0, #0
_02007CE0:
	cmp r4, #0
	beq _02007D26
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl sub_0200778C
	cmp r6, #0
	beq _02007D26
	ldr r0, [r4]
	lsr r0, r0, #8
	str r0, [r5]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02007D08
	ldr r1, [r5]
	add r0, r7, #0
	bl sub_0201AA8C
	b _02007D10
_02007D08:
	ldr r1, [r5]
	add r0, r7, #0
	bl sub_0201AACC
_02007D10:
	add r5, r0, #0
	cmp r5, #0
	beq _02007D24
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020D4BE8
	add r0, r4, #0
	bl sub_0201AB0C
_02007D24:
	add r4, r5, #0
_02007D26:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02007CAC

	thumb_func_start sub_02007D2C
sub_02007D2C: ; 0x02007D2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x20]
	cmp r5, #0
	beq _02007D68
	add r1, sp, #8
	bl sub_020B70F4
	cmp r0, #0
	beq _02007D62
	cmp r4, #0
	bne _02007D50
	ldr r0, [sp, #8]
	ldr r4, [r0, #0x10]
_02007D50:
	str r7, [sp]
	ldr r2, [sp, #8]
	lsl r1, r6, #0x18
	ldr r0, [sp, #4]
	ldr r2, [r2, #0x14]
	lsr r1, r1, #0x18
	add r3, r4, #0
	bl sub_0201C0C0
_02007D62:
	add r0, r5, #0
	bl sub_0201AB0C
_02007D68:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02007D2C

	thumb_func_start sub_02007D70
sub_02007D70: ; 0x02007D70
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp, #4]
	ldr r4, [sp, #0x20]
	cmp r6, #0
	beq _02007DCC
	add r1, sp, #8
	bl sub_020B71D8
	cmp r0, #0
	beq _02007DC6
	cmp r4, #0
	bne _02007D94
	ldr r0, [sp, #8]
	ldr r4, [r0, #8]
_02007D94:
	lsl r1, r5, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_0201CC08
	cmp r0, #0
	beq _02007DB2
	ldr r2, [sp, #8]
	lsl r1, r5, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, #0xc
	add r3, r4, #0
	bl sub_0201C0A8
_02007DB2:
	ldr r0, [sp, #4]
	lsl r1, r5, #0x18
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, #0xc
	add r3, r4, #0
	bl sub_0201BF94
_02007DC6:
	add r0, r6, #0
	bl sub_0201AB0C
_02007DCC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02007D70

	thumb_func_start sub_02007DD0
sub_02007DD0: ; 0x02007DD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	ldr r5, [sp, #0x20]
	add r1, r0, #0
	beq _02007EA6
	add r1, sp, #4
	bl sub_020B7140
	cmp r0, #0
	beq _02007EA0
	ldr r0, [sp, #4]
	ldr r1, [r0, #0xc]
	add r1, r1, r7
	str r1, [r0, #0xc]
	cmp r5, #0
	bne _02007DFE
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	sub r5, r0, r7
_02007DFE:
	ldr r0, [sp, #4]
	add r1, r5, #0
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	cmp r4, #7
	bhi _02007E90
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02007E18: ; jump table
	.short _02007E90 - _02007E18 - 2 ; case 0
	.short _02007E90 - _02007E18 - 2 ; case 1
	.short _02007E28 - _02007E18 - 2 ; case 2
	.short _02007E5C - _02007E18 - 2 ; case 3
	.short _02007E90 - _02007E18 - 2 ; case 4
	.short _02007E90 - _02007E18 - 2 ; case 5
	.short _02007E42 - _02007E18 - 2 ; case 6
	.short _02007E76 - _02007E18 - 2 ; case 7
_02007E28:
	bl sub_020D0524
	ldr r0, [sp, #4]
	ldr r3, _02007EAC ; =0x020F5968
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl sub_020D0634
	b _02007EA0
_02007E42:
	bl sub_020D0774
	ldr r0, [sp, #4]
	ldr r3, _02007EAC ; =0x020F5968
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl sub_020D07F0
	b _02007EA0
_02007E5C:
	bl sub_020D067C
	ldr r0, [sp, #4]
	ldr r3, _02007EAC ; =0x020F5968
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl sub_020D0730
	b _02007EA0
_02007E76:
	bl sub_020D0830
	ldr r0, [sp, #4]
	ldr r3, _02007EAC ; =0x020F5968
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl sub_020D08AC
	b _02007EA0
_02007E90:
	ldr r0, [sp, #4]
	ldr r3, _02007EAC ; =0x020F5968
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
_02007EA0:
	ldr r0, [sp]
	bl sub_0201AB0C
_02007EA6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02007EAC: .word 0x020F5968
	thumb_func_end sub_02007DD0

	thumb_func_start sub_02007EB0
sub_02007EB0: ; 0x02007EB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	beq _02007EFC
	add r1, sp, #8
	bl sub_020B717C
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_020B7140
	cmp r0, #0
	beq _02007EF6
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02007EEA
	str r4, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, r7, #0
	add r3, r6, #0
	bl sub_020B87C4
	b _02007EF6
_02007EEA:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_020B86CC
_02007EF6:
	add r0, r5, #0
	bl sub_0201AB0C
_02007EFC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02007EB0

	thumb_func_start sub_02007F00
sub_02007F00: ; 0x02007F00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	mov r6, #0
	str r3, [sp]
	cmp r5, #0
	beq _02007F3E
	add r1, sp, #4
	bl sub_020B70A8
	cmp r0, #0
	beq _02007F38
	cmp r4, #0
	beq _02007F24
	ldr r0, [sp, #4]
	str r4, [r0, #0x10]
_02007F24:
	ldr r4, _02007F44 ; =0x020F5950
	lsl r6, r7, #2
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	ldr r2, [sp]
	ldr r3, [sp, #0x24]
	ldr r4, [r4, r6]
	blx r4
	ldr r0, [sp, #4]
	ldr r6, [r0, #0x10]
_02007F38:
	add r0, r5, #0
	bl sub_0201AB0C
_02007F3E:
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02007F44: .word 0x020F5950
	thumb_func_end sub_02007F00

	thumb_func_start sub_02007F48
sub_02007F48: ; 0x02007F48
	push {r4, lr}
	add r4, r0, #0
	beq _02007F60
	bl sub_020B70F4
	cmp r0, #0
	bne _02007F60
	add r0, r4, #0
	bl sub_0201AB0C
	mov r0, #0
	pop {r4, pc}
_02007F60:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02007F48

	thumb_func_start sub_02007F64
sub_02007F64: ; 0x02007F64
	push {r4, lr}
	add r4, r0, #0
	beq _02007F7C
	bl sub_020B71D8
	cmp r0, #0
	bne _02007F7C
	add r0, r4, #0
	bl sub_0201AB0C
	mov r0, #0
	pop {r4, pc}
_02007F7C:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02007F64

	thumb_func_start sub_02007F80
sub_02007F80: ; 0x02007F80
	push {r4, lr}
	add r4, r0, #0
	beq _02007F98
	bl sub_020B7140
	cmp r0, #0
	bne _02007F98
	add r0, r4, #0
	bl sub_0201AB0C
	mov r0, #0
	pop {r4, pc}
_02007F98:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02007F80

	thumb_func_start sub_02007F9C
sub_02007F9C: ; 0x02007F9C
	push {r4, lr}
	add r4, r0, #0
	beq _02007FB4
	bl sub_020B6EC8
	cmp r0, #0
	bne _02007FB4
	add r0, r4, #0
	bl sub_0201AB0C
	mov r0, #0
	pop {r4, pc}
_02007FB4:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02007F9C

	thumb_func_start sub_02007FB8
sub_02007FB8: ; 0x02007FB8
	push {r4, lr}
	add r4, r0, #0
	beq _02007FD0
	bl sub_020B6D18
	cmp r0, #0
	bne _02007FD0
	add r0, r4, #0
	bl sub_0201AB0C
	mov r0, #0
	pop {r4, pc}
_02007FD0:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02007FB8

	thumb_func_start sub_02007FD4
sub_02007FD4: ; 0x02007FD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0xce
	lsl r1, r1, #2
	add r5, r0, #0
	bl sub_0201AA8C
	add r4, r0, #0
	mov r2, #0xce
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_020D4858
	mov r0, #0xba
	lsl r0, r0, #2
	add r1, r0, #0
	add r3, r0, #0
	str r5, [r4, r0]
	mov r2, #0
	add r1, #0x48
	strb r2, [r4, r1]
	add r1, r0, #4
	str r2, [r4, r1]
	mov r1, #2
	lsl r1, r1, #0xe
	add r3, #8
	str r1, [r4, r3]
	add r3, r0, #0
	add r3, #0xc
	str r2, [r4, r3]
	mov r2, #0x80
	add r0, #0x10
	str r2, [r4, r0]
	add r0, r5, #0
	bl sub_0201AA8C
	mov r1, #0xbf
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	mov r1, #0xc0
	bl sub_0201AA8C
	mov r1, #3
	lsl r1, r1, #8
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	mov r2, #4
	bl sub_020D4858
	add r0, r5, #0
	mov r1, #0xc0
	bl sub_0201AA8C
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	mov r2, #4
	bl sub_020D4858
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_0200805A:
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0xac
	bl sub_020D4858
	add r6, r6, #1
	add r5, #0xac
	cmp r6, #4
	blt _0200805A
	bl sub_020B7350
	ldr r2, _02008114 ; =0x00000333
	mov r0, #0
	strb r0, [r4, r2]
	mov r0, #0x72
	sub r2, #0x4b
	add r1, r0, #0
	ldr r2, [r4, r2]
	add r1, #0x91
	bl sub_02007524
	add r1, sp, #0xc
	str r0, [sp, #4]
	bl sub_020B70A8
	ldr r0, [sp, #0xc]
	mov r1, #0xc3
	ldr r0, [r0, #4]
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	ldr r2, [r0, #8]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [sp, #0xc]
	add r1, #8
	ldr r0, [r0, #0xc]
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x14]
	str r0, [sp, #8]
	bl sub_02009CD0
	ldr r1, [sp, #8]
	mov r0, #0xbf
	lsl r0, r0, #2
	mov r2, #2
	ldrb r1, [r1]
	ldr r0, [r4, r0]
	lsl r2, r2, #0xe
	bl sub_020D4994
	mov r0, #0
	mov r7, #0xbf
	ldr r6, _02008118 ; =0x00005050
	mov ip, r0
	str r0, [sp]
	add r3, r0, #0
	lsl r7, r7, #2
_020080D0:
	ldr r2, [sp, #8]
	ldr r0, [sp]
	mov r1, #0
	add r2, r2, r0
_020080D8:
	ldr r5, [r4, r7]
	ldrb r0, [r2]
	add r5, r3, r5
	add r5, r1, r5
	add r1, r1, #1
	add r2, r2, #1
	strb r0, [r5, r6]
	cmp r1, #0x28
	blt _020080D8
	ldr r0, [sp]
	add r3, #0x80
	add r0, #0x50
	str r0, [sp]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0x50
	blt _020080D0
	ldr r0, [sp, #4]
	bl sub_0201AB0C
	ldr r0, _0200811C ; =0x00000331
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r0, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02008114: .word 0x00000333
_02008118: .word 0x00005050
_0200811C: .word 0x00000331
	thumb_func_end sub_02007FD4

	thumb_func_start sub_02008120
sub_02008120: ; 0x02008120
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl sub_020094FC
	add r0, r5, #0
	bl sub_0200994C
	bl sub_020C23F4
	mov r6, #0xb3
	mov r0, #0
	ldr r4, _02008494 ; =0x04000444
	lsl r6, r6, #2
	str r0, [r4]
	str r0, [sp, #0x18]
	add r0, r6, #0
	sub r0, #0xc
	ldr r1, [r5, r0]
	add r3, r6, #0
	ldr r2, [r5, r6]
	add r0, r6, #0
	sub r3, #8
	add r6, #0x20
	ldr r3, [r5, r3]
	ldr r6, [r5, r6]
	sub r0, #0x10
	ldr r0, [r5, r0]
	lsr r6, r6, #3
	lsl r3, r3, #0x1a
	orr r6, r3
	mov r3, #1
	lsl r3, r3, #0x1e
	lsl r0, r0, #0x14
	orr r3, r6
	lsl r1, r1, #0x17
	orr r0, r3
	lsl r2, r2, #0x1d
	orr r0, r1
	orr r0, r2
	str r0, [r4, #0x64]
	ldr r0, [sp, #0x18]
	ldr r7, _02008498 ; =0x020F5B04
	add r4, r5, #0
	str r0, [sp, #0x14]
_0200817A:
	ldr r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02008190
	ldr r0, [r4, #0x54]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	bne _02008190
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	beq _02008192
_02008190:
	b _020084FA
_02008192:
	ldr r2, [r4, #0x68]
	cmp r2, #0
	beq _020081A0
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x24
	blx r2
_020081A0:
	bl sub_020C23F4
	ldr r0, _0200849C ; =0x00000333
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _020081B2
	ldr r0, _020084A0 ; =0x04000454
	mov r1, #0
	str r1, [r0]
_020081B2:
	add r0, r4, #0
	bl sub_0200925C
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _020081C6
	mov r0, #1
	b _020081C8
_020081C6:
	mov r0, #0
_020081C8:
	mov r1, #0xbd
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r1, [sp, #0x14]
	mov r3, #0x40
	add r2, r2, r1
	mov r1, #4
	sub r0, r1, r0
	add r1, r2, #0
	lsr r1, r0
	ldr r0, _020084A4 ; =0x040004AC
	str r1, [r0]
	ldr r0, [r4, #0x28]
	ldrsh r3, [r4, r3]
	lsl r2, r0, #0xc
	mov r0, #0x26
	ldrsh r1, [r4, r0]
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	lsl r1, r0, #0xc
	mov r0, #0x24
	ldrsh r0, [r4, r0]
	add r0, r0, r3
	lsl r3, r0, #0xc
	ldr r0, _020084A8 ; =0x04000470
	str r3, [r0]
	str r1, [r0]
	str r2, [r0]
	ldrh r0, [r4, #0x38]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _020084AC ; =0x021094DC
	add r1, r0, r2
	ldrsh r0, [r0, r2]
	mov r2, #2
	ldrsh r1, [r1, r2]
	bl sub_020CFBB8
	ldrh r0, [r4, #0x3a]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _020084AC ; =0x021094DC
	add r1, r0, r2
	ldrsh r0, [r0, r2]
	mov r2, #2
	ldrsh r1, [r1, r2]
	bl sub_020CFBF4
	ldrh r0, [r4, #0x3c]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _020084AC ; =0x021094DC
	add r1, r0, r2
	ldrsh r0, [r0, r2]
	mov r2, #2
	ldrsh r1, [r1, r2]
	bl sub_020CFC30
	ldr r0, [r4, #0x28]
	mov r3, #0x40
	lsl r0, r0, #0xc
	neg r2, r0
	mov r0, #0x26
	ldrsh r1, [r4, r0]
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	ldrsh r3, [r4, r3]
	add r0, r1, r0
	lsl r0, r0, #0xc
	neg r1, r0
	mov r0, #0x24
	ldrsh r0, [r4, r0]
	add r0, r0, r3
	lsl r0, r0, #0xc
	neg r3, r0
	ldr r0, _020084A8 ; =0x04000470
	str r3, [r0]
	str r1, [r0]
	str r2, [r0]
	ldr r0, [r4, #0x50]
	lsl r1, r0, #0x11
	lsr r1, r1, #0x1b
	lsl r3, r0, #0x16
	lsl r2, r1, #0xa
	lsl r1, r0, #0x1b
	lsr r3, r3, #0x1b
	lsr r1, r1, #0x1b
	lsl r3, r3, #5
	orr r1, r3
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	lsl r1, r0, #2
	lsr r1, r1, #0x1b
	lsl r2, r1, #0xa
	lsl r1, r0, #0xc
	lsl r0, r0, #7
	lsr r0, r0, #0x1b
	lsr r1, r1, #0x1b
	lsl r0, r0, #5
	orr r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	add r1, r3, #0
	orr r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	orr r1, r0
	ldr r0, _020084B0 ; =0x040004C0
	str r1, [r0]
	ldr r1, _020084B4 ; =0x00004210
	add r0, r0, #4
	str r1, [r0]
	ldr r1, [r4]
	ldr r0, [r4, #0x54]
	lsl r1, r1, #0x19
	lsl r0, r0, #0x19
	lsr r1, r1, #0x1a
	lsr r0, r0, #0x1b
	lsl r2, r1, #0x18
	mov r1, #0xc0
	lsl r0, r0, #0x10
	orr r1, r2
	orr r1, r0
	ldr r0, _020084B8 ; =0x040004A4
	str r1, [r0]
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _0200834A
	add r0, r4, #0
	add r0, #0x5b
	ldrb r0, [r0]
	add r1, r4, #0
	add r1, #0x44
	lsl r3, r0, #4
	ldrb r2, [r1]
	ldr r1, [r7, r3]
	add r0, r7, r3
	add r6, r2, r1
	add r1, r4, #0
	add r1, #0x46
	ldrb r1, [r1]
	add r3, r4, #0
	add r3, #0x47
	str r1, [sp, #0x1c]
	add r1, r4, #0
	add r1, #0x45
	ldrb r3, [r3]
	ldrb r1, [r1]
	ldr r0, [r0, #4]
	mov ip, r3
	str r3, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r1, r0
	str r6, [sp, #4]
	str r0, [sp, #8]
	add r3, r3, r6
	str r3, [sp, #0xc]
	mov r3, ip
	add r0, r3, r0
	str r0, [sp, #0x10]
	mov r3, #0x24
	ldrsh r3, [r4, r3]
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	sub r3, #0x28
	add r2, r3, r2
	add r0, r0, r2
	mov r3, #0x26
	ldrsh r3, [r4, r3]
	mov r2, #0x2e
	lsl r0, r0, #0x10
	sub r3, #0x28
	add r1, r3, r1
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x28]
	asr r0, r0, #0x10
	add r2, r2, r1
	mov r1, #0x6e
	ldrsb r1, [r4, r1]
	sub r1, r2, r1
	ldr r2, [r4, #0x30]
	lsl r1, r1, #0x10
	add r2, r3, r2
	ldr r3, [sp, #0x1c]
	asr r1, r1, #0x10
	bl sub_020B7418
	b _020083B6
_0200834A:
	mov r0, #0x34
	ldrsh r1, [r4, r0]
	mov r0, #0x50
	mul r0, r1
	asr r3, r0, #8
	mov r0, #0x36
	ldrsh r1, [r4, r0]
	mov r0, #0x50
	mul r0, r1
	asr r6, r0, #8
	add r0, r4, #0
	add r0, #0x5b
	ldrb r0, [r0]
	lsl r1, r0, #4
	str r6, [sp]
	add r0, r7, r1
	ldr r1, [r7, r1]
	str r1, [sp, #4]
	ldr r1, [r0, #4]
	str r1, [sp, #8]
	ldr r1, [r0, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0xc]
	lsr r1, r3, #0x1f
	str r0, [sp, #0x10]
	mov r0, #0x24
	add r1, r3, r1
	ldrsh r0, [r4, r0]
	asr r1, r1, #1
	sub r0, r0, r1
	mov r1, #0x2c
	ldrsh r1, [r4, r1]
	add r0, r0, r1
	mov r1, #0x26
	ldrsh r2, [r4, r1]
	lsr r1, r6, #0x1f
	add r1, r6, r1
	asr r1, r1, #1
	sub r1, r2, r1
	mov r2, #0x2e
	ldrsh r2, [r4, r2]
	lsl r0, r0, #0x10
	ldr r6, [r4, #0x28]
	add r1, r1, r2
	mov r2, #0x6e
	ldrsb r2, [r4, r2]
	asr r0, r0, #0x10
	sub r1, r1, r2
	ldr r2, [r4, #0x30]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r6, r2
	bl sub_020B7418
_020083B6:
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1e
	beq _020083DC
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	beq _020083DC
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _020083DC
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _020083DE
_020083DC:
	b _020084FA
_020083DE:
	ldr r0, _0200849C ; =0x00000333
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _020083EC
	ldr r0, _020084A0 ; =0x04000454
	mov r1, #0
	str r1, [r0]
_020083EC:
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _020083FA
	mov r1, #1
	b _020083FC
_020083FA:
	mov r1, #0
_020083FC:
	add r2, r4, #0
	add r2, #0x6c
	ldrh r2, [r2]
	mov r0, #0xbd
	lsl r0, r0, #2
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	add r2, r2, #3
	ldr r0, [r5, r0]
	lsl r2, r2, #5
	add r2, r0, r2
	mov r0, #4
	sub r0, r0, r1
	add r1, r2, #0
	lsr r1, r0
	ldr r0, _020084A4 ; =0x040004AC
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _0200843C
	mov r0, #0x34
	ldrsh r0, [r4, r0]
	lsl r0, r0, #6
	asr r3, r0, #8
	mov r0, #0x36
	ldrsh r0, [r4, r0]
	lsl r0, r0, #4
	asr r1, r0, #8
	b _02008440
_0200843C:
	mov r3, #0x40
	mov r1, #0x10
_02008440:
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _02008462
	mov r0, #0x74
	ldrsh r2, [r4, r0]
	mov r0, #0x24
	mov r6, #0x2c
	ldrsh r0, [r4, r0]
	ldrsh r6, [r4, r6]
	add r0, r0, r6
	add r2, r2, r0
	add r0, r4, #0
	add r0, #0x70
	strh r2, [r0]
_02008462:
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _02008484
	mov r0, #0x76
	ldrsh r2, [r4, r0]
	mov r0, #0x26
	mov r6, #0x2e
	ldrsh r0, [r4, r0]
	ldrsh r6, [r4, r6]
	add r0, r0, r6
	add r2, r2, r0
	add r0, r4, #0
	add r0, #0x72
	strh r2, [r0]
_02008484:
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	lsl r2, r0, #4
	ldr r0, _020084BC ; =0x020F5988
	b _020084C0
	.align 2, 0
_02008494: .word 0x04000444
_02008498: .word 0x020F5B04
_0200849C: .word 0x00000333
_020084A0: .word 0x04000454
_020084A4: .word 0x040004AC
_020084A8: .word 0x04000470
_020084AC: .word 0x021094DC
_020084B0: .word 0x040004C0
_020084B4: .word 0x00004210
_020084B8: .word 0x040004A4
_020084BC: .word 0x020F5988
_020084C0:
	str r1, [sp]
	add r6, r0, r2
	ldr r0, [r0, r2]
	lsr r2, r3, #0x1f
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	add r2, r3, r2
	str r0, [sp, #8]
	ldr r0, [r6, #8]
	asr r2, r2, #1
	str r0, [sp, #0xc]
	ldr r0, [r6, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x70
	ldrsh r0, [r4, r0]
	sub r0, r0, r2
	mov r2, #0x72
	ldrsh r6, [r4, r2]
	lsr r2, r1, #0x1f
	add r2, r1, r2
	asr r1, r2, #1
	sub r1, r6, r1
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _0200851C ; =0xFFFFFC18
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl sub_020B7418
_020084FA:
	ldr r0, [sp, #0x14]
	add r4, #0xac
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r7, #0x20
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	bge _02008510
	b _0200817A
_02008510:
	ldr r0, _02008520 ; =0x04000448
	mov r1, #1
	str r1, [r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200851C: .word 0xFFFFFC18
_02008520: .word 0x04000448
	thumb_func_end sub_02008120

	thumb_func_start sub_02008524
sub_02008524: ; 0x02008524
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201AB0C
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_0201AB0C
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201AB0C
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02008524

	thumb_func_start sub_02008550
sub_02008550: ; 0x02008550
	push {r3, r4}
	add r1, r0, #0
	mov r3, #0
	add r1, #0x59
	strb r3, [r1]
	add r1, r3, #0
_0200855C:
	add r2, r0, r3
	add r2, #0x5c
	add r3, r3, #1
	strb r1, [r2]
	cmp r3, #0xa
	blt _0200855C
	add r2, r0, #0
	add r2, #0x59
	ldrb r2, [r2]
	lsl r2, r2, #2
	add r3, r0, r2
	mov r2, #0x84
	ldrsb r4, [r3, r2]
	add r3, r2, #0
	sub r3, #0x85
	cmp r4, r3
	bne _02008586
	add r0, #0x5b
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_02008586:
	add r1, r0, #0
	mov r3, #1
	add r1, #0x58
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r0, r1
	ldrsb r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x5b
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r0, r1
	add r1, #0x85
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x5a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r2, r0, r1
	mov r1, #0x86
	ldrsb r1, [r2, r1]
	strh r1, [r0, #0x2c]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02008550

	thumb_func_start sub_020085C8
sub_020085C8: ; 0x020085C8
	add r2, r0, #0
	ldr r3, _020085D8 ; =sub_020D4A50
	add r2, #0x84
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0x28
	bx r3
	nop
_020085D8: .word sub_020D4A50
	thumb_func_end sub_020085C8

	thumb_func_start sub_020085DC
sub_020085DC: ; 0x020085DC
	add r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _020085E8
	mov r0, #1
	bx lr
_020085E8:
	mov r0, #0
	bx lr
	thumb_func_end sub_020085DC

	thumb_func_start sub_020085EC
sub_020085EC: ; 0x020085EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x14]
	mov r4, #0
_020085FA:
	ldr r1, [r0]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	beq _0200860A
	add r4, r4, #1
	add r0, #0xac
	cmp r4, #4
	blt _020085FA
_0200860A:
	cmp r4, #4
	bne _02008612
	bl GF_AssertFail
_02008612:
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	add r2, r7, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02008634
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020085EC

	thumb_func_start sub_02008634
sub_02008634: ; 0x02008634
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #8]
	ldr r1, [sp, #0x28]
	add r4, r0, #0
	mov r0, #0xac
	add r6, r1, #0
	mul r6, r0
	ldr r0, [r4, r6]
	str r2, [sp]
	lsl r0, r0, #0x1f
	str r3, [sp, #4]
	lsr r0, r0, #0x1f
	beq _02008654
	bl GF_AssertFail
_02008654:
	add r5, r4, r6
	mov r0, #0
	add r1, r5, #0
	mov r2, #0xac
	bl sub_020D4858
	ldr r1, [r4, r6]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	str r0, [r4, r6]
	ldr r1, [r4, r6]
	mov r0, #0x80
	orr r0, r1
	str r0, [r4, r6]
	mov r0, #0x80
	ldr r1, [r4, r6]
	add r0, #0x80
	orr r0, r1
	str r0, [r4, r6]
	add r2, r5, #0
	ldr r0, [r4, r6]
	mov r1, #0x7e
	bic r0, r1
	ldr r1, [sp, #0x24]
	add r7, r2, #4
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x19
	orr r0, r1
	str r0, [r4, r6]
	ldr r0, [sp, #8]
	mov ip, r0
	mov r3, ip
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	add r7, r2, #0
	ldr r3, [sp, #8]
	add r7, #0x14
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	str r3, [sp, #8]
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r7, r1, #0x10
	strh r0, [r2, #0x24]
	str r3, [sp, #8]
	ldr r1, [sp, #0x20]
	strh r7, [r2, #0x26]
	str r1, [r2, #0x28]
	mov r1, #0x80
	add r1, #0x80
	strh r1, [r2, #0x34]
	strh r1, [r2, #0x36]
	ldr r1, [r5, #0x54]
	mov r3, #0x7c
	bic r1, r3
	mov r3, #0x7c
	orr r1, r3
	str r1, [r5, #0x54]
	ldr r1, [r5, #0x50]
	mov r3, #0x1f
	bic r1, r3
	mov r3, #0x1f
	orr r3, r1
	ldr r1, _0200876C ; =0xFFFFFC1F
	and r1, r3
	mov r3, #0x1f
	lsl r3, r3, #5
	orr r3, r1
	ldr r1, _02008770 ; =0xFFFF83FF
	and r1, r3
	mov r3, #0x1f
	lsl r3, r3, #0xa
	orr r3, r1
	ldr r1, _02008774 ; =0xFFF07FFF
	and r1, r3
	mov r3, #0x80
	lsl r3, r3, #0xc
	orr r3, r1
	ldr r1, _02008778 ; =0xFE0FFFFF
	and r1, r3
	mov r3, #0x80
	lsl r3, r3, #0x11
	orr r3, r1
	ldr r1, _0200877C ; =0xC1FFFFFF
	and r1, r3
	mov r3, #0x80
	lsl r3, r3, #0x16
	orr r1, r3
	str r1, [r5, #0x50]
	ldr r1, [sp, #0x30]
	str r1, [r2, #0x68]
	add r1, r2, #0
	add r1, #0x70
	strh r0, [r1]
	add r2, #0x72
	add r0, r5, #0
	strh r7, [r2]
	add r0, #0x6c
	ldrh r1, [r0]
	mov r0, #4
	orr r1, r0
	add r0, r5, #0
	add r0, #0x6c
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x6c
	ldrh r1, [r0]
	mov r0, #8
	orr r1, r0
	add r0, r5, #0
	add r0, #0x6c
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x6c
	ldrh r1, [r0]
	mov r0, #0x10
	add r5, #0x6c
	orr r0, r1
	strh r0, [r5]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _02008764
	add r1, r4, r6
	add r1, #0x84
	mov r2, #0x28
	bl sub_020D4A50
_02008764:
	add r0, r4, r6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0200876C: .word 0xFFFFFC1F
_02008770: .word 0xFFFF83FF
_02008774: .word 0xFFF07FFF
_02008778: .word 0xFE0FFFFF
_0200877C: .word 0xC1FFFFFF
	thumb_func_end sub_02008634

	thumb_func_start sub_02008780
sub_02008780: ; 0x02008780
	ldr r2, [r0]
	mov r1, #1
	bic r2, r1
	str r2, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02008780

	thumb_func_start sub_0200878C
sub_0200878C: ; 0x0200878C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02008792:
	add r0, r5, #0
	bl sub_02008780
	add r4, r4, #1
	add r5, #0xac
	cmp r4, #4
	blt _02008792
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200878C

	thumb_func_start sub_020087A4
sub_020087A4: ; 0x020087A4
	cmp r1, #0x2e
	bls _020087AA
	b _02008A4C
_020087AA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020087B6: ; jump table
	.short _02008814 - _020087B6 - 2 ; case 0
	.short _02008818 - _020087B6 - 2 ; case 1
	.short _0200881C - _020087B6 - 2 ; case 2
	.short _02008820 - _020087B6 - 2 ; case 3
	.short _02008824 - _020087B6 - 2 ; case 4
	.short _02008828 - _020087B6 - 2 ; case 5
	.short _0200882C - _020087B6 - 2 ; case 6
	.short _0200883C - _020087B6 - 2 ; case 7
	.short _02008840 - _020087B6 - 2 ; case 8
	.short _02008844 - _020087B6 - 2 ; case 9
	.short _02008848 - _020087B6 - 2 ; case 10
	.short _0200884E - _020087B6 - 2 ; case 11
	.short _02008854 - _020087B6 - 2 ; case 12
	.short _02008858 - _020087B6 - 2 ; case 13
	.short _0200885C - _020087B6 - 2 ; case 14
	.short _0200886C - _020087B6 - 2 ; case 15
	.short _02008872 - _020087B6 - 2 ; case 16
	.short _02008878 - _020087B6 - 2 ; case 17
	.short _0200887E - _020087B6 - 2 ; case 18
	.short _02008884 - _020087B6 - 2 ; case 19
	.short _0200888A - _020087B6 - 2 ; case 20
	.short _02008890 - _020087B6 - 2 ; case 21
	.short _02008896 - _020087B6 - 2 ; case 22
	.short _0200889C - _020087B6 - 2 ; case 23
	.short _020088AC - _020087B6 - 2 ; case 24
	.short _020088BC - _020087B6 - 2 ; case 25
	.short _020088CC - _020087B6 - 2 ; case 26
	.short _020088DC - _020087B6 - 2 ; case 27
	.short _020088EC - _020087B6 - 2 ; case 28
	.short _020088FC - _020087B6 - 2 ; case 29
	.short _0200890C - _020087B6 - 2 ; case 30
	.short _02008926 - _020087B6 - 2 ; case 31
	.short _02008934 - _020087B6 - 2 ; case 32
	.short _02008946 - _020087B6 - 2 ; case 33
	.short _02008958 - _020087B6 - 2 ; case 34
	.short _0200895E - _020087B6 - 2 ; case 35
	.short _02008976 - _020087B6 - 2 ; case 36
	.short _0200898E - _020087B6 - 2 ; case 37
	.short _0200899E - _020087B6 - 2 ; case 38
	.short _02008A4C - _020087B6 - 2 ; case 39
	.short _020089A4 - _020087B6 - 2 ; case 40
	.short _020089BC - _020087B6 - 2 ; case 41
	.short _020089C2 - _020087B6 - 2 ; case 42
	.short _020089E6 - _020087B6 - 2 ; case 43
	.short _02008A00 - _020087B6 - 2 ; case 44
	.short _02008A1A - _020087B6 - 2 ; case 45
	.short _02008A34 - _020087B6 - 2 ; case 46
_02008814:
	strh r2, [r0, #0x24]
	bx lr
_02008818:
	strh r2, [r0, #0x26]
	bx lr
_0200881C:
	str r2, [r0, #0x28]
	bx lr
_02008820:
	strh r2, [r0, #0x2c]
	bx lr
_02008824:
	strh r2, [r0, #0x2e]
	bx lr
_02008828:
	str r2, [r0, #0x30]
	bx lr
_0200882C:
	ldr r3, [r0, #0x54]
	mov r1, #1
	bic r3, r1
	mov r1, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_0200883C:
	strh r2, [r0, #0x38]
	bx lr
_02008840:
	strh r2, [r0, #0x3a]
	bx lr
_02008844:
	strh r2, [r0, #0x3c]
	bx lr
_02008848:
	add r0, #0x40
	strh r2, [r0]
	bx lr
_0200884E:
	add r0, #0x42
	strh r2, [r0]
	bx lr
_02008854:
	strh r2, [r0, #0x34]
	bx lr
_02008858:
	strh r2, [r0, #0x36]
	bx lr
_0200885C:
	ldr r3, [r0, #0x54]
	mov r1, #2
	bic r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x1e
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_0200886C:
	add r0, #0x44
	strb r2, [r0]
	bx lr
_02008872:
	add r0, #0x45
	strb r2, [r0]
	bx lr
_02008878:
	add r0, #0x46
	strb r2, [r0]
	bx lr
_0200887E:
	add r0, #0x47
	strb r2, [r0]
	bx lr
_02008884:
	add r0, #0x70
	strh r2, [r0]
	bx lr
_0200888A:
	add r0, #0x72
	strh r2, [r0]
	bx lr
_02008890:
	add r0, #0x74
	strh r2, [r0]
	bx lr
_02008896:
	add r0, #0x76
	strh r2, [r0]
	bx lr
_0200889C:
	ldr r3, [r0, #0x54]
	mov r1, #0x7c
	bic r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x19
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_020088AC:
	ldr r3, [r0, #0x50]
	mov r1, #0x1f
	bic r3, r1
	mov r1, #0x1f
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_020088BC:
	ldr r3, [r0, #0x50]
	ldr r1, _02008A50 ; =0xFFFFFC1F
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x16
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_020088CC:
	ldr r3, [r0, #0x50]
	ldr r1, _02008A54 ; =0xFFFF83FF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x11
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_020088DC:
	ldr r3, [r0, #0x50]
	ldr r1, _02008A58 ; =0xFFF07FFF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0xc
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_020088EC:
	ldr r3, [r0, #0x50]
	ldr r1, _02008A5C ; =0xFE0FFFFF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #7
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_020088FC:
	ldr r3, [r0, #0x50]
	ldr r1, _02008A60 ; =0xC1FFFFFF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #2
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_0200890C:
	ldr r3, [r0, #0x54]
	ldr r1, _02008A64 ; =0xFFFFEFFF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x13
	orr r1, r3
	str r1, [r0, #0x54]
	mov r1, #1
	ldr r2, [r0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0]
	bx lr
_02008926:
	str r2, [r0, #0x4c]
	mov r1, #1
	ldr r2, [r0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0]
	bx lr
_02008934:
	add r1, r0, #0
	add r1, #0x48
	strb r2, [r1]
	mov r1, #1
	ldr r2, [r0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0]
	bx lr
_02008946:
	add r1, r0, #0
	add r1, #0x49
	strb r2, [r1]
	mov r1, #1
	ldr r2, [r0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0]
	bx lr
_02008958:
	add r0, #0x4a
	strb r2, [r0]
	bx lr
_0200895E:
	ldr r3, [r0, #0x54]
	ldr r1, _02008A68 ; =0xFFFFFDFF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x16
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r2, [r0]
	mov r1, #0x80
	orr r1, r2
	str r1, [r0]
	bx lr
_02008976:
	ldr r3, [r0, #0x54]
	ldr r1, _02008A6C ; =0xFFFFFBFF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x15
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r2, [r0]
	mov r1, #0x80
	orr r1, r2
	str r1, [r0]
	bx lr
_0200898E:
	ldr r3, [r0, #0x54]
	ldr r1, _02008A70 ; =0xFFFFF7FF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x14
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_0200899E:
	add r0, #0x5b
	strb r2, [r0]
	bx lr
_020089A4:
	ldr r3, [r0, #0x54]
	ldr r1, _02008A74 ; =0xFFFE1FFF
	and r3, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0xf
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r2, [r0]
	mov r1, #0x80
	orr r1, r2
	str r1, [r0]
	bx lr
_020089BC:
	add r0, #0x6e
	strb r2, [r0]
	bx lr
_020089C2:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #3
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	mov r2, #3
	and r1, r2
	orr r3, r1
	add r1, r0, #0
	add r1, #0x6c
	strh r3, [r1]
	ldr r1, [r0]
	add r2, #0xfd
	orr r1, r2
	str r1, [r0]
	bx lr
_020089E6:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #4
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	orr r1, r3
	strh r1, [r0]
	bx lr
_02008A00:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #8
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1c
	orr r1, r3
	strh r1, [r0]
	bx lr
_02008A1A:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #0x10
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1b
	orr r1, r3
	strh r1, [r0]
	bx lr
_02008A34:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #0x60
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x19
	orr r1, r3
	strh r1, [r0]
_02008A4C:
	bx lr
	nop
_02008A50: .word 0xFFFFFC1F
_02008A54: .word 0xFFFF83FF
_02008A58: .word 0xFFF07FFF
_02008A5C: .word 0xFE0FFFFF
_02008A60: .word 0xC1FFFFFF
_02008A64: .word 0xFFFFEFFF
_02008A68: .word 0xFFFFFDFF
_02008A6C: .word 0xFFFFFBFF
_02008A70: .word 0xFFFFF7FF
_02008A74: .word 0xFFFE1FFF
	thumb_func_end sub_020087A4

	thumb_func_start sub_02008A78
sub_02008A78: ; 0x02008A78
	push {r3, lr}
	cmp r1, #0x2e
	bls _02008A80
	b _02008C22
_02008A80:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02008A8C: ; jump table
	.short _02008AEA - _02008A8C - 2 ; case 0
	.short _02008AF0 - _02008A8C - 2 ; case 1
	.short _02008AF6 - _02008A8C - 2 ; case 2
	.short _02008AFA - _02008A8C - 2 ; case 3
	.short _02008B00 - _02008A8C - 2 ; case 4
	.short _02008B06 - _02008A8C - 2 ; case 5
	.short _02008B0A - _02008A8C - 2 ; case 6
	.short _02008B12 - _02008A8C - 2 ; case 7
	.short _02008B16 - _02008A8C - 2 ; case 8
	.short _02008B1A - _02008A8C - 2 ; case 9
	.short _02008B1E - _02008A8C - 2 ; case 10
	.short _02008B24 - _02008A8C - 2 ; case 11
	.short _02008B2A - _02008A8C - 2 ; case 12
	.short _02008B30 - _02008A8C - 2 ; case 13
	.short _02008B36 - _02008A8C - 2 ; case 14
	.short _02008B3E - _02008A8C - 2 ; case 15
	.short _02008B44 - _02008A8C - 2 ; case 16
	.short _02008B4A - _02008A8C - 2 ; case 17
	.short _02008B50 - _02008A8C - 2 ; case 18
	.short _02008B56 - _02008A8C - 2 ; case 19
	.short _02008B5C - _02008A8C - 2 ; case 20
	.short _02008B62 - _02008A8C - 2 ; case 21
	.short _02008B68 - _02008A8C - 2 ; case 22
	.short _02008B6E - _02008A8C - 2 ; case 23
	.short _02008B76 - _02008A8C - 2 ; case 24
	.short _02008B7E - _02008A8C - 2 ; case 25
	.short _02008B86 - _02008A8C - 2 ; case 26
	.short _02008B8E - _02008A8C - 2 ; case 27
	.short _02008B96 - _02008A8C - 2 ; case 28
	.short _02008B9E - _02008A8C - 2 ; case 29
	.short _02008BA6 - _02008A8C - 2 ; case 30
	.short _02008BAE - _02008A8C - 2 ; case 31
	.short _02008BB2 - _02008A8C - 2 ; case 32
	.short _02008BB8 - _02008A8C - 2 ; case 33
	.short _02008BBE - _02008A8C - 2 ; case 34
	.short _02008BC4 - _02008A8C - 2 ; case 35
	.short _02008BCC - _02008A8C - 2 ; case 36
	.short _02008BD4 - _02008A8C - 2 ; case 37
	.short _02008BDC - _02008A8C - 2 ; case 38
	.short _02008C22 - _02008A8C - 2 ; case 39
	.short _02008BE2 - _02008A8C - 2 ; case 40
	.short _02008BEA - _02008A8C - 2 ; case 41
	.short _02008BF0 - _02008A8C - 2 ; case 42
	.short _02008BFA - _02008A8C - 2 ; case 43
	.short _02008C04 - _02008A8C - 2 ; case 44
	.short _02008C0E - _02008A8C - 2 ; case 45
	.short _02008C18 - _02008A8C - 2 ; case 46
_02008AEA:
	mov r1, #0x24
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008AF0:
	mov r1, #0x26
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008AF6:
	ldr r0, [r0, #0x28]
	pop {r3, pc}
_02008AFA:
	mov r1, #0x2c
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008B00:
	mov r1, #0x2e
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008B06:
	ldr r0, [r0, #0x30]
	pop {r3, pc}
_02008B0A:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008B12:
	ldrh r0, [r0, #0x38]
	pop {r3, pc}
_02008B16:
	ldrh r0, [r0, #0x3a]
	pop {r3, pc}
_02008B1A:
	ldrh r0, [r0, #0x3c]
	pop {r3, pc}
_02008B1E:
	mov r1, #0x40
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008B24:
	mov r1, #0x42
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008B2A:
	mov r1, #0x34
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008B30:
	mov r1, #0x36
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008B36:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008B3E:
	add r0, #0x44
	ldrb r0, [r0]
	pop {r3, pc}
_02008B44:
	add r0, #0x45
	ldrb r0, [r0]
	pop {r3, pc}
_02008B4A:
	add r0, #0x46
	ldrb r0, [r0]
	pop {r3, pc}
_02008B50:
	add r0, #0x47
	ldrb r0, [r0]
	pop {r3, pc}
_02008B56:
	mov r1, #0x70
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008B5C:
	mov r1, #0x72
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008B62:
	mov r1, #0x74
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008B68:
	mov r1, #0x76
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008B6E:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1b
	pop {r3, pc}
_02008B76:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	pop {r3, pc}
_02008B7E:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1b
	pop {r3, pc}
_02008B86:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1b
	pop {r3, pc}
_02008B8E:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1b
	pop {r3, pc}
_02008B96:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #7
	lsr r0, r0, #0x1b
	pop {r3, pc}
_02008B9E:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #2
	lsr r0, r0, #0x1b
	pop {r3, pc}
_02008BA6:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008BAE:
	ldr r0, [r0, #0x4c]
	pop {r3, pc}
_02008BB2:
	add r0, #0x48
	ldrb r0, [r0]
	pop {r3, pc}
_02008BB8:
	add r0, #0x49
	ldrb r0, [r0]
	pop {r3, pc}
_02008BBE:
	add r0, #0x4a
	ldrb r0, [r0]
	pop {r3, pc}
_02008BC4:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008BCC:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008BD4:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008BDC:
	add r0, #0x5b
	ldrb r0, [r0]
	pop {r3, pc}
_02008BE2:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	pop {r3, pc}
_02008BEA:
	mov r1, #0x6e
	ldrsb r0, [r0, r1]
	pop {r3, pc}
_02008BF0:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	pop {r3, pc}
_02008BFA:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008C04:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008C0E:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008C18:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	pop {r3, pc}
_02008C22:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02008A78

	thumb_func_start sub_02008C2C
sub_02008C2C: ; 0x02008C2C
	push {r3, r4}
	add r3, r0, #0
	add r0, r2, #0
	cmp r1, #0x2e
	bls _02008C38
	b _0200905E
_02008C38:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02008C44: ; jump table
	.short _02008CA2 - _02008C44 - 2 ; case 0
	.short _02008CAE - _02008C44 - 2 ; case 1
	.short _02008CBA - _02008C44 - 2 ; case 2
	.short _02008CC4 - _02008C44 - 2 ; case 3
	.short _02008CD0 - _02008C44 - 2 ; case 4
	.short _02008CDC - _02008C44 - 2 ; case 5
	.short _02008CE6 - _02008C44 - 2 ; case 6
	.short _02008D00 - _02008C44 - 2 ; case 7
	.short _02008D0A - _02008C44 - 2 ; case 8
	.short _02008D14 - _02008C44 - 2 ; case 9
	.short _02008D1E - _02008C44 - 2 ; case 10
	.short _02008D2C - _02008C44 - 2 ; case 11
	.short _02008D3A - _02008C44 - 2 ; case 12
	.short _02008D46 - _02008C44 - 2 ; case 13
	.short _02008D52 - _02008C44 - 2 ; case 14
	.short _02008D6C - _02008C44 - 2 ; case 15
	.short _02008D7C - _02008C44 - 2 ; case 16
	.short _02008D8C - _02008C44 - 2 ; case 17
	.short _02008D9C - _02008C44 - 2 ; case 18
	.short _02008DAC - _02008C44 - 2 ; case 19
	.short _02008DBA - _02008C44 - 2 ; case 20
	.short _02008DC8 - _02008C44 - 2 ; case 21
	.short _02008DD6 - _02008C44 - 2 ; case 22
	.short _02008DE4 - _02008C44 - 2 ; case 23
	.short _02008DFE - _02008C44 - 2 ; case 24
	.short _02008E18 - _02008C44 - 2 ; case 25
	.short _02008E30 - _02008C44 - 2 ; case 26
	.short _02008E48 - _02008C44 - 2 ; case 27
	.short _02008E60 - _02008C44 - 2 ; case 28
	.short _02008E78 - _02008C44 - 2 ; case 29
	.short _02008E90 - _02008C44 - 2 ; case 30
	.short _02008EB2 - _02008C44 - 2 ; case 31
	.short _02008EC6 - _02008C44 - 2 ; case 32
	.short _02008EE2 - _02008C44 - 2 ; case 33
	.short _02008EFE - _02008C44 - 2 ; case 34
	.short _02008F0E - _02008C44 - 2 ; case 35
	.short _02008F2E - _02008C44 - 2 ; case 36
	.short _02008F4E - _02008C44 - 2 ; case 37
	.short _02008F66 - _02008C44 - 2 ; case 38
	.short _0200905E - _02008C44 - 2 ; case 39
	.short _02008F76 - _02008C44 - 2 ; case 40
	.short _02008F96 - _02008C44 - 2 ; case 41
	.short _02008FA4 - _02008C44 - 2 ; case 42
	.short _02008FD2 - _02008C44 - 2 ; case 43
	.short _02008FF6 - _02008C44 - 2 ; case 44
	.short _0200901A - _02008C44 - 2 ; case 45
	.short _0200903E - _02008C44 - 2 ; case 46
_02008CA2:
	mov r1, #0x24
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x24]
	pop {r3, r4}
	bx lr
_02008CAE:
	mov r1, #0x26
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x26]
	pop {r3, r4}
	bx lr
_02008CBA:
	ldr r1, [r3, #0x28]
	add r0, r1, r0
	str r0, [r3, #0x28]
	pop {r3, r4}
	bx lr
_02008CC4:
	mov r1, #0x2c
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x2c]
	pop {r3, r4}
	bx lr
_02008CD0:
	mov r1, #0x2e
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x2e]
	pop {r3, r4}
	bx lr
_02008CDC:
	ldr r1, [r3, #0x30]
	add r0, r1, r0
	str r0, [r3, #0x30]
	pop {r3, r4}
	bx lr
_02008CE6:
	ldr r4, [r3, #0x54]
	mov r2, #1
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1f
	lsr r2, r2, #0x1f
	add r2, r2, r0
	mov r0, #1
	and r0, r2
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3, r4}
	bx lr
_02008D00:
	ldrh r1, [r3, #0x38]
	add r0, r1, r0
	strh r0, [r3, #0x38]
	pop {r3, r4}
	bx lr
_02008D0A:
	ldrh r1, [r3, #0x3a]
	add r0, r1, r0
	strh r0, [r3, #0x3a]
	pop {r3, r4}
	bx lr
_02008D14:
	ldrh r1, [r3, #0x3c]
	add r0, r1, r0
	strh r0, [r3, #0x3c]
	pop {r3, r4}
	bx lr
_02008D1E:
	mov r1, #0x40
	ldrsh r1, [r3, r1]
	add r3, #0x40
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008D2C:
	mov r1, #0x42
	ldrsh r1, [r3, r1]
	add r3, #0x42
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008D3A:
	mov r1, #0x34
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x34]
	pop {r3, r4}
	bx lr
_02008D46:
	mov r1, #0x36
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x36]
	pop {r3, r4}
	bx lr
_02008D52:
	ldr r4, [r3, #0x54]
	mov r2, #2
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1e
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1e
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3, r4}
	bx lr
_02008D6C:
	add r1, r3, #0
	add r1, #0x44
	ldrb r1, [r1]
	add r3, #0x44
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_02008D7C:
	add r1, r3, #0
	add r1, #0x45
	ldrb r1, [r1]
	add r3, #0x45
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_02008D8C:
	add r1, r3, #0
	add r1, #0x46
	ldrb r1, [r1]
	add r3, #0x46
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_02008D9C:
	add r1, r3, #0
	add r1, #0x47
	ldrb r1, [r1]
	add r3, #0x47
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_02008DAC:
	mov r1, #0x70
	ldrsh r1, [r3, r1]
	add r3, #0x70
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008DBA:
	mov r1, #0x72
	ldrsh r1, [r3, r1]
	add r3, #0x72
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008DC8:
	mov r1, #0x74
	ldrsh r1, [r3, r1]
	add r3, #0x74
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008DD6:
	mov r1, #0x76
	ldrsh r1, [r3, r1]
	add r3, #0x76
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008DE4:
	ldr r4, [r3, #0x54]
	mov r2, #0x7c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x19
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x19
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3, r4}
	bx lr
_02008DFE:
	ldr r4, [r3, #0x50]
	mov r2, #0x1f
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1b
	lsr r2, r2, #0x1b
	add r2, r2, r0
	mov r0, #0x1f
	and r0, r2
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_02008E18:
	ldr r2, [r3, #0x50]
	ldr r1, _02009064 ; =0xFFFFFC1F
	and r1, r2
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_02008E30:
	ldr r2, [r3, #0x50]
	ldr r1, _02009068 ; =0xFFFF83FF
	and r1, r2
	lsl r2, r2, #0x11
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_02008E48:
	ldr r2, [r3, #0x50]
	ldr r1, _0200906C ; =0xFFF07FFF
	and r1, r2
	lsl r2, r2, #0xc
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_02008E60:
	ldr r2, [r3, #0x50]
	ldr r1, _02009070 ; =0xFE0FFFFF
	and r1, r2
	lsl r2, r2, #7
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #7
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_02008E78:
	ldr r2, [r3, #0x50]
	ldr r1, _02009074 ; =0xC1FFFFFF
	and r1, r2
	lsl r2, r2, #2
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_02008E90:
	ldr r2, [r3, #0x54]
	ldr r1, _02009078 ; =0xFFFFEFFF
	and r1, r2
	lsl r2, r2, #0x13
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x13
	orr r0, r1
	str r0, [r3, #0x54]
	mov r0, #1
	ldr r1, [r3]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r3]
	pop {r3, r4}
	bx lr
_02008EB2:
	ldr r1, [r3, #0x4c]
	add r0, r1, r0
	str r0, [r3, #0x4c]
	mov r0, #1
	ldr r1, [r3]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r3]
	pop {r3, r4}
	bx lr
_02008EC6:
	add r1, r3, #0
	add r1, #0x48
	ldrb r1, [r1]
	add r1, r1, r0
	add r0, r3, #0
	add r0, #0x48
	strb r1, [r0]
	mov r0, #1
	ldr r1, [r3]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r3]
	pop {r3, r4}
	bx lr
_02008EE2:
	add r1, r3, #0
	add r1, #0x49
	ldrb r1, [r1]
	add r1, r1, r0
	add r0, r3, #0
	add r0, #0x49
	strb r1, [r0]
	mov r0, #1
	ldr r1, [r3]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r3]
	pop {r3, r4}
	bx lr
_02008EFE:
	add r1, r3, #0
	add r1, #0x4a
	ldrb r1, [r1]
	add r3, #0x4a
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_02008F0E:
	ldr r2, [r3, #0x54]
	ldr r1, _0200907C ; =0xFFFFFDFF
	and r1, r2
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r3, #0x54]
	ldr r1, [r3]
	mov r0, #0x80
	orr r0, r1
	str r0, [r3]
	pop {r3, r4}
	bx lr
_02008F2E:
	ldr r2, [r3, #0x54]
	ldr r1, _02009080 ; =0xFFFFFBFF
	and r1, r2
	lsl r2, r2, #0x15
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x15
	orr r0, r1
	str r0, [r3, #0x54]
	ldr r1, [r3]
	mov r0, #0x80
	orr r0, r1
	str r0, [r3]
	pop {r3, r4}
	bx lr
_02008F4E:
	ldr r2, [r3, #0x54]
	ldr r1, _02009084 ; =0xFFFFF7FF
	and r1, r2
	lsl r2, r2, #0x14
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x14
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3, r4}
	bx lr
_02008F66:
	add r1, r3, #0
	add r1, #0x5b
	ldrb r1, [r1]
	add r3, #0x5b
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_02008F76:
	ldr r2, [r3, #0x54]
	ldr r1, _02009088 ; =0xFFFE1FFF
	and r1, r2
	lsl r2, r2, #0xf
	lsr r2, r2, #0x1c
	add r0, r2, r0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0xf
	orr r0, r1
	str r0, [r3, #0x54]
	ldr r1, [r3]
	mov r0, #0x80
	orr r0, r1
	str r0, [r3]
	pop {r3, r4}
	bx lr
_02008F96:
	mov r1, #0x6e
	ldrsb r1, [r3, r1]
	add r3, #0x6e
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_02008FA4:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #3
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1e
	lsr r2, r2, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #3
	and r0, r2
	orr r1, r0
	add r0, r3, #0
	add r0, #0x6c
	strh r1, [r0]
	ldr r0, [r3]
	add r2, #0xfd
	orr r0, r2
	str r0, [r3]
	pop {r3, r4}
	bx lr
_02008FD2:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #4
	add r3, #0x6c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1d
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1d
	orr r0, r1
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008FF6:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #8
	add r3, #0x6c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1c
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1c
	orr r0, r1
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_0200901A:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #0x10
	add r3, #0x6c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1b
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_0200903E:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #0x60
	add r3, #0x6c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x19
	lsr r2, r2, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x19
	orr r0, r1
	strh r0, [r3]
_0200905E:
	pop {r3, r4}
	bx lr
	nop
_02009064: .word 0xFFFFFC1F
_02009068: .word 0xFFFF83FF
_0200906C: .word 0xFFF07FFF
_02009070: .word 0xFE0FFFFF
_02009074: .word 0xC1FFFFFF
_02009078: .word 0xFFFFEFFF
_0200907C: .word 0xFFFFFDFF
_02009080: .word 0xFFFFFBFF
_02009084: .word 0xFFFFF7FF
_02009088: .word 0xFFFE1FFF
	thumb_func_end sub_02008C2C

	thumb_func_start sub_0200908C
sub_0200908C: ; 0x0200908C
	push {r4, r5}
	ldr r5, [r0, #0x54]
	mov r4, #2
	orr r4, r5
	str r4, [r0, #0x54]
	add r4, r0, #0
	add r4, #0x44
	strb r1, [r4]
	add r1, r0, #0
	add r1, #0x45
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x46
	strb r3, [r1]
	ldr r1, [sp, #8]
	add r0, #0x47
	strb r1, [r0]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end sub_0200908C

	thumb_func_start sub_020090B4
sub_020090B4: ; 0x020090B4
	push {r4, r5}
	mov r4, #1
	ldr r5, [r0, #0x54]
	lsl r4, r4, #0xc
	orr r4, r5
	str r4, [r0, #0x54]
	add r4, r0, #0
	add r4, #0x48
	strb r1, [r4]
	add r1, r0, #0
	add r1, #0x49
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x4a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4b
	strb r3, [r1]
	ldr r1, [sp, #8]
	str r1, [r0, #0x4c]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end sub_020090B4

	thumb_func_start sub_020090E4
sub_020090E4: ; 0x020090E4
	push {r4, r5, r6, r7}
	add r4, r0, #0
	add r0, r1, #0
	add r5, r2, #0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
	lsl r0, r3, #0x18
	ldr r2, [sp, #0x10]
	mov r1, #0
	lsr r0, r0, #0x18
_020090FC:
	ldr r3, [r4]
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1f
	beq _0200912A
	mov r3, #1
	ldr r7, [r4, #0x54]
	lsl r3, r3, #0xc
	orr r3, r7
	str r3, [r4, #0x54]
	add r3, r4, #0
	add r3, #0x48
	strb r6, [r3]
	add r3, r4, #0
	add r3, #0x49
	add r7, r4, #0
	strb r5, [r3]
	add r7, #0x4a
	mov r3, #0
	strb r3, [r7]
	add r3, r4, #0
	add r3, #0x4b
	strb r0, [r3]
	str r2, [r4, #0x4c]
_0200912A:
	add r1, r1, #1
	add r4, #0xac
	cmp r1, #4
	blt _020090FC
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end sub_020090E4

	thumb_func_start sub_02009138
sub_02009138: ; 0x02009138
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02009146
	mov r0, #1
	bx lr
_02009146:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02009138

	thumb_func_start sub_0200914C
sub_0200914C: ; 0x0200914C
	mov r2, #0x28
	sub r2, r2, r1
	mov r1, #0x36
	ldrsh r1, [r0, r1]
	mul r1, r2
	asr r1, r1, #8
	sub r1, r2, r1
	strh r1, [r0, #0x2e]
	bx lr
	.align 2, 0
	thumb_func_end sub_0200914C

	thumb_func_start sub_02009160
sub_02009160: ; 0x02009160
	push {r4, r5, r6, r7}
	add r1, r0, #0
	add r1, #0x58
	ldrb r1, [r1]
	cmp r1, #0
	beq _02009256
	add r1, r0, #0
	add r1, #0x5a
	ldrb r1, [r1]
	cmp r1, #0
	bne _0200924A
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	add r6, r0, #0
	add r6, #0x59
	add r2, r1, #1
	add r1, r0, #0
	add r1, #0x59
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r3, [r1]
	lsl r1, r3, #2
	add r2, r0, r1
	mov r1, #0x84
	ldrsb r4, [r2, r1]
	sub r1, #0x85
	cmp r4, r1
	bge _020091FC
	mov r2, #0
	sub r1, r2, #2
_020091A0:
	add r4, r0, r3
	add r4, #0x5c
	ldrb r4, [r4]
	add r3, r0, r3
	add r3, #0x5c
	add r4, r4, #1
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0x59
	ldrb r5, [r3]
	lsl r3, r5, #2
	add r4, r0, r3
	add r3, r4, #0
	add r7, r0, r5
	add r3, #0x85
	add r7, #0x5c
	ldrb r3, [r3]
	ldrb r7, [r7]
	cmp r3, r7
	beq _020091CC
	cmp r3, #0
	bne _020091DA
_020091CC:
	add r3, r0, r5
	add r3, #0x5c
	strb r2, [r3]
	ldrb r3, [r6]
	add r3, r3, #1
	strb r3, [r6]
	b _020091E6
_020091DA:
	mov r3, #0x84
	ldrsb r3, [r4, r3]
	sub r4, r1, r3
	add r3, r0, #0
	add r3, #0x59
	strb r4, [r3]
_020091E6:
	add r3, r0, #0
	add r3, #0x59
	ldrb r3, [r3]
	lsl r4, r3, #2
	add r5, r0, r4
	mov r4, #0x84
	ldrsb r4, [r5, r4]
	mov r5, #0
	mvn r5, r5
	cmp r4, r5
	blt _020091A0
_020091FC:
	cmp r3, #0xa
	bhs _02009208
	mov r1, #0
	mvn r1, r1
	cmp r4, r1
	bne _0200921C
_02009208:
	add r1, r0, #0
	mov r2, #0
	add r1, #0x5b
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x58
	strb r2, [r1]
	strh r2, [r0, #0x2c]
	pop {r4, r5, r6, r7}
	bx lr
_0200921C:
	add r1, r0, #0
	add r1, #0x5b
	strb r4, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r0, r1
	add r1, #0x85
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x5a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r2, r0, r1
	mov r1, #0x86
	ldrsb r1, [r2, r1]
	strh r1, [r0, #0x2c]
	pop {r4, r5, r6, r7}
	bx lr
_0200924A:
	add r1, r0, #0
	add r1, #0x5a
	ldrb r1, [r1]
	add r0, #0x5a
	sub r1, r1, #1
	strb r1, [r0]
_02009256:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end sub_02009160

	thumb_func_start sub_0200925C
sub_0200925C: ; 0x0200925C
	ldr r3, _02009260 ; =sub_02009160
	bx r3
	.align 2, 0
_02009260: .word sub_02009160
	thumb_func_end sub_0200925C

	thumb_func_start sub_02009264
sub_02009264: ; 0x02009264
	mov r2, #1
	strb r2, [r0]
	mov r3, #0
	strb r3, [r0, #2]
	ldrsb r2, [r1, r3]
	strb r2, [r0, #1]
	ldrb r2, [r1, #1]
	strb r2, [r0, #3]
	str r1, [r0, #0x10]
	add r2, r3, #0
_02009278:
	add r1, r0, r3
	add r3, r3, #1
	strb r2, [r1, #4]
	cmp r3, #0xa
	blt _02009278
	bx lr
	thumb_func_end sub_02009264

	thumb_func_start sub_02009284
sub_02009284: ; 0x02009284
	push {r4, r5, r6, r7}
	ldrb r1, [r0]
	cmp r1, #0
	beq _0200931A
	add r3, r0, #2
	ldr r4, [r0, #0x10]
	cmp r1, #0
	beq _02009314
	ldrb r1, [r0, #3]
	cmp r1, #0
	bne _02009310
	ldrb r1, [r3]
	add r1, r1, #1
	strb r1, [r3]
	ldrb r2, [r3]
	mov r1, #0
	mvn r1, r1
	lsl r5, r2, #2
	ldrsb r6, [r4, r5]
	cmp r6, r1
	bge _020092EC
	mov r1, #0
_020092B0:
	add r5, r0, r2
	ldrb r2, [r5, #4]
	add r2, r2, #1
	strb r2, [r5, #4]
	ldrb r2, [r3]
	add r5, r0, r2
	lsl r2, r2, #2
	add r2, r4, r2
	ldrb r7, [r2, #1]
	ldrb r6, [r5, #4]
	cmp r7, r6
	beq _020092CC
	cmp r7, #0
	bne _020092D2
_020092CC:
	strb r1, [r5, #4]
	add r3, r3, #1
	b _020092DE
_020092D2:
	mov r5, #0
	ldrsb r5, [r2, r5]
	mov r2, #1
	mvn r2, r2
	sub r2, r2, r5
	strb r2, [r3]
_020092DE:
	ldrb r2, [r3]
	mov r6, #0
	mvn r6, r6
	lsl r5, r2, #2
	ldrsb r7, [r4, r5]
	cmp r7, r6
	blt _020092B0
_020092EC:
	ldrsb r5, [r4, r5]
	mov r1, #0
	mvn r1, r1
	cmp r5, r1
	beq _020092FA
	cmp r2, #0xa
	blo _02009302
_020092FA:
	mov r1, #0
	strb r1, [r0, #1]
	strb r1, [r0]
	b _02009314
_02009302:
	strb r5, [r0, #1]
	ldrb r1, [r3]
	lsl r1, r1, #2
	add r1, r4, r1
	ldrb r1, [r1, #1]
	strb r1, [r0, #3]
	b _02009314
_02009310:
	sub r1, r1, #1
	strb r1, [r0, #3]
_02009314:
	ldrb r0, [r0, #1]
	pop {r4, r5, r6, r7}
	bx lr
_0200931A:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end sub_02009284

	thumb_func_start sub_02009324
sub_02009324: ; 0x02009324
	ldr r2, [r0]
	mov r1, #0x80
	orr r2, r1
	add r1, #0x80
	orr r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02009324

	thumb_func_start sub_02009334
sub_02009334: ; 0x02009334
	push {r3, r4}
	add r2, r0, #0
	add r3, r2, #0
	add r4, r2, #4
	add r3, #0x14
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	add r0, #0x6c
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x78
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x6e
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x7a
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x70
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x7c
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x72
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x7e
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x74
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x80
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x76
	ldrh r0, [r0]
	add r2, #0x82
	strh r0, [r2]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02009334

	thumb_func_start sub_02009390
sub_02009390: ; 0x02009390
	push {r3, r4}
	add r2, r0, #0
	add r4, r2, #0
	add r4, #0x14
	add r3, r2, #4
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	add r0, #0x78
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x6c
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x7a
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x6e
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x7c
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x70
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x7e
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x72
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x80
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x74
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x82
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x76
	strh r1, [r0]
	ldr r1, [r2]
	mov r0, #0x80
	orr r1, r0
	add r0, #0x80
	orr r0, r1
	str r0, [r2]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_02009390

	thumb_func_start sub_020093FC
sub_020093FC: ; 0x020093FC
	mov r3, #0xbb
	lsl r3, r3, #2
	str r1, [r0, r3]
	add r1, r3, #4
	str r2, [r0, r1]
	bx lr
	thumb_func_end sub_020093FC

	thumb_func_start sub_02009408
sub_02009408: ; 0x02009408
	mov r3, #0xbd
	lsl r3, r3, #2
	str r1, [r0, r3]
	add r1, r3, #4
	str r2, [r0, r1]
	bx lr
	thumb_func_end sub_02009408

	thumb_func_start sub_02009414
sub_02009414: ; 0x02009414
	add r0, r0, #4
	bx lr
	thumb_func_end sub_02009414

	thumb_func_start sub_02009418
sub_02009418: ; 0x02009418
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020094A8 ; =0x00000331
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02009466
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, #0x81
	add r0, r4, r0
	bl sub_020B8008
	mov r3, #0xc2
	lsl r3, r3, #2
	mov r1, #0x20
	strh r1, [r4, r3]
	add r0, r3, #2
	strh r1, [r4, r0]
	add r0, r3, #0
	sub r0, #0x18
	ldr r1, [r4, r0]
	add r0, r3, #0
	add r0, #0x10
	str r1, [r4, r0]
	add r0, r3, #0
	sub r0, #0xc
	ldr r1, [r4, r0]
	add r0, r3, #0
	add r0, #0x14
	str r1, [r4, r0]
	add r1, r3, #0
	sub r1, #0x1c
	add r0, r4, r3
	sub r3, #0x58
	ldr r1, [r4, r1]
	mov r2, #0
	add r3, r4, r3
	bl sub_020B82CC
_02009466:
	ldr r0, _020094AC ; =0x00000332
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _020094A6
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, #0x5e
	add r0, r4, r0
	bl sub_020B804C
	mov r3, #0xbe
	lsl r3, r3, #2
	add r0, r3, #0
	ldr r1, [r4, r3]
	add r0, #0x30
	str r1, [r4, r0]
	add r0, r3, #0
	add r0, #8
	ldr r1, [r4, r0]
	add r0, r3, #0
	add r0, #0x34
	str r1, [r4, r0]
	add r0, r3, #0
	sub r1, r3, #4
	add r0, #0x28
	sub r3, #0x24
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	add r3, r4, r3
	bl sub_020B86CC
_020094A6:
	pop {r4, pc}
	.align 2, 0
_020094A8: .word 0x00000331
_020094AC: .word 0x00000332
	thumb_func_end sub_02009418

	thumb_func_start sub_020094B0
sub_020094B0: ; 0x020094B0
	ldr r2, _020094B8 ; =0x00000333
	strb r1, [r0, r2]
	bx lr
	nop
_020094B8: .word 0x00000333
	thumb_func_end sub_020094B0

	thumb_func_start sub_020094BC
sub_020094BC: ; 0x020094BC
	push {r4, lr}
	add r4, r0, #0
	bne _020094C6
	bl GF_AssertFail
_020094C6:
	ldr r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _020094D2
	mov r0, #1
	pop {r4, pc}
_020094D2:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020094BC

	thumb_func_start sub_020094D8
sub_020094D8: ; 0x020094D8
	mov r2, #0xcd
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	orr r1, r3
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_020094D8

	thumb_func_start sub_020094E4
sub_020094E4: ; 0x020094E4
	push {r3, r4}
	mov r3, #0xcd
	lsl r3, r3, #2
	mov r2, #0
	mvn r2, r2
	ldr r4, [r0, r3]
	eor r1, r2
	and r1, r4
	str r1, [r0, r3]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_020094E4

	thumb_func_start sub_020094FC
sub_020094FC: ; 0x020094FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x44]
	str r0, [sp, #0x38]
_0200950E:
	ldr r0, [sp, #0x44]
	ldr r1, [r0]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	beq _0200951E
	lsl r0, r1, #0x18
	lsr r0, r0, #0x1f
	bne _02009520
_0200951E:
	b _0200991A
_02009520:
	mov r0, #0x80
	bic r1, r0
	ldr r0, [sp, #0x44]
	mov r2, #0xba
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x44]
	lsl r2, r2, #2
	ldrh r0, [r0, #4]
	ldrh r1, [r1, #6]
	ldr r2, [r6, r2]
	bl sub_02007524
	add r1, sp, #0x58
	str r0, [sp, #0x4c]
	bl sub_020B70A8
	ldr r0, [sp, #0x58]
	mov r1, #0xc3
	ldr r0, [r0, #4]
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, [sp, #0x58]
	ldr r2, [r0, #8]
	add r0, r1, #4
	str r2, [r6, r0]
	ldr r0, [sp, #0x58]
	add r1, #8
	ldr r0, [r0, #0xc]
	str r0, [r6, r1]
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x44]
	ldr r0, [r0, #0x14]
	ldrh r1, [r1, #4]
	str r0, [sp, #0x50]
	bl sub_02009D28
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x50]
	bl sub_02009B48
	ldr r0, [sp, #0x54]
	cmp r0, #3
	beq _0200957E
	b _020097AC
_0200957E:
	mov r5, #0
	add r0, r5, #0
	str r5, [sp, #0x14]
	str r0, [sp, #0x24]
_02009586:
	ldr r0, [sp, #0x14]
	mov r1, #0x4f
	sub r2, r1, r0
	mov r0, #0x50
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp, #0x50]
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x24]
	add r7, r1, r0
	ldr r0, [sp, #0x20]
	str r7, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	lsl r0, r0, #7
	str r0, [sp, #0x10]
_020095AE:
	cmp r4, #0x28
	bge _0200969A
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x54]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _020095DE
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	beq _020095DE
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, r1]
	bl sub_02009B34
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02009786
_020095DE:
	cmp r0, #0
	beq _020095FE
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, r1]
	bl sub_02009B34
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02009786
_020095FE:
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0x54]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	beq _0200961C
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r0, [sp, #0x20]
	ldr r1, [r6, r1]
	ldrb r0, [r0]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02009786
_0200961C:
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	str r0, [sp, #0xc]
	beq _02009688
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #1
	bl sub_020F2BA4
	cmp r1, #0
	beq _0200964C
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	add r0, r4, r0
	add r0, #0x50
	add r1, r5, r1
	add r1, r4, r1
	ldrb r0, [r0]
	add r1, #0x50
	strb r0, [r1]
	b _02009786
_0200964C:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_020F2BA4
	cmp r1, #0
	beq _0200966E
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r2, r5, r0
	add r0, r2, r4
	add r0, #0x4f
	ldrb r1, [r0]
	add r0, r2, r4
	add r0, #0x50
	strb r1, [r0]
	b _02009786
_0200966E:
	ldrb r1, [r7]
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #4
	orr r0, r1
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02009786
_02009688:
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldrb r0, [r7]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02009786
_0200969A:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x54]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _020096CA
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	beq _020096CA
	add r1, r4, #0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, r1]
	bl sub_02009B34
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02009940 ; =0x00002828
	strb r0, [r2, r1]
	b _02009786
_020096CA:
	cmp r0, #0
	beq _020096EE
	add r1, r4, #0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, r1]
	bl sub_02009B34
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02009940 ; =0x00002828
	strb r0, [r2, r1]
	b _02009786
_020096EE:
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0x54]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	beq _0200970C
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r0, [sp, #0x20]
	ldr r1, [r6, r1]
	ldrb r0, [r0]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02009940 ; =0x00002828
	strb r0, [r2, r1]
	b _02009786
_0200970C:
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	str r0, [sp, #8]
	beq _02009776
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #1
	bl sub_020F2BA4
	cmp r1, #0
	beq _0200973C
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	add r2, r4, r0
	ldr r0, _02009940 ; =0x00002828
	add r1, r5, r1
	ldrb r0, [r2, r0]
	add r2, r4, r1
	ldr r1, _02009940 ; =0x00002828
	strb r0, [r2, r1]
	b _02009786
_0200973C:
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl sub_020F2BA4
	cmp r1, #0
	beq _0200975C
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, _02009944 ; =0x00002827
	add r0, r5, r0
	add r0, r0, r4
	ldrb r2, [r0, r1]
	add r1, r1, #1
	strb r2, [r0, r1]
	b _02009786
_0200975C:
	ldrb r1, [r7]
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #4
	orr r0, r1
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02009940 ; =0x00002828
	strb r0, [r2, r1]
	b _02009786
_02009776:
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldrb r0, [r7]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02009940 ; =0x00002828
	strb r0, [r2, r1]
_02009786:
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	add r0, r0, #1
	add r7, r7, #1
	str r0, [sp, #0x20]
	cmp r4, #0x50
	bge _02009796
	b _020095AE
_02009796:
	ldr r0, [sp, #0x24]
	add r5, #0x80
	add r0, #0x50
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x50
	bge _020097AA
	b _02009586
_020097AA:
	b _02009914
_020097AC:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #0x40]
	str r0, [sp, #0x3c]
_020097B4:
	ldr r0, [sp]
	mov r1, #0x4f
	sub r2, r1, r0
	mov r0, #0x50
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp, #0x50]
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x3c]
	add r7, r1, r0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x40]
	str r7, [sp, #0x2c]
	add r5, r1, r0
	ldr r0, [sp]
	sub r0, r0, #1
	lsl r1, r0, #7
	ldr r0, [sp, #0x38]
	add r0, r0, r1
	str r0, [sp, #0x28]
_020097E6:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x54]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _0200982E
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	beq _0200982E
	cmp r4, #0x28
	bge _02009812
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x30]
	ldrb r0, [r0, r1]
	bl sub_02009B34
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _020098EC
_02009812:
	add r1, r4, #0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x30]
	ldrb r0, [r0, r1]
	bl sub_02009B34
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _020098EC
_0200982E:
	cmp r0, #0
	beq _0200986A
	cmp r4, #0x28
	bge _0200984E
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x2c]
	ldrb r0, [r0, r1]
	bl sub_02009B34
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _020098EC
_0200984E:
	add r1, r4, #0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x2c]
	ldrb r0, [r0, r1]
	bl sub_02009B34
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _020098EC
_0200986A:
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0x54]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	beq _02009884
	ldr r0, [sp, #0x34]
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldrb r0, [r0]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _020098EC
_02009884:
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	str r0, [sp, #4]
	beq _020098E0
	ldr r1, [sp, #4]
	ldr r0, [sp]
	lsl r1, r1, #1
	bl sub_020F2BA4
	cmp r1, #0
	beq _020098AC
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x28]
	add r1, r1, r0
	ldrb r1, [r4, r1]
	add r0, r5, r0
	strb r1, [r4, r0]
	b _020098EC
_020098AC:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_020F2BA4
	cmp r1, #0
	beq _020098CA
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r5, r0
	add r0, r1, r4
	sub r0, r0, #1
	ldrb r0, [r0]
	strb r0, [r1, r4]
	b _020098EC
_020098CA:
	ldrb r1, [r7]
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #4
	orr r0, r1
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _020098EC
_020098E0:
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldrb r0, [r7]
	add r1, r5, r1
	strb r0, [r4, r1]
_020098EC:
	ldr r0, [sp, #0x34]
	add r4, r4, #1
	add r0, r0, #1
	add r7, r7, #1
	str r0, [sp, #0x34]
	cmp r4, #0x50
	bge _020098FC
	b _020097E6
_020098FC:
	ldr r0, [sp, #0x40]
	add r0, #0x80
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	add r0, #0x50
	str r0, [sp, #0x3c]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0x50
	bge _02009914
	b _020097B4
_02009914:
	ldr r0, [sp, #0x4c]
	bl sub_0201AB0C
_0200991A:
	ldr r0, [sp, #0x44]
	mov r1, #0xa
	add r0, #0xac
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x38]
	lsl r1, r1, #0xa
	add r0, r0, r1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x54]
	add r0, r0, #1
	str r0, [sp, #0x54]
	cmp r0, #4
	bge _02009936
	b _0200950E
_02009936:
	ldr r1, _02009948 ; =0x00000331
	ldr r0, [sp, #0x48]
	strb r0, [r6, r1]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02009940: .word 0x00002828
_02009944: .word 0x00002827
_02009948: .word 0x00000331
	thumb_func_end sub_020094FC

	thumb_func_start sub_0200994C
sub_0200994C: ; 0x0200994C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r4, r5, #0
	str r0, [sp, #8]
_0200995E:
	ldr r1, [r4]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	beq _02009A3A
	lsl r0, r1, #0x17
	lsr r0, r0, #0x1f
	beq _02009A3A
	ldr r0, _02009B28 ; =0xFFFFFEFF
	mov r2, #0xba
	and r0, r1
	str r0, [r4]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r2, r2, #2
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #8]
	ldr r2, [r5, r2]
	bl sub_02007524
	add r1, sp, #0x18
	str r0, [sp, #0x10]
	bl sub_020B7140
	ldr r0, [sp, #0x18]
	mov r7, #0
	ldr r1, [r0]
	mov r0, #0x32
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [sp, #0x18]
	add r2, r7, #0
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #8]
	lsl r3, r0, #1
_020099A2:
	mov r6, #3
	lsl r6, r6, #8
	ldr r6, [r5, r6]
	ldrh r0, [r1]
	add r6, r3, r6
	add r7, r7, #1
	strh r0, [r2, r6]
	mov r6, #0xc1
	lsl r6, r6, #2
	ldrh r0, [r1]
	ldr r6, [r5, r6]
	add r1, r1, #2
	add r6, r3, r6
	strh r0, [r2, r6]
	add r2, r2, #2
	cmp r7, #0x10
	blt _020099A2
	ldr r0, [sp, #0x10]
	bl sub_0201AB0C
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	beq _02009A3A
	mov r2, #0xba
	mov r0, #0x72
	lsl r2, r2, #2
	add r1, r0, #0
	ldr r2, [r5, r2]
	add r1, #0x92
	bl sub_02007524
	add r1, sp, #0x18
	str r0, [sp, #4]
	bl sub_020B7140
	ldr r0, [sp, #0x18]
	mov r7, #0xc1
	ldr r0, [r0, #0xc]
	mov r1, #0
	lsl r7, r7, #2
_020099F8:
	add r6, r4, #0
	add r6, #0x6c
	ldrh r6, [r6]
	mov r2, #3
	lsl r2, r2, #8
	lsl r6, r6, #0x1e
	lsr r6, r6, #0x1e
	add r6, r6, #3
	lsl r6, r6, #4
	add r6, r1, r6
	ldrh r3, [r0]
	ldr r2, [r5, r2]
	lsl r6, r6, #1
	strh r3, [r2, r6]
	add r6, r4, #0
	add r6, #0x6c
	ldrh r6, [r6]
	ldrh r3, [r0]
	ldr r2, [r5, r7]
	lsl r6, r6, #0x1e
	lsr r6, r6, #0x1e
	add r6, r6, #3
	lsl r6, r6, #4
	add r6, r1, r6
	lsl r6, r6, #1
	add r1, r1, #1
	add r0, r0, #2
	strh r3, [r2, r6]
	cmp r1, #0x10
	blt _020099F8
	ldr r0, [sp, #4]
	bl sub_0201AB0C
_02009A3A:
	ldr r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02009B08
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	beq _02009B08
	add r0, r4, #0
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0
	bne _02009AFA
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x4b
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, [sp, #8]
	mov r2, #0xc1
	lsl r1, r0, #1
	ldr r0, [r4, #0x4c]
	add r3, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	sub r2, r2, #4
	add r3, #0x48
	ldr r2, [r5, r2]
	add r0, r0, r1
	add r1, r2, r1
	ldrb r3, [r3]
	mov r2, #0x10
	bl sub_02003DE8
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	beq _02009ABC
	add r0, r0, #3
	lsl r1, r0, #5
	ldr r0, [r4, #0x4c]
	mov r2, #0xc1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r3, r4, #0
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	sub r2, r2, #4
	add r3, #0x48
	ldr r2, [r5, r2]
	add r0, r0, r1
	add r1, r2, r1
	ldrb r3, [r3]
	mov r2, #0x10
	bl sub_02003DE8
_02009ABC:
	add r0, r4, #0
	add r0, #0x49
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, r1
	bne _02009AD6
	ldr r1, [r4, #0x54]
	ldr r0, _02009B2C ; =0xFFFFEFFF
	and r0, r1
	str r0, [r4, #0x54]
	b _02009B08
_02009AD6:
	cmp r0, r1
	bls _02009AEA
	add r0, r4, #0
	add r0, #0x48
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x48
	strb r1, [r0]
	b _02009B08
_02009AEA:
	add r0, r4, #0
	add r0, #0x48
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x48
	strb r1, [r0]
	b _02009B08
_02009AFA:
	add r0, r4, #0
	add r0, #0x4a
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x4a
	strb r1, [r0]
_02009B08:
	ldr r0, [sp, #8]
	add r4, #0xac
	add r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	bge _02009B1C
	b _0200995E
_02009B1C:
	ldr r1, _02009B30 ; =0x00000332
	ldr r0, [sp, #0xc]
	strb r0, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02009B28: .word 0xFFFFFEFF
_02009B2C: .word 0xFFFFEFFF
_02009B30: .word 0x00000332
	thumb_func_end sub_0200994C

	thumb_func_start sub_02009B34
sub_02009B34: ; 0x02009B34
	mov r1, #0xf0
	and r1, r0
	lsl r1, r1, #0x14
	lsl r0, r0, #0x1c
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_02009B34

	thumb_func_start sub_02009B48
sub_02009B48: ; 0x02009B48
	push {r3, lr}
	add r2, r0, #0
	ldrh r0, [r2, #0xa]
	cmp r0, #0
	beq _02009B5C
	add r0, r1, #0
	ldr r1, [r2, #0x10]
	mov r2, #1
	bl sub_02009B60
_02009B5C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02009B48

	thumb_func_start sub_02009B60
sub_02009B60: ; 0x02009B60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r3, r0, #0
	add r0, r1, #0
	mov lr, r0
	mov r0, #0
	mov ip, r0
	ldr r0, _02009CAC ; =0x0210F63C
	str r1, [sp]
	str r2, [sp, #4]
	str r0, [sp, #0x10]
_02009B76:
	ldr r0, [sp, #0x10]
	mov r1, #0
	ldr r6, [r0]
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _02009BEE
	ldr r0, [sp]
	mov r2, #0xf
	and r0, r2
	str r0, [sp, #0xc]
	sub r0, #8
	str r0, [sp, #0xc]
	ldr r0, [sp]
	mov r2, #0xf0
	and r0, r2
	lsr r7, r0, #4
	sub r7, #8
_02009B98:
	lsl r0, r1, #1
	add r2, r6, r0
	ldrb r4, [r6, r0]
	ldrb r2, [r2, #1]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r2, r7, r2
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r4, r2, #0x18
	mov r2, #0x50
	mul r2, r4
	lsr r5, r0, #1
	add r2, r5, r2
	mov r4, #1
	tst r0, r4
	ldrb r4, [r3, r2]
	beq _02009BD0
	mov r0, #0xf0
	and r0, r4
	cmp r0, #0x10
	blt _02009BE0
	cmp r0, #0x30
	bgt _02009BE0
	add r4, #0x50
	strb r4, [r3, r2]
	b _02009BE0
_02009BD0:
	mov r0, #0xf
	and r0, r4
	cmp r0, #1
	blt _02009BE0
	cmp r0, #3
	bgt _02009BE0
	add r0, r4, #5
	strb r0, [r3, r2]
_02009BE0:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r1, #1
	ldrb r0, [r6, r0]
	cmp r0, #0xff
	bne _02009B98
_02009BEE:
	ldr r0, [sp]
	lsr r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #4
	blt _02009B76
	mov r0, lr
	str r0, [sp]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02009CA6
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _02009CAC ; =0x0210F63C
	str r0, [sp, #0x18]
_02009C16:
	ldr r0, [sp, #0x18]
	mov r4, #0
	ldr r2, [r0]
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _02009C90
	ldr r0, [sp]
	mov r1, #0xf
	and r0, r1
	str r0, [sp, #0x14]
	add r0, #0x48
	str r0, [sp, #0x14]
	ldr r0, [sp]
	mov r1, #0xf0
	and r0, r1
	lsr r7, r0, #4
	sub r7, #8
_02009C38:
	lsl r0, r4, #1
	add r5, r2, r0
	ldrb r1, [r2, r0]
	ldrb r5, [r5, #1]
	ldr r0, [sp, #0x14]
	sub r1, #0xe
	add r0, r0, r1
	add r5, r7, r5
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r1, r0, #0x18
	lsr r6, r5, #0x18
	mov r5, #0x50
	lsr r0, r1, #1
	mul r5, r6
	add r0, r0, r5
	mov r5, #1
	tst r1, r5
	ldrb r5, [r3, r0]
	beq _02009C72
	mov r1, #0xf0
	and r1, r5
	cmp r1, #0x10
	blt _02009C82
	cmp r1, #0x30
	bgt _02009C82
	add r5, #0x50
	strb r5, [r3, r0]
	b _02009C82
_02009C72:
	mov r1, #0xf
	and r1, r5
	cmp r1, #1
	blt _02009C82
	cmp r1, #3
	bgt _02009C82
	add r1, r5, #5
	strb r1, [r3, r0]
_02009C82:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	lsl r0, r4, #1
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	bne _02009C38
_02009C90:
	ldr r0, [sp]
	lsr r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _02009C16
_02009CA6:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02009CAC: .word 0x0210F63C
	thumb_func_end sub_02009B60

	thumb_func_start sub_02009CB0
sub_02009CB0: ; 0x02009CB0
	ldr r2, [r0]
	ldr r1, _02009CC8 ; =0x41C64E6D
	add r3, r2, #0
	mul r3, r1
	ldr r1, _02009CCC ; =0x00006073
	add r1, r3, r1
	str r1, [r0]
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_02009CC8: .word 0x41C64E6D
_02009CCC: .word 0x00006073
	thumb_func_end sub_02009CB0

	thumb_func_start sub_02009CD0
sub_02009CD0: ; 0x02009CD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	mov r6, #0x32
	mov r4, #0
	str r0, [sp]
	add r7, sp, #0
	lsl r6, r6, #6
_02009CE0:
	ldrh r1, [r5]
	ldr r0, [sp]
	eor r0, r1
	strh r0, [r5]
	add r0, r7, #0
	bl sub_02009CB0
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r6
	blt _02009CE0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009CD0

	thumb_func_start sub_02009CF8
sub_02009CF8: ; 0x02009CF8
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02009D24 ; =0x000018FE
	mov r6, #0
	ldrh r2, [r0, r1]
	lsr r4, r1, #1
	add r5, r0, r1
	str r2, [sp]
	add r7, sp, #0
	mvn r6, r6
_02009D0A:
	ldrh r1, [r5]
	ldr r0, [sp]
	eor r0, r1
	strh r0, [r5]
	add r0, r7, #0
	bl sub_02009CB0
	sub r4, r4, #1
	sub r5, r5, #2
	cmp r4, r6
	bgt _02009D0A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02009D24: .word 0x000018FE
	thumb_func_end sub_02009CF8

	thumb_func_start sub_02009D28
sub_02009D28: ; 0x02009D28
	push {r3, lr}
	cmp r1, #0xc2
	beq _02009D3A
	cmp r1, #0xc3
	beq _02009D3A
	cmp r1, #0x3a
	beq _02009D3A
	cmp r1, #6
	bne _02009D40
_02009D3A:
	bl sub_02009CF8
	pop {r3, pc}
_02009D40:
	bl sub_02009CD0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02009D28

	thumb_func_start sub_02009D48
sub_02009D48: ; 0x02009D48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r4, #0
	add r5, r0, #0
	add r0, r4, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	add r6, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	str r4, [sp, #0xc]
	cmp r0, #0
	bne _02009D66
	bl GF_AssertFail
_02009D66:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	bne _02009D70
	bl GF_AssertFail
_02009D70:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _02009D7A
	bl GF_AssertFail
_02009D7A:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _02009D84
	bl GF_AssertFail
_02009D84:
	cmp r5, #0
	bne _02009D8C
	bl GF_AssertFail
_02009D8C:
	ldr r0, [sp, #0x44]
	add r1, r6, #0
	bl sub_0200A7BC
	add r7, r0, #0
	bne _02009D9C
	bl GF_AssertFail
_02009D9C:
	ldr r0, [sp, #0x48]
	ldr r1, [sp]
	bl sub_0200A7BC
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _02009DAE
	bl GF_AssertFail
_02009DAE:
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #4]
	bl sub_0200A7BC
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _02009DC0
	bl GF_AssertFail
_02009DC0:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _02009DDE
	mov r2, #0
	ldr r1, [sp, #0x30]
	mvn r2, r2
	cmp r1, r2
	beq _02009DDE
	bl sub_0200A7BC
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _02009DDE
	bl GF_AssertFail
_02009DDE:
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _02009E06
	mov r2, #0
	ldr r1, [sp, #0x34]
	mvn r2, r2
	cmp r1, r2
	beq _02009DF4
	bl sub_0200A7BC
	add r4, r0, #0
_02009DF4:
	mov r0, #0
	ldr r1, [sp, #0x38]
	mvn r0, r0
	cmp r1, r0
	beq _02009E06
	ldr r0, [sp, #0x58]
	bl sub_0200A7BC
	str r0, [sp, #8]
_02009E06:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02009E26
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl sub_0200AF24
	add r6, r0, #0
	bne _02009E1C
	bl GF_AssertFail
_02009E1C:
	add r0, r7, #0
	bl sub_0200A810
	str r0, [r5, #4]
	b _02009E38
_02009E26:
	add r0, r7, #0
	bl sub_0200AF00
	add r6, r0, #0
	bne _02009E34
	bl GF_AssertFail
_02009E34:
	mov r0, #0
	str r0, [r5, #4]
_02009E38:
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl sub_0200B0F8
	str r0, [r5, #8]
	ldr r0, [sp, #0x10]
	str r6, [r5]
	bl sub_0200A840
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02009E58
	bl sub_0200A858
	b _02009E5A
_02009E58:
	mov r0, #0
_02009E5A:
	str r0, [r5, #0x10]
	cmp r4, #0
	beq _02009E70
	add r0, r4, #0
	bl sub_0200A870
	str r0, [r5, #0x14]
	ldr r0, [sp, #8]
	bl sub_0200A888
	b _02009E74
_02009E70:
	mov r0, #0
	str r0, [r5, #0x14]
_02009E74:
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x40]
	add r5, #0x20
	strb r0, [r5]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009D48

	thumb_func_start sub_02009E84
sub_02009E84: ; 0x02009E84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [sp, #0x48]
	add r7, r1, #0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	mov r4, #0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	ldr r1, [r5]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r2, [sp, #0x2c]
	str r0, [sp, #0x54]
	sub r0, r4, #2
	str r3, [sp, #0x30]
	cmp r1, r0
	beq _02009EB8
	add r2, r5, #0
	sub r0, r4, #2
_02009EAE:
	add r2, #0x20
	ldr r1, [r2]
	add r4, r4, #1
	cmp r1, r0
	bne _02009EAE
_02009EB8:
	add r0, r7, #0
	mov r1, #8
	bl sub_0201AA8C
	mov r1, #0x24
	add r6, r0, #0
	add r0, r7, #0
	mul r1, r4
	bl sub_0201AA8C
	str r0, [r6]
	mov r7, #0
	str r4, [r6, #4]
	cmp r4, #0
	ble _02009F1E
	add r4, r7, #0
_02009ED8:
	ldr r0, [r5, #0xc]
	str r0, [sp]
	ldr r0, [r5, #0x10]
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x28]
	ldr r0, [r6]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, r0, r4
	bl sub_02009D48
	ldr r0, [r6, #4]
	add r7, r7, #1
	add r5, #0x20
	add r4, #0x24
	cmp r7, r0
	blt _02009ED8
_02009F1E:
	add r0, r6, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02009E84

	thumb_func_start sub_02009F24
sub_02009F24: ; 0x02009F24
	push {r4, lr}
	add r4, r0, #0
	bne _02009F2E
	bl GF_AssertFail
_02009F2E:
	ldr r0, [r4]
	cmp r0, #0
	beq _02009F38
	bl sub_0201AB0C
_02009F38:
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	thumb_func_end sub_02009F24

	thumb_func_start sub_02009F40
sub_02009F40: ; 0x02009F40
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _02009FA4 ; =0xFFFFF000
	add r0, r4, #0
	add r6, r2, #0
	bl sub_02025C44
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x98
	add r1, sp, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_0200B27C
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	mov r1, #3
	lsl r1, r1, #0x12
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	str r1, [sp, #4]
	str r1, [sp, #0xc]
	add r0, #0xe0
	add r1, sp, #0
	mov r2, #2
	add r3, r4, #0
	bl sub_0200B27C
	add r0, sp, #0x10
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r6, [sp, #0x18]
	bl sub_0202445C
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02009FA4: .word 0xFFFFF000
	thumb_func_end sub_02009F40

	thumb_func_start sub_02009FA8
sub_02009FA8: ; 0x02009FA8
	push {r3, lr}
	sub sp, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	mov r1, #3
	lsl r1, r1, #0x12
	str r1, [sp, #0xc]
	add r0, #0x98
	add r1, sp, #0
	str r2, [sp, #4]
	bl sub_02025C88
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end sub_02009FA8

	thumb_func_start sub_02009FC8
sub_02009FC8: ; 0x02009FC8
	push {r3, lr}
	sub sp, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	mov r1, #3
	lsl r1, r1, #0x12
	str r1, [sp, #0xc]
	add r0, #0xe0
	add r1, sp, #0
	str r2, [sp, #4]
	bl sub_02025C88
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end sub_02009FC8

	thumb_func_start sub_02009FE8
sub_02009FE8: ; 0x02009FE8
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0x10
	beq _02009FFE
	ldr r2, _0200A070 ; =0x00100010
	cmp r1, r2
	beq _0200A02E
	ldr r0, _0200A074 ; =0x00200010
	cmp r1, r0
	beq _0200A03C
	b _0200A068
_02009FFE:
	bl sub_020CEBEC
	cmp r0, #0x40
	beq _0200A00E
	bl sub_020CEBEC
	cmp r0, #0x20
	bne _0200A01E
_0200A00E:
	mov r0, #0x3e
	mov r1, #2
	lsl r0, r0, #8
	lsl r1, r1, #8
	add r2, r4, #0
	bl sub_020216F4
	pop {r4, pc}
_0200A01E:
	mov r0, #0x7e
	mov r1, #2
	lsl r0, r0, #8
	lsl r1, r1, #8
	add r2, r4, #0
	bl sub_020216F4
	pop {r4, pc}
_0200A02E:
	mov r0, #0xfe
	lsr r1, r2, #0xb
	lsl r0, r0, #8
	add r2, r4, #0
	bl sub_020216F4
	pop {r4, pc}
_0200A03C:
	bl sub_020CEBEC
	cmp r0, #0x30
	beq _0200A04C
	bl sub_020CEBEC
	cmp r0, #0x50
	bne _0200A05A
_0200A04C:
	mov r1, #2
	ldr r0, _0200A078 ; =0x00013E00
	lsl r1, r1, #8
	add r2, r4, #0
	bl sub_020216F4
	pop {r4, pc}
_0200A05A:
	mov r1, #2
	ldr r0, _0200A07C ; =0x0001FE00
	lsl r1, r1, #8
	add r2, r4, #0
	bl sub_020216F4
	pop {r4, pc}
_0200A068:
	bl GF_AssertFail
	pop {r4, pc}
	nop
_0200A070: .word 0x00100010
_0200A074: .word 0x00200010
_0200A078: .word 0x00013E00
_0200A07C: .word 0x0001FE00
	thumb_func_end sub_02009FE8

	thumb_func_start sub_0200A080
sub_0200A080: ; 0x0200A080
	ldr r3, _0200A08C ; =sub_020225E4
	add r1, r0, #0
	mov r0, #3
	lsl r0, r0, #0xe
	bx r3
	nop
_0200A08C: .word sub_020225E4
	thumb_func_end sub_0200A080

	thumb_func_start sub_0200A090
sub_0200A090: ; 0x0200A090
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp]
	add r0, r2, #0
	mov r1, #0x14
	bl sub_0201AA8C
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02025534
	str r0, [r4]
	mov r0, #0xc
	add r7, r5, #0
	mul r7, r0
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_0201AA8C
	mov r1, #0
	add r2, r7, #0
	str r0, [r4, #4]
	bl sub_020E5B44
	str r5, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A090

	thumb_func_start sub_0200A0D0
sub_0200A0D0: ; 0x0200A0D0
	push {r4, lr}
	add r4, r0, #0
	bne _0200A0DA
	bl GF_AssertFail
_0200A0DA:
	ldr r0, [r4]
	cmp r0, #0
	bne _0200A0E4
	bl GF_AssertFail
_0200A0E4:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0200A0EE
	bl GF_AssertFail
_0200A0EE:
	add r0, r4, #0
	bl sub_0200A790
	ldr r0, [r4]
	bl sub_02025580
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	bl sub_0201AB0C
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	thumb_func_end sub_0200A0D0

	thumb_func_start sub_0200A110
sub_0200A110: ; 0x0200A110
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0200A124
	bl GF_AssertFail
_0200A124:
	cmp r4, #0
	bne _0200A12C
	bl GF_AssertFail
_0200A12C:
	ldr r0, [r4, #4]
	cmp r0, r6
	bgt _0200A136
	bl GF_AssertFail
_0200A136:
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #8]
	cmp r1, r0
	beq _0200A142
	bl GF_AssertFail
_0200A142:
	add r0, r5, #0
	bl sub_0200AA70
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _0200A152
	bl GF_AssertFail
_0200A152:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0200A18E
	ldr r2, [r4]
	mov r0, #0x4c
	add r1, r6, #0
	mul r1, r0
	add r6, r2, r1
	ldr r1, [r2, r1]
	add r0, r5, #0
	bl sub_0200A728
	cmp r0, #1
	beq _0200A172
	bl GF_AssertFail
_0200A172:
	ldr r0, [r6, #0x44]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [r6, #0x48]
	add r2, r6, #4
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r3, [r6]
	add r0, r5, #0
	bl sub_0200ABEC
	b _0200A1CC
_0200A18E:
	mov r0, #0x18
	ldr r1, [r4]
	mul r0, r6
	add r6, r1, r0
	ldr r1, [r6, #0xc]
	add r0, r5, #0
	bl sub_0200A728
	cmp r0, #1
	beq _0200A1A6
	bl GF_AssertFail
_0200A1A6:
	ldr r0, [r6, #8]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [r6, #0xc]
	str r0, [sp, #4]
	ldr r0, [r6, #0x10]
	str r0, [sp, #8]
	ldr r0, [r6, #0x14]
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r2, [r6]
	ldr r3, [r6, #4]
	add r0, r5, #0
	bl sub_0200AC18
_0200A1CC:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A110

	thumb_func_start sub_0200A1D8
sub_0200A1D8: ; 0x0200A1D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _0200A1EC
	bl GF_AssertFail
_0200A1EC:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0200A1F6
	bl GF_AssertFail
_0200A1F6:
	add r0, r5, #0
	bl sub_0200AA70
	add r6, r0, #0
	bne _0200A204
	bl GF_AssertFail
_0200A204:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200AC18
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200A1D8

	thumb_func_start sub_0200A234
sub_0200A234: ; 0x0200A234
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _0200A248
	bl GF_AssertFail
_0200A248:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _0200A252
	bl GF_AssertFail
_0200A252:
	add r0, r5, #0
	bl sub_0200AA70
	add r6, r0, #0
	bne _0200A260
	bl GF_AssertFail
_0200A260:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200AC18
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200A234

	thumb_func_start sub_0200A294
sub_0200A294: ; 0x0200A294
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _0200A2A8
	bl GF_AssertFail
_0200A2A8:
	add r0, r5, #0
	bl sub_0200AA70
	add r6, r0, #0
	bne _0200A2B6
	bl GF_AssertFail
_0200A2B6:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200AC18
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A294

	thumb_func_start sub_0200A2E4
sub_0200A2E4: ; 0x0200A2E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r5, #0
	bne _0200A2F8
	bl GF_AssertFail
_0200A2F8:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0200A302
	bl GF_AssertFail
_0200A302:
	cmp r4, #0
	bne _0200A30A
	bl GF_AssertFail
_0200A30A:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0200A314
	bl GF_AssertFail
_0200A314:
	add r0, r4, #0
	bl sub_0200A7FC
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0200A8B0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A75C
	ldr r0, [sp, #0x38]
	mov r1, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200AC18
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A2E4

	thumb_func_start sub_0200A350
sub_0200A350: ; 0x0200A350
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r5, #0
	bne _0200A364
	bl GF_AssertFail
_0200A364:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _0200A36E
	bl GF_AssertFail
_0200A36E:
	cmp r4, #0
	bne _0200A376
	bl GF_AssertFail
_0200A376:
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _0200A380
	bl GF_AssertFail
_0200A380:
	add r0, r4, #0
	bl sub_0200A7FC
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0200A8B0
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0200A8DC
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A75C
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x24]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200AC18
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A350

	thumb_func_start sub_0200A3C8
sub_0200A3C8: ; 0x0200A3C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _0200A3DC
	bl GF_AssertFail
_0200A3DC:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0200A3E6
	bl GF_AssertFail
_0200A3E6:
	add r0, r5, #0
	bl sub_0200AA70
	add r6, r0, #0
	bne _0200A3F4
	bl GF_AssertFail
_0200A3F4:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200AC50
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200A3C8

	thumb_func_start sub_0200A424
sub_0200A424: ; 0x0200A424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _0200A438
	bl GF_AssertFail
_0200A438:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0200A442
	bl GF_AssertFail
_0200A442:
	add r0, r5, #0
	bl sub_0200AA70
	add r6, r0, #0
	bne _0200A450
	bl GF_AssertFail
_0200A450:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	add r1, r6, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x44]
	add r2, r7, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200AC50
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A424

	thumb_func_start sub_0200A480
sub_0200A480: ; 0x0200A480
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _0200A494
	bl GF_AssertFail
_0200A494:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _0200A49E
	bl GF_AssertFail
_0200A49E:
	add r0, r5, #0
	bl sub_0200AA70
	add r6, r0, #0
	bne _0200A4AC
	bl GF_AssertFail
_0200A4AC:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200AC50
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200A480

	thumb_func_start sub_0200A4E0
sub_0200A4E0: ; 0x0200A4E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _0200A4F4
	bl GF_AssertFail
_0200A4F4:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _0200A4FE
	bl GF_AssertFail
_0200A4FE:
	add r0, r5, #0
	bl sub_0200AA70
	add r6, r0, #0
	bne _0200A50C
	bl GF_AssertFail
_0200A50C:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200AC50
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200A4E0

	thumb_func_start sub_0200A540
sub_0200A540: ; 0x0200A540
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _0200A554
	bl GF_AssertFail
_0200A554:
	add r0, r5, #0
	bl sub_0200AA70
	add r6, r0, #0
	bne _0200A562
	bl GF_AssertFail
_0200A562:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200AC50
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A540

	thumb_func_start sub_0200A590
sub_0200A590: ; 0x0200A590
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r5, #0
	bne _0200A5A4
	bl GF_AssertFail
_0200A5A4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0200A5AE
	bl GF_AssertFail
_0200A5AE:
	cmp r4, #0
	bne _0200A5B6
	bl GF_AssertFail
_0200A5B6:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0200A5C0
	bl GF_AssertFail
_0200A5C0:
	add r0, r4, #0
	bl sub_0200A7FC
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0200A8B0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A75C
	ldr r0, [sp, #0x38]
	mov r1, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200AC50
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A590

	thumb_func_start sub_0200A5FC
sub_0200A5FC: ; 0x0200A5FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r5, #0
	bne _0200A610
	bl GF_AssertFail
_0200A610:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _0200A61A
	bl GF_AssertFail
_0200A61A:
	cmp r4, #0
	bne _0200A622
	bl GF_AssertFail
_0200A622:
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _0200A62C
	bl GF_AssertFail
_0200A62C:
	add r0, r4, #0
	bl sub_0200A7FC
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0200A8B0
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0200A8DC
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A75C
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x24]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200AC50
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A5FC

	thumb_func_start sub_0200A674
sub_0200A674: ; 0x0200A674
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0200A688
	bl GF_AssertFail
_0200A688:
	cmp r4, #0
	bne _0200A690
	bl GF_AssertFail
_0200A690:
	str r6, [sp]
	str r7, [sp, #4]
	ldr r3, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0200A6A8
	ldr r0, [r4, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200A674

	thumb_func_start sub_0200A6A8
sub_0200A6A8: ; 0x0200A6A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r2, #0
	ldr r0, [sp, #0x24]
	add r7, r5, r3
	str r1, [sp, #4]
	ldr r4, [sp, #0x20]
	str r0, [sp, #0x24]
	cmp r5, r7
	bge _0200A6EC
	add r6, r4, #0
	add r6, #8
_0200A6C2:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [sp, #0x24]
	add r2, r5, #0
	bl sub_0200A110
	cmp r4, #0
	beq _0200A6E6
	ldr r2, [r4, #8]
	ldr r1, [r4, #4]
	cmp r1, r2
	ble _0200A6E6
	ldr r1, [r4]
	lsl r2, r2, #2
	str r0, [r1, r2]
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
_0200A6E6:
	add r5, r5, #1
	cmp r5, r7
	blt _0200A6C2
_0200A6EC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A6A8

	thumb_func_start sub_0200A6F0
sub_0200A6F0: ; 0x0200A6F0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0xc
	bl sub_0201AA8C
	add r4, r0, #0
	add r0, r6, #0
	lsl r1, r5, #2
	bl sub_0201AA8C
	str r0, [r4]
	str r5, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A6F0

	thumb_func_start sub_0200A714
sub_0200A714: ; 0x0200A714
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0201AB0C
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200A714

	thumb_func_start sub_0200A728
sub_0200A728: ; 0x0200A728
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A736
	bl GF_AssertFail
_0200A736:
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_020255A0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200A728

	thumb_func_start sub_0200A740
sub_0200A740: ; 0x0200A740
	push {r4, lr}
	add r4, r0, #0
	bne _0200A74A
	bl GF_AssertFail
_0200A74A:
	add r0, r4, #0
	bl sub_0200ABC0
	ldr r0, [r4]
	mov r1, #0
	bl sub_0202570C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200A740

	thumb_func_start sub_0200A75C
sub_0200A75C: ; 0x0200A75C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A76A
	bl GF_AssertFail
_0200A76A:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0200A774
	bl GF_AssertFail
_0200A774:
	add r0, r4, #0
	bl sub_0200ABC0
	ldr r0, [r5]
	ldr r1, [r4]
	bl sub_02025658
	mov r0, #0
	str r0, [r4]
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200A75C

	thumb_func_start sub_0200A790
sub_0200A790: ; 0x0200A790
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _0200A7B8
	add r4, r6, #0
_0200A79E:
	ldr r1, [r5, #4]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _0200A7AE
	add r0, r5, #0
	add r1, r1, r4
	bl sub_0200A75C
_0200A7AE:
	ldr r0, [r5, #8]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _0200A79E
_0200A7B8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200A790

	thumb_func_start sub_0200A7BC
sub_0200A7BC: ; 0x0200A7BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _0200A7CA
	bl GF_AssertFail
_0200A7CA:
	ldr r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _0200A7F8
	add r4, r6, #0
_0200A7D4:
	ldr r0, [r5, #4]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A7EE
	bl sub_02025728
	cmp r0, r7
	bne _0200A7EE
	mov r0, #0xc
	ldr r1, [r5, #4]
	mul r0, r6
	add r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_0200A7EE:
	ldr r0, [r5, #8]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _0200A7D4
_0200A7F8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A7BC

	thumb_func_start sub_0200A7FC
sub_0200A7FC: ; 0x0200A7FC
	push {r4, lr}
	add r4, r0, #0
	bne _0200A806
	bl GF_AssertFail
_0200A806:
	ldr r0, [r4]
	bl sub_02025728
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200A7FC

	thumb_func_start sub_0200A810
sub_0200A810: ; 0x0200A810
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0200A81E
	bl GF_AssertFail
_0200A81E:
	add r0, r4, #0
	bl sub_0200ABD4
	ldr r0, [r0]
	pop {r4, pc}
	thumb_func_end sub_0200A810

	thumb_func_start sub_0200A828
sub_0200A828: ; 0x0200A828
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _0200A836
	bl GF_AssertFail
_0200A836:
	add r0, r4, #0
	bl sub_0200ABD4
	ldr r0, [r0]
	pop {r4, pc}
	thumb_func_end sub_0200A828

	thumb_func_start sub_0200A840
sub_0200A840: ; 0x0200A840
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #2
	beq _0200A84E
	bl GF_AssertFail
_0200A84E:
	add r0, r4, #0
	bl sub_0200ABD4
	ldr r0, [r0]
	pop {r4, pc}
	thumb_func_end sub_0200A840

	thumb_func_start sub_0200A858
sub_0200A858: ; 0x0200A858
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	beq _0200A866
	bl GF_AssertFail
_0200A866:
	add r0, r4, #0
	bl sub_0200ABD4
	ldr r0, [r0]
	pop {r4, pc}
	thumb_func_end sub_0200A858

	thumb_func_start sub_0200A870
sub_0200A870: ; 0x0200A870
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	beq _0200A87E
	bl GF_AssertFail
_0200A87E:
	add r0, r4, #0
	bl sub_0200ABD4
	ldr r0, [r0]
	pop {r4, pc}
	thumb_func_end sub_0200A870

	thumb_func_start sub_0200A888
sub_0200A888: ; 0x0200A888
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	beq _0200A896
	bl GF_AssertFail
_0200A896:
	add r0, r4, #0
	bl sub_0200ABD4
	ldr r0, [r0]
	pop {r4, pc}
	thumb_func_end sub_0200A888

	thumb_func_start sub_0200A8A0
sub_0200A8A0: ; 0x0200A8A0
	push {r4, lr}
	add r4, r0, #0
	bne _0200A8AA
	bl GF_AssertFail
_0200A8AA:
	ldr r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200A8A0

	thumb_func_start sub_0200A8B0
sub_0200A8B0: ; 0x0200A8B0
	push {r4, lr}
	add r4, r0, #0
	bne _0200A8BA
	bl GF_AssertFail
_0200A8BA:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0200A8CA
	add r0, r4, #0
	bl sub_0200ABD4
	ldr r0, [r0, #4]
	pop {r4, pc}
_0200A8CA:
	cmp r0, #1
	bne _0200A8D8
	add r0, r4, #0
	bl sub_0200ABD4
	ldr r0, [r0, #4]
	pop {r4, pc}
_0200A8D8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0200A8B0

	thumb_func_start sub_0200A8DC
sub_0200A8DC: ; 0x0200A8DC
	push {r4, lr}
	add r4, r0, #0
	bne _0200A8E6
	bl GF_AssertFail
_0200A8E6:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0200A8F6
	add r0, r4, #0
	bl sub_0200ABD4
	ldr r0, [r0, #8]
	pop {r4, pc}
_0200A8F6:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200A8DC

	thumb_func_start sub_0200A8FC
sub_0200A8FC: ; 0x0200A8FC
	mov r0, #0x10
	bx lr
	thumb_func_end sub_0200A8FC

	thumb_func_start sub_0200A900
sub_0200A900: ; 0x0200A900
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	.align 2, 0
	thumb_func_end sub_0200A900

	thumb_func_start sub_0200A908
sub_0200A908: ; 0x0200A908
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _0200A918
	bl GF_AssertFail
_0200A918:
	ldr r0, [r5]
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #0xc]
	add r0, r5, #4
	bl sub_0200AC88
	add r2, r0, #0
	str r0, [r4, #4]
	cmp r2, #0
	ble _0200A93A
	mov r1, #0x18
	add r0, r6, #0
	mul r1, r2
	bl sub_0201AA8C
	b _0200A93C
_0200A93A:
	mov r0, #0
_0200A93C:
	str r0, [r4]
	ldr r0, [r4]
	cmp r0, #0
	beq _0200A950
	ldr r3, [r4, #4]
	mov r2, #0x18
	add r1, r5, #4
	mul r2, r3
	bl sub_020E5AD8
_0200A950:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200A908

	thumb_func_start sub_0200A954
sub_0200A954: ; 0x0200A954
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0200A962
	bl sub_0201AB0C
_0200A962:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200A954

	thumb_func_start sub_0200A96C
sub_0200A96C: ; 0x0200A96C
	push {r4, lr}
	add r4, r0, #0
	bne _0200A976
	bl GF_AssertFail
_0200A976:
	ldr r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200A96C

	thumb_func_start sub_0200A97C
sub_0200A97C: ; 0x0200A97C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A98A
	bl GF_AssertFail
_0200A98A:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200A994
	bl GF_AssertFail
_0200A994:
	ldrb r0, [r5, #0xc]
	ldr r1, [r5]
	cmp r0, #0
	bne _0200A9A4
	mov r0, #0x4c
	mul r0, r4
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
_0200A9A4:
	mov r0, #0x18
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0xc]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200A97C

	thumb_func_start sub_0200A9B0
sub_0200A9B0: ; 0x0200A9B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A9BE
	bl GF_AssertFail
_0200A9BE:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200A9C8
	bl GF_AssertFail
_0200A9C8:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _0200A9D8
	mov r0, #0x18
	ldr r1, [r5]
	mul r0, r4
	add r0, r1, r0
	ldr r6, [r0, #4]
_0200A9D8:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A9B0

	thumb_func_start sub_0200A9DC
sub_0200A9DC: ; 0x0200A9DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A9EA
	bl GF_AssertFail
_0200A9EA:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200A9F4
	bl GF_AssertFail
_0200A9F4:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _0200AA04
	mov r0, #0x18
	ldr r1, [r5]
	mul r0, r4
	add r0, r1, r0
	ldr r6, [r0, #8]
_0200AA04:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A9DC

	thumb_func_start sub_0200AA08
sub_0200AA08: ; 0x0200AA08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200AA16
	bl GF_AssertFail
_0200AA16:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200AA20
	bl GF_AssertFail
_0200AA20:
	ldrb r0, [r5, #0xc]
	ldr r1, [r5]
	cmp r0, #0
	bne _0200AA32
	mov r0, #0x4c
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x44]
	pop {r3, r4, r5, pc}
_0200AA32:
	mov r0, #0x18
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200AA08

	thumb_func_start sub_0200AA3C
sub_0200AA3C: ; 0x0200AA3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200AA4A
	bl GF_AssertFail
_0200AA4A:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200AA54
	bl GF_AssertFail
_0200AA54:
	ldrb r0, [r5, #0xc]
	ldr r1, [r5]
	cmp r0, #0
	bne _0200AA66
	mov r0, #0x4c
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x48]
	pop {r3, r4, r5, pc}
_0200AA66:
	mov r0, #0x18
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200AA3C

	thumb_func_start sub_0200AA70
sub_0200AA70: ; 0x0200AA70
	push {r3, r4}
	ldr r4, [r0, #8]
	mov r1, #0
	cmp r4, #0
	ble _0200AA96
	ldr r3, [r0, #4]
	add r2, r3, #0
_0200AA7E:
	ldr r0, [r2]
	cmp r0, #0
	bne _0200AA8E
	mov r0, #0xc
	mul r0, r1
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_0200AA8E:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, r4
	blt _0200AA7E
_0200AA96:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0200AA70

	thumb_func_start sub_0200AA9C
sub_0200AA9C: ; 0x0200AA9C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4]
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r5, [sp, #0x18]
	bl sub_020256FC
	cmp r6, #5
	bhi _0200AB0A
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200AABE: ; jump table
	.short _0200AACA - _0200AABE - 2 ; case 0
	.short _0200AAD6 - _0200AABE - 2 ; case 1
	.short _0200AAE4 - _0200AABE - 2 ; case 2
	.short _0200AAEE - _0200AABE - 2 ; case 3
	.short _0200AAF8 - _0200AABE - 2 ; case 4
	.short _0200AB02 - _0200AABE - 2 ; case 5
_0200AACA:
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200AB0C
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200AAD6:
	ldr r2, [sp]
	add r1, r7, #0
	add r3, r5, #0
	bl sub_0200AB2C
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200AAE4:
	add r1, r5, #0
	bl sub_0200AB50
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200AAEE:
	add r1, r5, #0
	bl sub_0200AB6C
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200AAF8:
	add r1, r5, #0
	bl sub_0200AB88
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200AB02:
	add r1, r5, #0
	bl sub_0200ABA4
	str r0, [r4, #8]
_0200AB0A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200AA9C

	thumb_func_start sub_0200AB0C
sub_0200AB0C: ; 0x0200AB0C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	mov r1, #8
	bl sub_0201AA8C
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020B70A8
	str r5, [r4, #4]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200AB0C

	thumb_func_start sub_0200AB2C
sub_0200AB2C: ; 0x0200AB2C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0xc
	add r6, r2, #0
	bl sub_0201AA8C
	add r4, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020B7140
	str r5, [r4, #4]
	str r6, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200AB2C

	thumb_func_start sub_0200AB50
sub_0200AB50: ; 0x0200AB50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_0201AA8C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020B6EC8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200AB50

	thumb_func_start sub_0200AB6C
sub_0200AB6C: ; 0x0200AB6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_0201AA8C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020B6D18
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200AB6C

	thumb_func_start sub_0200AB88
sub_0200AB88: ; 0x0200AB88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_0201AA8C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020B6FC8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200AB88

	thumb_func_start sub_0200ABA4
sub_0200ABA4: ; 0x0200ABA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_0201AA8C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020B6D24
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200ABA4

	thumb_func_start sub_0200ABC0
sub_0200ABC0: ; 0x0200ABC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0200ABCE
	bl sub_0201AB0C
_0200ABCE:
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0200ABC0

	thumb_func_start sub_0200ABD4
sub_0200ABD4: ; 0x0200ABD4
	push {r4, lr}
	add r4, r0, #0
	bne _0200ABDE
	bl GF_AssertFail
_0200ABDE:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0200ABE8
	bl GF_AssertFail
_0200ABE8:
	ldr r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0200ABD4

	thumb_func_start sub_0200ABEC
sub_0200ABEC: ; 0x0200ABEC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r0, [r0]
	ldr r3, [sp, #0x1c]
	bl sub_02025600
	str r0, [r4]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r4, #4]
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, #0
	bl sub_0200AA9C
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_0200ABEC

	thumb_func_start sub_0200AC18
sub_0200AC18: ; 0x0200AC18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x24]
	bl sub_02007A44
	add r1, r0, #0
	ldr r0, [r5]
	ldr r2, [sp, #0x14]
	bl sub_020255C4
	str r0, [r4]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r4, #4]
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0200AA9C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200AC18

	thumb_func_start sub_0200AC50
sub_0200AC50: ; 0x0200AC50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x24]
	bl sub_0200ACA4
	add r1, r0, #0
	ldr r0, [r5]
	ldr r2, [sp, #0x14]
	bl sub_020255C4
	str r0, [r4]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r4, #4]
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0200AA9C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200AC50

	thumb_func_start sub_0200AC88
sub_0200AC88: ; 0x0200AC88
	mov r3, #0
	ldr r2, [r0]
	sub r1, r3, #2
	cmp r2, r1
	beq _0200AC9E
	sub r1, r3, #2
_0200AC94:
	add r0, #0x18
	ldr r2, [r0]
	add r3, r3, #1
	cmp r2, r1
	bne _0200AC94
_0200AC9E:
	add r0, r3, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0200AC88

	thumb_func_start sub_0200ACA4
sub_0200ACA4: ; 0x0200ACA4
	push {r4, r5, r6, lr}
	add r6, r3, #0
	add r5, r2, #0
	add r2, r6, #0
	bl sub_0200771C
	add r4, r0, #0
	beq _0200ACEA
	cmp r5, #0
	beq _0200ACEA
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0200ACCA
	ldr r1, [r4]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_0201AA8C
	b _0200ACD4
_0200ACCA:
	ldr r1, [r4]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_0201AACC
_0200ACD4:
	add r5, r0, #0
	cmp r5, #0
	beq _0200ACE8
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020D4BE8
	add r0, r4, #0
	bl sub_0201AB0C
_0200ACE8:
	add r4, r5, #0
_0200ACEA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200ACA4

	thumb_func_start sub_0200ACF0
sub_0200ACF0: ; 0x0200ACF0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200ACFC
	bl GF_AssertFail
_0200ACFC:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200AD0A
	bl GF_AssertFail
_0200AD0A:
	add r0, r4, #0
	bl sub_0200A810
	str r0, [sp]
	add r0, r4, #0
	bl sub_0200A8B0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0200A7FC
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021758
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200ACF0

	thumb_func_start sub_0200AD30
sub_0200AD30: ; 0x0200AD30
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200AD3A
	bl GF_AssertFail
_0200AD3A:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200AD62
	add r4, r6, #0
_0200AD44:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200AD58
	bl sub_0200ACF0
	cmp r0, #0
	bne _0200AD58
	bl GF_AssertFail
_0200AD58:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200AD44
_0200AD62:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200AD30

	thumb_func_start sub_0200AD64
sub_0200AD64: ; 0x0200AD64
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200AD70
	bl GF_AssertFail
_0200AD70:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200AD7E
	bl GF_AssertFail
_0200AD7E:
	add r0, r4, #0
	bl sub_0200A810
	str r0, [sp]
	add r0, r4, #0
	bl sub_0200A8B0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0200A7FC
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_020217B0
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200AD64

	thumb_func_start sub_0200ADA4
sub_0200ADA4: ; 0x0200ADA4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200ADB0
	bl GF_AssertFail
_0200ADB0:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200ADBE
	bl GF_AssertFail
_0200ADBE:
	add r0, r4, #0
	bl sub_0200A810
	str r0, [sp]
	add r0, r4, #0
	bl sub_0200A8B0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0200A7FC
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021758
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200ADA4

	thumb_func_start sub_0200ADE4
sub_0200ADE4: ; 0x0200ADE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200ADEE
	bl GF_AssertFail
_0200ADEE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200AE16
	add r4, r6, #0
_0200ADF8:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200AE0C
	bl sub_0200ADA4
	cmp r0, #0
	bne _0200AE0C
	bl GF_AssertFail
_0200AE0C:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200ADF8
_0200AE16:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200ADE4

	thumb_func_start sub_0200AE18
sub_0200AE18: ; 0x0200AE18
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200AE24
	bl GF_AssertFail
_0200AE24:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200AE32
	bl GF_AssertFail
_0200AE32:
	add r0, r4, #0
	bl sub_0200A810
	str r0, [sp]
	add r0, r4, #0
	bl sub_0200A8B0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0200A7FC
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_020217B0
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200AE18

	thumb_func_start sub_0200AE58
sub_0200AE58: ; 0x0200AE58
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200AE62
	bl GF_AssertFail
_0200AE62:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200AE8A
	add r4, r6, #0
_0200AE6C:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200AE80
	bl sub_0200AE18
	cmp r0, #0
	bne _0200AE80
	bl GF_AssertFail
_0200AE80:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200AE6C
_0200AE8A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200AE58

	thumb_func_start sub_0200AE8C
sub_0200AE8C: ; 0x0200AE8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _0200AE96
	bl GF_AssertFail
_0200AE96:
	add r0, r5, #0
	bl sub_0200A7FC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200A810
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202183C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200AE8C

	thumb_func_start sub_0200AEB0
sub_0200AEB0: ; 0x0200AEB0
	push {r4, lr}
	add r4, r0, #0
	bne _0200AEBA
	bl GF_AssertFail
_0200AEBA:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200AEC8
	bl GF_AssertFail
_0200AEC8:
	add r0, r4, #0
	bl sub_0200A7FC
	bl sub_02021884
	pop {r4, pc}
	thumb_func_end sub_0200AEB0

	thumb_func_start sub_0200AED4
sub_0200AED4: ; 0x0200AED4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200AEDE
	bl GF_AssertFail
_0200AEDE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200AEFE
	add r4, r6, #0
_0200AEE8:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200AEF4
	bl sub_0200AEB0
_0200AEF4:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200AEE8
_0200AEFE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200AED4

	thumb_func_start sub_0200AF00
sub_0200AF00: ; 0x0200AF00
	push {r4, lr}
	add r4, r0, #0
	bne _0200AF0A
	bl GF_AssertFail
_0200AF0A:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200AF18
	bl GF_AssertFail
_0200AF18:
	add r0, r4, #0
	bl sub_0200A7FC
	bl sub_02021910
	pop {r4, pc}
	thumb_func_end sub_0200AF00

	thumb_func_start sub_0200AF24
sub_0200AF24: ; 0x0200AF24
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _0200AF32
	bl GF_AssertFail
_0200AF32:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #0
	beq _0200AF40
	bl GF_AssertFail
_0200AF40:
	cmp r5, #0
	bne _0200AF48
	bl GF_AssertFail
_0200AF48:
	add r0, r5, #0
	bl sub_0200A8A0
	cmp r0, #2
	beq _0200AF56
	bl GF_AssertFail
_0200AF56:
	add r0, r4, #0
	bl sub_0200A7FC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200A840
	add r1, r0, #0
	ldr r1, [r1, #0xc]
	add r0, r4, #0
	ldr r1, [r1]
	bl sub_02021934
	cmp r0, #0
	bne _0200AF7E
	add r0, r4, #0
	bl sub_02021910
	bl sub_020219B8
_0200AF7E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200AF24

	thumb_func_start sub_0200AF80
sub_0200AF80: ; 0x0200AF80
	push {r4, lr}
	add r4, r0, #0
	bne _0200AF8A
	bl GF_AssertFail
_0200AF8A:
	add r0, r4, #0
	bl sub_02021A50
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200AF80

	thumb_func_start sub_0200AF94
sub_0200AF94: ; 0x0200AF94
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200AFA0
	bl GF_AssertFail
_0200AFA0:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #1
	beq _0200AFAE
	bl GF_AssertFail
_0200AFAE:
	add r0, r4, #0
	bl sub_0200A828
	str r0, [sp]
	add r0, r4, #0
	bl sub_0200A8B0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0200A7FC
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0200A8DC
	str r0, [sp, #8]
	add r0, sp, #0
	bl sub_02022660
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200AF94

	thumb_func_start sub_0200AFD8
sub_0200AFD8: ; 0x0200AFD8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200AFE2
	bl GF_AssertFail
_0200AFE2:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200B00A
	add r4, r6, #0
_0200AFEC:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200B000
	bl sub_0200AF94
	cmp r0, #0
	bne _0200B000
	bl GF_AssertFail
_0200B000:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200AFEC
_0200B00A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200AFD8

	thumb_func_start sub_0200B00C
sub_0200B00C: ; 0x0200B00C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200B018
	bl GF_AssertFail
_0200B018:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #1
	beq _0200B026
	bl GF_AssertFail
_0200B026:
	add r0, r4, #0
	bl sub_0200A828
	str r0, [sp]
	add r0, r4, #0
	bl sub_0200A8B0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0200A7FC
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0200A8DC
	str r0, [sp, #8]
	add r0, sp, #0
	bl sub_020226A4
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200B00C

	thumb_func_start sub_0200B050
sub_0200B050: ; 0x0200B050
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200B05A
	bl GF_AssertFail
_0200B05A:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200B082
	add r4, r6, #0
_0200B064:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200B078
	bl sub_0200B00C
	cmp r0, #0
	bne _0200B078
	bl GF_AssertFail
_0200B078:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200B064
_0200B082:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200B050

	thumb_func_start sub_0200B084
sub_0200B084: ; 0x0200B084
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _0200B08E
	bl GF_AssertFail
_0200B08E:
	add r0, r5, #0
	bl sub_0200A7FC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200A828
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020226E4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200B084

	thumb_func_start sub_0200B0A8
sub_0200B0A8: ; 0x0200B0A8
	push {r4, lr}
	add r4, r0, #0
	bne _0200B0B2
	bl GF_AssertFail
_0200B0B2:
	add r0, r4, #0
	bl sub_0200A8A0
	cmp r0, #1
	beq _0200B0C0
	bl GF_AssertFail
_0200B0C0:
	add r0, r4, #0
	bl sub_0200A7FC
	bl sub_02022744
	pop {r4, pc}
	thumb_func_end sub_0200B0A8

	thumb_func_start sub_0200B0CC
sub_0200B0CC: ; 0x0200B0CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200B0D6
	bl GF_AssertFail
_0200B0D6:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200B0F6
	add r4, r6, #0
_0200B0E0:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200B0EC
	bl sub_0200B0A8
_0200B0EC:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200B0E0
_0200B0F6:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200B0CC

	thumb_func_start sub_0200B0F8
sub_0200B0F8: ; 0x0200B0F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200B106
	bl GF_AssertFail
_0200B106:
	add r0, r5, #0
	bl sub_0200A8A0
	cmp r0, #1
	beq _0200B114
	bl GF_AssertFail
_0200B114:
	add r0, r5, #0
	bl sub_0200A7FC
	cmp r4, #0
	beq _0200B126
	add r1, r4, #0
	bl sub_020227D4
	pop {r3, r4, r5, pc}
_0200B126:
	bl sub_020227AC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200B0F8

	thumb_func_start sub_0200B12C
sub_0200B12C: ; 0x0200B12C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_0200B0F8
	add r1, r4, #0
	bl sub_020B8078
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0200B14C
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	asr r0, r1, #5
_0200B14C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200B12C

	thumb_func_start sub_0200B150
sub_0200B150: ; 0x0200B150
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	cmp r4, #4
	bge _0200B164
	mov r0, #4
	cmp r1, #0x7c
	ble _0200B164
	sub r4, r0, r4
	sub r1, r1, r4
_0200B164:
	cmp r2, #1
	bge _0200B174
	mov r4, #1
	cmp r3, #0x1e
	ble _0200B176
	sub r2, r4, r2
	sub r3, r3, r2
	b _0200B176
_0200B174:
	add r4, r2, #0
_0200B176:
	ldr r2, [sp, #0x20]
	str r2, [sp]
	ldr r2, [sp, #0x24]
	str r2, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0x10]
	add r2, r4, #0
	bl sub_0200B194
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end sub_0200B150

	thumb_func_start sub_0200B194
sub_0200B194: ; 0x0200B194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0200B220 ; =0x021D0EB0
	add r4, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0200B1AC
	bl GF_AssertFail
_0200B1AC:
	ldr r0, [sp, #0x30]
	mov r1, #0x3c
	bl sub_0201AA8C
	ldr r1, _0200B220 ; =0x021D0EB0
	cmp r0, #0
	str r0, [r1]
	bne _0200B1C0
	bl GF_AssertFail
_0200B1C0:
	ldr r1, _0200B220 ; =0x021D0EB0
	lsl r3, r6, #0x10
	ldr r2, [sp, #0x30]
	ldr r0, [r1]
	lsr r3, r3, #0x10
	str r2, [r0, #0x38]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r1]
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_020B7994
	cmp r0, #0
	bne _0200B1EC
	bl GF_AssertFail
_0200B1EC:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0200B220 ; =0x021D0EB0
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	ldr r0, [r0]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x1c
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_020B7994
	cmp r0, #0
	bne _0200B21C
	bl GF_AssertFail
_0200B21C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200B220: .word 0x021D0EB0
	thumb_func_end sub_0200B194

	thumb_func_start sub_0200B224
sub_0200B224: ; 0x0200B224
	push {r3, lr}
	ldr r0, _0200B240 ; =0x021D0EB0
	ldr r0, [r0]
	cmp r0, #0
	beq _0200B23C
	bl sub_020B7FE4
	ldr r0, _0200B240 ; =0x021D0EB0
	ldr r0, [r0]
	add r0, #0x1c
	bl sub_020B7FE4
_0200B23C:
	pop {r3, pc}
	nop
_0200B240: .word 0x021D0EB0
	thumb_func_end sub_0200B224

	thumb_func_start sub_0200B244
sub_0200B244: ; 0x0200B244
	push {r3, lr}
	ldr r0, _0200B278 ; =0x021D0EB0
	ldr r0, [r0]
	cmp r0, #0
	bne _0200B252
	bl GF_AssertFail
_0200B252:
	ldr r0, _0200B278 ; =0x021D0EB0
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	bl sub_0200B2E0
	ldr r0, _0200B278 ; =0x021D0EB0
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	bl sub_0200B2E8
	ldr r0, _0200B278 ; =0x021D0EB0
	ldr r0, [r0]
	bl sub_0201AB0C
	ldr r0, _0200B278 ; =0x021D0EB0
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	nop
_0200B278: .word 0x021D0EB0
	thumb_func_end sub_0200B244

	thumb_func_start sub_0200B27C
sub_0200B27C: ; 0x0200B27C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _0200B2C8 ; =0x021D0EB0
	add r7, r1, #0
	ldr r0, [r0]
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _0200B294
	bl GF_AssertFail
_0200B294:
	cmp r5, #1
	bne _0200B2B0
	ldr r0, _0200B2CC ; =sub_02025C98
	ldr r2, _0200B2D0 ; =sub_0200B2F0
	str r0, [sp]
	str r5, [sp, #4]
	ldr r3, _0200B2D4 ; =sub_0200B334
	add r0, r6, #0
	add r1, r7, #0
	str r4, [sp, #8]
	bl sub_02025C54
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0200B2B0:
	ldr r0, _0200B2CC ; =sub_02025C98
	ldr r2, _0200B2D8 ; =sub_0200B310
	str r0, [sp]
	str r5, [sp, #4]
	ldr r3, _0200B2DC ; =sub_0200B358
	add r0, r6, #0
	add r1, r7, #0
	str r4, [sp, #8]
	bl sub_02025C54
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0200B2C8: .word 0x021D0EB0
_0200B2CC: .word sub_02025C98
_0200B2D0: .word sub_0200B2F0
_0200B2D4: .word sub_0200B334
_0200B2D8: .word sub_0200B310
_0200B2DC: .word sub_0200B358
	thumb_func_end sub_0200B27C

	thumb_func_start sub_0200B2E0
sub_0200B2E0: ; 0x0200B2E0
	ldr r3, _0200B2E4 ; =sub_02024BBC
	bx r3
	.align 2, 0
_0200B2E4: .word sub_02024BBC
	thumb_func_end sub_0200B2E0

	thumb_func_start sub_0200B2E8
sub_0200B2E8: ; 0x0200B2E8
	ldr r3, _0200B2EC ; =sub_02024BF4
	bx r3
	.align 2, 0
_0200B2EC: .word sub_02024BF4
	thumb_func_end sub_0200B2E8

	thumb_func_start sub_0200B2F0
sub_0200B2F0: ; 0x0200B2F0
	push {r4, lr}
	add r3, r0, #0
	ldr r0, _0200B30C ; =0x021D0EB0
	add r2, r1, #0
	ldr r0, [r0]
	add r1, r3, #0
	bl sub_020B7B10
	add r4, r0, #0
	bne _0200B308
	bl GF_AssertFail
_0200B308:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0200B30C: .word 0x021D0EB0
	thumb_func_end sub_0200B2F0

	thumb_func_start sub_0200B310
sub_0200B310: ; 0x0200B310
	push {r4, lr}
	add r3, r0, #0
	ldr r0, _0200B330 ; =0x021D0EB0
	add r2, r1, #0
	ldr r0, [r0]
	add r1, r3, #0
	add r0, #0x1c
	bl sub_020B7B10
	add r4, r0, #0
	bne _0200B32A
	bl GF_AssertFail
_0200B32A:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0200B330: .word 0x021D0EB0
	thumb_func_end sub_0200B310

	thumb_func_start sub_0200B334
sub_0200B334: ; 0x0200B334
	push {r4, lr}
	add r1, r0, #0
	ldr r0, _0200B350 ; =0x021D0EB0
	ldr r0, [r0]
	bl sub_020B7BF4
	add r4, r0, #0
	ldr r0, _0200B354 ; =0x0000FFFE
	cmp r4, r0
	bne _0200B34C
	bl GF_AssertFail
_0200B34C:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0200B350: .word 0x021D0EB0
_0200B354: .word 0x0000FFFE
	thumb_func_end sub_0200B334

	thumb_func_start sub_0200B358
sub_0200B358: ; 0x0200B358
	push {r4, lr}
	add r1, r0, #0
	ldr r0, _0200B378 ; =0x021D0EB0
	ldr r0, [r0]
	add r0, #0x1c
	bl sub_020B7BF4
	add r4, r0, #0
	ldr r0, _0200B37C ; =0x0000FFFE
	cmp r4, r0
	bne _0200B372
	bl GF_AssertFail
_0200B372:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0200B378: .word 0x021D0EB0
_0200B37C: .word 0x0000FFFE
	thumb_func_end sub_0200B358

	thumb_func_start sub_0200B380
sub_0200B380: ; 0x0200B380
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x10
	ldrsb r2, [r5, r0]
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	add r1, r2, #0
	mov r7, #0x1a
	ldrsh r2, [r5, r7]
	mul r1, r0
	mov r6, #0xa
	ldrsh r0, [r5, r6]
	add r1, r2, r1
	mov r4, #0
	cmp r0, r1
	beq _0200B3DE
	cmp r2, r0
	beq _0200B3DE
	strh r1, [r5, #0x1a]
	ldrh r3, [r5, #0x18]
	ldrh r0, [r5, #0x16]
	add r2, r5, #0
	add r1, r5, #0
	add r0, r3, r0
	strh r0, [r5, #0x18]
	ldrh r3, [r5, #0x18]
	ldrh r0, [r5, #8]
	add r2, #0x1a
	add r1, #0x18
	cmp r3, r0
	blo _0200B3E2
	mov r3, #0x10
	ldrsh r0, [r2, r4]
	ldrsb r3, [r5, r3]
	add r0, r0, r3
	strh r0, [r2]
	ldrsh r2, [r5, r7]
	ldrsh r0, [r5, r6]
	cmp r2, r0
	beq _0200B3DA
	ldrh r2, [r1]
	ldrh r0, [r5, #8]
	sub r0, r2, r0
	strh r0, [r1]
	b _0200B3E2
_0200B3DA:
	mov r4, #1
	b _0200B3E2
_0200B3DE:
	strh r0, [r5, #0x1a]
	mov r4, #1
_0200B3E2:
	ldr r1, [r5, #4]
	mov r0, #1
	tst r0, r1
	beq _0200B3F8
	mov r2, #0x1a
	ldrsh r2, [r5, r2]
	ldr r0, _0200B414 ; =0x04000050
	ldr r1, [r5]
	bl sub_020CF178
	b _0200B40A
_0200B3F8:
	mov r0, #2
	tst r0, r1
	beq _0200B40A
	mov r2, #0x1a
	ldrsh r2, [r5, r2]
	ldr r0, _0200B418 ; =0x04001050
	ldr r1, [r5]
	bl sub_020CF178
_0200B40A:
	cmp r4, #1
	bne _0200B412
	mov r0, #0
	str r0, [r5, #0x1c]
_0200B412:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200B414: .word 0x04000050
_0200B418: .word 0x04001050
	thumb_func_end sub_0200B380

	thumb_func_start sub_0200B41C
sub_0200B41C: ; 0x0200B41C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0200B430
	bl GF_AssertFail
_0200B430:
	ldr r1, [sp, #0x18]
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [r5, #0x1c]
	lsr r1, r1, #0x18
	str r1, [r5]
	ldr r1, [sp, #0x1c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [r5, #4]
	strh r4, [r5, #8]
	strh r6, [r5, #0xa]
	strh r7, [r5, #0x1a]
	sub r1, r7, r6
	strh r1, [r5, #0x12]
	mov r1, #0x12
	ldrsh r2, [r5, r1]
	cmp r2, #0
	ble _0200B45C
	sub r1, #0x13
	strb r1, [r5, #0x10]
	b _0200B466
_0200B45C:
	strb r0, [r5, #0x10]
	ldrsh r0, [r5, r1]
	sub r1, #0x13
	mul r1, r0
	strh r1, [r5, #0x12]
_0200B466:
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	add r1, r4, #0
	bl sub_020F2998
	strh r0, [r5, #0x14]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	add r1, r4, #0
	bl sub_020F2998
	strh r1, [r5, #0x16]
	mov r0, #0
	strh r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B41C

	thumb_func_start sub_0200B484
sub_0200B484: ; 0x0200B484
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	cmp r5, #0
	beq _0200B4DA
	ldr r1, [sp, #0x20]
	mov r0, #1
	tst r0, r1
	beq _0200B4B6
	ldr r0, _0200B4E0 ; =0x04000050
	add r1, r4, #0
	bl sub_020CF178
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0200B4E4 ; =0x021D0ED4
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0200B41C
_0200B4B6:
	ldr r1, [sp, #0x20]
	mov r0, #2
	tst r0, r1
	beq _0200B4DA
	ldr r0, _0200B4E8 ; =0x04001050
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020CF178
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0200B4EC ; =0x021D0EB4
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0200B41C
_0200B4DA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200B4E0: .word 0x04000050
_0200B4E4: .word 0x021D0ED4
_0200B4E8: .word 0x04001050
_0200B4EC: .word 0x021D0EB4
	thumb_func_end sub_0200B484

	thumb_func_start sub_0200B4F0
sub_0200B4F0: ; 0x0200B4F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #1
	add r6, r1, #0
	tst r0, r4
	beq _0200B506
	ldr r0, _0200B520 ; =0x04000050
	add r2, r5, #0
	bl sub_020CF178
_0200B506:
	mov r0, #2
	tst r0, r4
	beq _0200B516
	ldr r0, _0200B524 ; =0x04001050
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020CF178
_0200B516:
	add r0, r4, #0
	bl sub_0200B554
	pop {r4, r5, r6, pc}
	nop
_0200B520: .word 0x04000050
_0200B524: .word 0x04001050
	thumb_func_end sub_0200B4F0

	thumb_func_start sub_0200B528
sub_0200B528: ; 0x0200B528
	push {r3, lr}
	ldr r0, _0200B548 ; =0x021D0ED4
	mov r1, #0
	mov r2, #0x20
	bl sub_020D4994
	ldr r0, _0200B54C ; =0x021D0EB4
	mov r1, #0
	mov r2, #0x20
	bl sub_020D4994
	ldr r0, _0200B550 ; =0x021D0EB4
	mov r1, #0
	str r1, [r0, #0x3c]
	str r1, [r0, #0x1c]
	pop {r3, pc}
	.align 2, 0
_0200B548: .word 0x021D0ED4
_0200B54C: .word 0x021D0EB4
_0200B550: .word 0x021D0EB4
	thumb_func_end sub_0200B528

	thumb_func_start sub_0200B554
sub_0200B554: ; 0x0200B554
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	tst r0, r4
	beq _0200B56E
	ldr r0, _0200B588 ; =0x021D0ED4
	mov r1, #0
	mov r2, #0x20
	bl sub_020D4994
	ldr r0, _0200B58C ; =0x021D0EB4
	mov r1, #0
	str r1, [r0, #0x3c]
_0200B56E:
	mov r0, #2
	tst r0, r4
	beq _0200B584
	ldr r0, _0200B590 ; =0x021D0EB4
	mov r1, #0
	mov r2, #0x20
	bl sub_020D4994
	ldr r0, _0200B58C ; =0x021D0EB4
	mov r1, #0
	str r1, [r0, #0x1c]
_0200B584:
	pop {r4, pc}
	nop
_0200B588: .word 0x021D0ED4
_0200B58C: .word 0x021D0EB4
_0200B590: .word 0x021D0EB4
	thumb_func_end sub_0200B554

	thumb_func_start sub_0200B594
sub_0200B594: ; 0x0200B594
	push {r3, lr}
	ldr r0, _0200B5B4 ; =0x021D0EB4
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _0200B5A4
	ldr r0, _0200B5B8 ; =0x021D0ED4
	bl sub_0200B380
_0200B5A4:
	ldr r0, _0200B5B4 ; =0x021D0EB4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0200B5B2
	ldr r0, _0200B5BC ; =0x021D0EB4
	bl sub_0200B380
_0200B5B2:
	pop {r3, pc}
	.align 2, 0
_0200B5B4: .word 0x021D0EB4
_0200B5B8: .word 0x021D0ED4
_0200B5BC: .word 0x021D0EB4
	thumb_func_end sub_0200B594

	thumb_func_start sub_0200B5C0
sub_0200B5C0: ; 0x0200B5C0
	cmp r0, #3
	bne _0200B5D6
	ldr r0, _0200B5FC ; =0x021D0EB4
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	bne _0200B5F6
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0200B5F6
	mov r0, #1
	bx lr
_0200B5D6:
	cmp r0, #1
	bne _0200B5E6
	ldr r0, _0200B5FC ; =0x021D0EB4
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	bne _0200B5F6
	mov r0, #1
	bx lr
_0200B5E6:
	cmp r0, #2
	bne _0200B5F6
	ldr r0, _0200B5FC ; =0x021D0EB4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0200B5F6
	mov r0, #1
	bx lr
_0200B5F6:
	mov r0, #0
	bx lr
	nop
_0200B5FC: .word 0x021D0EB4
	thumb_func_end sub_0200B5C0

	thumb_func_start sub_0200B600
sub_0200B600: ; 0x0200B600
	lsl r1, r1, #8
	orr r1, r0
	ldr r0, _0200B60C ; =0x021D0EB4
	str r1, [r0, #0x20]
	bx lr
	nop
_0200B60C: .word 0x021D0EB4
	thumb_func_end sub_0200B600

	thumb_func_start sub_0200B610
sub_0200B610: ; 0x0200B610
	ldr r3, _0200B614 ; =sub_02007524
	bx r3
	.align 2, 0
_0200B614: .word sub_02007524
	thumb_func_end sub_0200B610

	thumb_func_start sub_0200B618
sub_0200B618: ; 0x0200B618
	ldr r3, _0200B61C ; =sub_0201AB0C
	bx r3
	.align 2, 0
_0200B61C: .word sub_0201AB0C
	thumb_func_end sub_0200B618

	thumb_func_start sub_0200B620
sub_0200B620: ; 0x0200B620
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r3, r0, #0
	ldrh r0, [r3]
	add r5, r1, #0
	add r4, r2, #0
	cmp r5, r0
	bhs _0200B690
	lsl r0, r5, #3
	add r0, r3, r0
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	ldr r6, _0200B698 ; =0x000002FD
	str r2, [sp]
	str r1, [sp, #4]
	ldrh r0, [r3, #2]
	add r7, r5, #1
	mul r6, r0
	add r0, r7, #0
	mul r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	lsl r0, r6, #0x10
	orr r0, r6
	eor r2, r0
	eor r0, r1
	str r0, [sp, #4]
	str r2, [sp]
	add r1, r3, r2
	add r0, r4, #0
	add r2, sp, #0
	bl sub_0200B74C
	ldr r2, [sp, #4]
	ldr r0, _0200B69C ; =0x00091BD3
	add r1, r7, #0
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	sub r3, r2, #1
	cmp r2, #0
	beq _0200B694
	ldr r0, _0200B6A0 ; =0x0000493D
_0200B676:
	ldrh r1, [r4]
	eor r1, r5
	strh r1, [r4]
	add r1, r5, r0
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	add r1, r3, #0
	add r4, r4, #2
	sub r3, r3, #1
	cmp r1, #0
	bne _0200B676
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0200B690:
	bl GF_AssertFail
_0200B694:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200B698: .word 0x000002FD
_0200B69C: .word 0x00091BD3
_0200B6A0: .word 0x0000493D
	thumb_func_end sub_0200B620

	thumb_func_start sub_0200B6A4
sub_0200B6A4: ; 0x0200B6A4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r1, r3, #0
	add r4, r2, #0
	bl sub_02007688
	add r6, r0, #0
	beq _0200B73A
	add r1, sp, #0xc
	str r1, [sp]
	add r1, r5, #0
	mov r2, #0
	mov r3, #4
	bl sub_0200782C
	add r0, sp, #4
	lsl r2, r4, #3
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r2, #4
	mov r3, #8
	bl sub_0200782C
	add r0, sp, #4
	ldrh r2, [r0, #0xa]
	ldr r0, _0200B740 ; =0x000002FD
	add r1, r4, #1
	mul r0, r2
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #4]
	eor r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	eor r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp]
	ldr r3, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r6, #0
	lsl r3, r3, #1
	bl sub_0200782C
	ldr r2, _0200B744 ; =0x00091BD3
	add r3, r4, #1
	mul r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #8]
	lsr r3, r2, #0x10
	sub r2, r0, #1
	ldr r1, [sp, #0x20]
	cmp r0, #0
	beq _0200B734
	ldr r0, _0200B748 ; =0x0000493D
_0200B71E:
	ldrh r4, [r1]
	eor r4, r3
	strh r4, [r1]
	add r3, r3, r0
	lsl r3, r3, #0x10
	add r4, r2, #0
	add r1, r1, #2
	lsr r3, r3, #0x10
	sub r2, r2, #1
	cmp r4, #0
	bne _0200B71E
_0200B734:
	add r0, r6, #0
	bl sub_0200770C
_0200B73A:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0200B740: .word 0x000002FD
_0200B744: .word 0x00091BD3
_0200B748: .word 0x0000493D
	thumb_func_end sub_0200B6A4

	thumb_func_start sub_0200B74C
sub_0200B74C: ; 0x0200B74C
	add r3, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	ldr r2, [r2, #4]
	ldr r3, _0200B75C ; =sub_020D47B8
	lsl r2, r2, #1
	bx r3
	nop
_0200B75C: .word sub_020D47B8
	thumb_func_end sub_0200B74C

	thumb_func_start sub_0200B760
sub_0200B760: ; 0x0200B760
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	str r2, [sp]
	cmp r4, r0
	bhs _0200B7F6
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r3, [r0, #4]
	ldr r2, [r0, #8]
	ldrh r1, [r5, #2]
	ldr r6, _0200B804 ; =0x000002FD
	add r0, r4, #1
	mul r6, r1
	add r1, r0, #0
	mul r1, r6
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	add r0, r3, #0
	add r6, r2, #0
	str r3, [sp, #8]
	eor r0, r1
	eor r6, r1
	str r0, [sp, #8]
	lsl r0, r6, #1
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	ldr r1, [sp, #4]
	mov r0, #0
	str r6, [sp, #0xc]
	bl sub_0201AACC
	add r7, r0, #0
	beq _0200B800
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, r0
	add r1, r7, #0
	bl sub_020D47B8
	ldr r1, _0200B808 ; =0x00091BD3
	add r2, r4, #1
	mul r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	add r0, r7, #0
	sub r1, r6, #1
	cmp r6, #0
	beq _0200B7E2
	ldr r3, _0200B80C ; =0x0000493D
_0200B7CC:
	ldrh r4, [r0]
	eor r4, r2
	strh r4, [r0]
	add r2, r2, r3
	lsl r2, r2, #0x10
	add r4, r1, #0
	add r0, r0, #2
	lsr r2, r2, #0x10
	sub r1, r1, #1
	cmp r4, #0
	bne _0200B7CC
_0200B7E2:
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02026A04
	add r0, r7, #0
	bl sub_0201AB0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0200B7F6:
	bl GF_AssertFail
	ldr r0, [sp]
	bl sub_020263AC
_0200B800:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200B804: .word 0x000002FD
_0200B808: .word 0x00091BD3
_0200B80C: .word 0x0000493D
	thumb_func_end sub_0200B760

	thumb_func_start sub_0200B810
sub_0200B810: ; 0x0200B810
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	str r2, [sp]
	cmp r4, r0
	bhs _0200B8B8
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r3, [r0, #4]
	ldr r2, [r0, #8]
	ldrh r1, [r5, #2]
	ldr r6, _0200B8C8 ; =0x000002FD
	add r0, r4, #1
	mul r6, r1
	add r1, r0, #0
	mul r1, r6
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	add r0, r3, #0
	add r6, r2, #0
	str r3, [sp, #8]
	eor r0, r1
	eor r6, r1
	str r0, [sp, #8]
	lsl r0, r6, #1
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r6, [sp, #0xc]
	bl sub_0201AACC
	add r7, r0, #0
	beq _0200B8B2
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, r0
	add r1, r7, #0
	bl sub_020D47B8
	ldr r1, _0200B8CC ; =0x00091BD3
	add r2, r4, #1
	mul r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	add r0, r7, #0
	sub r1, r6, #1
	cmp r6, #0
	beq _0200B892
	ldr r3, _0200B8D0 ; =0x0000493D
_0200B87C:
	ldrh r4, [r0]
	eor r4, r2
	strh r4, [r0]
	add r2, r2, r3
	lsl r2, r2, #0x10
	add r4, r1, #0
	add r0, r0, #2
	lsr r2, r2, #0x10
	sub r1, r1, #1
	cmp r4, #0
	bne _0200B87C
_0200B892:
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_02026354
	add r4, r0, #0
	beq _0200B8A6
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02026A04
_0200B8A6:
	add r0, r7, #0
	bl sub_0201AB0C
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200B8B2:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200B8B8:
	bl GF_AssertFail
	ldr r1, [sp]
	mov r0, #4
	bl sub_02026354
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200B8C8: .word 0x000002FD
_0200B8CC: .word 0x00091BD3
_0200B8D0: .word 0x0000493D
	thumb_func_end sub_0200B810

	thumb_func_start sub_0200B8D4
sub_0200B8D4: ; 0x0200B8D4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r1, #0
	add r1, r7, #0
	add r4, r2, #0
	bl sub_02007688
	add r6, r0, #0
	beq _0200B8FA
	ldr r1, [sp, #0x18]
	add r2, r4, #0
	str r1, [sp]
	add r1, r5, #0
	add r3, r7, #0
	bl sub_0200B8FC
	add r0, r6, #0
	bl sub_0200770C
_0200B8FA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B8D4

	thumb_func_start sub_0200B8FC
sub_0200B8FC: ; 0x0200B8FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	add r2, sp, #0x10
	add r4, r3, #0
	str r2, [sp]
	mov r2, #0
	mov r3, #4
	add r7, r0, #0
	str r1, [sp, #4]
	bl sub_0200782C
	add r0, sp, #8
	ldrh r0, [r0, #8]
	cmp r5, r0
	bhs _0200B9AA
	add r0, sp, #8
	lsl r2, r5, #3
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r2, #4
	mov r3, #8
	bl sub_0200782C
	add r0, sp, #8
	ldrh r2, [r0, #0xa]
	ldr r0, _0200B9B8 ; =0x000002FD
	add r1, r5, #1
	mul r0, r2
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #8]
	eor r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	eor r0, r1
	lsl r6, r0, #1
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0201AACC
	add r4, r0, #0
	beq _0200B9B4
	str r4, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r3, r6, #0
	bl sub_0200782C
	ldr r2, _0200B9BC ; =0x00091BD3
	add r3, r5, #1
	mul r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #0xc]
	lsr r3, r2, #0x10
	add r1, r4, #0
	sub r2, r0, #1
	cmp r0, #0
	beq _0200B996
	ldr r0, _0200B9C0 ; =0x0000493D
_0200B980:
	ldrh r5, [r1]
	eor r5, r3
	strh r5, [r1]
	add r3, r3, r0
	lsl r3, r3, #0x10
	add r5, r2, #0
	add r1, r1, #2
	lsr r3, r3, #0x10
	sub r2, r2, #1
	cmp r5, #0
	bne _0200B980
_0200B996:
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0xc]
	add r1, r4, #0
	bl sub_02026A04
	add r0, r4, #0
	bl sub_0201AB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0200B9AA:
	bl GF_AssertFail
	ldr r0, [sp, #0x28]
	bl sub_020263AC
_0200B9B4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0200B9B8: .word 0x000002FD
_0200B9BC: .word 0x00091BD3
_0200B9C0: .word 0x0000493D
	thumb_func_end sub_0200B8FC

	thumb_func_start sub_0200B9C4
sub_0200B9C4: ; 0x0200B9C4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r3, #0
	add r5, r1, #0
	add r1, r6, #0
	add r4, r2, #0
	bl sub_02007688
	add r7, r0, #0
	beq _0200B9EA
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200B9F8
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0200770C
	b _0200B9F4
_0200B9EA:
	mov r0, #4
	add r1, r6, #0
	bl sub_02026354
	add r4, r0, #0
_0200B9F4:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B9C4

	thumb_func_start sub_0200B9F8
sub_0200B9F8: ; 0x0200B9F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r2, #0
	add r2, sp, #0x14
	add r5, r3, #0
	str r2, [sp]
	mov r2, #0
	mov r3, #4
	add r7, r0, #0
	str r1, [sp, #4]
	bl sub_0200782C
	add r0, sp, #0xc
	ldrh r0, [r0, #8]
	cmp r4, r0
	bhs _0200BAB6
	add r0, sp, #0xc
	lsl r2, r4, #3
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r2, #4
	mov r3, #8
	bl sub_0200782C
	add r0, sp, #0xc
	ldrh r2, [r0, #0xa]
	ldr r0, _0200BAC8 ; =0x000002FD
	add r1, r4, #1
	mul r0, r2
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #0xc]
	eor r0, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	eor r0, r1
	add r1, r5, #0
	str r0, [sp, #0x10]
	bl sub_02026354
	str r0, [sp, #8]
	cmp r0, #0
	beq _0200BAB0
	ldr r0, [sp, #0x10]
	lsl r6, r0, #1
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201AACC
	add r5, r0, #0
	beq _0200BAB0
	str r5, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r3, r6, #0
	bl sub_0200782C
	ldr r2, _0200BACC ; =0x00091BD3
	add r3, r4, #1
	mul r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x10]
	lsr r3, r2, #0x10
	add r1, r5, #0
	sub r2, r0, #1
	cmp r0, #0
	beq _0200BAA0
	ldr r0, _0200BAD0 ; =0x0000493D
_0200BA8A:
	ldrh r4, [r1]
	eor r4, r3
	strh r4, [r1]
	add r3, r3, r0
	lsl r3, r3, #0x10
	add r4, r2, #0
	add r1, r1, #2
	lsr r3, r3, #0x10
	sub r2, r2, #1
	cmp r4, #0
	bne _0200BA8A
_0200BAA0:
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	bl sub_02026A04
	add r0, r5, #0
	bl sub_0201AB0C
_0200BAB0:
	ldr r0, [sp, #8]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0200BAB6:
	bl GF_AssertFail
	mov r0, #4
	add r1, r5, #0
	bl sub_02026354
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200BAC8: .word 0x000002FD
_0200BACC: .word 0x00091BD3
_0200BAD0: .word 0x0000493D
	thumb_func_end sub_0200B9F8

	thumb_func_start sub_0200BAD4
sub_0200BAD4: ; 0x0200BAD4
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_0200BAD4

	thumb_func_start sub_0200BAD8
sub_0200BAD8: ; 0x0200BAD8
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	mov r0, #4
	add r2, r1, #0
	str r0, [sp]
	add r1, r3, #0
	add r0, sp, #4
	mov r3, #0
	bl sub_02007560
	add r0, sp, #4
	ldrh r0, [r0]
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0200BAD8

	thumb_func_start sub_0200BAF8
sub_0200BAF8: ; 0x0200BAF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r3, #0
	mov r1, #0xc
	add r7, r2, #0
	str r3, [sp]
	bl sub_0201AACC
	add r4, r0, #0
	beq _0200BB40
	cmp r5, #0
	bne _0200BB2C
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200B610
	str r0, [r4, #8]
	cmp r0, #0
	bne _0200BB36
	add r0, r4, #0
	bl sub_0201AB0C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200BB2C:
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_02007688
	str r0, [r4, #8]
_0200BB36:
	strh r5, [r4]
	strh r6, [r4, #4]
	ldr r0, [sp]
	strh r7, [r4, #6]
	strh r0, [r4, #2]
_0200BB40:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BAF8

	thumb_func_start sub_0200BB44
sub_0200BB44: ; 0x0200BB44
	push {r4, lr}
	add r4, r0, #0
	beq _0200BB6A
	ldrh r0, [r4]
	cmp r0, #0
	beq _0200BB56
	cmp r0, #1
	beq _0200BB5E
	b _0200BB64
_0200BB56:
	ldr r0, [r4, #8]
	bl sub_0200B618
	b _0200BB64
_0200BB5E:
	ldr r0, [r4, #8]
	bl sub_0200770C
_0200BB64:
	add r0, r4, #0
	bl sub_0201AB0C
_0200BB6A:
	pop {r4, pc}
	thumb_func_end sub_0200BB44

	thumb_func_start sub_0200BB6C
sub_0200BB6C: ; 0x0200BB6C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4]
	add r3, r1, #0
	cmp r0, #0
	beq _0200BB82
	cmp r0, #1
	beq _0200BB8C
	add sp, #4
	pop {r3, r4, pc}
_0200BB82:
	ldr r0, [r4, #8]
	bl sub_0200B760
	add sp, #4
	pop {r3, r4, pc}
_0200BB8C:
	str r2, [sp]
	add r2, r3, #0
	ldrh r1, [r4, #6]
	ldrh r3, [r4, #2]
	ldr r0, [r4, #8]
	bl sub_0200B8FC
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_0200BB6C

	thumb_func_start sub_0200BBA0
sub_0200BBA0: ; 0x0200BBA0
	push {r3, lr}
	add r3, r0, #0
	ldrh r0, [r3]
	add r2, r1, #0
	cmp r0, #0
	beq _0200BBB2
	cmp r0, #1
	beq _0200BBBC
	b _0200BBC8
_0200BBB2:
	ldrh r2, [r3, #2]
	ldr r0, [r3, #8]
	bl sub_0200B810
	pop {r3, pc}
_0200BBBC:
	ldr r0, [r3, #8]
	ldrh r1, [r3, #6]
	ldrh r3, [r3, #2]
	bl sub_0200B9F8
	pop {r3, pc}
_0200BBC8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0200BBA0

	thumb_func_start sub_0200BBCC
sub_0200BBCC: ; 0x0200BBCC
	push {r3, lr}
	add r1, r0, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0200BBDC
	cmp r0, #1
	beq _0200BBE4
	b _0200BBEE
_0200BBDC:
	ldr r0, [r1, #8]
	bl sub_0200BAD4
	pop {r3, pc}
_0200BBE4:
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #6]
	bl sub_0200BAD8
	pop {r3, pc}
_0200BBEE:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0200BBCC

	thumb_func_start sub_0200BBF4
sub_0200BBF4: ; 0x0200BBF4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4]
	add r3, r1, #0
	cmp r0, #0
	beq _0200BC0A
	cmp r0, #1
	beq _0200BC14
	add sp, #4
	pop {r3, r4, pc}
_0200BC0A:
	ldr r0, [r4, #8]
	bl sub_0200B620
	add sp, #4
	pop {r3, r4, pc}
_0200BC14:
	str r2, [sp]
	add r2, r3, #0
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldrh r3, [r4, #2]
	bl sub_0200B6A4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_0200BBF4

	thumb_func_start sub_0200BC28
sub_0200BC28: ; 0x0200BC28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r3, r1, #0
	add r4, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xed
	bl sub_0200BAF8
	add r6, r0, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200BBF4
	add r0, r6, #0
	bl sub_0200BB44
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200BC28

	thumb_func_start sub_0200BC4C
sub_0200BC4C: ; 0x0200BC4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r5, r1, #0
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xa
	add r6, r2, #0
	str r3, [sp]
	bl sub_02026354
	add r4, r0, #0
	beq _0200BC96
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200BBA0
	add r5, r0, #0
	beq _0200BC90
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200CBBC
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_0202642C
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02026380
_0200BC90:
	add r0, r4, #0
	bl sub_02026380
_0200BC96:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BC4C

	thumb_func_start sub_0200BC9C
sub_0200BC9C: ; 0x0200BC9C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r2, _0200BCD8 ; =0x000002EE
	mov r0, #1
	mov r1, #0x1b
	add r3, r5, #0
	bl sub_0200BAF8
	add r4, r0, #0
	beq _0200BCD2
	mov r0, #0x10
	add r1, r5, #0
	bl sub_02026354
	add r5, r0, #0
	beq _0200BCC8
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0200BB6C
_0200BCC8:
	add r0, r4, #0
	bl sub_0200BB44
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_0200BCD2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0200BCD8: .word 0x000002EE
	thumb_func_end sub_0200BC9C

	thumb_func_start sub_0200BCDC
sub_0200BCDC: ; 0x0200BCDC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xed
	bl sub_0200BAF8
	add r5, r0, #0
	beq _0200BD02
	add r1, r4, #0
	bl sub_0200BBA0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200BB44
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0200BD02:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200BCDC

	thumb_func_start sub_0200BD08
sub_0200BD08: ; 0x0200BD08
	ldr r3, _0200BD14 ; =sub_0200BD18
	add r2, r0, #0
	mov r0, #8
	mov r1, #0x20
	bx r3
	nop
_0200BD14: .word sub_0200BD18
	thumb_func_end sub_0200BD08

	thumb_func_start sub_0200BD18
sub_0200BD18: ; 0x0200BD18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	bne _0200BD28
	bl GF_AssertFail
_0200BD28:
	ldr r0, [sp]
	cmp r0, #0
	bne _0200BD32
	bl GF_AssertFail
_0200BD32:
	ldr r0, [sp, #4]
	mov r1, #0x10
	bl sub_0201AACC
	add r4, r0, #0
	beq _0200BD98
	ldr r0, [sp, #4]
	str r7, [r4]
	str r0, [r4, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02026354
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _0200BD98
	ldr r0, [sp, #4]
	lsl r1, r7, #3
	bl sub_0201AACC
	str r0, [r4, #8]
	cmp r0, #0
	beq _0200BD98
	mov r6, #0
	cmp r7, #0
	bls _0200BD8E
	add r5, r6, #0
_0200BD68:
	add r0, r0, r5
	bl sub_0200BDF4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02026354
	ldr r1, [r4, #8]
	add r1, r1, r5
	str r0, [r1, #4]
	ldr r0, [r4, #8]
	add r1, r0, r5
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _0200BD8E
	add r6, r6, #1
	add r5, #8
	cmp r6, r7
	blo _0200BD68
_0200BD8E:
	cmp r6, r7
	bne _0200BD98
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200BD98:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200BD18

	thumb_func_start sub_0200BDA0
sub_0200BDA0: ; 0x0200BDA0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	bne _0200BDAE
	bl GF_AssertFail
_0200BDAE:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0200BDDC
	ldr r0, [r5]
	mov r6, #0
	cmp r0, #0
	bls _0200BDD6
	add r4, r6, #0
_0200BDBE:
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200BDD6
	bl sub_02026380
	ldr r0, [r5]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blo _0200BDBE
_0200BDD6:
	ldr r0, [r5, #8]
	bl sub_0201AB0C
_0200BDDC:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0200BDE6
	bl sub_02026380
_0200BDE6:
	mov r0, #0
	str r0, [r5]
	add r0, r5, #0
	bl sub_0201AB0C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200BDA0

	thumb_func_start sub_0200BDF4
sub_0200BDF4: ; 0x0200BDF4
	bx lr
	.align 2, 0
	thumb_func_end sub_0200BDF4

	thumb_func_start sub_0200BDF8
sub_0200BDF8: ; 0x0200BDF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r6, r0
	blo _0200BE0C
	bl GF_AssertFail
_0200BE0C:
	ldr r0, [r5]
	cmp r6, r0
	bhs _0200BE3A
	cmp r4, #0
	beq _0200BE2C
	ldrb r0, [r4]
	ldr r3, [r5, #8]
	lsl r2, r6, #3
	strb r0, [r3, r2]
	ldrb r0, [r4, #1]
	add r1, r3, r2
	strb r0, [r1, #1]
	ldrb r0, [r4, #2]
	strb r0, [r1, #2]
	ldrb r0, [r4, #3]
	strb r0, [r1, #3]
_0200BE2C:
	ldr r1, [r5, #8]
	lsl r0, r6, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	add r1, r7, #0
	bl sub_020263D4
_0200BE3A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BDF8

	thumb_func_start sub_0200BE3C
sub_0200BE3C: ; 0x0200BE3C
	push {r3, lr}
	mov r3, #0
	bl sub_0200BDF8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0200BE3C

	thumb_func_start sub_0200BE48
sub_0200BE48: ; 0x0200BE48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_02028F54
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020269A0
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200BE48

	thumb_func_start sub_0200BE6C
sub_0200BE6C: ; 0x0200BE6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_0202A960
	bl sub_0202A9A8
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020269A0
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200BE6C

	thumb_func_start sub_0200BE94
sub_0200BE94: ; 0x0200BE94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r6, r1, #0
	bl sub_02028E9C
	add r7, r0, #0
	ldr r2, _0200BEE4 ; =0x000001BD
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02028F94
	cmp r0, #0
	bne _0200BEC6
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200BB6C
	b _0200BED0
_0200BEC6:
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200BB6C
_0200BED0:
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r4, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200BEE4: .word 0x000001BD
	thumb_func_end sub_0200BE94

	thumb_func_start sub_0200BEE8
sub_0200BEE8: ; 0x0200BEE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xed
	bl sub_0200BAF8
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	add r7, r0, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200BEE8

	thumb_func_start sub_0200BF1C
sub_0200BF1C: ; 0x0200BF1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #5
	mov r2, #0
	bl sub_0206E640
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl sub_0200BEE8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200BF1C

	thumb_func_start sub_0200BF3C
sub_0200BF3C: ; 0x0200BF3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #5
	mov r2, #0
	bl sub_0206E640
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200BF58
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200BF3C

	thumb_func_start sub_0200BF58
sub_0200BF58: ; 0x0200BF58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xee
	bl sub_0200BAF8
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	add r7, r0, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200BF58

	thumb_func_start sub_0200BF8C
sub_0200BF8C: ; 0x0200BF8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	ldr r2, [r5, #0xc]
	mov r1, #0x77
	bl sub_0206E640
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200BF8C

	thumb_func_start sub_0200BFAC
sub_0200BFAC: ; 0x0200BFAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	ldr r2, [r5, #0xc]
	mov r1, #0x91
	bl sub_0206E640
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200BFAC

	thumb_func_start sub_0200BFCC
sub_0200BFCC: ; 0x0200BFCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	add r4, r1, #0
	str r0, [sp]
	add r1, r2, #0
	add r2, r3, #0
	ldr r0, [r5, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_02026464
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200BFCC

	thumb_func_start sub_0200BFF0
sub_0200BFF0: ; 0x0200BFF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C024 ; =0x000002EE
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C022
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C022:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C024: .word 0x000002EE
	thumb_func_end sub_0200BFF0

	thumb_func_start sub_0200C028
sub_0200C028: ; 0x0200C028
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x6a
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	lsl r2, r2, #2
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C05C
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C05C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200C028

	thumb_func_start sub_0200C060
sub_0200C060: ; 0x0200C060
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x2d
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	lsl r2, r2, #4
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C094
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C094:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200C060

	thumb_func_start sub_0200C098
sub_0200C098: ; 0x0200C098
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x22
	bl sub_0200BAF8
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	add r7, r0, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200C098

	thumb_func_start sub_0200C0CC
sub_0200C0CC: ; 0x0200C0CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xde
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C0FE
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C0FE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C0CC

	thumb_func_start sub_0200C100
sub_0200C100: ; 0x0200C100
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xdf
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C132
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C132:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C100

	thumb_func_start sub_0200C134
sub_0200C134: ; 0x0200C134
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xe0
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C166
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C166:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C134

	thumb_func_start sub_0200C168
sub_0200C168: ; 0x0200C168
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xe2
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C19A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C19A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C168

	thumb_func_start sub_0200C19C
sub_0200C19C: ; 0x0200C19C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C1D0 ; =0x000002DF
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C1CE
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C1CE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C1D0: .word 0x000002DF
	thumb_func_end sub_0200C19C

	thumb_func_start sub_0200C1D4
sub_0200C1D4: ; 0x0200C1D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C208 ; =0x000001BB
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C206
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C206:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C208: .word 0x000001BB
	thumb_func_end sub_0200C1D4

	thumb_func_start sub_0200C20C
sub_0200C20C: ; 0x0200C20C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x2c
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C23E
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C23E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C20C

	thumb_func_start sub_0200C240
sub_0200C240: ; 0x0200C240
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C274 ; =0x0000027F
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C272
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C272:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C274: .word 0x0000027F
	thumb_func_end sub_0200C240

	thumb_func_start sub_0200C278
sub_0200C278: ; 0x0200C278
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r1, #0x1b
	add r4, r2, #0
	add r2, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	add r2, #0xfc
	bl sub_0200BAF8
	add r6, r0, #0
	beq _0200C2D2
	cmp r4, #0
	beq _0200C29E
	bl sub_0200BBCC
	cmp r4, r0
	blo _0200C2B6
_0200C29E:
	add r0, r6, #0
	bl sub_0200BB44
	mov r1, #0x1b
	add r2, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	add r2, #0xfd
	bl sub_0200BAF8
	add r6, r0, #0
	mov r4, #2
_0200C2B6:
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r6, #0
	bl sub_0200BB44
_0200C2D2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C278

	thumb_func_start sub_0200C2D4
sub_0200C2D4: ; 0x0200C2D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C308 ; =0x000002DA
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C306
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C306:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C308: .word 0x000002DA
	thumb_func_end sub_0200C2D4

	thumb_func_start sub_0200C30C
sub_0200C30C: ; 0x0200C30C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C340 ; =0x000002DB
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C33E
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C33E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C340: .word 0x000002DB
	thumb_func_end sub_0200C30C

	thumb_func_start sub_0200C344
sub_0200C344: ; 0x0200C344
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r1, #0
	ldr r2, _0200C378 ; =0x000002DA
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C376
	ldrb r1, [r4, #1]
	ldr r2, [r5, #0xc]
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C376:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C378: .word 0x000002DA
	thumb_func_end sub_0200C344

	thumb_func_start sub_0200C37C
sub_0200C37C: ; 0x0200C37C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C3B0 ; =0x000002D9
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C3AE
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C3AE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C3B0: .word 0x000002D9
	thumb_func_end sub_0200C37C

	thumb_func_start sub_0200C3B4
sub_0200C3B4: ; 0x0200C3B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0x1b
	add r6, r2, #0
	ldr r3, [r5, #4]
	mov r0, #1
	add r2, r1, #0
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C3E6
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C3E6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C3B4

	thumb_func_start sub_0200C3E8
sub_0200C3E8: ; 0x0200C3E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r2, #0x14
	add r4, r1, #0
	add r1, r2, #0
	bl sub_020269A0
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200C3E8

	thumb_func_start sub_0200C408
sub_0200C408: ; 0x0200C408
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C43C ; =0x000002E1
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C43A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C43A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C43C: .word 0x000002E1
	thumb_func_end sub_0200C408

	thumb_func_start sub_0200C440
sub_0200C440: ; 0x0200C440
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r6, r1, #0
	add r4, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x28
	bl sub_0200BAF8
	add r7, r0, #0
	cmp r4, #0
	beq _0200C460
	cmp r4, #1
	beq _0200C46A
	b _0200C474
_0200C460:
	ldr r2, [r5, #0xc]
	mov r1, #0x37
	bl sub_0200BB6C
	b _0200C47A
_0200C46A:
	ldr r2, [r5, #0xc]
	mov r1, #0x38
	bl sub_0200BB6C
	b _0200C47A
_0200C474:
	ldr r0, [r5, #0xc]
	bl sub_020263AC
_0200C47A:
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200C440

	thumb_func_start sub_0200C490
sub_0200C490: ; 0x0200C490
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	ldr r2, [r5, #0xc]
	add r1, r3, #0
	bl sub_02073F00
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200C490

	thumb_func_start sub_0200C4B0
sub_0200C4B0: ; 0x0200C4B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C4E4 ; =0x0000031E
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C4E2
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C4E2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C4E4: .word 0x0000031E
	thumb_func_end sub_0200C4B0

	thumb_func_start sub_0200C4E8
sub_0200C4E8: ; 0x0200C4E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r6, r1, #0
	add r4, r3, #0
	bl sub_020916B4
	add r2, r0, #0
	beq _0200C526
	cmp r4, #0
	beq _0200C526
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C526
	ldr r2, [r5, #0xc]
	add r1, r4, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C526:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C4E8

	thumb_func_start sub_0200C528
sub_0200C528: ; 0x0200C528
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0xc]
	add r0, r2, #0
	bl sub_02015B1C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200C528

	thumb_func_start sub_0200C544
sub_0200C544: ; 0x0200C544
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xf
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C576
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C576:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C544

	thumb_func_start sub_0200C578
sub_0200C578: ; 0x0200C578
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x10
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C5AA
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C5AA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C578

	thumb_func_start sub_0200C5AC
sub_0200C5AC: ; 0x0200C5AC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	str r1, [sp]
	bl sub_02017FAC
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02017FCC
	add r4, r0, #0
	ldr r2, _0200C64C ; =0x020F5C1C
	lsl r3, r6, #1
	ldrh r2, [r2, r3]
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C648
	bl sub_0200BBCC
	cmp r4, r0
	bhs _0200C606
	cmp r6, #0
	bne _0200C5E8
	cmp r4, #0
	beq _0200C606
_0200C5E8:
	ldr r2, [r5, #0xc]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0200BB6C
	ldr r1, [sp]
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
_0200C606:
	add r0, r7, #0
	bl sub_0200BB44
	cmp r6, #0
	bne _0200C61A
	cmp r4, #0
	bne _0200C61A
	ldr r2, _0200C650 ; =0x00000119
	mov r4, #0xc
	b _0200C620
_0200C61A:
	mov r2, #0x46
	lsl r2, r2, #2
	mov r4, #2
_0200C620:
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r6, r0, #0
	beq _0200C648
	ldr r2, [r5, #0xc]
	add r1, r4, #0
	bl sub_0200BB6C
	ldr r1, [sp]
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r6, #0
	bl sub_0200BB44
_0200C648:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200C64C: .word 0x020F5C1C
_0200C650: .word 0x00000119
	thumb_func_end sub_0200C5AC

	thumb_func_start sub_0200C654
sub_0200C654: ; 0x0200C654
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xd8
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C686
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C686:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C654

	thumb_func_start sub_0200C688
sub_0200C688: ; 0x0200C688
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xd9
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C6BA
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C6BA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C688

	thumb_func_start sub_0200C6BC
sub_0200C6BC: ; 0x0200C6BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xda
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C6EE
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C6EE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C6BC

	thumb_func_start sub_0200C6F0
sub_0200C6F0: ; 0x0200C6F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #8]
	add r5, r2, #0
	add r0, r1, #0
	str r3, [sp, #0xc]
	bl sub_0202C854
	add r6, r0, #0
	add r1, r5, #0
	bl sub_0202C830
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202C83C
	add r7, r0, #0
	mov r0, #0x40
	mov r1, #4
	bl sub_02026354
	add r4, r0, #0
	ldr r2, [sp, #0x28]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202C7E0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020269A0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r2, r4, #0
	str r7, [sp, #4]
	bl sub_0200BE3C
	add r0, r4, #0
	bl sub_02026380
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C6F0

	thumb_func_start sub_0200C74C
sub_0200C74C: ; 0x0200C74C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C780 ; =0x000002F3
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C77E
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C77E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C780: .word 0x000002F3
	thumb_func_end sub_0200C74C

	thumb_func_start sub_0200C784
sub_0200C784: ; 0x0200C784
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C7B8 ; =0x000002F1
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C7B6
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C7B6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C7B8: .word 0x000002F1
	thumb_func_end sub_0200C784

	thumb_func_start sub_0200C7BC
sub_0200C7BC: ; 0x0200C7BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0xbd
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	lsl r2, r2, #2
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C7F0
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C7F0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200C7BC

	thumb_func_start sub_0200C7F4
sub_0200C7F4: ; 0x0200C7F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C828 ; =0x00000303
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C826
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C826:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C828: .word 0x00000303
	thumb_func_end sub_0200C7F4

	thumb_func_start sub_0200C82C
sub_0200C82C: ; 0x0200C82C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C860 ; =0x000002FF
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C85E
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C85E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C860: .word 0x000002FF
	thumb_func_end sub_0200C82C

	thumb_func_start sub_0200C864
sub_0200C864: ; 0x0200C864
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #3
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	lsl r2, r2, #8
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C898
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C898:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200C864

	thumb_func_start sub_0200C89C
sub_0200C89C: ; 0x0200C89C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C8D0 ; =0x00000302
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C8CE
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C8CE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C8D0: .word 0x00000302
	thumb_func_end sub_0200C89C

	thumb_func_start sub_0200C8D4
sub_0200C8D4: ; 0x0200C8D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C908 ; =0x00000301
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C906
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C906:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C908: .word 0x00000301
	thumb_func_end sub_0200C8D4

	thumb_func_start sub_0200C90C
sub_0200C90C: ; 0x0200C90C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0xc1
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	lsl r2, r2, #2
	bl sub_0200BAF8
	add r7, r0, #0
	beq _0200C940
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r7, #0
	bl sub_0200BB44
_0200C940:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200C90C

	thumb_func_start sub_0200C944
sub_0200C944: ; 0x0200C944
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r7, r1, #0
	ldr r2, _0200C980 ; =0x00000139
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r6, r0, #0
	cmp r4, #0xb
	blo _0200C962
	bl GF_AssertFail
_0200C962:
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r6, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200C980: .word 0x00000139
	thumb_func_end sub_0200C944

	thumb_func_start sub_0200C984
sub_0200C984: ; 0x0200C984
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r7, r1, #0
	ldr r2, _0200C9C4 ; =0x00000139
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r6, r0, #0
	cmp r4, #5
	blo _0200C9A2
	bl GF_AssertFail
_0200C9A2:
	add r4, #0xf
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r6, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200C9C4: .word 0x00000139
	thumb_func_end sub_0200C984

	thumb_func_start sub_0200C9C8
sub_0200C9C8: ; 0x0200C9C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r7, r1, #0
	ldr r2, _0200CA08 ; =0x00000139
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r6, r0, #0
	cmp r4, #0xa
	blo _0200C9E6
	bl GF_AssertFail
_0200C9E6:
	add r4, #0x14
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r6, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200CA08: .word 0x00000139
	thumb_func_end sub_0200C9C8

	thumb_func_start sub_0200CA0C
sub_0200CA0C: ; 0x0200CA0C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r7, r1, #0
	add r4, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x15
	bl sub_0200BAF8
	add r6, r0, #0
	cmp r4, #7
	blo _0200CA2E
	blo _0200CA2C
	bl GF_AssertFail
_0200CA2C:
	mov r4, #0
_0200CA2E:
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #7
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r6, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200CA0C

	thumb_func_start sub_0200CA4C
sub_0200CA4C: ; 0x0200CA4C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r7, r1, #0
	ldr r2, _0200CA90 ; =0x000001AE
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl sub_0200BAF8
	add r6, r0, #0
	cmp r4, #0x18
	blo _0200CA6E
	blo _0200CA6C
	bl GF_AssertFail
_0200CA6C:
	mov r4, #0
_0200CA6E:
	add r4, #0xe
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r6, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200CA90: .word 0x000001AE
	thumb_func_end sub_0200CA4C

	thumb_func_start sub_0200CA94
sub_0200CA94: ; 0x0200CA94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	mov r2, #0x6b
	add r7, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	lsl r2, r2, #2
	bl sub_0200BAF8
	add r6, r0, #0
	cmp r4, #0xc
	blo _0200CAB8
	blo _0200CAB6
	bl GF_AssertFail
_0200CAB6:
	mov r4, #0
_0200CAB8:
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r6, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200CA94

	thumb_func_start sub_0200CAD8
sub_0200CAD8: ; 0x0200CAD8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r1, #0x1b
	add r4, r2, #0
	add r2, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	add r2, #0xf7
	bl sub_0200BAF8
	add r6, r0, #0
	cmp r4, #0x1b
	blo _0200CAFC
	blo _0200CAFA
	bl GF_AssertFail
_0200CAFA:
	mov r4, #0
_0200CAFC:
	add r4, #0x5b
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r6, #0
	bl sub_0200BB44
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200CAD8

	thumb_func_start sub_0200CB1C
sub_0200CB1C: ; 0x0200CB1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r7, r1, #0
	add r4, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xef
	bl sub_0200BAF8
	add r6, r0, #0
	beq _0200CB5A
	cmp r4, #1
	blo _0200CB3C
	cmp r4, #0xc
	bls _0200CB3E
_0200CB3C:
	mov r4, #1
_0200CB3E:
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	sub r1, r4, #1
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r6, #0
	bl sub_0200BB44
_0200CB5A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200CB1C

	thumb_func_start sub_0200CB5C
sub_0200CB5C: ; 0x0200CB5C
	ldr r2, [r0, #8]
	lsl r0, r1, #3
	add r0, r2, r0
	ldr r3, _0200CB6C ; =sub_02026C04
	ldr r0, [r0, #4]
	mov r1, #0
	bx r3
	nop
_0200CB6C: .word sub_02026C04
	thumb_func_end sub_0200CB5C

	thumb_func_start sub_0200CB70
sub_0200CB70: ; 0x0200CB70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r7, r1, #0
	add r4, r2, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xbf
	bl sub_0200BAF8
	add r6, r0, #0
	cmp r4, #6
	bls _0200CB8E
	bl GF_AssertFail
_0200CB8E:
	cmp r6, #0
	beq _0200CBB8
	cmp r4, #0
	bne _0200CB9A
	mov r4, #0x7a
	b _0200CB9C
_0200CB9A:
	add r4, #0x73
_0200CB9C:
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200BB6C
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200BDF8
	add r0, r6, #0
	bl sub_0200BB44
_0200CBB8:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200CB70

	thumb_func_start sub_0200CBBC
sub_0200CBBC: ; 0x0200CBBC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	bl sub_02026AA4
	add r5, r0, #0
	add r0, r6, #0
	bl sub_020263AC
	ldrh r1, [r5]
	ldr r0, _0200CC48 ; =0x0000FFFF
	cmp r1, r0
	beq _0200CC44
_0200CBD8:
	ldr r0, _0200CC4C ; =0x0000FFFE
	cmp r1, r0
	bne _0200CC32
	add r0, r5, #0
	bl sub_0201FB5C
	cmp r0, #0
	beq _0200CC14
	add r0, r5, #0
	mov r1, #0
	bl sub_0201FB90
	add r4, r0, #0
	ldr r0, [r7]
	cmp r4, r0
	blo _0200CBFC
	bl GF_AssertFail
_0200CBFC:
	ldr r2, [r7, #8]
	lsl r1, r4, #3
	add r1, r2, r1
	ldr r1, [r1, #4]
	add r0, r6, #0
	bl sub_02026B88
	add r0, r5, #0
	bl sub_0201FB1C
	add r5, r0, #0
	b _0200CC3C
_0200CC14:
	add r0, r5, #0
	add r4, r5, #0
	bl sub_0201FB1C
	add r5, r0, #0
	cmp r4, r5
	bhs _0200CC3C
_0200CC22:
	ldrh r1, [r4]
	add r0, r6, #0
	add r4, r4, #2
	bl sub_02026B28
	cmp r4, r5
	blo _0200CC22
	b _0200CC3C
_0200CC32:
	ldrh r1, [r5]
	add r0, r6, #0
	add r5, r5, #2
	bl sub_02026B28
_0200CC3C:
	ldrh r1, [r5]
	ldr r0, _0200CC48 ; =0x0000FFFF
	cmp r1, r0
	bne _0200CBD8
_0200CC44:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200CC48: .word 0x0000FFFF
_0200CC4C: .word 0x0000FFFE
	thumb_func_end sub_0200CBBC

	thumb_func_start sub_0200CC50
sub_0200CC50: ; 0x0200CC50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r6, #0
	cmp r0, #0
	bls _0200CC72
	add r4, r6, #0
_0200CC5E:
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldr r0, [r0, #4]
	bl sub_020263AC
	ldr r0, [r5]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blo _0200CC5E
_0200CC72:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200CC50

	thumb_func_start sub_0200CC74
sub_0200CC74: ; 0x0200CC74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r4, #0
	mov r1, #0x2c
	str r2, [sp, #4]
	bl sub_0201AA8C
	str r0, [sp, #8]
	cmp r0, #0
	beq _0200CD8E
	ldr r3, [sp, #8]
	mov r0, #0x10
	mov r1, #5
	mov r2, #1
	add r3, r3, #4
	str r4, [sp]
	bl sub_020079BC
	ldr r1, [sp, #8]
	mov r3, #0
	str r0, [r1]
	add r0, r1, #0
	ldr r0, [r0, #4]
	ldr r4, [r0, #0x14]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bls _0200CD88
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	lsl r0, r0, #4
	orr r1, r0
	str r1, [sp, #0xc]
	add r1, r0, #0
	orr r1, r5
	str r1, [sp, #0x10]
	orr r0, r6
	str r0, [sp, #0x14]
	ldr r1, [sp, #4]
	lsl r0, r5, #4
	orr r1, r0
	str r1, [sp, #0x18]
	add r1, r5, #0
	orr r1, r0
	str r1, [sp, #0x1c]
	orr r0, r6
	lsl r2, r6, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #4]
	add r7, r2, #0
	orr r7, r1
	add r1, r2, #0
	orr r1, r5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r2, r6
	str r1, [sp, #0x28]
	lsl r1, r7, #0x18
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x18]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	mov ip, r2
	str r1, [sp, #0x24]
	lsr r6, r0, #0x18
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
_0200CD18:
	ldrb r5, [r4, r3]
	cmp r5, #0x12
	bgt _0200CD40
	bge _0200CD66
	cmp r5, #0x10
	bgt _0200CD3A
	bge _0200CD5E
	cmp r5, #2
	bgt _0200CD7C
	cmp r5, #0
	blt _0200CD7C
	beq _0200CD52
	cmp r5, #1
	beq _0200CD56
	cmp r5, #2
	beq _0200CD5A
	b _0200CD7C
_0200CD3A:
	cmp r5, #0x11
	beq _0200CD62
	b _0200CD7C
_0200CD40:
	cmp r5, #0x21
	bgt _0200CD4C
	bge _0200CD72
	cmp r5, #0x20
	beq _0200CD6C
	b _0200CD7C
_0200CD4C:
	cmp r5, #0x22
	beq _0200CD78
	b _0200CD7C
_0200CD52:
	strb r2, [r4, r3]
	b _0200CD7C
_0200CD56:
	strb r1, [r4, r3]
	b _0200CD7C
_0200CD5A:
	strb r0, [r4, r3]
	b _0200CD7C
_0200CD5E:
	strb r6, [r4, r3]
	b _0200CD7C
_0200CD62:
	strb r7, [r4, r3]
	b _0200CD7C
_0200CD66:
	ldr r5, [sp, #0x20]
	strb r5, [r4, r3]
	b _0200CD7C
_0200CD6C:
	ldr r5, [sp, #0x24]
	strb r5, [r4, r3]
	b _0200CD7C
_0200CD72:
	ldr r5, [sp, #0x28]
	strb r5, [r4, r3]
	b _0200CD7C
_0200CD78:
	mov r5, ip
	strb r5, [r4, r3]
_0200CD7C:
	ldr r5, [sp, #8]
	add r3, r3, #1
	ldr r5, [r5, #4]
	ldr r5, [r5, #0x10]
	cmp r3, r5
	blo _0200CD18
_0200CD88:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r1, [r0, #0x28]
_0200CD8E:
	ldr r0, [sp, #8]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200CC74

	thumb_func_start sub_0200CD94
sub_0200CD94: ; 0x0200CD94
	push {r4, lr}
	add r4, r0, #0
	beq _0200CDAA
	ldr r0, [r4]
	cmp r0, #0
	beq _0200CDA4
	bl sub_0201AB0C
_0200CDA4:
	add r0, r4, #0
	bl sub_0201AB0C
_0200CDAA:
	pop {r4, pc}
	thumb_func_end sub_0200CD94

	thumb_func_start sub_0200CDAC
sub_0200CDAC: ; 0x0200CDAC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _0200CDE8 ; =0x020F5C26
	lsl r5, r1, #2
	ldrh r1, [r0, r5]
	lsl r3, r3, #0x10
	mov r0, #8
	str r1, [sp]
	str r0, [sp, #4]
	lsr r3, r3, #0x10
	str r3, [sp, #8]
	ldr r3, [sp, #0x28]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r4, #4]
	add r0, r2, #0
	ldr r2, [r1, #0x14]
	ldr r1, _0200CDEC ; =0x020F5C24
	ldrh r1, [r1, r5]
	add r1, r2, r1
	mov r2, #0
	add r3, r2, #0
	bl sub_0201D9D8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_0200CDE8: .word 0x020F5C26
_0200CDEC: .word 0x020F5C24
	thumb_func_end sub_0200CDAC

	thumb_func_start sub_0200CDF0
sub_0200CDF0: ; 0x0200CDF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	add r4, r2, #0
	str r0, [sp, #0x30]
	add r0, r6, #0
	add r2, r3, #0
	add r0, #8
	add r3, r4, #0
	ldr r5, [sp, #0x34]
	ldr r7, [sp, #0x38]
	bl PrintDecimalInteger
	ldrh r1, [r6, #8]
	ldr r0, _0200CE78 ; =0x0000FFFF
	cmp r1, r0
	beq _0200CE72
	lsl r0, r7, #0x10
	add r4, r6, #0
	lsr r7, r0, #0x10
_0200CE1A:
	ldrh r2, [r4, #8]
	cmp r2, #0xa2
	blo _0200CE4E
	cmp r2, #0xab
	bhi _0200CE4E
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r6, #4]
	sub r2, #0xa2
	ldr r1, [r1, #0x14]
	lsl r2, r2, #5
	add r1, r1, r2
	mov r2, #0
	ldr r0, [sp, #0x30]
	add r3, r2, #0
	bl sub_0201D9D8
	b _0200CE66
_0200CE4E:
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #0x28]
	lsl r2, r5, #0x10
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x30]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl sub_0201DA74
_0200CE66:
	add r4, r4, #2
	ldrh r1, [r4, #8]
	ldr r0, _0200CE78 ; =0x0000FFFF
	add r5, #8
	cmp r1, r0
	bne _0200CE1A
_0200CE72:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200CE78: .word 0x0000FFFF
	thumb_func_end sub_0200CDF0

	thumb_func_start sub_0200CE7C
sub_0200CE7C: ; 0x0200CE7C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, [sp, #0x2c]
	add r6, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	add r5, r0, #0
	bl sub_0200CDAC
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0200CDF0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0200CE7C

	thumb_func_start sub_0200CEB0
sub_0200CEB0: ; 0x0200CEB0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r2, #0
	ldr r2, [r7, #0x28]
	ldr r6, [sp, #0x18]
	lsl r0, r2, #4
	orr r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r7, #0
	add r2, r3, #0
	add r0, #8
	add r3, r4, #0
	bl PrintDecimalInteger
	ldrh r1, [r7, #8]
	ldr r0, _0200CF14 ; =0x0000FFFF
	cmp r1, r0
	beq _0200CF10
	add r4, r7, #0
	mov r5, #0
_0200CEDC:
	ldrh r2, [r4, #8]
	cmp r2, #0xa2
	blo _0200CEFA
	cmp r2, #0xab
	bhi _0200CEFA
	ldr r0, [r7, #4]
	sub r2, #0xa2
	ldr r1, [r0, #0x14]
	lsl r0, r2, #5
	add r0, r1, r0
	add r1, r6, r5
	mov r2, #0x20
	bl sub_020D4808
	b _0200CF04
_0200CEFA:
	ldr r1, [sp]
	add r0, r6, r5
	mov r2, #0x20
	bl sub_020D4994
_0200CF04:
	add r4, r4, #2
	ldrh r1, [r4, #8]
	ldr r0, _0200CF14 ; =0x0000FFFF
	add r5, #0x20
	cmp r1, r0
	bne _0200CEDC
_0200CF10:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200CF14: .word 0x0000FFFF
	thumb_func_end sub_0200CEB0

	thumb_func_start sub_0200CF18
sub_0200CF18: ; 0x0200CF18
	push {r4, lr}
	mov r1, #0x4e
	lsl r1, r1, #2
	add r4, r0, #0
	bl sub_0201AA8C
	cmp r0, #0
	bne _0200CF2C
	mov r0, #0
	pop {r4, pc}
_0200CF2C:
	str r4, [r0]
	mov r1, #0
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #8]
	pop {r4, pc}
	thumb_func_end sub_0200CF18

	thumb_func_start sub_0200CF38
sub_0200CF38: ; 0x0200CF38
	push {r4, lr}
	add r4, r0, #0
	bne _0200CF42
	bl GF_AssertFail
_0200CF42:
	ldr r0, [r4]
	mov r1, #0x58
	bl sub_0201AA8C
	cmp r0, #0
	bne _0200CF52
	mov r0, #0
	pop {r4, pc}
_0200CF52:
	ldr r1, [r4, #4]
	mov r2, #0
	add r1, r1, #1
	str r1, [r4, #4]
	add r3, r0, #0
	add r1, r2, #0
_0200CF5E:
	add r2, r2, #1
	str r1, [r3, #0xc]
	add r3, r3, #4
	cmp r2, #6
	blt _0200CF5E
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200CF38

	thumb_func_start sub_0200CF6C
sub_0200CF6C: ; 0x0200CF6C
	add r0, #0x10
	bx lr
	thumb_func_end sub_0200CF6C

	thumb_func_start sub_0200CF70
sub_0200CF70: ; 0x0200CF70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0200CF84
	bl GF_AssertFail
_0200CF84:
	cmp r5, #0
	bne _0200CF8E
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CF8E:
	ldr r0, [r6]
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	str r0, [sp, #0x18]
	ldr r0, [r6, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r5]
	str r0, [sp, #0x20]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	add r0, sp, #0x14
	bl sub_020215C0
	ldr r1, [r5]
	add r0, r7, #0
	bl sub_02022588
	bl sub_020B78D4
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _0200CFDA
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r0, [r4, #0x14]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	str r0, [sp, #8]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0200B150
_0200CFDA:
	ldr r1, [r5]
	mov r0, #0x20
	bl sub_02020654
	str r0, [r5, #0xc]
	bl sub_020216C8
	bl sub_02022638
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200CF70

	thumb_func_start sub_0200CFF4
sub_0200CFF4: ; 0x0200CFF4
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	cmp r3, #0
	beq _0200D002
	cmp r4, #0
	bne _0200D006
_0200D002:
	mov r0, #0
	pop {r4, pc}
_0200D006:
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [r3]
	add r1, #0x10
	bl sub_02009F40
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0200CFF4

	thumb_func_start sub_0200D018
sub_0200D018: ; 0x0200D018
	ldr r3, _0200D01C ; =sub_02024758
	bx r3
	.align 2, 0
_0200D01C: .word sub_02024758
	thumb_func_end sub_0200D018

	thumb_func_start sub_0200D020
sub_0200D020: ; 0x0200D020
	push {r4, lr}
	add r4, r0, #0
	bne _0200D02A
	bl GF_AssertFail
_0200D02A:
	ldr r0, [r4]
	bl sub_0202457C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200D020

	thumb_func_start sub_0200D034
sub_0200D034: ; 0x0200D034
	ldr r3, _0200D038 ; =sub_0200B224
	bx r3
	.align 2, 0
_0200D038: .word sub_0200B224
	thumb_func_end sub_0200D034

	thumb_func_start sub_0200D03C
sub_0200D03C: ; 0x0200D03C
	ldr r3, _0200D040 ; =sub_02020674
	bx r3
	.align 2, 0
_0200D040: .word sub_02020674
	thumb_func_end sub_0200D03C

	thumb_func_start sub_0200D044
sub_0200D044: ; 0x0200D044
	ldr r3, _0200D04C ; =sub_02024504
	ldr r0, [r0]
	bx r3
	nop
_0200D04C: .word sub_02024504
	thumb_func_end sub_0200D044

	thumb_func_start sub_0200D050
sub_0200D050: ; 0x0200D050
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200D05C
	bl sub_02009F24
_0200D05C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0200D050

	thumb_func_start sub_0200D060
sub_0200D060: ; 0x0200D060
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	mov r4, #0
	cmp r0, #0
	ble _0200D080
_0200D06C:
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_0200A900
	bl sub_0200A954
	ldr r0, [r5, #0x54]
	add r4, r4, #1
	cmp r4, r0
	blt _0200D06C
_0200D080:
	ldr r0, [r5, #8]
	bl sub_0201AB0C
	ldr r0, [r5, #0x24]
	bl sub_0200AED4
	ldr r0, [r5, #0x28]
	bl sub_0200B0CC
	ldr r0, [r5, #0x54]
	mov r6, #0
	cmp r0, #0
	ble _0200D0B2
	add r4, r5, #0
_0200D09C:
	ldr r0, [r4, #0x24]
	bl sub_0200A714
	ldr r0, [r4, #0xc]
	bl sub_0200A0D0
	ldr r0, [r5, #0x54]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200D09C
_0200D0B2:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200D060

	thumb_func_start sub_0200D0B4
sub_0200D0B4: ; 0x0200D0B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202067C
	bl sub_0202168C
	bl sub_02022608
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0200D0D0
	bl sub_0200B244
_0200D0D0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200D0B4

	thumb_func_start sub_0200D0D4
sub_0200D0D4: ; 0x0200D0D4
	ldr r2, [r0, #4]
	ldr r3, _0200D0E0 ; =sub_0201AB0C
	sub r2, r2, #1
	str r2, [r0, #4]
	add r0, r1, #0
	bx r3
	.align 2, 0
_0200D0E0: .word sub_0201AB0C
	thumb_func_end sub_0200D0D4

	thumb_func_start sub_0200D0E4
sub_0200D0E4: ; 0x0200D0E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0200D044
	add r0, r4, #0
	bl sub_0200D050
	add r0, r4, #0
	bl sub_0200D060
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D0D4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200D0E4

	thumb_func_start sub_0200D108
sub_0200D108: ; 0x0200D108
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0200D116
	bl GF_AssertFail
_0200D116:
	add r0, r4, #0
	bl sub_0200D0B4
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	thumb_func_end sub_0200D108

	thumb_func_start sub_0200D124
sub_0200D124: ; 0x0200D124
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r4, r1, #0
	mov r7, #6
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	cmp r5, #0
	beq _0200D13A
	cmp r4, #0
	bne _0200D140
_0200D13A:
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D140:
	add r0, r2, #0
	ldrh r1, [r0, #8]
	ldr r0, _0200D290 ; =0x0000FFFF
	cmp r1, r0
	bne _0200D14C
	mov r7, #4
_0200D14C:
	str r7, [r4, #0x54]
	bl sub_0200A8FC
	add r2, r0, #0
	add r1, r2, #0
	ldr r0, [r5]
	mul r1, r7
	bl sub_0201AA8C
	str r0, [r4, #8]
	ldr r1, [r5]
	mov r0, #0xaf
	bl sub_02007688
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	cmp r7, #0
	ble _0200D1AA
	ldr r6, [sp, #0x10]
_0200D174:
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x24]
	bl sub_0200A900
	str r0, [sp, #0x28]
	mov r0, #1
	str r0, [sp]
	ldrh r1, [r6]
	ldr r0, [sp, #0x20]
	ldr r3, [r5]
	mov r2, #0
	bl sub_02007C98
	ldr r1, [sp, #0x28]
	ldr r2, [r5]
	str r0, [sp, #0x2c]
	bl sub_0200A908
	ldr r0, [sp, #0x2c]
	bl sub_0201AB0C
	ldr r0, [sp, #0x24]
	add r6, r6, #2
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, r7
	blt _0200D174
_0200D1AA:
	mov r6, #0
	cmp r7, #0
	ble _0200D1D6
	str r4, [sp, #0x1c]
_0200D1B2:
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl sub_0200A900
	bl sub_0200A96C
	ldr r2, [r5]
	add r1, r6, #0
	bl sub_0200A090
	ldr r1, [sp, #0x1c]
	add r6, r6, #1
	str r0, [r1, #0xc]
	add r0, r1, #0
	add r0, r0, #4
	str r0, [sp, #0x1c]
	cmp r6, r7
	blt _0200D1B2
_0200D1D6:
	mov r0, #0
	str r0, [sp, #0x18]
	cmp r7, #0
	ble _0200D210
	add r6, r4, #0
_0200D1E0:
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x18]
	bl sub_0200A900
	str r0, [sp, #0x30]
	bl sub_0200A96C
	ldr r1, [r5]
	bl sub_0200A6F0
	add r2, r0, #0
	str r2, [r6, #0x24]
	ldr r0, [r6, #0xc]
	ldr r1, [sp, #0x30]
	ldr r3, [r5]
	bl sub_0200A674
	str r0, [r6, #0x3c]
	ldr r0, [sp, #0x18]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r7
	blt _0200D1E0
_0200D210:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0200D21E
	cmp r0, #1
	beq _0200D226
	cmp r0, #2
	b _0200D22E
_0200D21E:
	ldr r0, [r4, #0x24]
	bl sub_0200ADE4
	b _0200D234
_0200D226:
	ldr r0, [r4, #0x24]
	bl sub_0200AE58
	b _0200D234
_0200D22E:
	ldr r0, [r4, #0x24]
	bl sub_0200AD30
_0200D234:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0200D23E
	cmp r0, #1
	b _0200D246
_0200D23E:
	ldr r0, [r4, #0x28]
	bl sub_0200B050
	b _0200D24C
_0200D246:
	ldr r0, [r4, #0x28]
	bl sub_0200AFD8
_0200D24C:
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x20]
	ldrh r1, [r1, #0xc]
	ldr r3, [r5]
	mov r2, #0
	bl sub_02007C98
	ldr r1, [r4, #0x14]
	add r6, r0, #0
	str r1, [sp]
	ldr r1, [r4, #0x18]
	str r1, [sp, #4]
	ldr r1, [r4, #0x1c]
	str r1, [sp, #8]
	ldr r1, [r4, #0x20]
	str r1, [sp, #0xc]
	ldr r1, [r5]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl sub_02009E84
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_0201AB0C
	ldr r0, [sp, #0x20]
	bl sub_0200770C
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0200D290: .word 0x0000FFFF
	thumb_func_end sub_0200D124

	thumb_func_start sub_0200D294
sub_0200D294: ; 0x0200D294
	push {r3, lr}
	mov r3, #1
	str r3, [sp]
	mov r3, #2
	bl sub_0200D124
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0200D294

	thumb_func_start sub_0200D2A4
sub_0200D2A4: ; 0x0200D2A4
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl sub_0200D124
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0200D2A4

	thumb_func_start sub_0200D2B4
sub_0200D2B4: ; 0x0200D2B4
	push {r4, lr}
	sub sp, #0x28
	mov r3, #4
	mov r4, #6
	ldrsh r3, [r2, r3]
	ldrsh r4, [r2, r4]
	str r4, [sp]
	str r3, [sp, #4]
	ldrh r4, [r2, #0xa]
	str r4, [sp, #8]
	ldr r4, [r2, #0xc]
	str r4, [sp, #0xc]
	ldr r4, [r2, #0x10]
	str r4, [sp, #0x10]
	ldr r4, [r2, #0x14]
	str r4, [sp, #0x14]
	ldr r4, [r2, #0x18]
	str r4, [sp, #0x18]
	ldr r4, [r2, #0x1c]
	str r4, [sp, #0x1c]
	ldr r4, [r2, #0x20]
	str r4, [sp, #0x20]
	ldr r4, [r2, #0x24]
	str r4, [sp, #0x24]
	ldr r2, [r2]
	bl sub_0200D2F0
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200D2B4

	thumb_func_start sub_0200D2F0
sub_0200D2F0: ; 0x0200D2F0
	push {r4, lr}
	sub sp, #0x30
	add r4, r0, #0
	ldr r0, [r1]
	str r0, [sp]
	ldr r0, [r1, #4]
	ldr r1, [r0]
	mov r0, #0x24
	mul r0, r2
	add r0, r1, r0
	str r0, [sp, #4]
	cmp r3, #0
	ble _0200D31C
	lsl r0, r3, #0xc
	bl sub_020F2178
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020F1520
	b _0200D32A
_0200D31C:
	lsl r0, r3, #0xc
	bl sub_020F2178
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020F24C8
_0200D32A:
	bl sub_020F2104
	str r0, [sp, #8]
	add r1, sp, #0x28
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _0200D34C
	lsl r0, r0, #0xc
	bl sub_020F2178
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020F1520
	b _0200D35A
_0200D34C:
	lsl r0, r0, #0xc
	bl sub_020F2178
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020F24C8
_0200D35A:
	bl sub_020F2104
	str r0, [sp, #0xc]
	add r1, sp, #0x28
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _0200D37C
	lsl r0, r0, #0xc
	bl sub_020F2178
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020F1520
	b _0200D38A
_0200D37C:
	lsl r0, r0, #0xc
	bl sub_020F2178
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020F24C8
_0200D38A:
	bl sub_020F2104
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x4c]
	cmp r0, #2
	bne _0200D3A0
	mov r0, #3
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0xc]
_0200D3A0:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0, #0x20]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x28]
	ldr r0, [r4]
	str r0, [sp, #0x2c]
	add r0, sp, #0
	bl sub_02024624
	add r4, r0, #0
	beq _0200D3F0
	add r1, sp, #0x28
	ldrh r1, [r1, #0x18]
	bl sub_020248F0
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _0200D3DE
	cmp r0, #1
	beq _0200D3F0
	cmp r0, #2
	beq _0200D3E8
	b _0200D3F0
_0200D3DE:
	ldr r1, [sp, #0x48]
	add r0, r4, #0
	bl sub_02024A14
	b _0200D3F0
_0200D3E8:
	ldr r1, [sp, #0x48]
	add r0, r4, #0
	bl sub_02024A48
_0200D3F0:
	add r0, r4, #0
	add sp, #0x30
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200D2F0

	thumb_func_start sub_0200D3F8
sub_0200D3F8: ; 0x0200D3F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _0200D410
	cmp r5, #0
	bne _0200D416
_0200D410:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D416:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0200D422
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _0200D426
_0200D422:
	mov r0, #4
	str r0, [sp, #4]
_0200D426:
	ldr r0, [sp, #4]
	str r0, [r5, #0x54]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0200D456
	add r7, r6, #0
	add r4, r5, #0
_0200D438:
	ldr r2, [sp]
	ldr r0, [r7]
	ldr r1, [sp, #8]
	ldr r2, [r2]
	bl sub_0200A090
	str r0, [r4, #0xc]
	ldr r0, [sp, #8]
	add r7, r7, #4
	add r1, r0, #1
	ldr r0, [sp, #4]
	add r4, r4, #4
	str r1, [sp, #8]
	cmp r1, r0
	blt _0200D438
_0200D456:
	ldr r0, [sp, #4]
	mov r7, #0
	cmp r0, #0
	ble _0200D49C
	add r4, r7, #0
_0200D460:
	ldr r0, [r6]
	cmp r0, #0
	beq _0200D490
	ldr r1, [sp]
	ldr r1, [r1]
	bl sub_0200A6F0
	str r0, [r5, #0x24]
	mov r0, #0
	str r0, [r5, #0x3c]
	ldr r3, [r5, #0x24]
	add r1, r0, #0
	ldr r0, [r3, #4]
	cmp r0, #0
	ble _0200D490
	add r2, r1, #0
_0200D480:
	ldr r0, [r3]
	add r1, r1, #1
	str r4, [r0, r2]
	ldr r3, [r5, #0x24]
	add r2, r2, #4
	ldr r0, [r3, #4]
	cmp r1, r0
	blt _0200D480
_0200D490:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r6, r6, #4
	add r5, r5, #4
	cmp r7, r0
	blt _0200D460
_0200D49C:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200D3F8

	thumb_func_start sub_0200D4A4
sub_0200D4A4: ; 0x0200D4A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0200A728
	cmp r0, #0
	bne _0200D4C2
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D4C2:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0200A1D8
	add r5, r0, #0
	beq _0200D4F0
	bl sub_0200ADA4
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200DAE4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D4F0:
	bl GF_AssertFail
	cmp r5, #0
	beq _0200D4FE
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D4FE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D4A4

	thumb_func_start sub_0200D504
sub_0200D504: ; 0x0200D504
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0200A728
	cmp r0, #0
	bne _0200D522
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D522:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0200A3C8
	add r5, r0, #0
	beq _0200D550
	bl sub_0200ADA4
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200DAE4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D550:
	bl GF_AssertFail
	cmp r5, #0
	beq _0200D55E
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D55E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D504

	thumb_func_start sub_0200D564
sub_0200D564: ; 0x0200D564
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x34]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0200A728
	cmp r0, #0
	bne _0200D584
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0200D584:
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	bl sub_0200A234
	add r5, r0, #0
	beq _0200D5C8
	bl sub_0200B00C
	cmp r0, #1
	beq _0200D5B0
	bl GF_AssertFail
_0200D5B0:
	ldr r0, [r4, #0x28]
	add r1, r5, #0
	bl sub_0200DAE4
	ldr r1, [sp, #0x30]
	add r0, r5, #0
	bl sub_0200B12C
	lsl r0, r0, #0x18
	add sp, #0x10
	asr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0200D5C8:
	bl GF_AssertFail
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D564

	thumb_func_start sub_0200D5D4
sub_0200D5D4: ; 0x0200D5D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x34]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0200A728
	cmp r0, #0
	bne _0200D5F4
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0200D5F4:
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	bl sub_0200A480
	add r5, r0, #0
	beq _0200D638
	bl sub_0200B00C
	cmp r0, #1
	beq _0200D620
	bl GF_AssertFail
_0200D620:
	ldr r0, [r4, #0x28]
	add r1, r5, #0
	bl sub_0200DAE4
	ldr r1, [sp, #0x30]
	add r0, r5, #0
	bl sub_0200B12C
	lsl r0, r0, #0x18
	add sp, #0x10
	asr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0200D638:
	bl GF_AssertFail
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D5D4

	thumb_func_start sub_0200D644
sub_0200D644: ; 0x0200D644
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r3, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	add r0, r2, #0
	ldr r2, [sp, #0x20]
	bl sub_0200D564
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0200D682
	ldr r3, [sp, #0x2c]
	lsl r2, r4, #0x14
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	lsl r3, r3, #5
	bl sub_020032A4
_0200D682:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200D644

	thumb_func_start sub_0200D68C
sub_0200D68C: ; 0x0200D68C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r3, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	add r0, r2, #0
	ldr r2, [sp, #0x20]
	bl sub_0200D5D4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0200D6CA
	ldr r3, [sp, #0x2c]
	lsl r2, r4, #0x14
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	lsl r3, r3, #5
	bl sub_020032A4
_0200D6CA:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200D68C

	thumb_func_start sub_0200D6D4
sub_0200D6D4: ; 0x0200D6D4
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #2
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	bl sub_0200DA04
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200D6D4

	thumb_func_start sub_0200D6EC
sub_0200D6EC: ; 0x0200D6EC
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #2
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	bl sub_0200DA74
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200D6EC

	thumb_func_start sub_0200D704
sub_0200D704: ; 0x0200D704
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #3
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	bl sub_0200DA04
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200D704

	thumb_func_start sub_0200D71C
sub_0200D71C: ; 0x0200D71C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #3
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	bl sub_0200DA74
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200D71C

	thumb_func_start sub_0200D734
sub_0200D734: ; 0x0200D734
	push {r3, lr}
	mov r3, #3
	lsl r3, r3, #0x12
	bl sub_0200D748
	pop {r3, pc}
	thumb_func_end sub_0200D734

	thumb_func_start sub_0200D740
sub_0200D740: ; 0x0200D740
	push {r3, lr}
	bl sub_0200D748
	pop {r3, pc}
	thumb_func_end sub_0200D740

	thumb_func_start sub_0200D748
sub_0200D748: ; 0x0200D748
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r7, r0, #0
	ldr r0, [r7]
	add r6, r1, #0
	mov r1, #0x10
	add r5, r2, #0
	str r3, [sp, #0x2c]
	bl sub_0201AA8C
	add r4, r0, #0
	bne _0200D766
	add sp, #0x78
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200D766:
	ldr r0, [r7]
	mov r1, #8
	bl sub_0201AA8C
	str r0, [r4, #8]
	cmp r0, #0
	bne _0200D77A
	add sp, #0x78
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200D77A:
	ldr r0, [r7]
	mov r1, #0x24
	bl sub_0201AA8C
	ldr r1, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #8]
	ldr r0, [r0]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r0]
	cmp r1, #0
	bne _0200D7A2
	cmp r0, #0
	beq _0200D79C
	bl sub_0201AB0C
_0200D79C:
	add sp, #0x78
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200D7A2:
	mov r1, #0
	add r2, r5, #0
	add r3, sp, #0x30
_0200D7A8:
	ldr r0, [r2, #0x14]
	add r1, r1, #1
	add r2, r2, #4
	stmia r3!, {r0}
	cmp r1, #6
	blt _0200D7A8
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _0200D7C0
	ldr r1, [r6, #0x20]
	cmp r1, #0
	bne _0200D7CA
_0200D7C0:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	b _0200D7FC
_0200D7CA:
	mov r2, #0
	ldr r1, [sp, #0x40]
	mvn r2, r2
	cmp r1, r2
	beq _0200D7E2
	bl sub_0200A728
	cmp r0, #0
	bne _0200D7E2
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x40]
_0200D7E2:
	mov r0, #0
	ldr r1, [sp, #0x44]
	mvn r0, r0
	cmp r1, r0
	beq _0200D7FC
	ldr r0, [r6, #0x20]
	bl sub_0200A728
	cmp r0, #0
	bne _0200D7FC
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x44]
_0200D7FC:
	ldr r0, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [sp, #0x40]
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x10]
	ldr r0, [r6, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x10]
	str r0, [sp, #0x18]
	ldr r0, [r6, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, [r6, #0x18]
	str r0, [sp, #0x20]
	ldr r0, [r6, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0x28]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	bl sub_02009D48
	ldr r0, [r6]
	str r0, [sp, #0x48]
	ldr r0, [r4, #4]
	str r0, [sp, #0x4c]
	mov r0, #0
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0200D856
	lsl r0, r0, #0xc
	bl sub_020F2178
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020F1520
	b _0200D864
_0200D856:
	lsl r0, r0, #0xc
	bl sub_020F2178
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020F24C8
_0200D864:
	bl sub_020F2104
	str r0, [sp, #0x50]
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0200D884
	lsl r0, r0, #0xc
	bl sub_020F2178
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020F1520
	b _0200D892
_0200D884:
	lsl r0, r0, #0xc
	bl sub_020F2178
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020F24C8
_0200D892:
	bl sub_020F2104
	str r0, [sp, #0x54]
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0200D8B2
	lsl r0, r0, #0xc
	bl sub_020F2178
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020F1520
	b _0200D8C0
_0200D8B2:
	lsl r0, r0, #0xc
	bl sub_020F2178
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020F24C8
_0200D8C0:
	bl sub_020F2104
	str r0, [sp, #0x58]
	ldr r0, [r5, #0x10]
	cmp r0, #2
	bne _0200D8D4
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
	str r0, [sp, #0x54]
_0200D8D4:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	mov r1, #0
	add r0, sp, #0x30
	strh r1, [r0, #0x38]
	ldr r0, [r5, #8]
	str r0, [sp, #0x6c]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x70]
	ldr r0, [r7]
	str r0, [sp, #0x74]
	add r0, sp, #0x48
	bl sub_02024624
	str r0, [r4]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0xc]
	ldr r0, [r4]
	cmp r0, #0
	beq _0200D924
	ldrh r1, [r5, #6]
	bl sub_020248F0
	ldr r1, [r5, #0xc]
	ldr r0, _0200D930 ; =0x0000FFFF
	cmp r1, r0
	beq _0200D928
	ldr r0, [r4]
	bl sub_02024A6C
	add r2, r0, #0
	ldr r1, [r5, #0xc]
	ldr r0, [r4]
	add r1, r2, r1
	bl sub_02024A14
	b _0200D928
_0200D924:
	bl GF_AssertFail
_0200D928:
	add r0, r4, #0
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200D930: .word 0x0000FFFF
	thumb_func_end sub_0200D748

	thumb_func_start sub_0200D934
sub_0200D934: ; 0x0200D934
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl sub_0200A7BC
	mov r1, #0
	bl sub_0200B0F8
	pop {r3, pc}
	thumb_func_end sub_0200D934

	thumb_func_start sub_0200D944
sub_0200D944: ; 0x0200D944
	push {r4, lr}
	ldr r0, [r0, #0x10]
	add r4, r2, #0
	bl sub_0200A7BC
	add r1, r4, #0
	bl sub_0200B12C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200D944

	thumb_func_start sub_0200D958
sub_0200D958: ; 0x0200D958
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0xc]
	ldr r1, [r3, #0x24]
	ldr r3, _0200D964 ; =sub_0200DB64
	bx r3
	.align 2, 0
_0200D964: .word sub_0200DB64
	thumb_func_end sub_0200D958

	thumb_func_start sub_0200D968
sub_0200D968: ; 0x0200D968
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x28]
	ldr r3, _0200D974 ; =sub_0200DBB8
	bx r3
	.align 2, 0
_0200D974: .word sub_0200DBB8
	thumb_func_end sub_0200D968

	thumb_func_start sub_0200D978
sub_0200D978: ; 0x0200D978
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x2c]
	ldr r3, _0200D984 ; =sub_0200DB18
	bx r3
	.align 2, 0
_0200D984: .word sub_0200DB18
	thumb_func_end sub_0200D978

	thumb_func_start sub_0200D988
sub_0200D988: ; 0x0200D988
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x18]
	ldr r1, [r3, #0x30]
	ldr r3, _0200D994 ; =sub_0200DB18
	bx r3
	.align 2, 0
_0200D994: .word sub_0200DB18
	thumb_func_end sub_0200D988

	thumb_func_start sub_0200D998
sub_0200D998: ; 0x0200D998
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0200D044
	ldr r0, [r6, #0x24]
	bl sub_0200AED4
	ldr r0, [r6, #0x28]
	bl sub_0200B0CC
	ldr r0, [r6, #0x54]
	mov r4, #0
	cmp r0, #0
	ble _0200D9D0
	add r5, r6, #0
_0200D9BA:
	ldr r0, [r5, #0x24]
	bl sub_0200A714
	ldr r0, [r5, #0xc]
	bl sub_0200A0D0
	ldr r0, [r6, #0x54]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0200D9BA
_0200D9D0:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200D0D4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200D998

	thumb_func_start sub_0200D9DC
sub_0200D9DC: ; 0x0200D9DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0200D9EE
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl sub_0200AF80
_0200D9EE:
	ldr r0, [r4]
	bl sub_02024758
	ldr r0, [r4, #8]
	bl sub_02009F24
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200D9DC

	thumb_func_start sub_0200DA04
sub_0200DA04: ; 0x0200DA04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	add r5, r6, #0
	lsl r4, r0, #2
	add r5, #0xc
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x30]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_0200A728
	cmp r0, #0
	bne _0200DA2A
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200DA2A:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r7]
	ldr r3, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	bl sub_0200A294
	add r5, r0, #0
	beq _0200DA60
	add r0, r6, r4
	ldr r0, [r0, #0x24]
	add r1, r5, #0
	bl sub_0200DAE4
	add r4, r0, #0
	cmp r4, #1
	beq _0200DA5A
	bl GF_AssertFail
_0200DA5A:
	add sp, #0x14
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0200DA60:
	bl GF_AssertFail
	cmp r5, #0
	beq _0200DA6E
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200DA6E:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DA04

	thumb_func_start sub_0200DA74
sub_0200DA74: ; 0x0200DA74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	add r5, r6, #0
	lsl r4, r0, #2
	add r5, #0xc
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x30]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_0200A728
	cmp r0, #0
	bne _0200DA9A
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200DA9A:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r7]
	ldr r3, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	bl sub_0200A540
	add r5, r0, #0
	beq _0200DAD0
	add r0, r6, r4
	ldr r0, [r0, #0x24]
	add r1, r5, #0
	bl sub_0200DAE4
	add r4, r0, #0
	cmp r4, #1
	beq _0200DACA
	bl GF_AssertFail
_0200DACA:
	add sp, #0x14
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0200DAD0:
	bl GF_AssertFail
	cmp r5, #0
	beq _0200DADE
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200DADE:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DA74

	thumb_func_start sub_0200DAE4
sub_0200DAE4: ; 0x0200DAE4
	push {r3, r4, r5, r6}
	ldr r6, [r0, #4]
	mov r3, #0
	cmp r6, #0
	ble _0200DB10
	ldr r5, [r0]
	add r4, r5, #0
_0200DAF2:
	ldr r2, [r4]
	cmp r2, #0
	bne _0200DB08
	lsl r2, r3, #2
	str r1, [r5, r2]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0200DB08:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, r6
	blt _0200DAF2
_0200DB10:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end sub_0200DAE4

	thumb_func_start sub_0200DB18
sub_0200DB18: ; 0x0200DB18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #0
	ble _0200DB60
	add r4, r6, #0
_0200DB2A:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200DB56
	bl sub_0200A7FC
	cmp r0, r7
	bne _0200DB56
	ldr r1, [r5]
	lsl r4, r6, #2
	ldr r0, [sp]
	ldr r1, [r1, r4]
	bl sub_0200A75C
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0200DB56:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200DB2A
_0200DB60:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DB18

	thumb_func_start sub_0200DB64
sub_0200DB64: ; 0x0200DB64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #0
	ble _0200DBB2
	add r4, r6, #0
_0200DB76:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200DBA8
	bl sub_0200A7FC
	cmp r0, r7
	bne _0200DBA8
	add r0, r7, #0
	bl sub_02021884
	ldr r1, [r5]
	lsl r4, r6, #2
	ldr r0, [sp]
	ldr r1, [r1, r4]
	bl sub_0200A75C
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0200DBA8:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200DB76
_0200DBB2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200DB64

	thumb_func_start sub_0200DBB8
sub_0200DBB8: ; 0x0200DBB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #0
	ble _0200DC06
	add r4, r6, #0
_0200DBCA:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200DBFC
	bl sub_0200A7FC
	cmp r0, r7
	bne _0200DBFC
	add r0, r7, #0
	bl sub_02022744
	ldr r1, [r5]
	lsl r4, r6, #2
	ldr r0, [sp]
	ldr r1, [r1, r4]
	bl sub_0200A75C
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0200DBFC:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200DBCA
_0200DC06:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200DBB8

	thumb_func_start sub_0200DC0C
sub_0200DC0C: ; 0x0200DC0C
	ldr r3, _0200DC14 ; =sub_020249B0
	mov r1, #1
	lsl r1, r1, #0xc
	bx r3
	.align 2, 0
_0200DC14: .word sub_020249B0
	thumb_func_end sub_0200DC0C

	thumb_func_start sub_0200DC18
sub_0200DC18: ; 0x0200DC18
	ldr r3, _0200DC20 ; =sub_0200DC0C
	ldr r0, [r0]
	bx r3
	nop
_0200DC20: .word sub_0200DC0C
	thumb_func_end sub_0200DC18

	thumb_func_start sub_0200DC24
sub_0200DC24: ; 0x0200DC24
	ldr r3, _0200DC30 ; =sub_020249B0
	mov r1, #2
	ldr r0, [r0]
	lsl r1, r1, #0xc
	bx r3
	nop
_0200DC30: .word sub_020249B0
	thumb_func_end sub_0200DC24

	thumb_func_start sub_0200DC34
sub_0200DC34: ; 0x0200DC34
	ldr r3, _0200DC3C ; =sub_020249B0
	ldr r0, [r0]
	bx r3
	nop
_0200DC3C: .word sub_020249B0
	thumb_func_end sub_0200DC34

	thumb_func_start sub_0200DC40
sub_0200DC40: ; 0x0200DC40
	ldr r3, _0200DC48 ; =sub_020248C8
	ldr r0, [r0]
	bx r3
	nop
_0200DC48: .word sub_020248C8
	thumb_func_end sub_0200DC40

	thumb_func_start sub_0200DC4C
sub_0200DC4C: ; 0x0200DC4C
	ldr r3, _0200DC54 ; =sub_020248F0
	ldr r0, [r0]
	bx r3
	nop
_0200DC54: .word sub_020248F0
	thumb_func_end sub_0200DC4C

	thumb_func_start sub_0200DC58
sub_0200DC58: ; 0x0200DC58
	ldr r3, _0200DC60 ; =sub_02024950
	ldr r0, [r0]
	bx r3
	nop
_0200DC60: .word sub_02024950
	thumb_func_end sub_0200DC58

	thumb_func_start sub_0200DC64
sub_0200DC64: ; 0x0200DC64
	ldr r3, _0200DC6C ; =sub_020249A8
	ldr r0, [r0]
	bx r3
	nop
_0200DC6C: .word sub_020249A8
	thumb_func_end sub_0200DC64

	thumb_func_start sub_0200DC70
sub_0200DC70: ; 0x0200DC70
	ldr r3, _0200DC74 ; =sub_0202484C
	bx r3
	.align 2, 0
_0200DC74: .word sub_0202484C
	thumb_func_end sub_0200DC70

	thumb_func_start sub_0200DC78
sub_0200DC78: ; 0x0200DC78
	ldr r3, _0200DC80 ; =sub_0200DC70
	ldr r0, [r0]
	bx r3
	nop
_0200DC80: .word sub_0200DC70
	thumb_func_end sub_0200DC78

	thumb_func_start sub_0200DC84
sub_0200DC84: ; 0x0200DC84
	ldr r3, _0200DC88 ; =sub_02024868
	bx r3
	.align 2, 0
_0200DC88: .word sub_02024868
	thumb_func_end sub_0200DC84

	thumb_func_start sub_0200DC8C
sub_0200DC8C: ; 0x0200DC8C
	ldr r3, _0200DC94 ; =sub_0200DC84
	ldr r0, [r0]
	bx r3
	nop
_0200DC94: .word sub_0200DC84
	thumb_func_end sub_0200DC8C

	thumb_func_start sub_0200DC98
sub_0200DC98: ; 0x0200DC98
	ldr r3, _0200DC9C ; =sub_02024B68
	bx r3
	.align 2, 0
_0200DC9C: .word sub_02024B68
	thumb_func_end sub_0200DC98

	thumb_func_start sub_0200DCA0
sub_0200DCA0: ; 0x0200DCA0
	ldr r3, _0200DCA8 ; =sub_0200DC98
	ldr r0, [r0]
	bx r3
	nop
_0200DCA8: .word sub_0200DC98
	thumb_func_end sub_0200DCA0

	thumb_func_start sub_0200DCAC
sub_0200DCAC: ; 0x0200DCAC
	ldr r3, _0200DCB4 ; =sub_02024964
	ldr r0, [r0]
	bx r3
	nop
_0200DCB4: .word sub_02024964
	thumb_func_end sub_0200DCAC

	thumb_func_start sub_0200DCB8
sub_0200DCB8: ; 0x0200DCB8
	ldr r3, _0200DCBC ; =sub_020249D4
	bx r3
	.align 2, 0
_0200DCBC: .word sub_020249D4
	thumb_func_end sub_0200DCB8

	thumb_func_start sub_0200DCC0
sub_0200DCC0: ; 0x0200DCC0
	ldr r3, _0200DCC8 ; =sub_0200DCB8
	ldr r0, [r0]
	bx r3
	nop
_0200DCC8: .word sub_0200DCB8
	thumb_func_end sub_0200DCC0

	thumb_func_start sub_0200DCCC
sub_0200DCCC: ; 0x0200DCCC
	ldr r3, _0200DCD0 ; =sub_020249F8
	bx r3
	.align 2, 0
_0200DCD0: .word sub_020249F8
	thumb_func_end sub_0200DCCC

	thumb_func_start sub_0200DCD4
sub_0200DCD4: ; 0x0200DCD4
	ldr r3, _0200DCDC ; =sub_0200DCCC
	ldr r0, [r0]
	bx r3
	nop
_0200DCDC: .word sub_0200DCCC
	thumb_func_end sub_0200DCD4

	thumb_func_start sub_0200DCE0
sub_0200DCE0: ; 0x0200DCE0
	ldr r3, _0200DCE4 ; =sub_02024830
	bx r3
	.align 2, 0
_0200DCE4: .word sub_02024830
	thumb_func_end sub_0200DCE0

	thumb_func_start sub_0200DCE8
sub_0200DCE8: ; 0x0200DCE8
	ldr r3, _0200DCF0 ; =sub_0200DCE0
	ldr r0, [r0]
	bx r3
	nop
_0200DCF0: .word sub_0200DCE0
	thumb_func_end sub_0200DCE8

	thumb_func_start sub_0200DCF4
sub_0200DCF4: ; 0x0200DCF4
	ldr r3, _0200DCF8 ; =sub_020248B8
	bx r3
	.align 2, 0
_0200DCF8: .word sub_020248B8
	thumb_func_end sub_0200DCF4

	thumb_func_start sub_0200DCFC
sub_0200DCFC: ; 0x0200DCFC
	ldr r3, _0200DD04 ; =sub_0200DCF4
	ldr r0, [r0]
	bx r3
	nop
_0200DD04: .word sub_0200DCF4
	thumb_func_end sub_0200DCFC

	thumb_func_start sub_0200DD08
sub_0200DD08: ; 0x0200DD08
	ldr r3, _0200DD0C ; =sub_02024A14
	bx r3
	.align 2, 0
_0200DD0C: .word sub_02024A14
	thumb_func_end sub_0200DD08

	thumb_func_start sub_0200DD10
sub_0200DD10: ; 0x0200DD10
	ldr r3, _0200DD18 ; =sub_0200DD08
	ldr r0, [r0]
	bx r3
	nop
_0200DD18: .word sub_0200DD08
	thumb_func_end sub_0200DD10

	thumb_func_start sub_0200DD1C
sub_0200DD1C: ; 0x0200DD1C
	ldr r3, _0200DD20 ; =sub_02024A74
	bx r3
	.align 2, 0
_0200DD20: .word sub_02024A74
	thumb_func_end sub_0200DD1C

	thumb_func_start sub_0200DD24
sub_0200DD24: ; 0x0200DD24
	ldr r3, _0200DD2C ; =sub_0200DD1C
	ldr r0, [r0]
	bx r3
	nop
_0200DD2C: .word sub_0200DD1C
	thumb_func_end sub_0200DD24

	thumb_func_start sub_0200DD30
sub_0200DD30: ; 0x0200DD30
	ldr r3, _0200DD38 ; =sub_02024ACC
	ldr r0, [r0]
	bx r3
	nop
_0200DD38: .word sub_02024ACC
	thumb_func_end sub_0200DD30

	thumb_func_start sub_0200DD3C
sub_0200DD3C: ; 0x0200DD3C
	ldr r3, _0200DD44 ; =sub_02024A04
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bx r3
	.align 2, 0
_0200DD44: .word sub_02024A04
	thumb_func_end sub_0200DD3C

	thumb_func_start sub_0200DD48
sub_0200DD48: ; 0x0200DD48
	ldr r3, _0200DD50 ; =sub_02024A0C
	ldr r0, [r0]
	bx r3
	nop
_0200DD50: .word sub_02024A0C
	thumb_func_end sub_0200DD48

	thumb_func_start sub_0200DD54
sub_0200DD54: ; 0x0200DD54
	ldr r3, _0200DD5C ; =sub_0200DD3C
	ldr r0, [r0]
	bx r3
	nop
_0200DD5C: .word sub_0200DD3C
	thumb_func_end sub_0200DD54

	thumb_func_start sub_0200DD60
sub_0200DD60: ; 0x0200DD60
	ldr r3, _0200DD64 ; =sub_02024ADC
	bx r3
	.align 2, 0
_0200DD64: .word sub_02024ADC
	thumb_func_end sub_0200DD60

	thumb_func_start sub_0200DD68
sub_0200DD68: ; 0x0200DD68
	ldr r3, _0200DD70 ; =sub_0200DD60
	ldr r0, [r0]
	bx r3
	nop
_0200DD70: .word sub_0200DD60
	thumb_func_end sub_0200DD68

	thumb_func_start sub_0200DD74
sub_0200DD74: ; 0x0200DD74
	ldr r3, _0200DD78 ; =sub_02024AF8
	bx r3
	.align 2, 0
_0200DD78: .word sub_02024AF8
	thumb_func_end sub_0200DD74

	thumb_func_start sub_0200DD7C
sub_0200DD7C: ; 0x0200DD7C
	ldr r3, _0200DD84 ; =sub_0200DD74
	ldr r0, [r0]
	bx r3
	nop
_0200DD84: .word sub_0200DD74
	thumb_func_end sub_0200DD7C

	thumb_func_start sub_0200DD88
sub_0200DD88: ; 0x0200DD88
	push {r3, r4, lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	add r4, r0, #0
	str r1, [sp, #4]
	bl sub_02024B60
	cmp r0, #2
	bne _0200DDA8
	mov r0, #3
	ldr r1, [sp, #4]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #4]
_0200DDA8:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020247D4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200DD88

	thumb_func_start sub_0200DDB8
sub_0200DDB8: ; 0x0200DDB8
	ldr r3, _0200DDC0 ; =sub_0200DD88
	ldr r0, [r0]
	bx r3
	nop
_0200DDC0: .word sub_0200DD88
	thumb_func_end sub_0200DDB8

	thumb_func_start sub_0200DDC4
sub_0200DDC4: ; 0x0200DDC4
	push {r4, r5, lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	add r5, r0, #0
	add r4, r3, #0
	str r1, [sp, #4]
	bl sub_02024B60
	cmp r0, #2
	bne _0200DDE2
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
_0200DDE2:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020247D4
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200DDC4

	thumb_func_start sub_0200DDF4
sub_0200DDF4: ; 0x0200DDF4
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0200DDC4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0200DDF4

	thumb_func_start sub_0200DE00
sub_0200DE00: ; 0x0200DE00
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl sub_020248AC
	add r4, r0, #0
	ldr r1, [r4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r6]
	add r0, r7, #0
	bl sub_02024B60
	cmp r0, #2
	ldr r1, [r4, #4]
	bne _0200DE38
	mov r0, #3
	lsl r0, r0, #0x12
	sub r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0200DE38:
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DE00

	thumb_func_start sub_0200DE44
sub_0200DE44: ; 0x0200DE44
	ldr r3, _0200DE4C ; =sub_0200DE00
	ldr r0, [r0]
	bx r3
	nop
_0200DE4C: .word sub_0200DE00
	thumb_func_end sub_0200DE44

	thumb_func_start sub_0200DE50
sub_0200DE50: ; 0x0200DE50
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	add r5, r2, #0
	add r7, r3, #0
	bl sub_020248AC
	add r4, r0, #0
	ldr r1, [r4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r6]
	ldr r0, [sp]
	bl sub_02024B60
	cmp r0, #2
	bne _0200DE86
	ldr r0, [r4, #4]
	sub r1, r0, r7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0200DE86:
	ldr r1, [r4, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DE50

	thumb_func_start sub_0200DE94
sub_0200DE94: ; 0x0200DE94
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0200DE50
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0200DE94

	thumb_func_start sub_0200DEA0
sub_0200DEA0: ; 0x0200DEA0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020248AC
	ldr r2, [r0]
	lsl r1, r5, #0xc
	add r1, r2, r1
	str r1, [sp]
	ldr r2, [r0, #4]
	lsl r1, r4, #0xc
	add r1, r2, r1
	str r1, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_020247D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200DEA0

	thumb_func_start sub_0200DED0
sub_0200DED0: ; 0x0200DED0
	ldr r3, _0200DED8 ; =sub_0200DEA0
	ldr r0, [r0]
	bx r3
	nop
_0200DED8: .word sub_0200DEA0
	thumb_func_end sub_0200DED0

	thumb_func_start sub_0200DEDC
sub_0200DEDC: ; 0x0200DEDC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020248AC
	ldr r1, [r0]
	add r1, r1, r4
	str r1, [sp]
	ldr r1, [r0, #4]
	add r1, r1, r6
	str r1, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	bl sub_020247D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0200DEDC

	thumb_func_start sub_0200DF08
sub_0200DF08: ; 0x0200DF08
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020248AC
	str r4, [sp]
	str r6, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	bl sub_020247D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0200DF08

	thumb_func_start sub_0200DF2C
sub_0200DF2C: ; 0x0200DF2C
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020248AC
	ldr r1, [r0]
	str r1, [r5]
	ldr r0, [r0, #4]
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200DF2C

	thumb_func_start sub_0200DF44
sub_0200DF44: ; 0x0200DF44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl sub_02024B60
	cmp r0, #2
	bne _0200DF64
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, r7
	bl sub_0200DF08
	pop {r3, r4, r5, r6, r7, pc}
_0200DF64:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200DF08
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DF44

	thumb_func_start sub_0200DF70
sub_0200DF70: ; 0x0200DF70
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0200DF2C
	ldr r0, [r5]
	bl sub_02024B60
	cmp r0, #2
	bne _0200DF8C
	ldr r0, [r4]
	sub r0, r0, r6
	str r0, [r4]
_0200DF8C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200DF70

	thumb_func_start sub_0200DF90
sub_0200DF90: ; 0x0200DF90
	ldr r3, _0200DF94 ; =sub_0202487C
	bx r3
	.align 2, 0
_0200DF94: .word sub_0202487C
	thumb_func_end sub_0200DF90

	thumb_func_start sub_0200DF98
sub_0200DF98: ; 0x0200DF98
	ldr r3, _0200DFA0 ; =sub_0200DF90
	ldr r0, [r0]
	bx r3
	nop
_0200DFA0: .word sub_0200DF90
	thumb_func_end sub_0200DF98

	thumb_func_start sub_0200DFA4
sub_0200DFA4: ; 0x0200DFA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	bl sub_020248B0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020F1ACC
	ldr r0, _0200E020 ; =0x45800000
	bls _0200DFD0
	add r1, r5, #0
	bl sub_020F22DC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020F1520
	b _0200DFDE
_0200DFD0:
	add r1, r5, #0
	bl sub_020F22DC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020F24C8
_0200DFDE:
	bl sub_020F2104
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0
	bl sub_020F1ACC
	ldr r0, _0200E020 ; =0x45800000
	bls _0200E002
	add r1, r6, #0
	bl sub_020F22DC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020F1520
	b _0200E010
_0200E002:
	add r1, r6, #0
	bl sub_020F22DC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020F24C8
_0200E010:
	bl sub_020F2104
	str r0, [r4, #4]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020247F4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200E020: .word 0x45800000
	thumb_func_end sub_0200DFA4

	thumb_func_start sub_0200E024
sub_0200E024: ; 0x0200E024
	ldr r3, _0200E02C ; =sub_0200DFA4
	ldr r0, [r0]
	bx r3
	nop
_0200E02C: .word sub_0200DFA4
	thumb_func_end sub_0200E024

	thumb_func_start sub_0200E030
sub_0200E030: ; 0x0200E030
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020248B0
	add r6, r0, #0
	ldr r0, [r6]
	bl sub_020F2178
	ldr r1, _0200E05C ; =0x45800000
	bl sub_020F1CC8
	str r0, [r5]
	ldr r0, [r6, #4]
	bl sub_020F2178
	ldr r1, _0200E05C ; =0x45800000
	bl sub_020F1CC8
	str r0, [r4]
	pop {r4, r5, r6, pc}
	nop
_0200E05C: .word 0x45800000
	thumb_func_end sub_0200E030

	thumb_func_start sub_0200E060
sub_0200E060: ; 0x0200E060
	ldr r3, _0200E068 ; =sub_0200E030
	ldr r0, [r0]
	bx r3
	nop
_0200E068: .word sub_0200E030
	thumb_func_end sub_0200E060

	thumb_func_start sub_0200E06C
sub_0200E06C: ; 0x0200E06C
	ldr r3, _0200E070 ; =sub_02024818
	bx r3
	.align 2, 0
_0200E070: .word sub_02024818
	thumb_func_end sub_0200E06C

	thumb_func_start sub_0200E074
sub_0200E074: ; 0x0200E074
	ldr r3, _0200E07C ; =sub_0200E06C
	ldr r0, [r0]
	bx r3
	nop
_0200E07C: .word sub_0200E06C
	thumb_func_end sub_0200E074

	thumb_func_start sub_0200E080
sub_0200E080: ; 0x0200E080
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_020248B4
	add r0, r0, r5
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r4, #0
	bl sub_02024818
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200E080

	thumb_func_start sub_0200E098
sub_0200E098: ; 0x0200E098
	ldr r3, _0200E0A0 ; =sub_0200E080
	ldr r0, [r0]
	bx r3
	nop
_0200E0A0: .word sub_0200E080
	thumb_func_end sub_0200E098

	thumb_func_start sub_0200E0A4
sub_0200E0A4: ; 0x0200E0A4
	ldr r3, _0200E0A8 ; =sub_020248B4
	bx r3
	.align 2, 0
_0200E0A8: .word sub_020248B4
	thumb_func_end sub_0200E0A4

	thumb_func_start sub_0200E0AC
sub_0200E0AC: ; 0x0200E0AC
	ldr r3, _0200E0B4 ; =sub_0200E0A4
	ldr r0, [r0]
	bx r3
	nop
_0200E0B4: .word sub_0200E0A4
	thumb_func_end sub_0200E0AC

	thumb_func_start sub_0200E0B8
sub_0200E0B8: ; 0x0200E0B8
	ldr r3, _0200E0BC ; =sub_02024890
	bx r3
	.align 2, 0
_0200E0BC: .word sub_02024890
	thumb_func_end sub_0200E0B8

	thumb_func_start sub_0200E0C0
sub_0200E0C0: ; 0x0200E0C0
	ldr r3, _0200E0C8 ; =sub_0200E0B8
	ldr r0, [r0]
	bx r3
	nop
_0200E0C8: .word sub_0200E0B8
	thumb_func_end sub_0200E0C0

	thumb_func_start sub_0200E0CC
sub_0200E0CC: ; 0x0200E0CC
	push {lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [r0]
	add r1, sp, #0
	bl sub_020247E4
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_0200E0CC

	thumb_func_start sub_0200E0E8
sub_0200E0E8: ; 0x0200E0E8
	ldr r3, _0200E0F0 ; =sub_02024B38
	ldr r0, [r0]
	bx r3
	nop
_0200E0F0: .word sub_02024B38
	thumb_func_end sub_0200E0E8

	thumb_func_start sub_0200E0F4
sub_0200E0F4: ; 0x0200E0F4
	ldr r3, _0200E0F8 ; =sub_02024B78
	bx r3
	.align 2, 0
_0200E0F8: .word sub_02024B78
	thumb_func_end sub_0200E0F4

	thumb_func_start sub_0200E0FC
sub_0200E0FC: ; 0x0200E0FC
	ldr r3, _0200E104 ; =sub_0200E0F4
	ldr r0, [r0]
	bx r3
	nop
_0200E104: .word sub_0200E0F4
	thumb_func_end sub_0200E0FC

	thumb_func_start sub_0200E108
sub_0200E108: ; 0x0200E108
	ldr r3, _0200E10C ; =sub_02024BAC
	bx r3
	.align 2, 0
_0200E10C: .word sub_02024BAC
	thumb_func_end sub_0200E108

	thumb_func_start sub_0200E110
sub_0200E110: ; 0x0200E110
	ldr r3, _0200E118 ; =sub_0200E108
	ldr r0, [r0]
	bx r3
	nop
_0200E118: .word sub_0200E108
	thumb_func_end sub_0200E110

	thumb_func_start sub_0200E11C
sub_0200E11C: ; 0x0200E11C
	ldr r3, _0200E124 ; =sub_02024C9C
	ldr r0, [r0]
	bx r3
	nop
_0200E124: .word sub_02024C9C
	thumb_func_end sub_0200E11C

	thumb_func_start sub_0200E128
sub_0200E128: ; 0x0200E128
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0200A728
	cmp r0, #0
	bne _0200E146
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200E146:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0200A1D8
	add r5, r0, #0
	beq _0200E174
	bl sub_0200AD64
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200DAE4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200E174:
	bl GF_AssertFail
	cmp r5, #0
	beq _0200E182
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200E182:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E128

	thumb_func_start sub_0200E188
sub_0200E188: ; 0x0200E188
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0200A728
	cmp r0, #0
	bne _0200E1A6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200E1A6:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0200A1D8
	add r5, r0, #0
	beq _0200E1D4
	bl sub_0200AE18
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200DAE4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200E1D4:
	bl GF_AssertFail
	cmp r5, #0
	beq _0200E1E2
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200E1E2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E188

	thumb_func_start sub_0200E1E8
sub_0200E1E8: ; 0x0200E1E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0200A728
	cmp r0, #0
	bne _0200E206
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200E206:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0200A3C8
	add r5, r0, #0
	beq _0200E234
	bl sub_0200AE18
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200DAE4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200E234:
	bl GF_AssertFail
	cmp r5, #0
	beq _0200E242
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200E242:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E1E8

	thumb_func_start sub_0200E248
sub_0200E248: ; 0x0200E248
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_0200A7BC
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, r7, #0
	bl sub_0200A2E4
	add r0, r6, #0
	bl sub_0200AE8C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E248

	thumb_func_start sub_0200E27C
sub_0200E27C: ; 0x0200E27C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_0200A7BC
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r2, r7, #0
	bl sub_0200A350
	add r0, r6, #0
	bl sub_0200B084
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E27C

	thumb_func_start sub_0200E2B0
sub_0200E2B0: ; 0x0200E2B0
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0200E2B0

	thumb_func_start sub_0200E2B4
sub_0200E2B4: ; 0x0200E2B4
	str r1, [r0]
	bx lr
	thumb_func_end sub_0200E2B4

	thumb_func_start sub_0200E2B8
sub_0200E2B8: ; 0x0200E2B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_0200A7BC
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, r7, #0
	bl sub_0200A590
	add r0, r6, #0
	bl sub_0200AE8C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E2B8

	thumb_func_start sub_0200E2EC
sub_0200E2EC: ; 0x0200E2EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_0200A7BC
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r2, r7, #0
	bl sub_0200A5FC
	add r0, r6, #0
	bl sub_0200B084
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E2EC

	thumb_func_start sub_0200E320
sub_0200E320: ; 0x0200E320
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200E338 ; =0x021D110C
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x18]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201F8C0
	pop {r3, r4, r5, pc}
	nop
_0200E338: .word 0x021D110C
	thumb_func_end sub_0200E320

	thumb_func_start sub_0200E33C
sub_0200E33C: ; 0x0200E33C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200E354 ; =0x021D110C
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x1c]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201F8C0
	pop {r3, r4, r5, pc}
	nop
_0200E354: .word 0x021D110C
	thumb_func_end sub_0200E33C

	thumb_func_start sub_0200E358
sub_0200E358: ; 0x0200E358
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200E370 ; =0x021D110C
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x24]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201F8C0
	pop {r3, r4, r5, pc}
	nop
_0200E370: .word 0x021D110C
	thumb_func_end sub_0200E358

	thumb_func_start sub_0200E374
sub_0200E374: ; 0x0200E374
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200E38C ; =0x021D110C
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x20]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201F8C0
	pop {r3, r4, r5, pc}
	nop
_0200E38C: .word 0x021D110C
	thumb_func_end sub_0200E374

	thumb_func_start sub_0200E390
sub_0200E390: ; 0x0200E390
	ldr r3, _0200E394 ; =sub_0201F954
	bx r3
	.align 2, 0
_0200E394: .word sub_0201F954
	thumb_func_end sub_0200E390

	thumb_func_start sub_0200E398
sub_0200E398: ; 0x0200E398
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	cmp r3, #0
	str r2, [sp]
	bne _0200E3BE
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x20]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020078F0
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0200E3BE:
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r1, #1
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020078F0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200E398

	thumb_func_start sub_0200E3D8
sub_0200E3D8: ; 0x0200E3D8
	mov r0, #0x19
	bx lr
	thumb_func_end sub_0200E3D8

	thumb_func_start sub_0200E3DC
sub_0200E3DC: ; 0x0200E3DC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	add r5, r1, #0
	add r4, r3, #0
	cmp r0, #0
	beq _0200E3F2
	mov r1, #1
	b _0200E3F4
_0200E3F2:
	mov r1, #0
_0200E3F4:
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r3, r5, #0
	bl sub_020078F0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	cmp r0, #2
	bne _0200E416
	mov r1, #0x2e
	b _0200E418
_0200E416:
	mov r1, #0x19
_0200E418:
	cmp r5, #4
	bhs _0200E432
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x24]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl sub_02007938
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0200E432:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x24]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl sub_02007938
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200E3DC

	thumb_func_start sub_0200E448
sub_0200E448: ; 0x0200E448
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	ldr r5, [sp, #0x40]
	sub r7, r2, #1
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x10]
	sub r6, r2, #1
	lsl r2, r7, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	lsl r3, r6, #0x18
	str r5, [sp, #0xc]
	add r2, sp, #0x28
	ldrh r2, [r2, #0x1c]
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add r1, sp, #0x28
	ldrh r4, [r1, #0x1c]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r1, #0x10]
	add r2, r4, #1
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x18]
	lsr r2, r2, #0x10
	bl sub_0201C8C4
	add r0, sp, #0x28
	ldrb r1, [r0, #0x10]
	ldr r0, [sp, #0x18]
	add r2, r4, #2
	add r0, r0, r1
	str r0, [sp, #0x20]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x1c]
	add r2, r4, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x14]
	lsl r2, r2, #0x10
	lsl r3, r6, #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x14]
	add r2, r4, #5
	lsl r2, r2, #0x10
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add r0, sp, #0x28
	ldrb r1, [r0, #0x14]
	ldr r0, [sp, #0x1c]
	add r2, r4, #6
	add r7, r0, r1
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r6, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	add r2, r4, #7
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x18]
	lsr r2, r2, #0x10
	bl sub_0201C8C4
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	add r4, #8
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200E448

	thumb_func_start sub_0200E580
sub_0200E580: ; 0x0200E580
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201EE8C
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201EE98
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0201EE9C
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0201EE90
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl sub_0201EE94
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	str r1, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x18]
	bl sub_0200E448
	cmp r4, #0
	bne _0200E5D0
	add r0, r5, #0
	bl sub_0201D578
_0200E5D0:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E580

	thumb_func_start sub_0200E5D4
sub_0200E5D4: ; 0x0200E5D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201EE8C
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201EE98
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201EE9C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201EE90
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0201EE94
	sub r1, r7, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x14]
	add r0, r0, #2
	add r1, r1, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	sub r3, r6, #1
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	cmp r4, #0
	bne _0200E636
	add r0, r5, #0
	bl sub_0201D8C8
_0200E636:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200E5D4

	thumb_func_start sub_0200E63C
sub_0200E63C: ; 0x0200E63C
	add r0, r0, #2
	bx lr
	thumb_func_end sub_0200E63C

	thumb_func_start sub_0200E640
sub_0200E640: ; 0x0200E640
	add r0, #0x1a
	bx lr
	thumb_func_end sub_0200E640

	thumb_func_start sub_0200E644
sub_0200E644: ; 0x0200E644
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x18
	ldrb r7, [r0, #0x10]
	add r6, r2, #0
	add r5, r1, #0
	add r0, r7, #0
	add r4, r3, #0
	bl sub_0200E63C
	add r1, r0, #0
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r3, r5, #0
	bl sub_020078F0
	cmp r5, #4
	bhs _0200E694
	add r0, r7, #0
	bl sub_0200E640
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl sub_02007938
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0200E694:
	add r0, r7, #0
	bl sub_0200E640
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl sub_02007938
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200E644

	thumb_func_start sub_0200E6B4
sub_0200E6B4: ; 0x0200E6B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r2, [sp, #0x4c]
	add r7, r0, #0
	str r2, [sp, #0x4c]
	ldr r2, [sp, #0x18]
	ldr r5, [sp, #0x50]
	sub r6, r2, #1
	ldr r2, [sp, #0x14]
	sub r2, r2, #2
	str r2, [sp, #0x28]
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r2, sp, #0x38
	lsl r3, r3, #0x18
	ldrh r2, [r2, #0x1c]
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	add r0, sp, #0x38
	ldrh r4, [r0, #0x1c]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x24]
	str r5, [sp, #0xc]
	add r2, r4, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x38
	ldrb r0, [r0, #0x10]
	add r2, r4, #2
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	lsr r2, r2, #0x10
	bl sub_0201C8C4
	add r0, sp, #0x38
	ldrb r1, [r0, #0x10]
	ldr r0, [sp, #0x14]
	add r2, r4, #3
	add r0, r0, r1
	str r0, [sp, #0x2c]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x2c]
	add r2, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x20]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x2c]
	add r2, r4, #5
	add r0, r0, #2
	str r0, [sp, #0x1c]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x1c]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	add r2, r4, #6
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x24]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	add r2, r4, #7
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x2c]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #9
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x20]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #0xa
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #0xb
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add r2, r4, #0
	ldr r3, [sp, #0x28]
	add r2, #0xc
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x4c]
	lsr r2, r2, #0x10
	add r6, r1, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x24]
	str r5, [sp, #0xc]
	add r2, #0xd
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x38
	ldrb r0, [r0, #0x10]
	add r2, r4, #0
	add r2, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	lsr r2, r2, #0x10
	bl sub_0201C8C4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	add r2, #0xf
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	add r2, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x1c]
	str r5, [sp, #0xc]
	add r4, #0x11
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200E6B4

	thumb_func_start sub_0200E948
sub_0200E948: ; 0x0200E948
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_0201EE8C
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201EE98
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0201EE9C
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0201EE90
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201EE94
	str r4, [sp]
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_0200E6B4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200E948

	thumb_func_start sub_0200E998
sub_0200E998: ; 0x0200E998
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r1, r6, #0
	add r2, r3, #0
	add r5, r0, #0
	bl sub_0200E948
	cmp r4, #0
	bne _0200E9B2
	add r0, r5, #0
	bl sub_0201D578
_0200E9B2:
	add r0, r6, #0
	bl sub_020027F0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0200E998

	thumb_func_start sub_0200E9BC
sub_0200E9BC: ; 0x0200E9BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201EE8C
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201EE98
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201EE9C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201EE90
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0201EE94
	sub r1, r7, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x14]
	add r0, r0, #2
	add r1, r1, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	sub r3, r6, #2
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	cmp r4, #0
	bne _0200EA1E
	add r0, r5, #0
	bl sub_0201D8C8
_0200EA1E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200E9BC

	thumb_func_start sub_0200EA24
sub_0200EA24: ; 0x0200EA24
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r1, #0
	str r0, [sp, #0x1c]
	add r1, sp, #0x14
	strh r3, [r1, #0xc]
	add r4, r2, #0
	add r0, sp, #0x20
	ldrh r2, [r0, #0x10]
	add r3, r4, #0
	strh r2, [r1, #0xe]
	ldr r2, [sp, #0x34]
	str r2, [sp, #0x14]
	ldrh r2, [r0, #0x18]
	strh r2, [r1, #4]
	ldrh r2, [r0, #0x1c]
	strh r2, [r1, #6]
	ldrh r1, [r0, #0x20]
	add r2, r5, #0
	str r1, [sp]
	ldrh r1, [r0, #0x24]
	str r1, [sp, #4]
	ldrh r1, [r0, #0x28]
	str r1, [sp, #8]
	ldrh r0, [r0, #0x2c]
	add r1, sp, #0x14
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	bl sub_0201CE08
	add sp, #0x24
	pop {r4, r5, pc}
	thumb_func_end sub_0200EA24

	thumb_func_start sub_0200EA68
sub_0200EA68: ; 0x0200EA68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r2, [sp, #0x24]
	str r3, [sp, #0x28]
	str r0, [sp, #0x20]
	ldr r0, [r0]
	add r7, r1, #0
	bl sub_0201ACAC
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_0201EE8C
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	lsl r0, r0, #7
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x30]
	add r0, r6, #0
	bl sub_0201AA8C
	add r5, r0, #0
	ldr r0, [sp, #0x2c]
	bl sub_0201CB4C
	add r4, r0, #0
	str r6, [sp]
	mov r0, #0x26
	add r1, r7, #0
	mov r2, #0
	add r3, sp, #0x44
	bl sub_020079BC
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	mov r7, #0
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	ble _0200EB12
	ldr r0, [sp, #0x24]
	add r0, #0xa
	lsl r0, r0, #5
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x24]
	add r0, #0xb
	lsl r0, r0, #5
	str r0, [sp, #0x40]
_0200EACA:
	ldr r1, [sp, #0x3c]
	lsl r6, r7, #7
	add r0, r5, r6
	add r1, r4, r1
	mov r2, #0x20
	bl sub_020E5AD8
	add r0, r6, #0
	ldr r1, [sp, #0x40]
	add r0, #0x20
	add r0, r5, r0
	add r1, r4, r1
	mov r2, #0x20
	bl sub_020E5AD8
	add r0, r6, #0
	ldr r1, [sp, #0x3c]
	add r0, #0x40
	add r0, r5, r0
	add r1, r4, r1
	mov r2, #0x20
	bl sub_020E5AD8
	ldr r1, [sp, #0x40]
	add r6, #0x60
	add r0, r5, r6
	add r1, r4, r1
	mov r2, #0x20
	bl sub_020E5AD8
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x28]
	cmp r7, r0
	blt _0200EACA
_0200EB12:
	add r1, sp, #0x50
	ldrb r2, [r1, #0x14]
	mov r3, #0x10
	ldr r0, [sp, #0x28]
	sub r4, r3, r2
	mul r0, r4
	ldrb r1, [r1, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r3, r3, r1
	lsl r3, r3, #0x18
	str r0, [sp]
	lsr r3, r3, #0x18
	str r5, [sp, #4]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	mov r4, #0
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r3, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x38]
	bl sub_0200EA24
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x30]
	add r0, #0x12
	str r0, [sp, #0x24]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x2c]
	ldr r0, [r0]
	add r2, r5, #0
	bl sub_0201C0C0
	ldr r0, [sp, #0x34]
	bl sub_0201AB0C
	add r0, r5, #0
	bl sub_0201AB0C
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200EA68

	thumb_func_start sub_0200EB68
sub_0200EB68: ; 0x0200EB68
	push {r3, lr}
	sub sp, #8
	mov r3, #3
	add r2, r1, #0
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0x16
	bl sub_0200EA68
	add sp, #8
	pop {r3, pc}
	thumb_func_end sub_0200EB68

	thumb_func_start sub_0200EB80
sub_0200EB80: ; 0x0200EB80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, sp, #0x18
	ldrb r0, [r0, #0x10]
	add r7, r2, #0
	add r5, r3, #0
	bl sub_0200E63C
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x26
	add r3, sp, #0x10
	bl sub_020079BC
	str r0, [sp, #0xc]
	mov r1, #9
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #6
	bl sub_0201AA8C
	ldr r1, [sp, #0x10]
	mov r2, #9
	ldr r1, [r1, #0x14]
	lsl r2, r2, #6
	add r4, r0, #0
	bl sub_020E5AD8
	mov r0, #9
	mov r3, #0
	lsl r0, r0, #6
	mov r1, #0xf
_0200EBC6:
	ldrb r2, [r4, r3]
	lsl r6, r2, #0x14
	and r2, r1
	lsl r2, r2, #0x18
	lsr r6, r6, #0x18
	lsr r2, r2, #0x18
	cmp r6, #0
	bne _0200EBD8
	add r6, r5, #0
_0200EBD8:
	cmp r2, #0
	bne _0200EBDE
	add r2, r5, #0
_0200EBDE:
	lsl r6, r6, #4
	orr r2, r6
	strb r2, [r4, r3]
	add r3, r3, #1
	cmp r3, r0
	blo _0200EBC6
	str r7, [sp]
	mov r3, #9
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r4, #0
	lsl r3, r3, #6
	bl sub_0201C0C0
	ldr r0, [sp, #0xc]
	bl sub_0201AB0C
	add r0, r4, #0
	bl sub_0201AB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200EB80

	thumb_func_start sub_0200EC0C
sub_0200EC0C: ; 0x0200EC0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	add r5, r2, #0
	mov r0, #0xf
	add r6, r1, #0
	add r7, r3, #0
	str r5, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r1, #0
	ldr r4, [sp, #0x38]
	str r1, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, #0x24
	add r3, r6, #0
	str r4, [sp, #0xc]
	bl sub_020078F0
	mov r0, #0x24
	mov r1, #1
	add r2, r4, #0
	bl sub_02007524
	add r1, sp, #0x18
	str r0, [sp, #0x14]
	bl sub_020B7140
	add r2, sp, #0x20
	ldr r1, [sp, #0x18]
	ldrb r2, [r2, #0x10]
	lsl r3, r7, #0x15
	ldr r1, [r1, #0xc]
	lsl r2, r2, #5
	add r1, r1, r2
	add r0, r6, #0
	mov r2, #0x20
	lsr r3, r3, #0x10
	bl sub_0201C260
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl sub_0201AB80
	add r0, sp, #0x20
	ldrb r3, [r0, #0x10]
	cmp r3, #1
	bhi _0200EC80
	ldrh r0, [r0, #0x14]
	add r5, #0x1e
	lsl r2, r5, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	lsr r2, r2, #0x10
	str r4, [sp, #4]
	bl sub_0200EC84
_0200EC80:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200EC0C

	thumb_func_start sub_0200EC84
sub_0200EC84: ; 0x0200EC84
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [sp, #0x20]
	cmp r3, #0
	bne _0200EC98
	add r1, #0x21
	lsl r0, r1, #0x10
	b _0200EC9C
_0200EC98:
	add r0, r1, #2
	lsl r0, r0, #0x10
_0200EC9C:
	lsr r1, r0, #0x10
	mov r0, #3
	str r2, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	add r2, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0x24
	add r3, r4, #0
	bl sub_020078F0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200EC84

	thumb_func_start sub_0200ECBC
sub_0200ECBC: ; 0x0200ECBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	ldr r6, [sp, #0x5c]
	sub r7, r2, #1
	ldr r2, [sp, #0x18]
	ldr r5, [sp, #0x60]
	str r2, [sp, #0x34]
	sub r2, #9
	str r2, [sp, #0x34]
	lsl r2, r7, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r3, [sp, #0x34]
	str r5, [sp, #0xc]
	add r2, sp, #0x48
	lsl r3, r3, #0x18
	ldrh r2, [r2, #0x1c]
	lsr r3, r3, #0x18
	str r0, [sp, #0x10]
	bl sub_0201C8C4
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x30]
	sub r0, #8
	str r0, [sp, #0x30]
	add r0, sp, #0x48
	ldrh r4, [r0, #0x1c]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x30]
	str r5, [sp, #0xc]
	add r2, r4, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add r0, sp, #0x48
	ldrb r0, [r0, #0x10]
	add r2, r4, #2
	lsl r2, r2, #0x10
	str r0, [sp, #0x3c]
	add r0, r0, #7
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	lsr r2, r2, #0x10
	sub r0, r0, #7
	str r0, [sp, #0x20]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add r2, r4, #3
	lsl r2, r2, #0x10
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	lsr r2, r2, #0x10
	add r0, r1, r0
	str r0, [sp, #0x38]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x38]
	str r5, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x38]
	add r2, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x2c]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x38]
	add r0, r0, #2
	str r0, [sp, #0x28]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r2, r4, #5
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x34]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	add r2, r4, #6
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x30]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	add r2, r4, #7
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [sp, #0x18]
	add r2, #8
	sub r3, r3, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x38]
	str r5, [sp, #0xc]
	add r2, #9
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	add r2, #0xa
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r2, #0xb
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	add r6, r0, r6
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x34]
	str r5, [sp, #0xc]
	add r2, #0xc
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x30]
	str r5, [sp, #0xc]
	add r2, #0xd
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r2, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	add r2, #0xe
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x38]
	str r5, [sp, #0xc]
	add r2, #0xf
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	add r2, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r4, #0x11
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200ECBC

	thumb_func_start sub_0200EF84
sub_0200EF84: ; 0x0200EF84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #0x10]
	add r7, r0, #0
	str r2, [sp, #0x14]
	bl sub_0201EE8C
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl sub_0201EE98
	sub r0, r0, #7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	add r0, r7, #0
	bl sub_0201EE9C
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x24]
_0200EFAE:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	add r3, r2, #0
	add r0, r1, r0
	mov r1, #6
	mul r3, r1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x18
	mov r4, #0
	add r5, r1, r3
	lsr r6, r0, #0x18
_0200EFC6:
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0xc]
	add r2, r4, r5
	add r3, r3, r4
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r7]
	ldr r1, [sp, #0x20]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _0200EFC6
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
	cmp r0, #4
	blo _0200EFAE
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200EF84

	thumb_func_start sub_0200F004
sub_0200F004: ; 0x0200F004
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	str r1, [sp, #0x10]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201EE8C
	str r0, [sp, #0x14]
	add r0, sp, #0x30
	ldrb r0, [r0, #0x10]
	cmp r0, #1
	bhi _0200F062
	add r0, r4, #0
	bl sub_0201EE98
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_0201EE9C
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0201EE90
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201EE94
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_0200ECBC
	add r1, r6, #0
	add r1, #0x1e
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0200EF84
	b _0200F094
_0200F062:
	add r0, r4, #0
	bl sub_0201EE98
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_0201EE9C
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl sub_0201EE90
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201EE94
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200E6B4
_0200F094:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0200F0A0
	add r0, r4, #0
	bl sub_0201D578
_0200F0A0:
	add r0, r6, #0
	bl sub_020027F0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0200F004

	thumb_func_start sub_0200F0AC
sub_0200F0AC: ; 0x0200F0AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0x20]
	ldr r0, [r0]
	str r1, [sp, #0x24]
	bl sub_0201ACAC
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x20]
	bl sub_0201EE8C
	bl sub_0201CB4C
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	ldr r1, _0200F1C4 ; =0x0000048C
	bl sub_0201AA8C
	ldr r1, [sp, #0x24]
	add r4, r0, #0
	ldr r0, _0200F1C8 ; =0x00000404
	add r1, #0x12
	lsl r1, r1, #5
	add r0, r4, r0
	add r1, r5, r1
	mov r2, #0x80
	bl sub_020E5AD8
	ldr r0, [sp, #0x28]
	mov r1, #0x80
	bl sub_0201AA8C
	ldr r1, [sp, #0x24]
	mov r2, #0x20
	add r1, #0xa
	lsl r1, r1, #5
	str r1, [sp, #0x2c]
	add r1, r5, r1
	add r6, r0, #0
	bl sub_020E5AD8
	ldr r0, [sp, #0x24]
	mov r2, #0x20
	add r0, #0xb
	lsl r7, r0, #5
	add r0, r6, #0
	add r0, #0x20
	add r1, r5, r7
	bl sub_020E5AD8
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	add r0, #0x40
	add r1, r5, r1
	mov r2, #0x20
	bl sub_020E5AD8
	add r0, r6, #0
	add r0, #0x60
	add r1, r5, r7
	mov r2, #0x20
	bl sub_020E5AD8
	mov r5, #0
	add r7, r4, #4
_0200F12E:
	lsl r0, r5, #7
	add r0, r7, r0
	add r1, r6, #0
	mov r2, #0x80
	bl sub_020E5AD8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0200F12E
	add r0, r6, #0
	bl sub_0201AB0C
	ldr r0, [sp, #0x28]
	mov r1, #0x17
	str r0, [sp]
	mov r0, #0x26
	mov r2, #0
	add r3, sp, #0x30
	bl sub_020079BC
	mov r2, #0x80
	add r5, r0, #0
	str r2, [sp]
	add r0, r4, #4
	str r0, [sp, #4]
	mov r3, #0x10
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	bl sub_0200EA24
	add r0, r5, #0
	bl sub_0201AB0C
	ldr r0, [sp, #0x20]
	ldr r1, _0200F1CC ; =0x00000484
	str r0, [r4]
	ldr r0, [sp, #0x24]
	mov r2, #0
	strh r0, [r4, r1]
	add r0, r1, #2
	strb r2, [r4, r0]
	add r0, r1, #3
	ldrb r3, [r4, r0]
	mov r0, #0x7f
	bic r3, r0
	add r0, r1, #3
	strb r3, [r4, r0]
	add r0, r1, #4
	ldrb r3, [r4, r0]
	mov r0, #3
	bic r3, r0
	add r0, r1, #4
	strb r3, [r4, r0]
	ldr r0, _0200F1D0 ; =sub_0200F3D0
	add r1, r4, #0
	bl sub_0200E33C
	add r0, r4, #0
	mov r1, #1
	bl sub_0200F1D4
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0200F1C4: .word 0x0000048C
_0200F1C8: .word 0x00000404
_0200F1CC: .word 0x00000484
_0200F1D0: .word sub_0200F3D0
	thumb_func_end sub_0200F0AC

	thumb_func_start sub_0200F1D4
sub_0200F1D4: ; 0x0200F1D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	bl sub_0201EE8C
	add r4, r0, #0
	ldr r0, [r5]
	bl sub_0201EE98
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl sub_0201EE9C
	str r0, [sp, #0x1c]
	ldr r0, [r5]
	bl sub_0201EE90
	str r0, [sp, #0x20]
	cmp r6, #2
	bne _0200F2DE
	ldr r2, _0200F3CC ; =0x00000484
	add r1, r4, #0
	ldrh r0, [r5, r2]
	sub r2, #0x80
	add r2, r5, r2
	add r0, #0x12
	str r0, [sp]
	ldr r0, [r5]
	mov r3, #0x80
	ldr r0, [r0]
	bl sub_0201C0C0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r7, r0, #2
	ldr r0, [sp, #0x20]
	ldr r2, _0200F3CC ; =0x00000484
	add r6, r1, r0
	add r0, r6, #1
	str r0, [sp, #0x14]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r5, r2]
	ldr r0, [r5]
	ldr r3, [sp, #0x14]
	add r2, #0xa
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200F3CC ; =0x00000484
	ldr r0, [r5]
	ldrh r2, [r5, r2]
	add r6, r6, #2
	lsl r3, r6, #0x18
	add r2, #0xb
	lsl r2, r2, #0x10
	ldr r0, [r0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x14]
	add r7, r0, #3
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200F3CC ; =0x00000484
	ldr r0, [r5]
	ldrh r2, [r5, r2]
	lsl r3, r3, #0x18
	ldr r0, [r0]
	add r2, #0xa
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200F3CC ; =0x00000484
	ldr r0, [r5]
	ldrh r2, [r5, r2]
	lsl r3, r6, #0x18
	ldr r0, [r0]
	add r2, #0xb
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_0201BF7C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0200F2DE:
	ldr r3, _0200F3CC ; =0x00000484
	add r2, r5, #4
	ldrh r0, [r5, r3]
	add r3, r3, #3
	add r1, r4, #0
	add r0, #0x12
	str r0, [sp]
	ldrb r3, [r5, r3]
	ldr r0, [r5]
	lsl r3, r3, #0x19
	lsr r3, r3, #0x19
	lsl r3, r3, #7
	add r2, r2, r3
	ldr r0, [r0]
	mov r3, #0x80
	bl sub_0201C0C0
	cmp r6, #0
	beq _0200F3C6
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r7, r0, #2
	ldr r0, [sp, #0x20]
	ldr r2, _0200F3CC ; =0x00000484
	add r6, r1, r0
	add r0, r6, #1
	str r0, [sp, #0x10]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r5, r2]
	ldr r0, [r5]
	ldr r3, [sp, #0x10]
	add r2, #0x12
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200F3CC ; =0x00000484
	ldr r0, [r5]
	ldrh r2, [r5, r2]
	add r6, r6, #2
	lsl r3, r6, #0x18
	add r2, #0x13
	lsl r2, r2, #0x10
	ldr r0, [r0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x10]
	add r7, r0, #3
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200F3CC ; =0x00000484
	ldr r0, [r5]
	ldrh r2, [r5, r2]
	lsl r3, r3, #0x18
	ldr r0, [r0]
	add r2, #0x14
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200F3CC ; =0x00000484
	ldr r0, [r5]
	ldrh r2, [r5, r2]
	lsl r3, r6, #0x18
	ldr r0, [r0]
	add r2, #0x15
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_0201BF7C
_0200F3C6:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0200F3CC: .word 0x00000484
	thumb_func_end sub_0200F1D4

	thumb_func_start sub_0200F3D0
sub_0200F3D0: ; 0x0200F3D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0200F438 ; =0x00000488
	ldrb r2, [r1, r0]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	beq _0200F3F2
	cmp r2, #1
	bne _0200F3EA
	add r0, r1, #0
	mov r1, #2
	bl sub_0200F1D4
_0200F3EA:
	add r0, r4, #0
	bl sub_0200E390
	pop {r3, r4, r5, pc}
_0200F3F2:
	sub r2, r0, #2
	ldrb r2, [r1, r2]
	add r3, r2, #1
	sub r2, r0, #2
	strb r3, [r1, r2]
	ldrb r2, [r1, r2]
	cmp r2, #0x10
	bne _0200F434
	mov r3, #0
	sub r2, r0, #2
	strb r3, [r1, r2]
	sub r2, r0, #1
	ldrb r2, [r1, r2]
	mov r4, #0x7f
	bic r2, r4
	sub r4, r0, #1
	ldrb r4, [r1, r4]
	sub r0, r0, #1
	lsl r4, r4, #0x19
	lsr r4, r4, #0x19
	add r5, r4, #1
	mov r4, #7
	and r4, r5
	lsl r4, r4, #0x18
	lsr r5, r4, #0x18
	mov r4, #0x7f
	and r4, r5
	orr r2, r4
	strb r2, [r1, r0]
	add r0, r1, #0
	add r1, r3, #0
	bl sub_0200F1D4
_0200F434:
	pop {r3, r4, r5, pc}
	nop
_0200F438: .word 0x00000488
	thumb_func_end sub_0200F3D0

	thumb_func_start sub_0200F43C
sub_0200F43C: ; 0x0200F43C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0201AB0C
	add r0, r4, #0
	bl sub_0200E390
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200F43C

	thumb_func_start sub_0200F450
sub_0200F450: ; 0x0200F450
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0200F470 ; =sub_0200F43C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200E374
	ldr r1, _0200F474 ; =0x00000488
	mov r0, #3
	ldrb r2, [r4, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r4, r1]
	pop {r4, pc}
	nop
_0200F470: .word sub_0200F43C
_0200F474: .word 0x00000488
	thumb_func_end sub_0200F450

	thumb_func_start sub_0200F478
sub_0200F478: ; 0x0200F478
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0200F498 ; =sub_0200F43C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200E374
	ldr r1, _0200F49C ; =0x00000488
	mov r0, #3
	ldrb r2, [r4, r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strb r0, [r4, r1]
	pop {r4, pc}
	nop
_0200F498: .word sub_0200F43C
_0200F49C: .word 0x00000488
	thumb_func_end sub_0200F478

	thumb_func_start sub_0200F4A0
sub_0200F4A0: ; 0x0200F4A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	ldr r5, [sp, #0x30]
	str r3, [sp, #8]
	add r6, r0, #0
	add r7, r1, #0
	str r5, [sp]
	bl sub_0200F5C4
	add r4, r0, #0
	add r1, r5, #0
	bl sub_0200F600
	add r0, r4, #0
	bl sub_0200F62C
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r4, #0
	bl sub_0200F684
	add r2, sp, #0x10
	ldrh r1, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	add r0, r4, #0
	bl sub_0200F6D4
	add r2, sp, #0x10
	ldrb r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	add r0, r4, #0
	bl sub_0200F82C
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0201BF7C
	ldr r0, _0200F4F4 ; =0x0000016F
	add r0, r4, r0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0200F4F4: .word 0x0000016F
	thumb_func_end sub_0200F4A0

	thumb_func_start sub_0200F4F8
sub_0200F4F8: ; 0x0200F4F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	ldr r5, [sp, #0x2c]
	str r3, [sp, #8]
	add r6, r0, #0
	add r7, r1, #0
	str r5, [sp]
	bl sub_0200F5C4
	add r4, r0, #0
	add r1, r5, #0
	bl sub_0200F600
	add r0, r4, #0
	bl sub_0200F62C
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r4, #0
	bl sub_0200F684
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl sub_0200F714
	add r2, sp, #0x10
	ldrb r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	add r0, r4, #0
	bl sub_0200F82C
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0201BF7C
	ldr r0, _0200F548 ; =0x0000016F
	add r0, r4, r0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0200F548: .word 0x0000016F
	thumb_func_end sub_0200F4F8

	thumb_func_start sub_0200F54C
sub_0200F54C: ; 0x0200F54C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200F5C0 ; =0x0000016F
	add r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #1
	beq _0200F564
	cmp r1, #2
	beq _0200F582
	cmp r1, #3
	beq _0200F594
	b _0200F5A8
_0200F564:
	add r0, r4, #0
	bl sub_0200F9DC
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D9DC
	add r0, r4, #0
	bl sub_021E86F4
	add r0, r5, #0
	bl sub_02007234
	pop {r3, r4, r5, pc}
_0200F582:
	mov r1, #3
	strb r1, [r4, r0]
	sub r0, #0xb
	ldr r0, [r4, r0]
	mov r1, #1
	ldr r0, [r0]
	bl sub_020248F0
	b _0200F5A8
_0200F594:
	sub r0, #0xb
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl sub_020249F8
	cmp r0, #6
	bne _0200F5A8
	ldr r0, _0200F5C0 ; =0x0000016F
	mov r1, #0
	strb r1, [r4, r0]
_0200F5A8:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0xc
	bl sub_020249B0
	ldr r0, [r4]
	bl sub_0202457C
	pop {r3, r4, r5, pc}
	.align 2, 0
_0200F5C0: .word 0x0000016F
	thumb_func_end sub_0200F54C

	thumb_func_start sub_0200F5C4
sub_0200F5C4: ; 0x0200F5C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r3, #0
	mov r1, #0x17
	add r6, r2, #0
	ldr r0, _0200F5F8 ; =sub_0200F54C
	ldr r3, [sp, #0x18]
	lsl r1, r1, #4
	mov r2, #0
	bl sub_02007200
	bl sub_0201F988
	ldr r1, _0200F5FC ; =0x0000016F
	mov r2, #0
	strb r2, [r0, r1]
	sub r2, r1, #7
	str r5, [r0, r2]
	sub r2, r1, #3
	strb r4, [r0, r2]
	sub r2, r1, #2
	strb r6, [r0, r2]
	sub r1, r1, #1
	strb r7, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200F5F8: .word sub_0200F54C
_0200F5FC: .word 0x0000016F
	thumb_func_end sub_0200F5C4

	thumb_func_start sub_0200F600
sub_0200F600: ; 0x0200F600
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r5, _0200F628 ; =0x020F5C60
	add r4, sp, #0
	add r6, r0, #0
	add r3, r1, #0
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r1, r2, #0
	add r0, r6, #0
	mov r2, #1
	bl sub_021E8298
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_0200F628: .word 0x020F5C60
	thumb_func_end sub_0200F600

	thumb_func_start sub_0200F62C
sub_0200F62C: ; 0x0200F62C
	push {r3, r4, lr}
	sub sp, #0xc
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, _0200F680 ; =0x00015CD5
	mov r2, #0x32
	str r1, [sp, #8]
	mov r1, #0x26
	mov r3, #0
	add r4, r0, #0
	bl sub_021E8378
	ldr r0, _0200F680 ; =0x00015CD5
	mov r1, #0x26
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0x30
	mov r3, #0
	bl sub_021E83F0
	ldr r0, _0200F680 ; =0x00015CD5
	mov r1, #0x26
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0x2f
	mov r3, #0
	bl sub_021E8404
	mov r0, #1
	str r0, [sp]
	ldr r0, _0200F680 ; =0x00015CD5
	mov r1, #0x26
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x31
	mov r3, #0
	bl sub_021E8418
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0200F680: .word 0x00015CD5
	thumb_func_end sub_0200F62C

	thumb_func_start sub_0200F684
sub_0200F684: ; 0x0200F684
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r5, _0200F6D0 ; =0x020F5C78
	add r6, r2, #0
	add r4, r0, #0
	add r7, r1, #0
	add r3, sp, #0
	mov r2, #6
_0200F694:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0200F694
	ldr r0, [r5]
	str r0, [r3]
	add r0, r7, #5
	lsl r1, r0, #3
	add r0, sp, #0
	strh r1, [r0]
	add r1, r6, #5
	lsl r1, r1, #3
	strh r1, [r0, #2]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_021E851C
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4]
	bl sub_0202457C
	mov r0, #0x10
	mov r1, #1
	bl sub_02022CC8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0200F6D0: .word 0x020F5C78
	thumb_func_end sub_0200F684

	thumb_func_start sub_0200F6D4
sub_0200F6D4: ; 0x0200F6D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _0200F710 ; =0x00000162
	add r4, r1, #0
	ldrh r0, [r5, r0]
	add r6, r2, #0
	bl sub_02007FD4
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #2
	bl sub_020701E4
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_0200F748
	add r0, r7, #0
	bl sub_02008524
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0200F710: .word 0x00000162
	thumb_func_end sub_0200F6D4

	thumb_func_start sub_0200F714
sub_0200F714: ; 0x0200F714
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0200F744 ; =0x00000162
	add r4, r1, #0
	ldrh r0, [r5, r0]
	bl sub_02007FD4
	add r6, r0, #0
	add r0, sp, #0
	add r1, r4, #0
	mov r2, #2
	bl sub_02070124
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0200F748
	add r0, r6, #0
	bl sub_02008524
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0200F744: .word 0x00000162
	thumb_func_end sub_0200F714

	thumb_func_start sub_0200F748
sub_0200F748: ; 0x0200F748
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, _0200F81C ; =0x00000162
	add r6, r1, #0
	mov r1, #0x19
	ldrh r0, [r5, r0]
	lsl r1, r1, #8
	bl sub_0201AA8C
	add r2, sp, #0x18
	ldr r3, _0200F820 ; =0x020F5C50
	add r4, r0, #0
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r4, [sp]
	ldr r2, _0200F81C ; =0x00000162
	ldrh r0, [r6]
	ldrh r1, [r6, #2]
	ldrh r2, [r5, r2]
	add r3, r7, #0
	bl sub_020143E0
	ldr r3, _0200F824 ; =0x020F5C40
	add r2, sp, #8
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x32
	lsl r0, r0, #6
	add r0, r4, r0
	str r0, [sp]
	ldr r2, _0200F81C ; =0x00000162
	ldrh r0, [r6]
	ldrh r1, [r6, #2]
	ldrh r2, [r5, r2]
	add r3, r7, #0
	bl sub_020143E0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, _0200F828 ; =0x00015CD5
	bl sub_0200A7BC
	bl sub_0200AF00
	mov r1, #1
	str r0, [sp, #4]
	bl sub_020B802C
	mov r1, #0x19
	add r7, r0, #0
	add r0, r4, #0
	lsl r1, r1, #8
	bl DC_FlushRange
	mov r2, #0x19
	add r0, r4, #0
	add r1, r7, #0
	lsl r2, r2, #8
	bl sub_020CFE74
	add r0, r4, #0
	bl sub_0201AB0C
	ldr r2, _0200F81C ; =0x00000162
	ldrh r0, [r6]
	ldrh r1, [r6, #4]
	ldrh r2, [r5, r2]
	bl sub_02014450
	add r4, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, _0200F828 ; =0x00015CD5
	bl sub_0200A7BC
	ldr r1, [sp, #4]
	bl sub_0200B0F8
	mov r1, #1
	bl sub_020B8078
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x20
	bl DC_FlushRange
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x20
	bl sub_020CFD18
	add r0, r4, #0
	bl sub_0201AB0C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200F81C: .word 0x00000162
_0200F820: .word 0x020F5C50
_0200F824: .word 0x020F5C40
_0200F828: .word 0x00015CD5
	thumb_func_end sub_0200F748

	thumb_func_start sub_0200F82C
sub_0200F82C: ; 0x0200F82C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r3, _0200F9D8 ; =0x0000016E
	add r5, r0, #0
	ldrb r0, [r5, r3]
	add r4, r1, #0
	sub r1, r3, #2
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	add r6, r2, #0
	bl sub_0201C8C4
	ldr r3, _0200F9D8 ; =0x0000016E
	add r2, r6, #1
	ldrb r0, [r5, r3]
	sub r1, r3, #2
	lsl r2, r2, #0x10
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl sub_0201C8C4
	ldr r3, _0200F9D8 ; =0x0000016E
	add r2, r6, #2
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, #0xa
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r3, _0200F9D8 ; =0x0000016E
	add r2, r6, #4
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl sub_0201C8C4
	ldr r3, _0200F9D8 ; =0x0000016E
	add r2, r6, #3
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r3, _0200F9D8 ; =0x0000016E
	add r2, r6, #5
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, #0xa
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r3, _0200F9D8 ; =0x0000016E
	add r2, r6, #6
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r3, _0200F9D8 ; =0x0000016E
	add r2, r6, #7
	ldrb r0, [r5, r3]
	sub r1, r3, #2
	lsl r2, r2, #0x10
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl sub_0201C8C4
	ldr r3, _0200F9D8 ; =0x0000016E
	add r6, #8
	ldrb r0, [r5, r3]
	lsl r2, r6, #0x10
	sub r1, r3, #2
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, #0xa
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldrb r1, [r5, r1]
	bl sub_0201EFBC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0200F9D8: .word 0x0000016E
	thumb_func_end sub_0200F82C

	thumb_func_start sub_0200F9DC
sub_0200F9DC: ; 0x0200F9DC
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _0200FA20 ; =0x0000016E
	add r4, r0, #0
	ldrb r0, [r4, r3]
	mov r2, #0
	sub r1, r3, #2
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r4, r3]
	ldrb r1, [r4, r1]
	ldr r0, [r4, r0]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldrb r1, [r4, r1]
	bl sub_0201EFBC
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0200FA20: .word 0x0000016E
	thumb_func_end sub_0200F9DC

	thumb_func_start sub_0200FA24
sub_0200FA24: ; 0x0200FA24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #0
	bne _0200FA3A
	bl GF_AssertFail
_0200FA3A:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _0200FA44
	bl GF_AssertFail
_0200FA44:
	ldr r0, _0200FB00 ; =0x021D1034
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	beq _0200FA50
	bl GF_AssertFail
_0200FA50:
	ldr r0, _0200FB04 ; =0x021D0EF4
	bl sub_020100C4
	ldr r1, _0200FB04 ; =0x021D0EF4
	add r0, r5, #0
	bl sub_0200FE14
	ldr r0, _0200FB08 ; =0x021D0F68
	bl sub_0200FEB0
	ldr r0, _0200FB04 ; =0x021D0EF4
	add r1, r6, #0
	bl sub_02010018
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0200FB0C ; =0x021D0F80
	ldr r2, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, _0200FB08 ; =0x021D0F68
	ldr r3, [sp, #0x34]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	add r1, r4, #0
	str r0, [sp, #0x14]
	ldr r0, _0200FB10 ; =0x021D0F08
	str r5, [sp, #0x18]
	bl sub_0200FE84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _0200FB0C ; =0x021D0F80
	ldr r2, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, _0200FB08 ; =0x021D0F68
	ldr r3, [sp, #0x34]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	add r1, r7, #0
	str r0, [sp, #0x14]
	ldr r0, _0200FB14 ; =0x021D0F38
	str r5, [sp, #0x18]
	bl sub_0200FE84
	ldr r0, _0200FB00 ; =0x021D1034
	mov r1, #1
	strh r1, [r0, #0xc]
	ldr r0, _0200FB18 ; =0x021D0EF8
	ldr r1, _0200FB10 ; =0x021D0F08
	bl sub_0200FDE4
	ldr r0, _0200FB1C ; =0x021D0EFC
	ldr r1, _0200FB14 ; =0x021D0F38
	bl sub_0200FDE4
	ldr r0, _0200FB20 ; =0x021D0EF4
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0200FAE2
	ldr r0, _0200FB04 ; =0x021D0EF4
	add r0, #0x14
	bl sub_02010064
	ldr r1, _0200FB24 ; =0x0000014E
	ldr r0, _0200FB04 ; =0x021D0EF4
	mov r2, #1
	strb r2, [r0, r1]
_0200FAE2:
	ldr r0, _0200FB04 ; =0x021D0EF4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0200FAFA
	ldr r0, _0200FB04 ; =0x021D0EF4
	add r0, #0x44
	bl sub_02010064
	ldr r1, _0200FB28 ; =0x0000014F
	ldr r0, _0200FB04 ; =0x021D0EF4
	mov r2, #1
	strb r2, [r0, r1]
_0200FAFA:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0200FB00: .word 0x021D1034
_0200FB04: .word 0x021D0EF4
_0200FB08: .word 0x021D0F68
_0200FB0C: .word 0x021D0F80
_0200FB10: .word 0x021D0F08
_0200FB14: .word 0x021D0F38
_0200FB18: .word 0x021D0EF8
_0200FB1C: .word 0x021D0EFC
_0200FB20: .word 0x021D0EF4
_0200FB24: .word 0x0000014E
_0200FB28: .word 0x0000014F
	thumb_func_end sub_0200FA24

	thumb_func_start sub_0200FB2C
sub_0200FB2C: ; 0x0200FB2C
	push {r4, lr}
	ldr r0, _0200FB54 ; =0x021D1034
	ldr r4, _0200FB58 ; =0x021D0EF4
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	beq _0200FB50
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #0
	add r1, #0x14
	add r2, #0x44
	bl sub_0200FD74
	cmp r0, #1
	bne _0200FB50
	add r0, r4, #0
	bl sub_0200FD1C
_0200FB50:
	pop {r4, pc}
	nop
_0200FB54: .word 0x021D1034
_0200FB58: .word 0x021D0EF4
	thumb_func_end sub_0200FB2C

	thumb_func_start sub_0200FB5C
sub_0200FB5C: ; 0x0200FB5C
	ldr r0, _0200FB6C ; =0x021D1034
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	bne _0200FB68
	mov r0, #1
	bx lr
_0200FB68:
	mov r0, #0
	bx lr
	.align 2, 0
_0200FB6C: .word 0x021D1034
	thumb_func_end sub_0200FB5C

	thumb_func_start sub_0200FB70
sub_0200FB70: ; 0x0200FB70
	push {r3, lr}
	ldr r0, _0200FBBC ; =0x021D0F68
	mov r1, #0
	bl sub_0200FF5C
	ldr r0, _0200FBBC ; =0x021D0F68
	mov r1, #1
	bl sub_0200FF5C
	ldr r0, _0200FBC0 ; =0x021D0EF4
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0200FB8E
	mov r1, #2
	str r1, [r0, #0x20]
_0200FB8E:
	ldr r0, _0200FBC0 ; =0x021D0EF4
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0200FB9A
	mov r1, #2
	str r1, [r0, #0x50]
_0200FB9A:
	ldr r0, _0200FBC4 ; =0x021D0EF8
	ldr r1, _0200FBC8 ; =0x021D0F08
	bl sub_0200FDE4
	ldr r0, _0200FBCC ; =0x021D0EFC
	ldr r1, _0200FBD0 ; =0x021D0F38
	bl sub_0200FDE4
	ldr r0, _0200FBD4 ; =0x021D1034
	mov r1, #0
	strh r1, [r0, #0xc]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	ldr r0, _0200FBD8 ; =0x021D0EF4
	bl sub_020100C4
	pop {r3, pc}
	.align 2, 0
_0200FBBC: .word 0x021D0F68
_0200FBC0: .word 0x021D0EF4
_0200FBC4: .word 0x021D0EF8
_0200FBC8: .word 0x021D0F08
_0200FBCC: .word 0x021D0EFC
_0200FBD0: .word 0x021D0F38
_0200FBD4: .word 0x021D1034
_0200FBD8: .word 0x021D0EF4
	thumb_func_end sub_0200FB70

	thumb_func_start sub_0200FBDC
sub_0200FBDC: ; 0x0200FBDC
	ldr r3, _0200FBE4 ; =sub_020131F4
	add r1, r0, #0
	mov r0, #0
	bx r3
	.align 2, 0
_0200FBE4: .word sub_020131F4
	thumb_func_end sub_0200FBDC

	thumb_func_start sub_0200FBE8
sub_0200FBE8: ; 0x0200FBE8
	ldr r3, _0200FBF0 ; =sub_0200FCFC
	mov r1, #0
	bx r3
	nop
_0200FBF0: .word sub_0200FCFC
	thumb_func_end sub_0200FBE8

	thumb_func_start sub_0200FBF4
sub_0200FBF4: ; 0x0200FBF4
	ldr r2, _0200FC10 ; =0x0000FFFF
	cmp r1, r2
	bne _0200FBFE
	ldr r1, _0200FC14 ; =0x021D1034
	ldrh r1, [r1, #0x10]
_0200FBFE:
	ldr r2, _0200FC18 ; =0x00007FFF
	cmp r1, r2
	bne _0200FC08
	mov r1, #0x10
	b _0200FC0C
_0200FC08:
	mov r1, #0xf
	mvn r1, r1
_0200FC0C:
	ldr r3, _0200FC1C ; =sub_0200FCFC
	bx r3
	.align 2, 0
_0200FC10: .word 0x0000FFFF
_0200FC14: .word 0x021D1034
_0200FC18: .word 0x00007FFF
_0200FC1C: .word sub_0200FCFC
	thumb_func_end sub_0200FBF4

	thumb_func_start sub_0200FC20
sub_0200FC20: ; 0x0200FC20
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0200FC54 ; =0x0000FFFF
	cmp r4, r0
	bne _0200FC2E
	ldr r0, _0200FC58 ; =0x021D1034
	ldrh r4, [r0, #0x10]
_0200FC2E:
	ldr r0, _0200FC5C ; =0x00007FFF
	cmp r4, r0
	bne _0200FC38
	mov r5, #0x10
	b _0200FC3C
_0200FC38:
	mov r5, #0xf
	mvn r5, r5
_0200FC3C:
	mov r0, #0
	add r1, r5, #0
	bl sub_0200FCFC
	mov r0, #1
	add r1, r5, #0
	bl sub_0200FCFC
	ldr r0, _0200FC58 ; =0x021D1034
	strh r4, [r0, #0x10]
	pop {r3, r4, r5, pc}
	nop
_0200FC54: .word 0x0000FFFF
_0200FC58: .word 0x021D1034
_0200FC5C: .word 0x00007FFF
	thumb_func_end sub_0200FC20

	thumb_func_start sub_0200FC60
sub_0200FC60: ; 0x0200FC60
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0x18
	ldrh r2, [r1, #4]
	add r4, r0, #0
	ldr r0, _0200FCD0 ; =0x0000FFFF
	cmp r2, r0
	bne _0200FC78
	ldr r0, _0200FCD4 ; =0x021D1034
	ldrh r0, [r0, #0x10]
	strh r0, [r1, #4]
_0200FC78:
	cmp r4, #0
	add r0, sp, #0x1c
	bne _0200FC88
	mov r1, #0
	mov r2, #2
	bl sub_020CFC6C
	b _0200FC90
_0200FC88:
	mov r1, #0
	mov r2, #2
	bl sub_020CFCC0
_0200FC90:
	ldr r0, _0200FCD8 ; =0x021D0F80
	mov r1, #1
	add r2, r4, #0
	bl sub_02013424
	mov r2, #0
	ldr r0, _0200FCD8 ; =0x021D0F80
	mov r1, #0x3f
	add r3, r2, #0
	str r4, [sp]
	bl sub_02013440
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _0200FCD8 ; =0x021D0F80
	add r2, r1, #0
	add r3, r1, #0
	str r4, [sp, #8]
	bl sub_02013488
	ldr r0, _0200FCD8 ; =0x021D0F80
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02013468
	add sp, #0xc
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_0200FCD0: .word 0x0000FFFF
_0200FCD4: .word 0x021D1034
_0200FCD8: .word 0x021D0F80
	thumb_func_end sub_0200FC60

	thumb_func_start sub_0200FCDC
sub_0200FCDC: ; 0x0200FCDC
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r0, sp, #8
	mov r1, #0
	mov r2, #2
	bl sub_020CFC6C
	add r0, sp, #8
	mov r1, #0
	mov r2, #2
	bl sub_020CFCC0
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_0200FCDC

	thumb_func_start sub_0200FCFC
sub_0200FCFC: ; 0x0200FCFC
	push {r3, lr}
	cmp r0, #0
	bne _0200FD0A
	ldr r0, _0200FD14 ; =0x0400006C
	bl sub_020CDA80
	pop {r3, pc}
_0200FD0A:
	ldr r0, _0200FD18 ; =0x0400106C
	bl sub_020CDA80
	pop {r3, pc}
	nop
_0200FD14: .word 0x0400006C
_0200FD18: .word 0x0400106C
	thumb_func_end sub_0200FCFC

	thumb_func_start sub_0200FD1C
sub_0200FD1C: ; 0x0200FD1C
	push {r4, lr}
	mov r1, #0x53
	add r4, r0, #0
	mov r2, #0
	lsl r1, r1, #2
	strh r2, [r4, r1]
	bl sub_0201002C
	mov r1, #0x15
	lsl r1, r1, #4
	strh r0, [r4, r1]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0200FD4C
	add r0, r4, #0
	add r0, #0x14
	bl sub_02010094
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0200FD4C
	ldr r0, _0200FD70 ; =0x021D1034
	mov r1, #0
	strb r1, [r0, #0xe]
_0200FD4C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0200FD66
	add r0, r4, #0
	add r0, #0x44
	bl sub_02010094
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0200FD66
	ldr r0, _0200FD70 ; =0x021D1034
	mov r1, #0
	strb r1, [r0, #0xf]
_0200FD66:
	add r0, r4, #0
	bl sub_020100C4
	pop {r4, pc}
	nop
_0200FD70: .word 0x021D1034
	thumb_func_end sub_0200FD1C

	thumb_func_start sub_0200FD74
sub_0200FD74: ; 0x0200FD74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _0200FD8A
	cmp r0, #1
	beq _0200FD9C
	cmp r0, #2
	beq _0200FDB6
	b _0200FDCE
_0200FD8A:
	add r0, r5, #4
	bl sub_0200FDE4
	add r0, r5, #0
	add r0, #8
	add r1, r4, #0
	bl sub_0200FDE4
	b _0200FDCE
_0200FD9C:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0200FDAA
	add r0, r5, #4
	bl sub_0200FDE4
	b _0200FDCE
_0200FDAA:
	add r0, r5, #0
	add r0, #8
	add r1, r4, #0
	bl sub_0200FDE4
	b _0200FDCE
_0200FDB6:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0200FDC8
	add r0, r5, #0
	add r0, #8
	add r1, r4, #0
	bl sub_0200FDE4
	b _0200FDCE
_0200FDC8:
	add r0, r5, #4
	bl sub_0200FDE4
_0200FDCE:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0200FDDE
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0200FDDE
	mov r0, #1
	pop {r3, r4, r5, pc}
_0200FDDE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200FD74

	thumb_func_start sub_0200FDE4
sub_0200FDE4: ; 0x0200FDE4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0200FDFC
	add r0, r1, #0
	bl sub_0200FE00
	cmp r0, #1
	bne _0200FDFC
	mov r0, #0
	str r0, [r4]
_0200FDFC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0200FDE4

	thumb_func_start sub_0200FE00
sub_0200FE00: ; 0x0200FE00
	push {r3, lr}
	ldr r1, [r0]
	lsl r2, r1, #2
	ldr r1, _0200FE10 ; =0x020F5CAC
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0200FE10: .word 0x020F5CAC
	thumb_func_end sub_0200FE00

	thumb_func_start sub_0200FE14
sub_0200FE14: ; 0x0200FE14
	push {r3, lr}
	cmp r0, #4
	bhi _0200FE74
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0200FE26: ; jump table
	.short _0200FE30 - _0200FE26 - 2 ; case 0
	.short _0200FE3E - _0200FE26 - 2 ; case 1
	.short _0200FE4C - _0200FE26 - 2 ; case 2
	.short _0200FE5A - _0200FE26 - 2 ; case 3
	.short _0200FE68 - _0200FE26 - 2 ; case 4
_0200FE30:
	mov r2, #1
	add r0, r1, #0
	mov r1, #0
	add r3, r2, #0
	bl sub_0200FE78
	pop {r3, pc}
_0200FE3E:
	add r0, r1, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200FE78
	pop {r3, pc}
_0200FE4C:
	mov r2, #1
	add r0, r1, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_0200FE78
	pop {r3, pc}
_0200FE5A:
	add r0, r1, #0
	mov r1, #1
	add r2, r1, #0
	mov r3, #0
	bl sub_0200FE78
	pop {r3, pc}
_0200FE68:
	add r0, r1, #0
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl sub_0200FE78
_0200FE74:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0200FE14

	thumb_func_start sub_0200FE78
sub_0200FE78: ; 0x0200FE78
	str r1, [r0]
	str r2, [r0, #4]
	str r3, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #0x10]
	bx lr
	thumb_func_end sub_0200FE78

	thumb_func_start sub_0200FE84
sub_0200FE84: ; 0x0200FE84
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, [sp]
	str r3, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #8]
	str r1, [r0, #0x10]
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x1c]
	ldr r1, [sp, #0x14]
	str r1, [r0, #0x20]
	ldr r1, _0200FEAC ; =0xFFFFFFF0
	add r1, sp
	ldrh r1, [r1, #0x28]
	strh r1, [r0, #0x24]
	bx lr
	.align 2, 0
_0200FEAC: .word 0xFFFFFFF0
	thumb_func_end sub_0200FE84

	thumb_func_start sub_0200FEB0
sub_0200FEB0: ; 0x0200FEB0
	mov r3, #0
	ldr r1, _0200FEC8 ; =sub_02010014
	add r2, r3, #0
_0200FEB6:
	str r2, [r0]
	str r1, [r0, #8]
	str r2, [r0, #0x10]
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #2
	blt _0200FEB6
	bx lr
	nop
_0200FEC8: .word sub_02010014
	thumb_func_end sub_0200FEB0

	thumb_func_start sub_0200FECC
sub_0200FECC: ; 0x0200FECC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0200FED2:
	ldr r0, [r5]
	ldr r1, [r5, #8]
	blx r1
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0200FED2
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0200FECC

	thumb_func_start sub_0200FEE4
sub_0200FEE4: ; 0x0200FEE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x10
	lsl r4, r3, #2
	str r0, [sp, #8]
	ldr r0, [r0, r4]
	add r7, r2, #0
	str r1, [sp]
	cmp r0, #0
	beq _0200FF06
	bl GF_AssertFail
_0200FF06:
	add r6, r5, #0
	add r6, #8
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _0200FF14
	bl GF_AssertFail
_0200FF14:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0200FF2E
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0200FF2E
	ldr r0, _0200FF54 ; =sub_0200FECC
	add r1, r5, #0
	bl sub_0201A120
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
_0200FF2E:
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _0200FF38
	bl GF_AssertFail
_0200FF38:
	ldr r0, [sp]
	cmp r7, #0
	str r0, [r5, r4]
	beq _0200FF44
	str r7, [r6, r4]
	b _0200FF48
_0200FF44:
	ldr r0, _0200FF58 ; =sub_02010014
	str r0, [r6, r4]
_0200FF48:
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0200FF54: .word sub_0200FECC
_0200FF58: .word sub_02010014
	thumb_func_end sub_0200FEE4

	thumb_func_start sub_0200FF5C
sub_0200FF5C: ; 0x0200FF5C
	push {r3, r4, r5, lr}
	lsl r4, r1, #2
	add r5, r0, #0
	mov r1, #0
	add r0, r5, r4
	str r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0200FF78
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0200FF78
	bl sub_0201A108
_0200FF78:
	ldr r1, _0200FF84 ; =sub_02010014
	add r0, r5, r4
	str r1, [r0, #8]
	mov r0, #0
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0200FF84: .word sub_02010014
	thumb_func_end sub_0200FF5C

	thumb_func_start sub_0200FF88
sub_0200FF88: ; 0x0200FF88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [sp, #0x18]
	mov r1, #0x10
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201AACC
	add r1, r0, #0
	str r5, [r1]
	str r4, [r1, #4]
	mov r2, #1
	str r6, [r1, #8]
	ldr r0, _0200FFB0 ; =sub_0200FFD8
	lsl r2, r2, #0xa
	str r7, [r1, #0xc]
	bl sub_0200E374
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0200FFB0: .word sub_0200FFD8
	thumb_func_end sub_0200FF88

	thumb_func_start sub_0200FFB4
sub_0200FFB4: ; 0x0200FFB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #8
	bl sub_0201AACC
	add r1, r0, #0
	mov r2, #1
	str r5, [r1]
	ldr r0, _0200FFD4 ; =sub_0200FFF8
	lsl r2, r2, #0xa
	str r4, [r1, #4]
	bl sub_0200E374
	pop {r3, r4, r5, pc}
	.align 2, 0
_0200FFD4: .word sub_0200FFF8
	thumb_func_end sub_0200FFB4

	thumb_func_start sub_0200FFD8
sub_0200FFD8: ; 0x0200FFD8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0200FEE4
	add r0, r5, #0
	bl sub_0200E390
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200FFD8

	thumb_func_start sub_0200FFF8
sub_0200FFF8: ; 0x0200FFF8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl sub_0200FF5C
	add r0, r5, #0
	bl sub_0200E390
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200FFF8

	thumb_func_start sub_02010014
sub_02010014: ; 0x02010014
	bx lr
	.align 2, 0
	thumb_func_end sub_02010014

	thumb_func_start sub_02010018
sub_02010018: ; 0x02010018
	ldr r2, _02010028 ; =0x0000FFFF
	cmp r1, r2
	bne _02010024
	mov r1, #0x15
	lsl r1, r1, #4
	ldrh r1, [r0, r1]
_02010024:
	add r0, r1, #0
	bx lr
	.align 2, 0
_02010028: .word 0x0000FFFF
	thumb_func_end sub_02010018

	thumb_func_start sub_0201002C
sub_0201002C: ; 0x0201002C
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _02010038
	add r2, r0, #0
	add r2, #0x14
	b _0201003C
_02010038:
	add r2, r0, #0
	add r2, #0x44
_0201003C:
	ldr r1, [r2, #0x28]
	cmp r1, #1
	bne _02010046
	ldrh r0, [r2, #0x24]
	bx lr
_02010046:
	mov r1, #0x15
	lsl r1, r1, #4
	ldrh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0201002C

	thumb_func_start sub_02010050
sub_02010050: ; 0x02010050
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x10]
	mov r1, #0
	bl sub_0200FCFC
	add r0, r4, #0
	bl sub_0200E390
	pop {r4, pc}
	thumb_func_end sub_02010050

	thumb_func_start sub_02010064
sub_02010064: ; 0x02010064
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bne _0201008A
	ldrh r2, [r1, #0x24]
	ldr r0, _0201008C ; =0x00007FFF
	cmp r2, r0
	beq _0201007A
	cmp r2, #0
	bne _0201008A
_0201007A:
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	bne _0201008A
	mov r2, #1
	ldr r0, _02010090 ; =sub_02010050
	lsl r2, r2, #0xa
	bl sub_0200E374
_0201008A:
	pop {r3, pc}
	.align 2, 0
_0201008C: .word 0x00007FFF
_02010090: .word sub_02010050
	thumb_func_end sub_02010064

	thumb_func_start sub_02010094
sub_02010094: ; 0x02010094
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _020100BC
	ldrh r1, [r4, #0x24]
	ldr r0, _020100C0 ; =0x00007FFF
	cmp r1, r0
	beq _020100AA
	cmp r1, #0
	bne _020100BC
_020100AA:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _020100BC
	ldr r0, [r4, #0x10]
	bl sub_0200FBF4
	ldr r0, [r4, #0x10]
	bl sub_0200FBDC
_020100BC:
	pop {r4, pc}
	nop
_020100C0: .word 0x00007FFF
	thumb_func_end sub_02010094

	thumb_func_start sub_020100C4
sub_020100C4: ; 0x020100C4
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_020100CE:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020100CE
	add r0, r4, #0
	add r0, #0x14
	mov r1, #0
	mov r2, #0x30
	bl sub_020E5B44
	add r0, r4, #0
	add r0, #0x44
	mov r1, #0
	mov r2, #0x30
	bl sub_020E5B44
	add r2, r4, #0
	add r2, #0x74
	mov r1, #0x18
	mov r0, #0
_020100F6:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020100F6
	add r4, #0x8c
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc0
	bl sub_020E5B44
	pop {r4, pc}
	thumb_func_end sub_020100C4

	thumb_func_start sub_0201010C
sub_0201010C: ; 0x0201010C
	push {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _02010122
	mov r1, #1
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	bl sub_02010B14
	mov r0, #0
	pop {r3, pc}
_02010122:
	bl sub_02010BB4
	pop {r3, pc}
	thumb_func_end sub_0201010C

	thumb_func_start sub_02010128
sub_02010128: ; 0x02010128
	push {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _02010140
	mov r1, #0
	str r1, [r0, #0x28]
	mov r2, #1
	str r2, [r0, #0x2c]
	bl sub_02010B14
	mov r0, #0
	pop {r3, pc}
_02010140:
	bl sub_02010BB4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02010128

	thumb_func_start sub_02010148
sub_02010148: ; 0x02010148
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010170
	ldr r1, _02010178 ; =0x020F5D60
	ldr r0, _0201017C ; =0x0210F64C
	str r1, [r0]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010180 ; =0x0210F64C
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010170:
	bl sub_020128E0
	pop {r4, pc}
	nop
_02010178: .word 0x020F5D60
_0201017C: .word 0x0210F64C
_02010180: .word 0x0210F64C
	thumb_func_end sub_02010148

	thumb_func_start sub_02010184
sub_02010184: ; 0x02010184
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020101AA
	ldr r1, _020101B0 ; =0x020F5D5C
	ldr r0, _020101B4 ; =0x0210F64C
	str r1, [r0, #0x10]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020101B8 ; =0x0210F65C
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020101AA:
	bl sub_020128E0
	pop {r4, pc}
	.align 2, 0
_020101B0: .word 0x020F5D5C
_020101B4: .word 0x0210F64C
_020101B8: .word 0x0210F65C
	thumb_func_end sub_02010184

	thumb_func_start sub_020101BC
sub_020101BC: ; 0x020101BC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020101E4
	ldr r1, _020101EC ; =0x020F5D64
	ldr r0, _020101F0 ; =0x0210F64C
	str r1, [r0, #0x20]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020101F4 ; =0x0210F66C
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020101E4:
	bl sub_020128E0
	pop {r4, pc}
	nop
_020101EC: .word 0x020F5D64
_020101F0: .word 0x0210F64C
_020101F4: .word 0x0210F66C
	thumb_func_end sub_020101BC

	thumb_func_start sub_020101F8
sub_020101F8: ; 0x020101F8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201021E
	ldr r1, _02010224 ; =0x020F5D58
	ldr r0, _02010228 ; =0x0210F64C
	str r1, [r0, #0x28]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _0201022C ; =0x0210F674
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201021E:
	bl sub_020128E0
	pop {r4, pc}
	.align 2, 0
_02010224: .word 0x020F5D58
_02010228: .word 0x0210F64C
_0201022C: .word 0x0210F674
	thumb_func_end sub_020101F8

	thumb_func_start sub_02010230
sub_02010230: ; 0x02010230
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010252
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010258 ; =0x020F5E2C
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010252:
	bl sub_0201169C
	pop {r4, pc}
	.align 2, 0
_02010258: .word 0x020F5E2C
	thumb_func_end sub_02010230

	thumb_func_start sub_0201025C
sub_0201025C: ; 0x0201025C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201027C
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010284 ; =0x020F5E38
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201027C:
	bl sub_0201169C
	pop {r4, pc}
	nop
_02010284: .word 0x020F5E38
	thumb_func_end sub_0201025C

	thumb_func_start sub_02010288
sub_02010288: ; 0x02010288
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020102B0
	ldr r1, _020102B8 ; =0x020F5D90
	ldr r0, _020102BC ; =0x0210F64C
	str r1, [r0, #8]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020102C0 ; =0x0210F654
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020102B0:
	bl sub_020128E0
	pop {r4, pc}
	nop
_020102B8: .word 0x020F5D90
_020102BC: .word 0x0210F64C
_020102C0: .word 0x0210F654
	thumb_func_end sub_02010288

	thumb_func_start sub_020102C4
sub_020102C4: ; 0x020102C4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020102EA
	ldr r1, _020102F0 ; =0x020F5D68
	ldr r0, _020102F4 ; =0x0210F64C
	str r1, [r0, #0x38]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020102F8 ; =0x0210F684
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020102EA:
	bl sub_020128E0
	pop {r4, pc}
	.align 2, 0
_020102F0: .word 0x020F5D68
_020102F4: .word 0x0210F64C
_020102F8: .word 0x0210F684
	thumb_func_end sub_020102C4

	thumb_func_start sub_020102FC
sub_020102FC: ; 0x020102FC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010324
	ldr r1, _0201032C ; =0x020F5D80
	ldr r0, _02010330 ; =0x0210F64C
	str r1, [r0, #0x48]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010334 ; =0x0210F694
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010324:
	bl sub_020128E0
	pop {r4, pc}
	nop
_0201032C: .word 0x020F5D80
_02010330: .word 0x0210F64C
_02010334: .word 0x0210F694
	thumb_func_end sub_020102FC

	thumb_func_start sub_02010338
sub_02010338: ; 0x02010338
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201035E
	ldr r1, _02010364 ; =0x020F5DB8
	ldr r0, _02010368 ; =0x0210F64C
	str r1, [r0, #0x40]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _0201036C ; =0x0210F68C
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201035E:
	bl sub_020128E0
	pop {r4, pc}
	.align 2, 0
_02010364: .word 0x020F5DB8
_02010368: .word 0x0210F64C
_0201036C: .word 0x0210F68C
	thumb_func_end sub_02010338

	thumb_func_start sub_02010370
sub_02010370: ; 0x02010370
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010392
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010398 ; =0x020F5E5C
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010392:
	bl sub_0201169C
	pop {r4, pc}
	.align 2, 0
_02010398: .word 0x020F5E5C
	thumb_func_end sub_02010370

	thumb_func_start sub_0201039C
sub_0201039C: ; 0x0201039C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020103BC
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020103C4 ; =0x020F5E68
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020103BC:
	bl sub_0201169C
	pop {r4, pc}
	nop
_020103C4: .word 0x020F5E68
	thumb_func_end sub_0201039C

	thumb_func_start sub_020103C8
sub_020103C8: ; 0x020103C8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020103EC
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020103F4 ; =0x020F5E80
	ldr r2, _020103F8 ; =0x020F5E8C
	add r0, r4, #0
	bl sub_020116EC
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020103EC:
	bl sub_02011744
	pop {r4, pc}
	nop
_020103F4: .word 0x020F5E80
_020103F8: .word 0x020F5E8C
	thumb_func_end sub_020103C8

	thumb_func_start sub_020103FC
sub_020103FC: ; 0x020103FC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201041E
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010424 ; =0x020F5EA4
	ldr r2, _02010428 ; =0x020F5EB0
	add r0, r4, #0
	bl sub_020116EC
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201041E:
	bl sub_02011744
	pop {r4, pc}
	.align 2, 0
_02010424: .word 0x020F5EA4
_02010428: .word 0x020F5EB0
	thumb_func_end sub_020103FC

	thumb_func_start sub_0201042C
sub_0201042C: ; 0x0201042C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201044E
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010454 ; =0x020F5EC8
	add r0, r4, #0
	bl sub_02011884
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201044E:
	bl sub_020118BC
	pop {r4, pc}
	.align 2, 0
_02010454: .word 0x020F5EC8
	thumb_func_end sub_0201042C

	thumb_func_start sub_02010458
sub_02010458: ; 0x02010458
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010478
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010480 ; =0x020F5ED4
	add r0, r4, #0
	bl sub_02011884
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010478:
	bl sub_020118BC
	pop {r4, pc}
	nop
_02010480: .word 0x020F5ED4
	thumb_func_end sub_02010458

	thumb_func_start sub_02010484
sub_02010484: ; 0x02010484
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020104A6
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020104AC ; =0x020F5DD8
	add r0, r4, #0
	bl sub_02011884
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020104A6:
	bl sub_020118BC
	pop {r4, pc}
	.align 2, 0
_020104AC: .word 0x020F5DD8
	thumb_func_end sub_02010484

	thumb_func_start sub_020104B0
sub_020104B0: ; 0x020104B0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020104D0
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020104D8 ; =0x020F5DE4
	add r0, r4, #0
	bl sub_02011884
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020104D0:
	bl sub_020118BC
	pop {r4, pc}
	nop
_020104D8: .word 0x020F5DE4
	thumb_func_end sub_020104B0

	thumb_func_start sub_020104DC
sub_020104DC: ; 0x020104DC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020104FE
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010504 ; =0x020F5DD0
	add r0, r4, #0
	bl sub_02011B5C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020104FE:
	bl sub_02011B94
	pop {r4, pc}
	.align 2, 0
_02010504: .word 0x020F5DD0
	thumb_func_end sub_020104DC

	thumb_func_start sub_02010508
sub_02010508: ; 0x02010508
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010528
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010530 ; =0x020F5DC8
	add r0, r4, #0
	bl sub_02011B5C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010528:
	bl sub_02011B94
	pop {r4, pc}
	nop
_02010530: .word 0x020F5DC8
	thumb_func_end sub_02010508

	thumb_func_start sub_02010534
sub_02010534: ; 0x02010534
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010556
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _0201055C ; =0x020F5E08
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010556:
	bl sub_0201169C
	pop {r4, pc}
	.align 2, 0
_0201055C: .word 0x020F5E08
	thumb_func_end sub_02010534

	thumb_func_start sub_02010560
sub_02010560: ; 0x02010560
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010580
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010588 ; =0x020F5E14
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010580:
	bl sub_0201169C
	pop {r4, pc}
	nop
_02010588: .word 0x020F5E14
	thumb_func_end sub_02010560

	thumb_func_start sub_0201058C
sub_0201058C: ; 0x0201058C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020105AE
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020105B4 ; =0x020F5E20
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020105AE:
	bl sub_0201169C
	pop {r4, pc}
	.align 2, 0
_020105B4: .word 0x020F5E20
	thumb_func_end sub_0201058C

	thumb_func_start sub_020105B8
sub_020105B8: ; 0x020105B8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020105D8
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020105E0 ; =0x020F5E44
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020105D8:
	bl sub_0201169C
	pop {r4, pc}
	nop
_020105E0: .word 0x020F5E44
	thumb_func_end sub_020105B8

	thumb_func_start sub_020105E4
sub_020105E4: ; 0x020105E4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010606
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _0201060C ; =0x020F5DA8
	add r0, r4, #0
	bl sub_02011D60
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010606:
	bl sub_02011D98
	pop {r4, pc}
	.align 2, 0
_0201060C: .word 0x020F5DA8
	thumb_func_end sub_020105E4

	thumb_func_start sub_02010610
sub_02010610: ; 0x02010610
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010630
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010638 ; =0x020F5DA0
	add r0, r4, #0
	bl sub_02011D60
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010630:
	bl sub_02011D98
	pop {r4, pc}
	nop
_02010638: .word 0x020F5DA0
	thumb_func_end sub_02010610

	thumb_func_start sub_0201063C
sub_0201063C: ; 0x0201063C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010680
	ldr r0, _02010688 ; =0x020F5EEC
	mov r1, #4
	str r0, [sp]
	ldr r0, _0201068C ; =0x020F5EFC
	str r0, [sp, #4]
	add r0, sp, #0
	strh r1, [r0, #8]
	mov r1, #0
	strh r1, [r0, #0xa]
	mov r1, #0x3f
	strb r1, [r0, #0xc]
	mov r1, #0x20
	strb r1, [r0, #0xd]
	mov r1, #1
	strh r1, [r0, #0xe]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02011FF8
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #0x10
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010680:
	bl sub_02012030
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_02010688: .word 0x020F5EEC
_0201068C: .word 0x020F5EFC
	thumb_func_end sub_0201063C

	thumb_func_start sub_02010690
sub_02010690: ; 0x02010690
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020106D0
	ldr r0, _020106D8 ; =0x020F5F0C
	mov r1, #4
	str r0, [sp]
	ldr r0, _020106DC ; =0x020F5F1C
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	mov r1, #0x3f
	strb r1, [r0, #0xc]
	mov r1, #0x20
	strb r1, [r0, #0xd]
	strh r2, [r0, #0xe]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02011FF8
	mov r0, #0
	str r0, [r4, #0x28]
	add sp, #0x10
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020106D0:
	bl sub_02012030
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_020106D8: .word 0x020F5F0C
_020106DC: .word 0x020F5F1C
	thumb_func_end sub_02010690

	thumb_func_start sub_020106E0
sub_020106E0: ; 0x020106E0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010708
	ldr r1, _02010710 ; =0x020F5EBC
	ldr r0, _02010714 ; =0x0210F64C
	str r1, [r0, #0x30]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010718 ; =0x0210F67C
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010708:
	bl sub_020128E0
	pop {r4, pc}
	nop
_02010710: .word 0x020F5EBC
_02010714: .word 0x0210F64C
_02010718: .word 0x0210F67C
	thumb_func_end sub_020106E0

	thumb_func_start sub_0201071C
sub_0201071C: ; 0x0201071C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010742
	ldr r1, _02010748 ; =0x020F5DF0
	ldr r0, _0201074C ; =0x0210F64C
	str r1, [r0, #0x18]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010750 ; =0x0210F664
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010742:
	bl sub_020128E0
	pop {r4, pc}
	.align 2, 0
_02010748: .word 0x020F5DF0
_0201074C: .word 0x0210F64C
_02010750: .word 0x0210F664
	thumb_func_end sub_0201071C

	thumb_func_start sub_02010754
sub_02010754: ; 0x02010754
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201078E
	ldr r1, _02010798 ; =0x020F5D58
	add r0, sp, #0
	ldrh r2, [r1, #0x30]
	strh r2, [r0]
	ldrh r2, [r1, #0x32]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x34]
	ldrh r1, [r1, #0x36]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020122B8
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201078E:
	bl sub_020122F8
	add sp, #8
	pop {r4, pc}
	nop
_02010798: .word 0x020F5D58
	thumb_func_end sub_02010754

	thumb_func_start sub_0201079C
sub_0201079C: ; 0x0201079C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020107D4
	ldr r1, _020107DC ; =0x020F5D98
	add r0, sp, #0
	ldrh r2, [r1, #0x28]
	strh r2, [r0]
	ldrh r2, [r1, #0x2a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x2c]
	ldrh r1, [r1, #0x2e]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020122B8
	mov r0, #0
	str r0, [r4, #0x28]
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020107D4:
	bl sub_020122F8
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_020107DC: .word 0x020F5D98
	thumb_func_end sub_0201079C

	thumb_func_start sub_020107E0
sub_020107E0: ; 0x020107E0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201081A
	ldr r1, _02010824 ; =0x020F5D58
	add r0, sp, #0
	ldrh r2, [r1, #0x20]
	strh r2, [r0]
	ldrh r2, [r1, #0x22]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020125EC
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201081A:
	bl sub_0201262C
	add sp, #8
	pop {r4, pc}
	nop
_02010824: .word 0x020F5D58
	thumb_func_end sub_020107E0

	thumb_func_start sub_02010828
sub_02010828: ; 0x02010828
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010860
	ldr r1, _02010868 ; =0x020F5D58
	add r0, sp, #0
	ldrh r2, [r1, #0x18]
	strh r2, [r0]
	ldrh r2, [r1, #0x1a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020125EC
	mov r0, #0
	str r0, [r4, #0x28]
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010860:
	bl sub_0201262C
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_02010868: .word 0x020F5D58
	thumb_func_end sub_02010828

	thumb_func_start sub_0201086C
sub_0201086C: ; 0x0201086C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201088E
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010894 ; =0x020F5E98
	add r0, r4, #0
	bl sub_02011884
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201088E:
	bl sub_020118BC
	pop {r4, pc}
	.align 2, 0
_02010894: .word 0x020F5E98
	thumb_func_end sub_0201086C

	thumb_func_start sub_02010898
sub_02010898: ; 0x02010898
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020108B8
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020108C0 ; =0x020F5EE0
	add r0, r4, #0
	bl sub_02011884
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020108B8:
	bl sub_020118BC
	pop {r4, pc}
	nop
_020108C0: .word 0x020F5EE0
	thumb_func_end sub_02010898

	thumb_func_start sub_020108C4
sub_020108C4: ; 0x020108C4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020108E6
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020108EC ; =0x020F5DFC
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020108E6:
	bl sub_0201169C
	pop {r4, pc}
	.align 2, 0
_020108EC: .word 0x020F5DFC
	thumb_func_end sub_020108C4

	thumb_func_start sub_020108F0
sub_020108F0: ; 0x020108F0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010910
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010918 ; =0x020F5E50
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010910:
	bl sub_0201169C
	pop {r4, pc}
	nop
_02010918: .word 0x020F5E50
	thumb_func_end sub_020108F0

	thumb_func_start sub_0201091C
sub_0201091C: ; 0x0201091C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010944
	ldr r1, _0201094C ; =0x020F5D98
	ldr r0, _02010950 ; =0x0210F64C
	str r1, [r0, #0x5c]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010954 ; =0x0210F69C
	add r0, r4, #0
	bl sub_02012B1C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010944:
	bl sub_02012B80
	pop {r4, pc}
	nop
_0201094C: .word 0x020F5D98
_02010950: .word 0x0210F64C
_02010954: .word 0x0210F69C
	thumb_func_end sub_0201091C

	thumb_func_start sub_02010958
sub_02010958: ; 0x02010958
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201097E
	ldr r1, _02010984 ; =0x020F5DB0
	ldr r0, _02010988 ; =0x0210F64C
	str r1, [r0, #0x74]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _0201098C ; =0x0210F6B4
	add r0, r4, #0
	bl sub_02012B1C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201097E:
	bl sub_02012B80
	pop {r4, pc}
	.align 2, 0
_02010984: .word 0x020F5DB0
_02010988: .word 0x0210F64C
_0201098C: .word 0x0210F6B4
	thumb_func_end sub_02010958

	thumb_func_start sub_02010990
sub_02010990: ; 0x02010990
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020109B2
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020109B8 ; =0x020F5E74
	add r0, r4, #0
	bl sub_02012DD8
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020109B2:
	bl sub_02012E10
	pop {r4, pc}
	.align 2, 0
_020109B8: .word 0x020F5E74
	thumb_func_end sub_02010990

	thumb_func_start sub_020109BC
sub_020109BC: ; 0x020109BC
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	ldr r2, _020109D0 ; =0x021094DC
	add r1, r1, #1
	lsl r1, r1, #1
	ldr r3, _020109D4 ; =sub_020CCBA0
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bx r3
	.align 2, 0
_020109D0: .word 0x021094DC
_020109D4: .word sub_020CCBA0
	thumb_func_end sub_020109BC

	thumb_func_start sub_020109D8
sub_020109D8: ; 0x020109D8
	push {r4, lr}
	add r4, r1, #0
	bl sub_020109BC
	lsl r2, r4, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020F2948
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xc
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020109D8

	thumb_func_start sub_02010A00
sub_02010A00: ; 0x02010A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_020109BC
	cmp r6, r7
	bge _02010A4A
	lsl r1, r6, #2
	str r0, [sp]
	asr r0, r0, #0x1f
	lsl r4, r6, #0xc
	add r5, r5, r1
	str r0, [sp, #4]
_02010A1E:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	asr r3, r4, #0x1f
	add r2, r4, #0
	bl sub_020F2948
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _02010A50 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r0, r0, #0xc
	stmia r5!, {r0}
	mov r0, #1
	lsl r0, r0, #0xc
	add r6, r6, #1
	add r4, r4, r0
	cmp r6, r7
	blt _02010A1E
_02010A4A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02010A50: .word 0x00000000
	thumb_func_end sub_02010A00

	thumb_func_start sub_02010A54
sub_02010A54: ; 0x02010A54
	push {r4, lr}
	add r4, r1, #0
	bl sub_020109BC
	add r1, r0, #0
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r0, r0, #1
	lsl r0, r0, #0xc
	bl sub_020CCBA0
	pop {r4, pc}
	thumb_func_end sub_02010A54

	thumb_func_start sub_02010A6C
sub_02010A6C: ; 0x02010A6C
	ldr r3, _02010A78 ; =sub_020F2998
	sub r0, r1, r0
	lsl r0, r0, #7
	add r1, r2, #0
	bx r3
	nop
_02010A78: .word sub_020F2998
	thumb_func_end sub_02010A6C

	thumb_func_start sub_02010A7C
sub_02010A7C: ; 0x02010A7C
	add r0, r0, r1
	bpl _02010A82
	mov r0, #0
_02010A82:
	cmp r0, #0xff
	ble _02010A88
	mov r0, #0xff
_02010A88:
	bx lr
	.align 2, 0
	thumb_func_end sub_02010A7C

	thumb_func_start sub_02010A8C
sub_02010A8C: ; 0x02010A8C
	ldr r3, [r0]
	ldr r2, [r1]
	add r2, r3, r2
	str r2, [r0]
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	add r2, r3, r2
	str r2, [r0, #4]
	ldr r3, [r0, #8]
	ldr r2, [r1, #8]
	add r2, r3, r2
	str r2, [r0, #8]
	ldr r2, [r0, #0xc]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end sub_02010A8C

	thumb_func_start sub_02010AB0
sub_02010AB0: ; 0x02010AB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r6, r2, #0
	ldrb r2, [r5]
	ldr r4, [sp, #0x18]
	ldr r7, [sp, #0x1c]
	lsl r2, r2, #7
	str r2, [r0]
	ldrb r2, [r5, #1]
	lsl r2, r2, #7
	str r2, [r0, #4]
	ldrb r2, [r5, #2]
	lsl r2, r2, #7
	str r2, [r0, #8]
	ldrb r2, [r5, #3]
	lsl r2, r2, #7
	str r2, [r0, #0xc]
	ldrb r0, [r4]
	add r2, r7, #0
	str r0, [r1]
	ldrb r0, [r4, #1]
	str r0, [r1, #4]
	ldrb r0, [r4, #2]
	str r0, [r1, #8]
	ldrb r0, [r4, #3]
	str r0, [r1, #0xc]
	ldrb r0, [r5]
	ldrb r1, [r4]
	bl sub_02010A6C
	str r0, [r6]
	ldrb r0, [r5, #1]
	ldrb r1, [r4, #1]
	add r2, r7, #0
	bl sub_02010A6C
	str r0, [r6, #4]
	ldrb r0, [r5, #2]
	ldrb r1, [r4, #2]
	add r2, r7, #0
	bl sub_02010A6C
	str r0, [r6, #8]
	ldrb r0, [r5, #3]
	ldrb r1, [r4, #3]
	add r2, r7, #0
	bl sub_02010A6C
	str r0, [r6, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02010AB0

	thumb_func_start sub_02010B14
sub_02010B14: ; 0x02010B14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #0x1c
	bl sub_0201AA8C
	str r0, [r5, #0x14]
	mov r2, #0x1c
	mov r1, #0
_02010B28:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02010B28
	ldr r4, [r5, #0x14]
	cmp r6, #0
	ldrh r1, [r5, #0x24]
	ldr r0, _02010BB0 ; =0x00007FFF
	bne _02010B5C
	cmp r1, r0
	bne _02010B44
	mov r7, #0x10
	mov r6, #0
	b _02010B7C
_02010B44:
	cmp r1, #0
	bne _02010B50
	mov r7, #0xf
	mvn r7, r7
	mov r6, #0
	b _02010B7C
_02010B50:
	mov r7, #0xf
	mvn r7, r7
	mov r6, #0
	bl GF_AssertFail
	b _02010B7C
_02010B5C:
	cmp r1, r0
	bne _02010B66
	mov r7, #0
	mov r6, #0x10
	b _02010B7C
_02010B66:
	cmp r1, #0
	bne _02010B72
	mov r7, #0
	add r6, r7, #0
	sub r6, #0x10
	b _02010B7C
_02010B72:
	mov r7, #0
	add r6, r7, #0
	sub r6, #0x10
	bl GF_AssertFail
_02010B7C:
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	bl sub_0200FCFC
	ldr r0, [r5, #4]
	add r1, r6, #0
	str r0, [r4]
	ldr r0, [r5, #8]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	lsl r0, r7, #7
	str r0, [r4, #0xc]
	lsl r0, r6, #7
	str r0, [r4, #0x10]
	ldr r2, [r5, #4]
	add r0, r7, #0
	bl sub_02010A6C
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x18]
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02010BB0: .word 0x00007FFF
	thumb_func_end sub_02010B14

	thumb_func_start sub_02010BB4
sub_02010BB4: ; 0x02010BB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	mov r4, #0
	ldr r0, [r5, #0x14]
	cmp r1, #1
	beq _02010BCC
	cmp r1, #2
	beq _02010BDC
	cmp r1, #3
	beq _02010BEE
	b _02010BF0
_02010BCC:
	bl sub_02010BF4
	cmp r0, #1
	bne _02010BF0
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010BF0
_02010BDC:
	bl sub_0201AB0C
	add r0, r4, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r4, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02010BF0
_02010BEE:
	mov r4, #1
_02010BF0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02010BB4

	thumb_func_start sub_02010BF4
sub_02010BF4: ; 0x02010BF4
	push {r4, lr}
	add r1, r0, #0
	ldr r0, [r1, #8]
	mov r4, #0
	add r2, r0, #1
	str r2, [r1, #8]
	ldr r0, [r1, #4]
	cmp r2, r0
	blt _02010C32
	str r4, [r1, #8]
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #0
	ble _02010C1C
	str r0, [r1]
	ldr r2, [r1, #0xc]
	ldr r0, [r1, #0x14]
	add r0, r2, r0
	str r0, [r1, #0xc]
	b _02010C22
_02010C1C:
	ldr r0, [r1, #0x10]
	mov r4, #1
	str r0, [r1, #0xc]
_02010C22:
	ldr r2, [r1, #0xc]
	ldr r0, [r1, #0x18]
	asr r1, r2, #6
	lsr r1, r1, #0x19
	add r1, r2, r1
	asr r1, r1, #7
	bl sub_0200FCFC
_02010C32:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02010BF4

	thumb_func_start sub_02010C38
sub_02010C38: ; 0x02010C38
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bne _02010C42
	bl GF_AssertFail
_02010C42:
	ldr r0, _02010E54 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0xc0
	bge _02010CE8
	add r5, r0, #1
	cmp r5, #0xbf
	ble _02010C52
	sub r5, #0xc0
_02010C52:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02010D02
	add r0, r4, #0
	mov r1, #0
	bl sub_02010EE0
	ldr r3, [r4, #8]
	lsl r5, r5, #1
	mov r4, #6
	add r1, r0, r5
	lsl r4, r4, #6
	ldrsh r2, [r1, r4]
	lsl r4, r4, #2
	ldrsh r1, [r0, r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	ldr r0, _02010E58 ; =0x04000004
	bne _02010CBC
	cmp r3, #0
	bne _02010C9C
	ldrh r4, [r0]
	mov r3, #2
	tst r3, r4
	beq _02010CE8
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3c]
	mov r1, #0xc0
	add r0, #0x40
	strh r1, [r0]
	pop {r4, r5, r6, pc}
_02010C9C:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _02010CE8
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010E5C ; =0x04001040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	pop {r4, r5, r6, pc}
_02010CBC:
	cmp r3, #0
	bne _02010CE0
	ldrh r4, [r0]
	mov r3, #2
	tst r3, r4
	beq _02010CE8
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3e]
	mov r1, #0xc0
	add r0, #0x42
	strh r1, [r0]
	pop {r4, r5, r6, pc}
_02010CE0:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	bne _02010CEA
_02010CE8:
	b _02010E50
_02010CEA:
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010E60 ; =0x04001042
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	pop {r4, r5, r6, pc}
_02010D02:
	add r0, r4, #0
	mov r1, #0
	bl sub_02010EE0
	add r3, r0, #0
	lsl r5, r5, #1
	mov r6, #6
	add r1, r3, r5
	lsl r6, r6, #6
	ldrsh r2, [r1, r6]
	lsl r6, r6, #2
	ldrsh r1, [r3, r5]
	ldr r3, [r3, r6]
	ldr r0, [r4, #8]
	cmp r3, #0
	bne _02010D68
	cmp r0, #0
	ldr r0, _02010E58 ; =0x04000004
	bne _02010D48
	ldrh r6, [r0]
	mov r3, #2
	tst r3, r6
	beq _02010DAC
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3c]
	mov r1, #0xc0
	add r0, #0x40
	strh r1, [r0]
	b _02010DAC
_02010D48:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _02010DAC
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010E5C ; =0x04001040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	b _02010DAC
_02010D68:
	cmp r0, #0
	ldr r0, _02010E58 ; =0x04000004
	bne _02010D8E
	ldrh r6, [r0]
	mov r3, #2
	tst r3, r6
	beq _02010DAC
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3e]
	mov r1, #0xc0
	add r0, #0x42
	strh r1, [r0]
	b _02010DAC
_02010D8E:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _02010DAC
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010E60 ; =0x04001042
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
_02010DAC:
	add r0, r4, #0
	mov r1, #1
	bl sub_02010EE0
	ldr r3, [r4, #8]
	mov r4, #6
	add r1, r0, r5
	lsl r4, r4, #6
	ldrsh r2, [r1, r4]
	lsl r4, r4, #2
	ldrsh r1, [r0, r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	ldr r0, _02010E58 ; =0x04000004
	bne _02010E0E
	cmp r3, #0
	bne _02010DEE
	ldrh r4, [r0]
	mov r3, #2
	tst r3, r4
	beq _02010E50
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3c]
	mov r1, #0xc0
	add r0, #0x40
	strh r1, [r0]
	pop {r4, r5, r6, pc}
_02010DEE:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _02010E50
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010E5C ; =0x04001040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	pop {r4, r5, r6, pc}
_02010E0E:
	cmp r3, #0
	bne _02010E32
	ldrh r4, [r0]
	mov r3, #2
	tst r3, r4
	beq _02010E50
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3e]
	mov r1, #0xc0
	add r0, #0x42
	strh r1, [r0]
	pop {r4, r5, r6, pc}
_02010E32:
	ldrh r3, [r0]
	mov r0, #2
	tst r0, r3
	beq _02010E50
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02010E60 ; =0x04001042
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
_02010E50:
	pop {r4, r5, r6, pc}
	nop
_02010E54: .word 0x04000006
_02010E58: .word 0x04000004
_02010E5C: .word 0x04001040
_02010E60: .word 0x04001042
	thumb_func_end sub_02010C38

	thumb_func_start sub_02010E64
sub_02010E64: ; 0x02010E64
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	beq _02010E7A
	cmp r4, #1
	beq _02010E7A
	cmp r4, #2
	beq _02010E94
	pop {r4, r5, r6, pc}
_02010E7A:
	ldr r1, _02010EC0 ; =0x00000604
	add r0, r3, #0
	bl sub_0201AA8C
	str r0, [r5]
	mov r0, #1
	str r0, [r5, #4]
	str r6, [r5, #8]
	mov r0, #6
	ldr r1, [r5]
	lsl r0, r0, #8
	str r4, [r1, r0]
	pop {r4, r5, r6, pc}
_02010E94:
	ldr r1, _02010EC4 ; =0x00000C08
	add r0, r3, #0
	bl sub_0201AA8C
	str r0, [r5]
	mov r0, #2
	str r0, [r5, #4]
	mov r0, #6
	mov r3, #0
	lsl r0, r0, #8
	str r6, [r5, #8]
	add r4, r3, #0
	add r1, r0, #4
_02010EAE:
	ldr r2, [r5]
	add r2, r2, r4
	str r3, [r2, r0]
	add r3, r3, #1
	add r4, r4, r1
	cmp r3, #2
	blt _02010EAE
	pop {r4, r5, r6, pc}
	nop
_02010EC0: .word 0x00000604
_02010EC4: .word 0x00000C08
	thumb_func_end sub_02010E64

	thumb_func_start sub_02010EC8
sub_02010EC8: ; 0x02010EC8
	ldr r3, _02010ECC ; =sub_02010ED0
	bx r3
	.align 2, 0
_02010ECC: .word sub_02010ED0
	thumb_func_end sub_02010EC8

	thumb_func_start sub_02010ED0
sub_02010ED0: ; 0x02010ED0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0201AB0C
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02010ED0

	thumb_func_start sub_02010EE0
sub_02010EE0: ; 0x02010EE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, r4
	bgt _02010EF0
	bl GF_AssertFail
_02010EF0:
	ldr r0, _02010EFC ; =0x00000604
	ldr r1, [r5]
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	nop
_02010EFC: .word 0x00000604
	thumb_func_end sub_02010EE0

	thumb_func_start sub_02010F00
sub_02010F00: ; 0x02010F00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	ble _02010F2C
	mov r7, #3
	lsl r7, r7, #8
	add r6, r7, #0
_02010F14:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02010EE0
	add r1, r0, r6
	add r2, r7, #0
	bl sub_020E5AD8
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02010F14
_02010F2C:
	ldr r0, [sp]
	bl sub_0200E390
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02010F00

	thumb_func_start sub_02010F34
sub_02010F34: ; 0x02010F34
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r2, #0
	cmp r0, #0
	bne _02010F4C
	add r0, r5, #0
	mov r1, #0
	bl sub_02013424
	add sp, #0xc
	pop {r4, r5, pc}
_02010F4C:
	add r0, r5, #0
	mov r1, #1
	bl sub_02013424
	mov r2, #0
	add r0, r5, #0
	mov r1, #0x3f
	add r3, r2, #0
	str r4, [sp]
	bl sub_02013440
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	str r4, [sp, #8]
	bl sub_02013488
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02013468
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_02010F34

	thumb_func_start sub_02010F84
sub_02010F84: ; 0x02010F84
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	ldr r2, [sp, #0x34]
	add r6, r0, #0
	add r5, r3, #0
	ldr r4, [sp, #0x20]
	cmp r2, #0
	bne _02010FC0
	add r0, r1, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_02013220
	add r0, r7, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_020132A8
	str r5, [sp]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	str r4, [sp, #4]
	bl sub_02013364
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02010FC0:
	mov r2, #0
	str r4, [sp]
	bl sub_02013440
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_02013468
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x24]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, r6, #0
	str r4, [sp, #8]
	bl sub_02013488
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02010F84

	thumb_func_start sub_02010FEC
sub_02010FEC: ; 0x02010FEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r7, r3, #0
	bl sub_020132E8
	add r1, sp, #4
	strb r0, [r1, #1]
	ldrb r0, [r1, #1]
	strb r0, [r1, #3]
	add r0, r4, #0
	bl sub_0201333C
	add r1, sp, #4
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r7, #0
	strb r0, [r1, #2]
	bne _0201103E
	ldrb r0, [r1, #2]
	mov r1, #0
	add r2, r5, #0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	add r3, r4, #0
	bl sub_02013220
	add r0, sp, #4
	ldrb r0, [r0, #3]
	mov r1, #0
	add r2, r4, #0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	bl sub_020132A8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0201103E:
	str r4, [sp]
	ldrb r1, [r1, #2]
	add r0, r6, #0
	mov r2, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	add r3, r5, #0
	bl sub_02013440
	add r1, sp, #4
	ldrb r1, [r1, #3]
	add r0, r6, #0
	mov r2, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	add r3, r4, #0
	bl sub_02013468
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02010FEC

	thumb_func_start sub_02011068
sub_02011068: ; 0x02011068
	push {r3, lr}
	cmp r3, #0
	bne _02011078
	add r0, r1, #0
	add r1, r2, #0
	bl sub_020131F4
	pop {r3, pc}
_02011078:
	bl sub_02013424
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02011068

	thumb_func_start sub_02011080
sub_02011080: ; 0x02011080
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0xc3
	add r6, r1, #0
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	add r7, r3, #0
	bl sub_020E5B44
	cmp r4, #1
	bne _020110AA
	mov r0, #6
	lsl r0, r0, #6
	str r7, [r5, r0]
	mov r0, #0xc2
	lsl r0, r0, #2
	strb r4, [r5, r0]
	add r0, r0, #1
	strb r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020110AA:
	mov r0, #6
	lsl r0, r0, #6
	str r7, [r5, r0]
	mov r0, #0xc1
	ldr r1, [sp, #0x18]
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r1, r0, #4
	strb r4, [r5, r1]
	add r0, r0, #5
	strb r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02011080

	thumb_func_start sub_020110C4
sub_020110C4: ; 0x020110C4
	ldr r3, _020110D0 ; =sub_0200E374
	add r1, r0, #0
	ldr r0, _020110D4 ; =sub_02011104
	ldr r2, _020110D8 ; =0x000003FF
	bx r3
	nop
_020110D0: .word sub_0200E374
_020110D4: .word sub_02011104
_020110D8: .word 0x000003FF
	thumb_func_end sub_020110C4

	thumb_func_start sub_020110DC
sub_020110DC: ; 0x020110DC
	push {r3, lr}
	ldr r3, _020110EC ; =0x00000309
	str r2, [sp]
	ldrb r3, [r1, r3]
	ldr r2, _020110F0 ; =sub_02011130
	bl sub_0200FF88
	pop {r3, pc}
	.align 2, 0
_020110EC: .word 0x00000309
_020110F0: .word sub_02011130
	thumb_func_end sub_020110DC

	thumb_func_start sub_020110F4
sub_020110F4: ; 0x020110F4
	ldr r3, _020110FC ; =0x00000309
	ldrb r1, [r1, r3]
	ldr r3, _02011100 ; =sub_0200FFB4
	bx r3
	.align 2, 0
_020110FC: .word 0x00000309
_02011100: .word sub_0200FFB4
	thumb_func_end sub_020110F4

	thumb_func_start sub_02011104
sub_02011104: ; 0x02011104
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xc0
	add r6, r7, #0
	str r0, [sp]
	add r5, r1, #0
	mov r4, #0
	add r6, #0xc4
_02011112:
	add r0, r5, #0
	add r0, #0xc0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_020E5AD8
	add r4, r4, #1
	add r5, r5, r6
	cmp r4, #2
	blt _02011112
	ldr r0, [sp]
	bl sub_0200E390
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02011104

	thumb_func_start sub_02011130
sub_02011130: ; 0x02011130
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _0201113A
	bl GF_AssertFail
_0201113A:
	ldr r0, _02011428 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0xc0
	bge _020111BC
	add r0, r0, #1
	cmp r0, #0xbf
	ble _0201114A
	sub r0, #0xc0
_0201114A:
	mov r2, #0xc2
	lsl r2, r2, #2
	ldrb r1, [r4, r2]
	cmp r1, #1
	beq _02011156
	b _020112F0
_02011156:
	add r0, r4, r0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	bne _02011226
	add r0, r2, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, _0201142C ; =0x04000004
	bne _02011186
	ldrh r2, [r0]
	mov r1, #2
	tst r1, r2
	beq _020111A0
	add r0, #0x46
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x3f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	b _020111A0
_02011186:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _020111A0
	ldr r1, _02011430 ; =0x0400104A
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x3f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
_020111A0:
	ldr r0, _02011434 ; =0x00000309
	ldrb r1, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _020111EC
	cmp r1, #0
	bne _020111D0
	ldr r2, _0201142C ; =0x04000004
	mov r0, #2
	ldrh r1, [r2]
	tst r0, r1
	bne _020111BE
_020111BC:
	b _02011634
_020111BE:
	add r2, #0x44
	ldrh r1, [r2]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x20
	orr r1, r0
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_020111D0:
	ldr r0, _0201142C ; =0x04000004
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _020112D8
	ldr r1, _02011438 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_020111EC:
	cmp r1, #0
	ldr r0, _0201142C ; =0x04000004
	bne _0201120C
	ldrh r1, [r0]
	mov r2, #2
	tst r1, r2
	beq _020112D8
	add r0, #0x44
	ldrh r3, [r0]
	ldr r1, _0201143C ; =0xFFFFC0FF
	and r3, r1
	lsl r1, r2, #0xc
	orr r3, r1
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_0201120C:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _020112D8
	ldr r2, _02011438 ; =0x04001048
	ldr r0, _0201143C ; =0xFFFFC0FF
	ldrh r1, [r2]
	and r1, r0
	lsr r0, r2, #0xd
	orr r1, r0
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_02011226:
	add r0, r2, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, _0201142C ; =0x04000004
	bne _0201124A
	ldrh r2, [r0]
	mov r1, #2
	tst r1, r2
	beq _02011262
	add r0, #0x46
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x20
	orr r2, r1
	orr r1, r2
	strh r1, [r0]
	b _02011262
_0201124A:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02011262
	ldr r1, _02011430 ; =0x0400104A
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	orr r0, r2
	strh r0, [r1]
_02011262:
	ldr r0, _02011434 ; =0x00000309
	ldrb r1, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	ldr r0, _0201142C ; =0x04000004
	bne _020112AE
	cmp r1, #0
	bne _02011292
	ldrh r2, [r0]
	mov r1, #2
	tst r1, r2
	beq _020112D8
	add r0, #0x44
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x3f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_02011292:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _020112D8
	ldr r1, _02011438 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x3f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_020112AE:
	cmp r1, #0
	bne _020112D0
	ldrh r1, [r0]
	mov r2, #2
	tst r1, r2
	beq _020112D8
	add r0, #0x44
	ldrh r3, [r0]
	ldr r1, _0201143C ; =0xFFFFC0FF
	and r3, r1
	mov r1, #0x3f
	lsl r1, r1, #8
	orr r3, r1
	lsl r1, r2, #0xc
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_020112D0:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	bne _020112DA
_020112D8:
	b _02011634
_020112DA:
	ldr r2, _02011438 ; =0x04001048
	ldr r0, _0201143C ; =0xFFFFC0FF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x3f
	lsl r0, r0, #8
	orr r1, r0
	lsr r0, r2, #0xd
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_020112F0:
	add r1, r4, r0
	add r1, #0xc0
	ldrb r1, [r1]
	cmp r1, #0
	bne _020113BC
	add r1, r2, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	ldr r1, _0201142C ; =0x04000004
	bne _02011320
	ldrh r3, [r1]
	mov r2, #2
	tst r2, r3
	beq _0201133A
	add r1, #0x46
	ldrh r3, [r1]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x3f
	orr r3, r2
	mov r2, #0x20
	orr r2, r3
	strh r2, [r1]
	b _0201133A
_02011320:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _0201133A
	ldr r2, _02011430 ; =0x0400104A
	mov r1, #0x3f
	ldrh r3, [r2]
	bic r3, r1
	mov r1, #0x3f
	orr r3, r1
	mov r1, #0x20
	orr r1, r3
	strh r1, [r2]
_0201133A:
	ldr r1, _02011434 ; =0x00000309
	ldrb r2, [r4, r1]
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	cmp r1, #0
	ldr r1, _0201142C ; =0x04000004
	bne _02011382
	cmp r2, #0
	bne _02011368
	ldrh r3, [r1]
	mov r2, #2
	tst r2, r3
	beq _0201138E
	add r1, #0x44
	ldrh r3, [r1]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	orr r2, r3
	strh r2, [r1]
	b _0201149A
_02011368:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _0201138E
	ldr r2, _02011438 ; =0x04001048
	mov r1, #0x3f
	ldrh r3, [r2]
	bic r3, r1
	mov r1, #0x20
	orr r3, r1
	orr r1, r3
	strh r1, [r2]
	b _0201149A
_02011382:
	cmp r2, #0
	bne _020113A2
	ldrh r2, [r1]
	mov r3, #2
	tst r2, r3
	bne _02011390
_0201138E:
	b _0201149A
_02011390:
	add r1, #0x44
	ldrh r5, [r1]
	ldr r2, _0201143C ; =0xFFFFC0FF
	and r5, r2
	lsl r2, r3, #0xc
	orr r5, r2
	orr r2, r5
	strh r2, [r1]
	b _0201149A
_020113A2:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _0201149A
	ldr r3, _02011438 ; =0x04001048
	ldr r1, _0201143C ; =0xFFFFC0FF
	ldrh r2, [r3]
	and r2, r1
	lsr r1, r3, #0xd
	orr r2, r1
	orr r1, r2
	strh r1, [r3]
	b _0201149A
_020113BC:
	add r1, r2, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	ldr r1, _0201142C ; =0x04000004
	bne _020113E0
	ldrh r3, [r1]
	mov r2, #2
	tst r2, r3
	beq _020113F8
	add r1, #0x46
	ldrh r3, [r1]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	orr r2, r3
	strh r2, [r1]
	b _020113F8
_020113E0:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _020113F8
	ldr r2, _02011430 ; =0x0400104A
	mov r1, #0x3f
	ldrh r3, [r2]
	bic r3, r1
	mov r1, #0x20
	orr r3, r1
	orr r1, r3
	strh r1, [r2]
_020113F8:
	ldr r1, _02011434 ; =0x00000309
	ldrb r2, [r4, r1]
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	cmp r1, #0
	ldr r1, _0201142C ; =0x04000004
	bne _0201145C
	cmp r2, #0
	bne _02011440
	ldrh r3, [r1]
	mov r2, #2
	tst r2, r3
	beq _0201149A
	add r1, #0x44
	ldrh r3, [r1]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x3f
	orr r3, r2
	mov r2, #0x20
	orr r2, r3
	strh r2, [r1]
	b _0201149A
	.align 2, 0
_02011428: .word 0x04000006
_0201142C: .word 0x04000004
_02011430: .word 0x0400104A
_02011434: .word 0x00000309
_02011438: .word 0x04001048
_0201143C: .word 0xFFFFC0FF
_02011440:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _0201149A
	ldr r2, _02011638 ; =0x04001048
	mov r1, #0x3f
	ldrh r3, [r2]
	bic r3, r1
	mov r1, #0x3f
	orr r3, r1
	mov r1, #0x20
	orr r1, r3
	strh r1, [r2]
	b _0201149A
_0201145C:
	cmp r2, #0
	bne _0201147E
	ldrh r2, [r1]
	mov r3, #2
	tst r2, r3
	beq _0201149A
	add r1, #0x44
	ldrh r5, [r1]
	ldr r2, _0201163C ; =0xFFFFC0FF
	and r5, r2
	mov r2, #0x3f
	lsl r2, r2, #8
	orr r5, r2
	lsl r2, r3, #0xc
	orr r2, r5
	strh r2, [r1]
	b _0201149A
_0201147E:
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _0201149A
	ldr r3, _02011638 ; =0x04001048
	ldr r1, _0201163C ; =0xFFFFC0FF
	ldrh r2, [r3]
	and r2, r1
	mov r1, #0x3f
	lsl r1, r1, #8
	orr r2, r1
	lsr r1, r3, #0xd
	orr r1, r2
	strh r1, [r3]
_0201149A:
	mov r1, #0x61
	lsl r1, r1, #2
	add r1, r4, r1
	add r0, r1, r0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, _02011640 ; =0x00000309
	bne _02011570
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, _02011644 ; =0x04000004
	bne _020114D0
	ldrh r3, [r0]
	mov r2, #2
	tst r2, r3
	beq _020114EA
	add r0, #0x46
	ldrh r3, [r0]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x3f
	orr r3, r2
	mov r2, #0x20
	orr r2, r3
	strh r2, [r0]
	b _020114EA
_020114D0:
	ldrh r2, [r0]
	mov r0, #2
	tst r0, r2
	beq _020114EA
	ldr r2, _02011648 ; =0x0400104A
	mov r0, #0x3f
	ldrh r3, [r2]
	bic r3, r0
	mov r0, #0x3f
	orr r3, r0
	mov r0, #0x20
	orr r0, r3
	strh r0, [r2]
_020114EA:
	ldr r0, _02011640 ; =0x00000309
	ldrb r2, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02011536
	cmp r2, #0
	bne _02011518
	ldr r2, _02011644 ; =0x04000004
	mov r0, #2
	ldrh r1, [r2]
	tst r0, r1
	beq _02011522
	add r2, #0x44
	ldrh r1, [r2]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x20
	orr r1, r0
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_02011518:
	ldr r0, _02011644 ; =0x04000004
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	bne _02011524
_02011522:
	b _02011634
_02011524:
	ldr r1, _02011638 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_02011536:
	cmp r2, #0
	ldr r0, _02011644 ; =0x04000004
	bne _02011556
	ldrh r1, [r0]
	mov r2, #2
	tst r1, r2
	beq _02011634
	add r0, #0x44
	ldrh r3, [r0]
	ldr r1, _0201163C ; =0xFFFFC0FF
	and r3, r1
	lsl r1, r2, #0xc
	orr r3, r1
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_02011556:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02011634
	ldr r2, _02011638 ; =0x04001048
	ldr r0, _0201163C ; =0xFFFFC0FF
	ldrh r1, [r2]
	and r1, r0
	lsr r0, r2, #0xd
	orr r1, r0
	orr r0, r1
	strh r0, [r2]
	pop {r3, r4, r5, pc}
_02011570:
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, _02011644 ; =0x04000004
	bne _02011592
	ldrh r3, [r0]
	mov r2, #2
	tst r2, r3
	beq _020115AA
	add r0, #0x46
	ldrh r3, [r0]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	orr r2, r3
	strh r2, [r0]
	b _020115AA
_02011592:
	ldrh r2, [r0]
	mov r0, #2
	tst r0, r2
	beq _020115AA
	ldr r2, _02011648 ; =0x0400104A
	mov r0, #0x3f
	ldrh r3, [r2]
	bic r3, r0
	mov r0, #0x20
	orr r3, r0
	orr r0, r3
	strh r0, [r2]
_020115AA:
	ldr r0, _02011640 ; =0x00000309
	ldrb r2, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	ldr r0, _02011644 ; =0x04000004
	bne _020115F6
	cmp r2, #0
	bne _020115DA
	ldrh r2, [r0]
	mov r1, #2
	tst r1, r2
	beq _02011634
	add r0, #0x44
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x3f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_020115DA:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02011634
	ldr r1, _02011638 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x3f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
_020115F6:
	cmp r2, #0
	bne _02011618
	ldrh r1, [r0]
	mov r2, #2
	tst r1, r2
	beq _02011634
	add r0, #0x44
	ldrh r3, [r0]
	ldr r1, _0201163C ; =0xFFFFC0FF
	and r3, r1
	mov r1, #0x3f
	lsl r1, r1, #8
	orr r3, r1
	lsl r1, r2, #0xc
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_02011618:
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02011634
	ldr r2, _02011638 ; =0x04001048
	ldr r0, _0201163C ; =0xFFFFC0FF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x3f
	lsl r0, r0, #8
	orr r1, r0
	lsr r0, r2, #0xd
	orr r0, r1
	strh r0, [r2]
_02011634:
	pop {r3, r4, r5, pc}
	nop
_02011638: .word 0x04001048
_0201163C: .word 0xFFFFC0FF
_02011640: .word 0x00000309
_02011644: .word 0x04000004
_02011648: .word 0x0400104A
	thumb_func_end sub_02011130

	thumb_func_start sub_0201164C
sub_0201164C: ; 0x0201164C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #0x4c
	bl sub_0201AA8C
	str r0, [r5, #0x14]
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, r4, #0
	bl sub_020117A0
	ldrb r0, [r6, #8]
	cmp r0, #0
	ldr r0, [r5, #0x18]
	bne _02011688
	ldr r2, [r4, #0x30]
	ldr r3, [r4, #0x44]
	mov r1, #1
	bl sub_02011068
	b _02011692
_02011688:
	ldr r2, [r4, #0x30]
	ldr r3, [r4, #0x44]
	mov r1, #2
	bl sub_02011068
_02011692:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201164C

	thumb_func_start sub_0201169C
sub_0201169C: ; 0x0201169C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _020116B4
	cmp r0, #2
	beq _020116D0
	cmp r0, #3
	beq _020116E4
	b _020116E6
_020116B4:
	add r0, r4, #0
	bl sub_020117FC
	cmp r0, #1
	bne _020116E6
	ldr r0, [r4, #0x44]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _020116E6
_020116D0:
	add r0, r4, #0
	bl sub_0201AB0C
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _020116E6
_020116E4:
	mov r6, #1
_020116E6:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0201169C

	thumb_func_start sub_020116EC
sub_020116EC: ; 0x020116EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #0x98
	add r7, r2, #0
	bl sub_0201AA8C
	str r0, [r5, #0x14]
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, r4, #0
	bl sub_020117A0
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, #0x4c
	bl sub_020117A0
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #0x10]
	ldr r3, [r4, #0x44]
	mov r1, #3
	bl sub_02011068
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020116EC

	thumb_func_start sub_02011744
sub_02011744: ; 0x02011744
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r7, #0
	ldr r6, [r5, #0x14]
	cmp r0, #1
	beq _0201175C
	cmp r0, #2
	beq _02011784
	cmp r0, #3
	beq _02011798
	b _0201179A
_0201175C:
	add r0, r6, #0
	bl sub_020117FC
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0x4c
	bl sub_020117FC
	add r0, r4, r0
	cmp r0, #2
	bne _0201179A
	ldr r0, [r6, #0x44]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _0201179A
_02011784:
	add r0, r6, #0
	bl sub_0201AB0C
	add r0, r7, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r7, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _0201179A
_02011798:
	mov r7, #1
_0201179A:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02011744

	thumb_func_start sub_020117A0
sub_020117A0: ; 0x020117A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r1, r4, #4
	add r5, r0, #0
	add r6, r2, #0
	str r1, [sp]
	add r1, r5, #0
	add r2, r5, #0
	add r7, r3, #0
	add r1, #0x20
	add r2, #0x10
	add r3, r4, #0
	str r6, [sp, #4]
	bl sub_02010AB0
	ldr r1, [sp, #0x30]
	str r1, [r5, #0x30]
	ldrb r0, [r4, #8]
	str r0, [r5, #0x34]
	str r6, [r5, #0x38]
	str r7, [r5, #0x3c]
	mov r0, #0
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x34]
	str r0, [r5, #0x48]
	ldrb r2, [r4, #0xb]
	str r2, [r5, #0x44]
	str r1, [sp]
	ldrb r1, [r4]
	str r1, [sp, #4]
	ldrb r1, [r4, #1]
	str r1, [sp, #8]
	ldrb r1, [r4, #2]
	str r1, [sp, #0xc]
	ldrb r1, [r4, #3]
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x44]
	str r1, [sp, #0x14]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #0xa]
	ldrb r3, [r4, #8]
	bl sub_02010F84
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020117A0

	thumb_func_start sub_020117FC
sub_020117FC: ; 0x020117FC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #0x40]
	add r2, r1, #1
	str r2, [r4, #0x40]
	ldr r1, [r4, #0x3c]
	cmp r2, r1
	blt _0201187C
	mov r1, #0
	str r1, [r4, #0x40]
	ldr r1, [r4, #0x38]
	sub r1, r1, #1
	cmp r1, #0
	ble _02011826
	str r1, [r4, #0x38]
	add r1, r4, #0
	add r1, #0x10
	bl sub_02010A8C
	b _02011844
_02011826:
	ldr r0, [r4, #0x2c]
	str r0, [sp]
	ldr r0, [r4, #0x34]
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	str r0, [sp, #8]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	bl sub_02013488
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02011844:
	ldr r1, [r4, #0xc]
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r0, r0, #7
	str r0, [sp]
	ldr r0, [r4, #0x34]
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	str r0, [sp, #8]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	asr r1, r2, #6
	lsr r1, r1, #0x19
	add r1, r2, r1
	ldr r0, [r4, #0x48]
	asr r2, r3, #6
	lsr r2, r2, #0x19
	add r2, r3, r2
	ldr r4, [r4, #8]
	asr r1, r1, #7
	asr r3, r4, #6
	lsr r3, r3, #0x19
	add r3, r4, r3
	asr r2, r2, #7
	asr r3, r3, #7
	bl sub_02013488
_0201187C:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_020117FC

	thumb_func_start sub_02011884
sub_02011884: ; 0x02011884
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x38
	bl sub_0201AA8C
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011918
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011884

	thumb_func_start sub_020118BC
sub_020118BC: ; 0x020118BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _020118D4
	cmp r0, #2
	beq _020118F0
	cmp r0, #3
	beq _0201190A
	b _0201190E
_020118D4:
	add r0, r4, #0
	bl sub_020119F4
	cmp r0, #1
	bne _02011912
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011912
_020118F0:
	add r0, r4, #0
	bl sub_02010EC8
	ldr r0, [r5, #0x14]
	bl sub_0201AB0C
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011912
_0201190A:
	mov r6, #1
	b _02011912
_0201190E:
	bl GF_AssertFail
_02011912:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_020118BC

	thumb_func_start sub_02011918
sub_02011918: ; 0x02011918
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	mov r1, #2
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	bl sub_02010A6C
	str r0, [sp, #0x20]
	ldrb r1, [r4, #8]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02010E64
	mov r0, #0
	ldrsh r1, [r4, r0]
	lsl r1, r1, #7
	str r1, [r5, #0xc]
	mov r1, #4
	ldrsh r1, [r4, r1]
	str r1, [r5, #0x10]
	mov r1, #6
	ldrsh r1, [r4, r1]
	str r1, [r5, #0x14]
	ldr r1, [sp, #0x20]
	str r1, [r5, #0x18]
	ldr r1, [sp, #0x18]
	str r1, [r5, #0x1c]
	ldr r1, [sp, #0x1c]
	str r1, [r5, #0x20]
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x28]
	ldrb r0, [r4, #0xb]
	str r0, [r5, #0x2c]
	add r0, r5, #0
	bl sub_02011AD8
	ldr r0, _020119E8 ; =sub_02010F00
	ldr r2, _020119EC ; =0x000003FF
	add r1, r5, #0
	bl sub_0200E374
	add r0, r5, #0
	mov r1, #0
	bl sub_02010EE0
	mov r1, #3
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x12
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #0xa]
	ldrb r3, [r4, #8]
	add r0, r7, #0
	bl sub_02010F84
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _020119C8
	ldr r3, [r5, #0x2c]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_02011068
	b _020119D4
_020119C8:
	ldr r3, [r5, #0x2c]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02011068
_020119D4:
	ldr r0, [sp, #0x44]
	ldr r2, _020119F0 ; =sub_02010C38
	str r0, [sp]
	ldr r0, [r5, #0x34]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200FF88
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020119E8: .word sub_02010F00
_020119EC: .word 0x000003FF
_020119F0: .word sub_02010C38
	thumb_func_end sub_02011918

	thumb_func_start sub_020119F4
sub_020119F4: ; 0x020119F4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	add r2, r1, #1
	str r2, [r4, #0x24]
	ldr r1, [r4, #0x20]
	cmp r2, r1
	blt _02011A38
	mov r1, #0
	str r1, [r4, #0x24]
	ldr r1, [r4, #0x1c]
	sub r1, r1, #1
	cmp r1, #0
	ble _02011A2A
	str r1, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x18]
	add r1, r2, r1
	str r1, [r4, #0xc]
	bl sub_02011AD8
	ldr r0, _02011A3C ; =sub_02010F00
	ldr r2, _02011A40 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200E374
	b _02011A38
_02011A2A:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x28]
	bl sub_0200FFB4
	mov r0, #1
	pop {r4, pc}
_02011A38:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02011A3C: .word sub_02010F00
_02011A40: .word 0x000003FF
	thumb_func_end sub_020119F4

	thumb_func_start sub_02011A44
sub_02011A44: ; 0x02011A44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	asr r1, r0, #6
	lsr r1, r1, #0x19
	add r1, r0, r1
	asr r1, r1, #7
	ldr r5, [sp, #0x20]
	ldr r4, [sp, #0x24]
	sub r0, r3, r2
	bpl _02011A5C
	neg r0, r0
_02011A5C:
	cmp r0, r1
	blt _02011A6A
	mov r0, #0
	str r0, [r5]
	add sp, #0xc
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_02011A6A:
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	asr r7, r0, #0x1f
	lsl r0, r1, #0xc
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl sub_020F2948
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r6, r1, #0
	add r1, r7, #0
	add r2, r0, #0
	add r3, r7, #0
	bl sub_020F2948
	add r2, r0, #0
	add r3, r1, #0
	mov r0, #2
	ldr r1, [sp, #8]
	mov r7, #0
	lsl r0, r0, #0xa
	add r0, r1, r0
	adc r6, r7
	lsl r1, r6, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r2, r1
	adc r3, r7
	lsl r1, r3, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r0, r0, r2
	bl sub_020CCBEC
	asr r2, r0, #0xc
	ldr r0, [sp]
	sub r0, r0, r2
	str r0, [r5]
	bpl _02011AC4
	add r0, r7, #0
	str r0, [r5]
_02011AC4:
	ldr r1, [r5]
	lsl r0, r2, #1
	add r0, r1, r0
	str r0, [r4]
	cmp r0, #0xff
	ble _02011AD4
	mov r0, #0xff
	str r0, [r4]
_02011AD4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02011A44

	thumb_func_start sub_02011AD8
sub_02011AD8: ; 0x02011AD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0
	add r5, r0, #0
	bl sub_02010EE0
	add r7, r0, #0
	mov r4, #0
	add r6, r7, #0
_02011AEA:
	ldr r2, [r5, #0x14]
	cmp r4, r2
	bgt _02011B04
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	add r3, r4, #0
	bl sub_02011A44
	b _02011B3E
_02011B04:
	lsl r0, r2, #1
	cmp r4, r0
	bgt _02011B2C
	sub r0, r0, r4
	lsl r0, r0, #1
	add r1, r7, r0
	mov r0, #3
	lsl r0, r0, #8
	ldrsh r0, [r1, r0]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	lsl r0, r0, #1
	sub r0, r0, r4
	lsl r0, r0, #1
	add r1, r7, r0
	mov r0, #0x12
	lsl r0, r0, #6
	ldrsh r0, [r1, r0]
	str r0, [sp, #8]
	b _02011B3E
_02011B2C:
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	add r3, r4, #0
	bl sub_02011A44
_02011B3E:
	mov r0, #3
	ldr r1, [sp, #0xc]
	lsl r0, r0, #8
	strh r1, [r6, r0]
	mov r0, #0x12
	ldr r1, [sp, #8]
	lsl r0, r0, #6
	strh r1, [r6, r0]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #0xc0
	blt _02011AEA
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02011AD8

	thumb_func_start sub_02011B5C
sub_02011B5C: ; 0x02011B5C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x30
	bl sub_0201AA8C
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011BF0
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011B5C

	thumb_func_start sub_02011B94
sub_02011B94: ; 0x02011B94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02011BAC
	cmp r0, #2
	beq _02011BC8
	cmp r0, #3
	beq _02011BE2
	b _02011BE6
_02011BAC:
	add r0, r4, #0
	bl sub_02011CB8
	cmp r0, #1
	bne _02011BEA
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011BEA
_02011BC8:
	add r0, r4, #0
	bl sub_02010EC8
	ldr r0, [r5, #0x14]
	bl sub_0201AB0C
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011BEA
_02011BE2:
	mov r6, #1
	b _02011BEA
_02011BE6:
	bl GF_AssertFail
_02011BEA:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02011B94

	thumb_func_start sub_02011BF0
sub_02011BF0: ; 0x02011BF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	bl sub_02010A6C
	str r0, [r5, #0x10]
	ldrb r1, [r4, #4]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02010E64
	ldrh r0, [r4]
	lsl r0, r0, #7
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x24]
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x2c]
	ldrb r0, [r4, #7]
	str r0, [r5, #0x20]
	add r0, r5, #0
	bl sub_02011D08
	ldr r0, _02011CAC ; =sub_02010F00
	ldr r2, _02011CB0 ; =0x000003FF
	add r1, r5, #0
	bl sub_0200E374
	add r0, r5, #0
	mov r1, #0
	bl sub_02010EE0
	mov r1, #3
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x12
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #6]
	ldrb r3, [r4, #4]
	add r0, r7, #0
	bl sub_02010F84
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02011C8C
	ldr r3, [r5, #0x20]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_02011068
	b _02011C98
_02011C8C:
	ldr r3, [r5, #0x20]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02011068
_02011C98:
	ldr r0, [sp, #0x44]
	ldr r2, _02011CB4 ; =sub_02010C38
	str r0, [sp]
	ldr r0, [r5, #0x28]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200FF88
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02011CAC: .word sub_02010F00
_02011CB0: .word 0x000003FF
_02011CB4: .word sub_02010C38
	thumb_func_end sub_02011BF0

	thumb_func_start sub_02011CB8
sub_02011CB8: ; 0x02011CB8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	add r2, r1, #1
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	cmp r2, r1
	blt _02011CFC
	mov r1, #0
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	sub r1, r1, #1
	cmp r1, #0
	ble _02011CEE
	str r1, [r4, #0x14]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r1, r2, r1
	str r1, [r4, #0xc]
	bl sub_02011D08
	ldr r0, _02011D00 ; =sub_02010F00
	ldr r2, _02011D04 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200E374
	b _02011CFC
_02011CEE:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x2c]
	bl sub_0200FFB4
	mov r0, #1
	pop {r4, pc}
_02011CFC:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02011D00: .word sub_02010F00
_02011D04: .word 0x000003FF
	thumb_func_end sub_02011CB8

	thumb_func_start sub_02011D08
sub_02011D08: ; 0x02011D08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x104
	add r4, r0, #0
	mov r1, #0
	bl sub_02010EE0
	ldr r1, [r4, #0xc]
	add r5, r0, #0
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r0, r0, #7
	add r1, sp, #0
	mov r2, #0xc0
	mov r3, #0
	bl sub_02010A00
	mov r7, #0x12
	mov r6, #0
	add r4, sp, #0
	lsl r7, r7, #6
_02011D34:
	ldr r1, [r4]
	mov r0, #0x80
	neg r1, r1
	bl sub_02010A7C
	mov r1, #3
	lsl r1, r1, #8
	strh r0, [r5, r1]
	ldr r1, [r4]
	mov r0, #0x80
	bl sub_02010A7C
	strh r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #2
	cmp r6, #0xc0
	blt _02011D34
	add sp, #0x1fc
	add sp, #0x104
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02011D08

	thumb_func_start sub_02011D60
sub_02011D60: ; 0x02011D60
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x34
	bl sub_0201AA8C
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02011DEC
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011D60

	thumb_func_start sub_02011D98
sub_02011D98: ; 0x02011D98
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02011DB0
	cmp r0, #2
	beq _02011DCC
	cmp r0, #3
	beq _02011DE6
	b _02011DE8
_02011DB0:
	add r0, r4, #0
	bl sub_02011EC0
	cmp r0, #1
	bne _02011DE8
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011DE8
_02011DCC:
	add r0, r4, #0
	bl sub_02010EC8
	ldr r0, [r5, #0x14]
	bl sub_0201AB0C
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02011DE8
_02011DE6:
	mov r6, #1
_02011DE8:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02011D98

	thumb_func_start sub_02011DEC
sub_02011DEC: ; 0x02011DEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	ldrh r1, [r4, #2]
	ldrh r0, [r4]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	sub r0, r1, r0
	add r1, r2, #0
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	bl sub_020F2998
	str r0, [sp, #0x20]
	ldrb r1, [r4, #4]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02010E64
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [r5, #0xc]
	ldrh r0, [r4]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x1c]
	mov r0, #0
	str r0, [r5, #0x20]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x28]
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x30]
	ldrb r0, [r4, #7]
	str r0, [r5, #0x24]
	add r0, r5, #0
	bl sub_02011F10
	ldr r0, _02011EB4 ; =sub_02010F00
	ldr r2, _02011EB8 ; =0x000003FF
	add r1, r5, #0
	bl sub_0200E374
	add r0, r5, #0
	mov r1, #0
	bl sub_02010EE0
	mov r1, #0xf
	str r6, [sp]
	lsl r1, r1, #6
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x15
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #6]
	ldrb r3, [r4, #4]
	add r0, r7, #0
	bl sub_02010F84
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02011E94
	ldr r3, [r5, #0x24]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_02011068
	b _02011EA0
_02011E94:
	ldr r3, [r5, #0x24]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02011068
_02011EA0:
	ldr r0, [sp, #0x44]
	ldr r2, _02011EBC ; =sub_02010C38
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200FF88
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02011EB4: .word sub_02010F00
_02011EB8: .word 0x000003FF
_02011EBC: .word sub_02010C38
	thumb_func_end sub_02011DEC

	thumb_func_start sub_02011EC0
sub_02011EC0: ; 0x02011EC0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x20]
	add r2, r1, #1
	str r2, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	cmp r2, r1
	blt _02011F04
	mov r1, #0
	str r1, [r4, #0x20]
	ldr r1, [r4, #0x18]
	sub r1, r1, #1
	cmp r1, #0
	ble _02011EF6
	str r1, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r1, r2, r1
	str r1, [r4, #0x10]
	bl sub_02011F10
	ldr r0, _02011F08 ; =sub_02010F00
	ldr r2, _02011F0C ; =0x000003FF
	add r1, r4, #0
	bl sub_0200E374
	b _02011F04
_02011EF6:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x30]
	bl sub_0200FFB4
	mov r0, #1
	pop {r4, pc}
_02011F04:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02011F08: .word sub_02010F00
_02011F0C: .word 0x000003FF
	thumb_func_end sub_02011EC0

	thumb_func_start sub_02011F10
sub_02011F10: ; 0x02011F10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x110
	add r4, r0, #0
	mov r1, #0
	bl sub_02010EE0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0xc]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02011FF0 ; =0x021094DC
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020F2948
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r7, r1, #0xc
	lsl r0, r7, #1
	mov r1, #0x15
	bl sub_020F2998
	add r0, r0, #1
	lsl r0, r0, #1
	mov r1, #0xb4
	sub r2, r1, r0
	ldr r0, _02011FF4 ; =0x0000FFFF
	add r1, #0xb4
	mul r0, r2
	bl sub_020F2998
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r4, r1, #1
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_02010A54
	asr r0, r0, #0xc
	str r0, [sp, #4]
	cmp r0, #0xc0
	blt _02011F7C
	bl GF_AssertFail
_02011F7C:
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0xc
	mov r3, #0
	bl sub_02010A00
	ldr r5, [sp]
	mov r4, #0
_02011F8C:
	ldr r0, [sp, #4]
	add r1, r4, #1
	sub r0, r0, r1
	add r6, r7, #0
	cmp r0, #0
	ble _02011FA4
	lsl r1, r0, #2
	add r0, sp, #0xc
	ldr r0, [r0, r1]
	cmp r0, r7
	ble _02011FA4
	add r6, r0, #0
_02011FA4:
	mov r0, #0x80
	neg r1, r6
	bl sub_02010A7C
	str r0, [sp, #8]
	mov r0, #0x80
	add r1, r6, #0
	bl sub_02010A7C
	ldr r1, [sp, #8]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
	mov r1, #3
	lsl r1, r1, #8
	strh r2, [r5, r1]
	asr r1, r0, #0x10
	mov r0, #0x12
	lsl r0, r0, #6
	strh r1, [r5, r0]
	mov r0, #0xbf
	sub r0, r0, r4
	lsl r3, r0, #1
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, r3
	mov r3, #3
	lsl r3, r3, #8
	strh r2, [r0, r3]
	mov r2, #0x12
	lsl r2, r2, #6
	add r5, r5, #2
	strh r1, [r0, r2]
	cmp r4, #0x60
	blt _02011F8C
	add sp, #0x1fc
	add sp, #0x110
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02011FF0: .word 0x021094DC
_02011FF4: .word 0x0000FFFF
	thumb_func_end sub_02011F10

	thumb_func_start sub_02011FF8
sub_02011FF8: ; 0x02011FF8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x30
	bl sub_0201AA8C
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02012090
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02011FF8

	thumb_func_start sub_02012030
sub_02012030: ; 0x02012030
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02012048
	cmp r0, #2
	beq _02012064
	cmp r0, #3
	beq _02012084
	b _02012088
_02012048:
	add r0, r4, #0
	bl sub_020121A4
	cmp r0, #1
	bne _0201208C
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _0201208C
_02012064:
	add r0, r4, #0
	bl sub_020121F4
	add r0, r4, #0
	bl sub_02010EC8
	ldr r0, [r5, #0x14]
	bl sub_0201AB0C
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _0201208C
_02012084:
	mov r6, #1
	b _0201208C
_02012088:
	bl GF_AssertFail
_0201208C:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02012030

	thumb_func_start sub_02012090
sub_02012090: ; 0x02012090
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r6, r0, #0
	str r2, [sp, #0x18]
	ldr r0, [sp, #0x38]
	ldrh r2, [r5, #8]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x44]
	mov r1, #0x30
	mul r1, r2
	str r3, [sp, #0x1c]
	str r0, [sp, #0x44]
	bl sub_0201AA8C
	str r0, [r6, #0xc]
	cmp r0, #0
	bne _020120B8
	bl GF_AssertFail
_020120B8:
	ldrh r0, [r5, #8]
	str r0, [r6, #0x10]
	mov r0, #0
	str r0, [sp, #0x20]
	ldrh r0, [r5, #8]
	cmp r0, #0
	ble _020120F8
	ldr r4, [sp, #0x20]
	add r7, r4, #0
_020120CA:
	ldr r0, [r5, #4]
	ldr r2, [r6, #0xc]
	add r0, r0, r4
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	add r0, r2, r7
	ldr r3, [r5]
	add r1, r0, #0
	add r2, r2, r7
	add r1, #0x20
	add r2, #0x10
	add r3, r3, r4
	bl sub_02010AB0
	ldr r0, [sp, #0x20]
	ldrh r1, [r5, #8]
	add r0, r0, #1
	add r4, r4, #4
	add r7, #0x30
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _020120CA
_020120F8:
	ldrh r1, [r5, #0xa]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x44]
	add r0, r6, #0
	bl sub_02010E64
	ldr r0, [sp, #0x18]
	str r0, [r6, #0x14]
	ldr r0, [sp, #0x1c]
	str r0, [r6, #0x18]
	mov r0, #0
	str r0, [r6, #0x1c]
	ldr r0, [sp, #0x3c]
	str r0, [r6, #0x24]
	ldr r0, [sp, #0x40]
	str r0, [r6, #0x28]
	ldr r0, [sp, #0x44]
	str r0, [r6, #0x2c]
	ldrh r0, [r5, #0xe]
	str r0, [r6, #0x20]
	add r0, r6, #0
	bl sub_02012204
	ldr r0, _02012198 ; =sub_02010F00
	ldr r2, _0201219C ; =0x000003FF
	add r1, r6, #0
	bl sub_0200E374
	add r0, r6, #0
	mov r1, #0
	bl sub_02010EE0
	ldr r1, [sp, #0x38]
	str r1, [sp]
	mov r1, #3
	lsl r1, r1, #8
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x12
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0x14]
	ldrb r1, [r5, #0xc]
	ldrb r2, [r5, #0xd]
	ldrh r3, [r5, #0xa]
	ldr r0, [sp, #0x3c]
	bl sub_02010F84
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	ldr r0, [r6, #0x24]
	bne _02012178
	ldr r2, [sp, #0x38]
	ldr r3, [r6, #0x20]
	mov r1, #1
	bl sub_02011068
	b _02012182
_02012178:
	ldr r2, [sp, #0x38]
	ldr r3, [r6, #0x20]
	mov r1, #2
	bl sub_02011068
_02012182:
	ldr r0, [sp, #0x44]
	ldr r2, _020121A0 ; =sub_02010C38
	str r0, [sp]
	ldr r0, [r6, #0x28]
	ldr r3, [sp, #0x38]
	add r1, r6, #0
	bl sub_0200FF88
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02012198: .word sub_02010F00
_0201219C: .word 0x000003FF
_020121A0: .word sub_02010C38
	thumb_func_end sub_02012090

	thumb_func_start sub_020121A4
sub_020121A4: ; 0x020121A4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	add r2, r1, #1
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	cmp r2, r1
	blt _020121E6
	mov r1, #0
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	sub r1, r1, #1
	cmp r1, #0
	ble _020121D8
	str r1, [r4, #0x14]
	bl sub_02012290
	add r0, r4, #0
	bl sub_02012204
	ldr r0, _020121EC ; =sub_02010F00
	ldr r2, _020121F0 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200E374
	b _020121E6
_020121D8:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x2c]
	bl sub_0200FFB4
	mov r0, #1
	pop {r4, pc}
_020121E6:
	mov r0, #0
	pop {r4, pc}
	nop
_020121EC: .word sub_02010F00
_020121F0: .word 0x000003FF
	thumb_func_end sub_020121A4

	thumb_func_start sub_020121F4
sub_020121F4: ; 0x020121F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0201AB0C
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end sub_020121F4

	thumb_func_start sub_02012204
sub_02012204: ; 0x02012204
	push {r4, r5, r6, lr}
	mov r1, #0
	add r6, r0, #0
	bl sub_02010EE0
	mov r2, #3
	lsl r2, r2, #8
	add r0, r0, r2
	mov r1, #0
	bl sub_020E5B44
	ldr r0, [r6, #0x10]
	sub r4, r0, #1
	bmi _02012236
	mov r0, #0x30
	add r5, r4, #0
	mul r5, r0
_02012226:
	ldr r1, [r6, #0xc]
	add r0, r6, #0
	add r1, r1, r5
	bl sub_02012238
	sub r5, #0x30
	sub r4, r4, #1
	bpl _02012226
_02012236:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02012204

	thumb_func_start sub_02012238
sub_02012238: ; 0x02012238
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_02010EE0
	ldr r2, [r4]
	ldr r3, [r4, #8]
	asr r1, r2, #6
	lsr r1, r1, #0x19
	add r1, r2, r1
	asr r2, r1, #7
	asr r1, r3, #6
	ldr r5, [r4, #0xc]
	lsr r1, r1, #0x19
	add r1, r3, r1
	asr r3, r5, #6
	lsr r3, r3, #0x19
	add r3, r5, r3
	ldr r4, [r4, #4]
	asr r5, r3, #7
	asr r3, r4, #6
	lsr r3, r3, #0x19
	add r3, r4, r3
	asr r3, r3, #7
	asr r1, r1, #7
	cmp r3, r5
	bge _0201228E
	lsl r4, r3, #1
	lsl r1, r1, #0x10
	add r4, r0, r4
	lsl r0, r2, #0x10
	asr r6, r1, #0x10
	mov r1, #3
	mov r2, #0x12
	asr r0, r0, #0x10
	lsl r1, r1, #8
	lsl r2, r2, #6
_02012282:
	strh r0, [r4, r1]
	strh r6, [r4, r2]
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, r5
	blt _02012282
_0201228E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02012238

	thumb_func_start sub_02012290
sub_02012290: ; 0x02012290
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _020122B4
	add r4, r6, #0
_0201229E:
	ldr r1, [r5, #0xc]
	add r0, r1, r4
	add r1, r1, r4
	add r1, #0x10
	bl sub_02010A8C
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x30
	cmp r6, r0
	blt _0201229E
_020122B4:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02012290

	thumb_func_start sub_020122B8
sub_020122B8: ; 0x020122B8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x38
	bl sub_0201AA8C
	str r0, [r5, #0x14]
	mov r1, #0
	mov r2, #0x38
	bl sub_020E5B44
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02012358
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020122B8

	thumb_func_start sub_020122F8
sub_020122F8: ; 0x020122F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02012310
	cmp r0, #2
	beq _0201232C
	cmp r0, #3
	beq _0201234C
	b _02012350
_02012310:
	add r0, r4, #0
	bl sub_02012454
	cmp r0, #1
	bne _02012354
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012354
_0201232C:
	add r0, r4, #0
	bl sub_020124AC
	add r0, r4, #0
	bl sub_02010EC8
	ldr r0, [r5, #0x14]
	bl sub_0201AB0C
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012354
_0201234C:
	mov r6, #1
	b _02012354
_02012350:
	bl GF_AssertFail
_02012354:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020122F8

	thumb_func_start sub_02012358
sub_02012358: ; 0x02012358
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	str r1, [r5, #0xc]
	ldrh r1, [r4]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r1, [r5, #0x10]
	ldrh r2, [r4, #2]
	ldrh r1, [r4]
	ldr r6, [sp, #0x40]
	ldr r3, [sp, #0x4c]
	sub r1, r2, r1
	str r1, [r5, #0x14]
	mov r1, #2
	add r2, r6, #0
	ldr r7, [sp, #0x44]
	bl sub_02010E64
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
	ldr r0, [sp, #0x48]
	str r7, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x4c]
	str r0, [r5, #0x2c]
	ldrh r0, [r4, #6]
	str r0, [r5, #0x28]
	add r0, r5, #0
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x18]
	add r0, #0xc
	bl sub_020125D4
	add r0, r5, #0
	bl sub_020124B0
	ldr r0, _02012448 ; =sub_02010F00
	ldr r2, _0201244C ; =0x000003FF
	add r1, r5, #0
	bl sub_0200E374
	add r0, r5, #0
	mov r1, #0
	bl sub_02010EE0
	str r0, [sp, #0x20]
	add r0, r5, #0
	mov r1, #1
	bl sub_02010EE0
	str r0, [sp, #0x24]
	mov r1, #3
	ldr r0, [sp, #0x20]
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r0, [r0, r1]
	mov r1, #0x12
	mov r3, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r3, [sp, #8]
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	bl sub_02010F84
	mov r1, #3
	ldr r0, [sp, #0x24]
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r0, [r0, r1]
	mov r1, #0x12
	lsl r1, r1, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	mov r3, #1
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	bl sub_02010F84
	ldr r3, [r5, #0x28]
	add r0, r7, #0
	mov r1, #3
	add r2, r6, #0
	bl sub_02011068
	ldr r0, [sp, #0x4c]
	ldr r2, _02012450 ; =sub_02010C38
	str r0, [sp]
	ldr r0, [r5, #0x34]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200FF88
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02012448: .word sub_02010F00
_0201244C: .word 0x000003FF
_02012450: .word sub_02010C38
	thumb_func_end sub_02012358

	thumb_func_start sub_02012454
sub_02012454: ; 0x02012454
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r0, #1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _0201249E
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bgt _02012490
	str r1, [r4, #0x1c]
	add r0, r4, #0
	ldr r2, [r4, #0x18]
	add r0, #0xc
	bl sub_020125D4
	add r0, r4, #0
	bl sub_020124B0
	ldr r0, _020124A4 ; =sub_02010F00
	ldr r2, _020124A8 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200E374
	b _0201249E
_02012490:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x2c]
	bl sub_0200FFB4
	mov r0, #1
	pop {r4, pc}
_0201249E:
	mov r0, #0
	pop {r4, pc}
	nop
_020124A4: .word sub_02010F00
_020124A8: .word 0x000003FF
	thumb_func_end sub_02012454

	thumb_func_start sub_020124AC
sub_020124AC: ; 0x020124AC
	bx lr
	.align 2, 0
	thumb_func_end sub_020124AC

	thumb_func_start sub_020124B0
sub_020124B0: ; 0x020124B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [r0, #0xc]
	ldr r1, _020125D0 ; =0x00003FFF
	bl sub_020F2998
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r1, #0
	bl sub_02010EE0
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #1
	bl sub_02010EE0
	add r4, r0, #0
	mov r6, #0
	add r5, r4, #0
_020124DC:
	ldr r0, [sp]
	ldr r1, [r0, #0xc]
	ldr r0, _020125D0 ; =0x00003FFF
	cmp r1, r0
	bge _02012520
	mov r1, #0x60
	ldr r0, [sp, #4]
	sub r1, r1, r6
	bl sub_020109D8
	cmp r0, #0x7f
	ble _020124F6
	mov r0, #0x7f
_020124F6:
	mov r1, #0xbf
	sub r1, r1, r6
	lsl r1, r1, #1
	add r3, r7, r1
	mov r1, #0x80
	sub r2, r1, r0
	mov r1, #3
	lsl r1, r1, #8
	strh r2, [r3, r1]
	mov r1, #0x12
	mov r2, #0x80
	lsl r1, r1, #6
	strh r2, [r3, r1]
	mov r1, #3
	lsl r1, r1, #8
	strh r2, [r5, r1]
	mov r1, #0x12
	add r0, #0x80
	lsl r1, r1, #6
	strh r0, [r5, r1]
	b _02012548
_02012520:
	mov r0, #0xbf
	sub r0, r0, r6
	lsl r0, r0, #1
	mov r1, #3
	add r0, r7, r0
	mov r2, #0
	lsl r1, r1, #8
	strh r2, [r0, r1]
	mov r1, #0x12
	mov r2, #0x80
	lsl r1, r1, #6
	strh r2, [r0, r1]
	mov r0, #3
	add r1, r2, #0
	lsl r0, r0, #8
	strh r1, [r5, r0]
	mov r0, #0x12
	mov r1, #0xff
	lsl r0, r0, #6
	strh r1, [r5, r0]
_02012548:
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #0x60
	blt _020124DC
	ldr r1, _020125D0 ; =0x00003FFF
	ldr r0, [sp, #4]
	mov r5, #0x60
	add r4, #0xc0
	sub r6, r1, r0
_0201255A:
	ldr r0, [sp]
	ldr r1, [r0, #0xc]
	ldr r0, _020125D0 ; =0x00003FFF
	cmp r1, r0
	bge _0201258A
	mov r0, #0xbf
	sub r0, r0, r5
	lsl r0, r0, #1
	mov r1, #3
	add r0, r7, r0
	mov r2, #0x80
	lsl r1, r1, #8
	strh r2, [r0, r1]
	mov r1, #0x12
	lsl r1, r1, #6
	strh r2, [r0, r1]
	mov r0, #3
	add r1, r2, #0
	lsl r0, r0, #8
	strh r1, [r4, r0]
	mov r0, #0x12
	lsl r0, r0, #6
	strh r1, [r4, r0]
	b _020125C4
_0201258A:
	add r1, r5, #0
	add r0, r6, #0
	sub r1, #0x60
	bl sub_020109D8
	add r1, r0, #0
	cmp r1, #0x7f
	ble _0201259C
	mov r1, #0x7f
_0201259C:
	mov r0, #0xbf
	sub r0, r0, r5
	lsl r0, r0, #1
	mov r2, #3
	add r0, r7, r0
	mov r3, #0
	lsl r2, r2, #8
	strh r3, [r0, r2]
	mov r2, #0x80
	sub r3, r2, r1
	mov r2, #0x12
	lsl r2, r2, #6
	strh r3, [r0, r2]
	mov r0, #3
	add r1, #0x80
	lsl r0, r0, #8
	strh r1, [r4, r0]
	mov r1, #0xff
	add r0, r2, #0
	strh r1, [r4, r0]
_020125C4:
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #0xc0
	blt _0201255A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020125D0: .word 0x00003FFF
	thumb_func_end sub_020124B0

	thumb_func_start sub_020125D4
sub_020125D4: ; 0x020125D4
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #8]
	add r0, r3, #0
	mul r0, r1
	add r1, r2, #0
	bl sub_020F2998
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_020125D4

	thumb_func_start sub_020125EC
sub_020125EC: ; 0x020125EC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x38
	bl sub_0201AA8C
	str r0, [r5, #0x14]
	mov r1, #0
	mov r2, #0x38
	bl sub_020E5B44
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_0201268C
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020125EC

	thumb_func_start sub_0201262C
sub_0201262C: ; 0x0201262C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02012644
	cmp r0, #2
	beq _02012660
	cmp r0, #3
	beq _02012680
	b _02012684
_02012644:
	add r0, r4, #0
	bl sub_0201275C
	cmp r0, #1
	bne _02012688
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012688
_02012660:
	add r0, r4, #0
	bl sub_020127B4
	add r0, r4, #0
	bl sub_02010EC8
	ldr r0, [r5, #0x14]
	bl sub_0201AB0C
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012688
_02012680:
	mov r6, #1
	b _02012688
_02012684:
	bl GF_AssertFail
_02012688:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201262C

	thumb_func_start sub_0201268C
sub_0201268C: ; 0x0201268C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	str r3, [sp, #0x1c]
	str r1, [r5, #0xc]
	ldrh r1, [r4]
	str r2, [sp, #0x18]
	ldr r6, [sp, #0x38]
	str r1, [r5, #0x10]
	ldrh r2, [r4, #2]
	ldrh r1, [r4]
	ldr r3, [sp, #0x44]
	ldr r7, [sp, #0x3c]
	sub r1, r2, r1
	str r1, [r5, #0x14]
	mov r1, #2
	add r2, r6, #0
	bl sub_02010E64
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x2c]
	ldrh r0, [r4, #6]
	str r0, [r5, #0x28]
	add r0, r5, #0
	bl sub_020127B8
	ldr r0, _02012750 ; =sub_02010F00
	ldr r2, _02012754 ; =0x000003FF
	add r1, r5, #0
	bl sub_0200E374
	add r0, r5, #0
	mov r1, #0
	bl sub_02010EE0
	add r0, r5, #0
	mov r1, #1
	bl sub_02010EE0
	str r6, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	bl sub_02010F84
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	mov r3, #1
	str r0, [sp, #0x14]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	add r0, r7, #0
	bl sub_02010F84
	ldr r3, [r5, #0x28]
	add r0, r7, #0
	mov r1, #3
	add r2, r6, #0
	bl sub_02011068
	ldr r0, [sp, #0x44]
	ldr r2, _02012758 ; =sub_02010C38
	str r0, [sp]
	ldr r0, [r5, #0x34]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200FF88
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02012750: .word sub_02010F00
_02012754: .word 0x000003FF
_02012758: .word sub_02010C38
	thumb_func_end sub_0201268C

	thumb_func_start sub_0201275C
sub_0201275C: ; 0x0201275C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r0, #1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _020127A6
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bgt _02012798
	str r1, [r4, #0x1c]
	add r0, r4, #0
	ldr r2, [r4, #0x18]
	add r0, #0xc
	bl sub_02012884
	add r0, r4, #0
	bl sub_020127B8
	ldr r0, _020127AC ; =sub_02010F00
	ldr r2, _020127B0 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200E374
	b _020127A6
_02012798:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x2c]
	bl sub_0200FFB4
	mov r0, #1
	pop {r4, pc}
_020127A6:
	mov r0, #0
	pop {r4, pc}
	nop
_020127AC: .word sub_02010F00
_020127B0: .word 0x000003FF
	thumb_func_end sub_0201275C

	thumb_func_start sub_020127B4
sub_020127B4: ; 0x020127B4
	bx lr
	.align 2, 0
	thumb_func_end sub_020127B4

	thumb_func_start sub_020127B8
sub_020127B8: ; 0x020127B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, #0
	bl sub_02010EE0
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #1
	bl sub_02010EE0
	str r0, [sp, #0xc]
	add r5, r0, #0
	ldr r1, _02012880 ; =0x00003FFF
	ldr r0, [sp, #8]
	ldr r6, [sp, #0x10]
	sub r0, r1, r0
	mov r7, #0
	str r0, [sp, #4]
_020127E6:
	mov r0, #0x60
	sub r0, r0, r7
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_020109D8
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl sub_020109D8
	cmp r4, #0x7f
	ble _02012804
	mov r4, #0x7f
_02012804:
	cmp r0, #0x7f
	ble _0201280A
	mov r0, #0x7f
_0201280A:
	mov r1, #0x80
	sub r1, r1, r0
	lsl r1, r1, #0x10
	mov r2, #3
	asr r1, r1, #0x10
	lsl r2, r2, #8
	str r1, [sp, #0x14]
	strh r1, [r6, r2]
	mov r1, #0x80
	sub r1, r1, r4
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
	mov r1, #0x12
	lsl r1, r1, #6
	strh r2, [r6, r1]
	mov r1, #0xbf
	sub r1, r1, r7
	mov ip, r2
	lsl r1, r1, #1
	ldr r2, [sp, #0x10]
	add r0, #0x80
	add r3, r2, r1
	str r1, [sp, #0x18]
	mov r2, #3
	ldr r1, [sp, #0x14]
	lsl r2, r2, #8
	strh r1, [r3, r2]
	mov r1, #0x12
	mov r2, ip
	lsl r1, r1, #6
	strh r2, [r3, r1]
	add r4, #0x80
	lsl r1, r4, #0x10
	asr r2, r1, #0x10
	mov r1, #3
	lsl r1, r1, #8
	lsl r0, r0, #0x10
	strh r2, [r5, r1]
	asr r1, r0, #0x10
	mov r0, #0x12
	lsl r0, r0, #6
	strh r1, [r5, r0]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r7, r7, #1
	add r0, r3, r0
	mov r3, #3
	lsl r3, r3, #8
	strh r2, [r0, r3]
	mov r2, #0x12
	lsl r2, r2, #6
	strh r1, [r0, r2]
	add r6, r6, #2
	add r5, r5, #2
	cmp r7, #0x60
	blt _020127E6
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02012880: .word 0x00003FFF
	thumb_func_end sub_020127B8

	thumb_func_start sub_02012884
sub_02012884: ; 0x02012884
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #8]
	add r0, r3, #0
	mul r0, r1
	add r1, r2, #0
	bl sub_020F2998
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02012884

	thumb_func_start sub_0201289C
sub_0201289C: ; 0x0201289C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0xcd
	ldr r0, [r5, #0x20]
	lsl r1, r1, #2
	bl sub_0201AA8C
	mov r2, #0xcd
	str r0, [r5, #0x14]
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020E5B44
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02012940
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201289C

	thumb_func_start sub_020128E0
sub_020128E0: ; 0x020128E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _020128F8
	cmp r0, #2
	beq _0201291A
	cmp r0, #3
	beq _02012934
	b _02012938
_020128F8:
	add r0, r4, #0
	bl sub_02012A2C
	cmp r0, #1
	bne _0201293C
	mov r1, #0xc9
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #8
	ldr r1, [r4, r1]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _0201293C
_0201291A:
	add r0, r4, #0
	bl sub_02012A8C
	ldr r0, [r5, #0x14]
	bl sub_0201AB0C
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _0201293C
_02012934:
	mov r6, #1
	b _0201293C
_02012938:
	bl GF_AssertFail
_0201293C:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020128E0

	thumb_func_start sub_02012940
sub_02012940: ; 0x02012940
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r7, [sp, #0x38]
	str r3, [sp, #0x1c]
	mov r3, #0
	add r4, r1, #0
	str r2, [sp, #0x18]
	str r3, [sp]
	add r1, r7, #0
	mov r2, #1
	add r5, r0, #0
	ldr r6, [sp, #0x3c]
	bl sub_02011080
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _0201297A
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xc0
	bl sub_020E5B44
	add r0, r5, #0
	add r0, #0xc0
	mov r1, #1
	mov r2, #0xc0
	bl sub_020E5B44
	b _02012990
_0201297A:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xc0
	bl sub_020E5B44
	add r0, r5, #0
	add r0, #0xc0
	mov r1, #0
	mov r2, #0xc0
	bl sub_020E5B44
_02012990:
	mov r1, #0xc3
	ldr r0, [r4]
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrh r2, [r4, #4]
	add r0, r1, #4
	ldr r3, [sp, #0x44]
	str r2, [r5, r0]
	add r0, r1, #0
	ldrh r2, [r4, #6]
	add r0, #0x18
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x1c
	str r3, [r5, r0]
	add r2, r1, #0
	ldr r0, [sp, #0x18]
	add r2, #8
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0xc
	mov r0, #0
	str r0, [r5, r2]
	add r2, r1, #0
	ldr r0, [sp, #0x1c]
	add r2, #0x10
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0x14
	mov r0, #0
	str r0, [r5, r2]
	add r0, r1, #0
	add r0, #0x20
	str r6, [r5, r0]
	ldr r0, [sp, #0x40]
	add r1, #0x24
	str r0, [r5, r1]
	add r1, r5, #0
	add r2, r3, #0
	bl sub_020110DC
	ldrh r0, [r4, #6]
	cmp r0, #1
	str r7, [sp]
	bne _02012A02
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x20
	mov r2, #0x3f
	bl sub_02010F84
	b _02012A18
_02012A02:
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x3f
	mov r2, #0x20
	bl sub_02010F84
_02012A18:
	mov r3, #0xc9
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	add r0, r6, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02011068
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02012940

	thumb_func_start sub_02012A2C
sub_02012A2C: ; 0x02012A2C
	push {r4, lr}
	mov r2, #0x32
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r1, [r4, r2]
	add r1, r1, #1
	str r1, [r4, r2]
	sub r1, r2, #4
	ldr r3, [r4, r2]
	ldr r1, [r4, r1]
	cmp r3, r1
	blt _02012A86
	mov r1, #0
	str r1, [r4, r2]
	add r1, r2, #0
	sub r1, #8
	ldr r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #0
	sub r1, #0xc
	ldr r1, [r4, r1]
	cmp r3, r1
	bgt _02012A72
	add r1, r2, #0
	sub r1, #8
	ldr r1, [r4, r1]
	sub r2, #8
	add r1, r1, #1
	str r1, [r4, r2]
	bl sub_02012A90
	add r0, r4, #0
	bl sub_020110C4
	b _02012A86
_02012A72:
	add r0, r2, #0
	add r0, #0x10
	add r2, #8
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	add r1, r4, #0
	bl sub_020110F4
	mov r0, #1
	pop {r4, pc}
_02012A86:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02012A2C

	thumb_func_start sub_02012A8C
sub_02012A8C: ; 0x02012A8C
	bx lr
	.align 2, 0
	thumb_func_end sub_02012A8C

	thumb_func_start sub_02012A90
sub_02012A90: ; 0x02012A90
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _02012ACA
	mov r7, #0x31
	add r4, r6, #0
	lsl r7, r7, #4
_02012AA6:
	mov r0, #0xc3
	lsl r0, r0, #2
	mov r2, #0xc6
	mov r3, #0xc5
	ldr r0, [r5, r0]
	lsl r2, r2, #2
	lsl r3, r3, #2
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r0, r4
	add r1, r5, #0
	bl sub_02012ACC
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _02012AA6
_02012ACA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02012A90

	thumb_func_start sub_02012ACC
sub_02012ACC: ; 0x02012ACC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldrb r6, [r7]
	ldrb r4, [r7, #1]
	add r5, r1, #0
	add r1, r3, #0
	sub r0, r4, r6
	mul r0, r2
	bl sub_020F2998
	add r0, r0, r6
	cmp r6, r4
	bhi _02012AEC
	add r1, r6, #0
	ldrh r6, [r7, #2]
	b _02012AFC
_02012AEC:
	ldrh r2, [r7, #2]
	add r1, r4, #0
	add r4, r6, #0
	cmp r2, #0
	bne _02012AFA
	mov r6, #1
	b _02012AFC
_02012AFA:
	mov r6, #0
_02012AFC:
	cmp r1, r4
	bge _02012B1A
	mov r2, #0
	mov r3, #1
_02012B04:
	cmp r1, r0
	bne _02012B12
	cmp r6, #0
	bne _02012B10
	add r6, r3, #0
	b _02012B12
_02012B10:
	add r6, r2, #0
_02012B12:
	strb r6, [r5, r1]
	add r1, r1, #1
	cmp r1, r4
	blt _02012B04
_02012B1A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02012ACC

	thumb_func_start sub_02012B1C
sub_02012B1C: ; 0x02012B1C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0xe2
	ldr r0, [r5, #0x20]
	lsl r1, r1, #2
	bl sub_0201AA8C
	mov r2, #0xe2
	str r0, [r5, #0x14]
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020E5B44
	ldrb r1, [r4, #0xb]
	ldr r0, [r5, #0x14]
	cmp r1, #0
	ldr r1, [r5, #0x10]
	bne _02012B5E
	str r1, [sp]
	ldr r1, [r5, #0x18]
	str r1, [sp, #4]
	ldr r1, [r5, #0x1c]
	str r1, [sp, #8]
	ldr r1, [r5, #0x20]
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r1, r4, #0
	bl sub_02012BE8
	b _02012B76
_02012B5E:
	str r1, [sp]
	ldr r1, [r5, #0x18]
	str r1, [sp, #4]
	ldr r1, [r5, #0x1c]
	str r1, [sp, #8]
	ldr r1, [r5, #0x20]
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r1, r4, #0
	bl sub_02012CDC
_02012B76:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02012B1C

	thumb_func_start sub_02012B80
sub_02012B80: ; 0x02012B80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	mov r4, #0
	ldr r0, [r5, #0x14]
	cmp r1, #1
	beq _02012B98
	cmp r1, #2
	beq _02012BC4
	cmp r1, #3
	beq _02012BD6
	b _02012BDA
_02012B98:
	ldr r1, _02012BE4 ; =0x00000386
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _02012BA8
	add r1, r5, #0
	bl sub_02012C68
	b _02012BAE
_02012BA8:
	add r1, r5, #0
	bl sub_02012D4C
_02012BAE:
	cmp r0, #1
	bne _02012BDE
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012BDE
_02012BC4:
	bl sub_0201AB0C
	add r0, r4, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r4, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012BDE
_02012BD6:
	mov r4, #1
	b _02012BDE
_02012BDA:
	bl GF_AssertFail
_02012BDE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02012BE4: .word 0x00000386
	thumb_func_end sub_02012B80

	thumb_func_start sub_02012BE8
sub_02012BE8: ; 0x02012BE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	lsl r0, r6, #0xc
	ldr r2, [r4, #0x14]
	add r7, r3, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020F2948
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r2, r0, #0xc
	mov r0, #0xe1
	sub r1, r6, r2
	lsl r0, r0, #2
	strb r1, [r5, r0]
	sub r1, r0, #4
	str r4, [r5, r1]
	ldrb r1, [r4, #0xb]
	add r0, r0, #2
	add r3, r7, #0
	strb r1, [r5, r0]
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020117A0
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _02012C4C
	ldrb r3, [r4, #0xb]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	mov r1, #1
	bl sub_02011068
	b _02012C58
_02012C4C:
	ldrb r3, [r4, #0xb]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	mov r1, #2
	bl sub_02011068
_02012C58:
	ldr r0, _02012C64 ; =0x00000385
	mov r1, #0
	strb r1, [r5, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02012C64: .word 0x00000385
	thumb_func_end sub_02012BE8

	thumb_func_start sub_02012C68
sub_02012C68: ; 0x02012C68
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, _02012CD8 ; =0x00000385
	add r5, r0, #0
	ldrb r1, [r5, r1]
	mov r6, #0
	cmp r1, #0
	beq _02012C84
	cmp r1, #1
	beq _02012CBA
	cmp r1, #2
	beq _02012CD0
	b _02012CD2
_02012C84:
	bl sub_020117FC
	cmp r0, #1
	bne _02012CD2
	ldr r2, _02012CD8 ; =0x00000385
	ldrb r0, [r5, r2]
	sub r1, r2, #5
	add r0, r0, #1
	strb r0, [r5, r2]
	ldr r0, [r4, #0x10]
	sub r2, r2, #1
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0xc]
	ldr r1, [r5, r1]
	add r0, r5, #0
	ldrb r2, [r5, r2]
	ldr r3, [r4, #8]
	add r0, #0x4c
	add r1, #0xc
	bl sub_02012940
	b _02012CD2
_02012CBA:
	add r0, #0x4c
	bl sub_02012A2C
	cmp r0, #1
	bne _02012CD2
	ldr r0, _02012CD8 ; =0x00000385
	mov r6, #1
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _02012CD2
_02012CD0:
	mov r6, #1
_02012CD2:
	add r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_02012CD8: .word 0x00000385
	thumb_func_end sub_02012C68

	thumb_func_start sub_02012CDC
sub_02012CDC: ; 0x02012CDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	lsl r0, r6, #0xc
	ldr r2, [r4, #0x14]
	add r7, r3, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020F2948
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0xe1
	asr r0, r0, #0xc
	lsl r1, r1, #2
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	sub r2, r6, r0
	sub r0, r1, #4
	str r4, [r5, r0]
	add r0, r1, #2
	ldrb r3, [r4, #0xb]
	sub r1, r1, #4
	strb r3, [r5, r0]
	ldr r0, [sp, #0x28]
	add r3, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r0, #0x4c
	add r1, #0xc
	bl sub_02012940
	ldr r0, _02012D48 ; =0x00000385
	mov r1, #0
	strb r1, [r5, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02012D48: .word 0x00000385
	thumb_func_end sub_02012CDC

	thumb_func_start sub_02012D4C
sub_02012D4C: ; 0x02012D4C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _02012DD4 ; =0x00000385
	add r5, r0, #0
	ldrb r1, [r5, r1]
	mov r6, #0
	cmp r1, #0
	beq _02012D68
	cmp r1, #1
	beq _02012DB8
	cmp r1, #2
	beq _02012DCC
	b _02012DCE
_02012D68:
	add r0, #0x4c
	bl sub_02012A2C
	cmp r0, #1
	bne _02012DCE
	ldr r2, _02012DD4 ; =0x00000385
	ldrb r0, [r5, r2]
	sub r1, r2, #5
	add r0, r0, #1
	strb r0, [r5, r2]
	ldr r0, [r4, #0x10]
	sub r2, r2, #1
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldrb r2, [r5, r2]
	ldr r1, [r5, r1]
	ldr r3, [r4, #8]
	add r0, r5, #0
	bl sub_020117A0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r3, [r5, r0]
	ldrb r0, [r3, #8]
	cmp r0, #0
	ldr r0, [r4, #0x18]
	bne _02012DAC
	ldrb r3, [r3, #0xb]
	ldr r2, [r4, #0x10]
	mov r1, #1
	bl sub_02011068
	b _02012DCE
_02012DAC:
	ldrb r3, [r3, #0xb]
	ldr r2, [r4, #0x10]
	mov r1, #2
	bl sub_02011068
	b _02012DCE
_02012DB8:
	bl sub_020117FC
	cmp r0, #1
	bne _02012DCE
	ldr r0, _02012DD4 ; =0x00000385
	mov r6, #1
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _02012DCE
_02012DCC:
	mov r6, #1
_02012DCE:
	add r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02012DD4: .word 0x00000385
	thumb_func_end sub_02012D4C

	thumb_func_start sub_02012DD8
sub_02012DD8: ; 0x02012DD8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x4c
	bl sub_0201AA8C
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02012E6C
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02012DD8

	thumb_func_start sub_02012E10
sub_02012E10: ; 0x02012E10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02012E28
	cmp r0, #2
	beq _02012E44
	cmp r0, #3
	beq _02012E5E
	b _02012E62
_02012E28:
	add r0, r4, #0
	bl sub_02012F54
	cmp r0, #1
	bne _02012E66
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x44]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012E66
_02012E44:
	add r0, r4, #0
	bl sub_02010EC8
	ldr r0, [r5, #0x14]
	bl sub_0201AB0C
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012E66
_02012E5E:
	mov r6, #1
	b _02012E66
_02012E62:
	bl GF_AssertFail
_02012E66:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02012E10

	thumb_func_start sub_02012E6C
sub_02012E6C: ; 0x02012E6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	ldr r6, [sp, #0x38]
	str r3, [sp, #0x1c]
	str r2, [sp, #0x18]
	ldrb r1, [r4, #8]
	ldr r3, [sp, #0x44]
	add r2, r6, #0
	add r5, r0, #0
	ldr r7, [sp, #0x3c]
	bl sub_02010E64
	ldr r0, _02012F44 ; =0x007FFF80
	mov r1, #0
	str r0, [r5, #0x14]
	ldrsh r1, [r4, r1]
	lsr r0, r0, #7
	str r1, [r5, #0xc]
	mov r1, #2
	ldrsh r1, [r4, r1]
	str r1, [r5, #0x10]
	ldr r1, [r4, #4]
	str r1, [r5, #0x18]
	ldr r1, [r4, #4]
	str r1, [r5, #0x1c]
	ldr r1, [sp, #0x18]
	bl sub_020F2998
	str r0, [r5, #0x20]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x28]
	mov r0, #0
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x44]
	str r0, [r5, #0x48]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x30]
	ldrb r0, [r4, #0xb]
	str r0, [r5, #0x34]
	ldrb r0, [r4, #8]
	str r0, [r5, #0x38]
	str r6, [r5, #0x3c]
	mov r0, #1
	str r0, [r5, #0x40]
	add r0, r5, #0
	bl sub_020131AC
	ldr r0, _02012F48 ; =sub_02010F00
	ldr r2, _02012F4C ; =0x000003FF
	add r1, r5, #0
	bl sub_0200E374
	add r0, r5, #0
	mov r1, #0
	bl sub_02010EE0
	mov r1, #3
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x12
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #0xa]
	ldrb r3, [r4, #8]
	add r0, r7, #0
	bl sub_02010F84
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _02012F22
	ldr r3, [r5, #0x34]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_02011068
	b _02012F2E
_02012F22:
	ldr r3, [r5, #0x34]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02011068
_02012F2E:
	ldr r0, [sp, #0x44]
	ldr r2, _02012F50 ; =sub_02010C38
	str r0, [sp]
	ldr r0, [r5, #0x48]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200FF88
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02012F44: .word 0x007FFF80
_02012F48: .word sub_02010F00
_02012F4C: .word 0x000003FF
_02012F50: .word sub_02010C38
	thumb_func_end sub_02012E6C

	thumb_func_start sub_02012F54
sub_02012F54: ; 0x02012F54
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	add r1, r0, #1
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	blt _02012FF0
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	cmp r0, #0
	ble _02012FE2
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	add r0, r4, #0
	add r1, r2, r1
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	ldr r2, _02012FF4 ; =0x0000FFFF
	sub r1, r1, #1
	str r1, [r4, #0x24]
	ldr r1, [r4, #0x1c]
	add r0, #0x1c
	cmp r1, r2
	blt _02012F98
	add r3, r2, #0
_02012F8C:
	ldr r1, [r0]
	sub r1, r1, r2
	str r1, [r0]
	ldr r1, [r4, #0x1c]
	cmp r1, r3
	bge _02012F8C
_02012F98:
	cmp r1, #0
	bge _02012FAE
	add r2, r4, #0
	ldr r0, _02012FF4 ; =0x0000FFFF
	add r2, #0x1c
_02012FA2:
	ldr r1, [r2]
	add r1, r1, r0
	str r1, [r2]
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	blt _02012FA2
_02012FAE:
	ldr r0, _02012FF8 ; =0x00007FFF
	cmp r1, r0
	blt _02012FD0
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bge _02012FD0
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _02012FD0
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x3c]
	ldr r3, [r4, #0x34]
	bl sub_02010FEC
	mov r0, #0
	str r0, [r4, #0x40]
_02012FD0:
	add r0, r4, #0
	bl sub_020131AC
	ldr r0, _02012FFC ; =sub_02010F00
	ldr r2, _02013000 ; =0x000003FF
	add r1, r4, #0
	bl sub_0200E374
	b _02012FF0
_02012FE2:
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x30]
	bl sub_0200FFB4
	mov r0, #1
	pop {r4, pc}
_02012FF0:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02012FF4: .word 0x0000FFFF
_02012FF8: .word 0x00007FFF
_02012FFC: .word sub_02010F00
_02013000: .word 0x000003FF
	thumb_func_end sub_02012F54

	thumb_func_start sub_02013004
sub_02013004: ; 0x02013004
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r0, [sp, #0x28]
	add r5, r3, #0
	str r0, [sp, #0x10]
	asr r0, r0, #4
	add r4, r2, #0
	lsl r2, r0, #1
	add r0, r2, #1
	str r1, [sp]
	lsl r1, r0, #1
	ldr r0, _020131A4 ; =0x021094DC
	ldr r3, [sp, #0x2c]
	ldrsh r1, [r0, r1]
	ldr r0, _020131A8 ; =0x0000FFFF
	ldr r6, [sp, #0x30]
	mul r0, r1
	asr r1, r0, #0xc
	ldr r0, [sp]
	ldr r7, [sp, #0x34]
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, _020131A4 ; =0x021094DC
	lsl r1, r2, #1
	ldrsh r1, [r0, r1]
	ldr r0, _020131A8 ; =0x0000FFFF
	mul r0, r1
	asr r0, r0, #0xc
	add r1, r4, r0
	asr r0, r3, #4
	lsl r0, r0, #1
	mov ip, r0
	add r0, r0, #1
	lsl r2, r0, #1
	ldr r0, _020131A4 ; =0x021094DC
	ldrsh r2, [r0, r2]
	ldr r0, _020131A8 ; =0x0000FFFF
	mul r0, r2
	asr r2, r0, #0xc
	ldr r0, [sp]
	add r0, r0, r2
	str r0, [sp, #8]
	mov r0, ip
	lsl r2, r0, #1
	ldr r0, _020131A4 ; =0x021094DC
	ldrsh r2, [r0, r2]
	ldr r0, _020131A8 ; =0x0000FFFF
	mul r0, r2
	asr r0, r0, #0xc
	add r0, r4, r0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	sub r2, r3, r0
	ldr r0, _020131A8 ; =0x0000FFFF
	lsr r0, r0, #1
	cmp r2, r0
	bne _0201308C
	cmp r5, #0
	blt _0201307E
	cmp r5, r4
	blt _02013080
_0201307E:
	b _020131A0
_02013080:
	mov r0, #0
	str r0, [r6]
	mov r0, #0xff
	add sp, #0x14
	str r0, [r7]
	pop {r4, r5, r6, r7, pc}
_0201308C:
	cmp r3, #0
	blt _02013100
	ldr r0, _020131A8 ; =0x0000FFFF
	lsr r0, r0, #1
	cmp r3, r0
	bge _02013100
	cmp r1, r4
	bge _020130A0
	add r0, r1, #0
	b _020130A2
_020130A0:
	add r0, r4, #0
_020130A2:
	cmp r1, r4
	ble _020130AA
	add r2, r1, #0
	b _020130AC
_020130AA:
	add r2, r4, #0
_020130AC:
	cmp r0, r5
	bgt _020130CC
	cmp r5, r2
	bgt _020130CC
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	sub r2, r2, r0
	sub r0, r5, r1
	mul r0, r2
	sub r1, r1, r4
	bl sub_020F2998
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [r6]
	b _020130E6
_020130CC:
	ldr r1, [sp, #8]
	ldr r0, [sp]
	sub r1, r1, r0
	ldr r0, [sp, #4]
	sub r0, r5, r0
	mul r0, r1
	ldr r1, [sp, #4]
	sub r1, r1, r4
	bl sub_020F2998
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [r6]
_020130E6:
	ldr r0, [r6]
	cmp r0, #0xff
	ble _020130F0
	mov r0, #0xff
	b _020130F6
_020130F0:
	cmp r0, #0
	bge _020130F6
	mov r0, #0
_020130F6:
	str r0, [r6]
	mov r0, #0xff
	add sp, #0x14
	str r0, [r7]
	pop {r4, r5, r6, r7, pc}
_02013100:
	cmp r1, r4
	bge _02013108
	add r0, r1, #0
	b _0201310A
_02013108:
	add r0, r4, #0
_0201310A:
	cmp r1, r4
	ble _02013112
	add r2, r1, #0
	b _02013114
_02013112:
	add r2, r4, #0
_02013114:
	cmp r0, r5
	bgt _02013144
	cmp r5, r2
	bgt _02013144
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	sub r2, r2, r0
	sub r0, r5, r1
	mul r0, r2
	sub r1, r1, r4
	bl sub_020F2998
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [r6]
	cmp r0, #0xff
	ble _0201313A
	mov r0, #0xff
	b _02013140
_0201313A:
	cmp r0, #0
	bge _02013140
	mov r0, #0
_02013140:
	str r0, [r6]
	b _02013148
_02013144:
	mov r0, #0
	str r0, [r6]
_02013148:
	ldr r0, [sp, #4]
	cmp r0, r4
	bge _02013152
	add r1, r0, #0
	b _02013154
_02013152:
	add r1, r4, #0
_02013154:
	ldr r0, [sp, #4]
	cmp r0, r4
	bgt _0201315C
	add r0, r4, #0
_0201315C:
	cmp r1, r5
	bgt _02013190
	cmp r5, r0
	bgt _02013190
	ldr r1, [sp, #8]
	ldr r0, [sp]
	sub r1, r1, r0
	ldr r0, [sp, #4]
	sub r0, r5, r0
	mul r0, r1
	ldr r1, [sp, #4]
	sub r1, r1, r4
	bl sub_020F2998
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [r7]
	cmp r0, #0xff
	ble _02013186
	mov r0, #0xff
	b _0201318C
_02013186:
	cmp r0, #0
	bge _0201318C
	mov r0, #0
_0201318C:
	str r0, [r7]
	b _02013194
_02013190:
	ldr r0, [r6]
	str r0, [r7]
_02013194:
	ldr r1, [r7]
	ldr r0, [r6]
	cmp r0, r1
	ble _020131A0
	str r1, [r6]
	str r0, [r7]
_020131A0:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020131A4: .word 0x021094DC
_020131A8: .word 0x0000FFFF
	thumb_func_end sub_02013004

	thumb_func_start sub_020131AC
sub_020131AC: ; 0x020131AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r1, #0
	add r5, r0, #0
	bl sub_02010EE0
	add r4, r0, #0
	mov r6, #0
	add r7, sp, #0x14
_020131BE:
	ldr r0, [r5, #0x18]
	add r3, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, sp, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl sub_02013004
	mov r0, #3
	ldr r1, [sp, #0x14]
	lsl r0, r0, #8
	strh r1, [r4, r0]
	mov r0, #0x12
	ldr r1, [sp, #0x10]
	lsl r0, r0, #6
	strh r1, [r4, r0]
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, #0xc0
	blt _020131BE
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020131AC

	thumb_func_start sub_020131F4
sub_020131F4: ; 0x020131F4
	cmp r1, #0
	ldr r1, _02013218 ; =0xFFFF1FFF
	bne _0201320A
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3]
	lsl r0, r0, #0xd
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
_0201320A:
	ldr r3, _0201321C ; =0x04001000
	lsl r0, r0, #0xd
	ldr r2, [r3]
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
	.align 2, 0
_02013218: .word 0xFFFF1FFF
_0201321C: .word 0x04001000
	thumb_func_end sub_020131F4

	thumb_func_start sub_02013220
sub_02013220: ; 0x02013220
	push {r3, r4}
	cmp r2, #0
	bne _02013262
	cmp r3, #0
	bne _02013246
	ldr r2, _0201329C ; =0x04000048
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _0201323E
	mov r0, #0x20
	orr r2, r0
_0201323E:
	ldr r0, _0201329C ; =0x04000048
	strh r2, [r0]
	pop {r3, r4}
	bx lr
_02013246:
	ldr r2, _020132A0 ; =0x04001048
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _0201325A
	mov r0, #0x20
	orr r2, r0
_0201325A:
	ldr r0, _020132A0 ; =0x04001048
	strh r2, [r0]
	pop {r3, r4}
	bx lr
_02013262:
	cmp r3, #0
	ldr r2, _020132A4 ; =0xFFFFC0FF
	bne _02013282
	ldr r4, _0201329C ; =0x04000048
	lsl r0, r0, #8
	ldrh r3, [r4]
	and r2, r3
	orr r2, r0
	cmp r1, #0
	beq _0201327A
	lsr r0, r4, #0xd
	orr r2, r0
_0201327A:
	ldr r0, _0201329C ; =0x04000048
	strh r2, [r0]
	pop {r3, r4}
	bx lr
_02013282:
	ldr r4, _020132A0 ; =0x04001048
	lsl r0, r0, #8
	ldrh r3, [r4]
	and r2, r3
	orr r2, r0
	cmp r1, #0
	beq _02013294
	lsr r0, r4, #0xd
	orr r2, r0
_02013294:
	ldr r0, _020132A0 ; =0x04001048
	strh r2, [r0]
	pop {r3, r4}
	bx lr
	.align 2, 0
_0201329C: .word 0x04000048
_020132A0: .word 0x04001048
_020132A4: .word 0xFFFFC0FF
	thumb_func_end sub_02013220

	thumb_func_start sub_020132A8
sub_020132A8: ; 0x020132A8
	cmp r2, #0
	bne _020132C6
	ldr r2, _020132E0 ; =0x0400004A
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _020132C0
	mov r0, #0x20
	orr r2, r0
_020132C0:
	ldr r0, _020132E0 ; =0x0400004A
	strh r2, [r0]
	bx lr
_020132C6:
	ldr r2, _020132E4 ; =0x0400104A
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _020132DA
	mov r0, #0x20
	orr r2, r0
_020132DA:
	ldr r0, _020132E4 ; =0x0400104A
	strh r2, [r0]
	bx lr
	.align 2, 0
_020132E0: .word 0x0400004A
_020132E4: .word 0x0400104A
	thumb_func_end sub_020132A8

	thumb_func_start sub_020132E8
sub_020132E8: ; 0x020132E8
	push {r3}
	sub sp, #4
	cmp r0, #0
	bne _02013308
	cmp r1, #0
	bne _020132FE
	ldr r0, _0201332C ; =0x04000048
	ldrb r1, [r0]
	add r0, sp, #0
	strb r1, [r0]
	b _0201331E
_020132FE:
	ldr r0, _02013330 ; =0x04001048
	ldrb r1, [r0]
	add r0, sp, #0
	strb r1, [r0]
	b _0201331E
_02013308:
	cmp r1, #0
	bne _02013316
	ldr r0, _02013334 ; =0x04000049
	ldrb r1, [r0]
	add r0, sp, #0
	strb r1, [r0]
	b _0201331E
_02013316:
	ldr r0, _02013338 ; =0x04001049
	ldrb r1, [r0]
	add r0, sp, #0
	strb r1, [r0]
_0201331E:
	add r1, sp, #0
	mov r0, #0
	ldrsb r0, [r1, r0]
	add sp, #4
	pop {r3}
	bx lr
	nop
_0201332C: .word 0x04000048
_02013330: .word 0x04001048
_02013334: .word 0x04000049
_02013338: .word 0x04001049
	thumb_func_end sub_020132E8

	thumb_func_start sub_0201333C
sub_0201333C: ; 0x0201333C
	push {r3}
	sub sp, #4
	cmp r0, #0
	bne _02013348
	ldr r0, _0201335C ; =0x0400004A
	b _0201334A
_02013348:
	ldr r0, _02013360 ; =0x0400104A
_0201334A:
	ldrb r1, [r0]
	add r0, sp, #0
	strb r1, [r0]
	add r1, sp, #0
	mov r0, #0
	ldrsb r0, [r1, r0]
	add sp, #4
	pop {r3}
	bx lr
	.align 2, 0
_0201335C: .word 0x0400004A
_02013360: .word 0x0400104A
	thumb_func_end sub_0201333C

	thumb_func_start sub_02013364
sub_02013364: ; 0x02013364
	push {r4, r5}
	add r4, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _020133C2
	ldr r3, [sp, #0xc]
	cmp r3, #0
	bne _0201339C
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _02013414 ; =0x04000040
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
_0201339C:
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _02013418 ; =0x04001040
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
_020133C2:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	bne _020133EE
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _0201341C ; =0x04000042
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
_020133EE:
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _02013420 ; =0x04001042
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
	.align 2, 0
_02013414: .word 0x04000040
_02013418: .word 0x04001040
_0201341C: .word 0x04000042
_02013420: .word 0x04001042
	thumb_func_end sub_02013364

	thumb_func_start sub_02013424
sub_02013424: ; 0x02013424
	push {r4, lr}
	lsl r3, r2, #3
	add r4, r0, r3
	str r1, [r0, r3]
	str r2, [r4, #4]
	ldr r0, _0201343C ; =sub_020134BC
	add r1, r4, #0
	mov r2, #1
	bl sub_0200E374
	pop {r4, pc}
	nop
_0201343C: .word sub_020134BC
	thumb_func_end sub_02013424

	thumb_func_start sub_02013440
sub_02013440: ; 0x02013440
	push {r4, r5, r6, lr}
	ldr r5, [sp, #0x10]
	add r0, #0x10
	lsl r4, r5, #5
	add r6, r0, r4
	lsl r0, r3, #4
	add r4, r6, r0
	str r1, [r6, r0]
	str r2, [r4, #4]
	str r3, [r4, #8]
	ldr r0, _02013464 ; =sub_020134D0
	add r1, r4, #0
	mov r2, #1
	str r5, [r4, #0xc]
	bl sub_0200E374
	pop {r4, r5, r6, pc}
	nop
_02013464: .word sub_020134D0
	thumb_func_end sub_02013440

	thumb_func_start sub_02013468
sub_02013468: ; 0x02013468
	push {r3, r4, r5, lr}
	mov r4, #0xc
	add r0, #0x68
	mul r4, r3
	add r5, r0, r4
	str r1, [r0, r4]
	str r2, [r5, #4]
	ldr r0, _02013484 ; =sub_020134EC
	add r1, r5, #0
	mov r2, #1
	str r3, [r5, #8]
	bl sub_0200E374
	pop {r3, r4, r5, pc}
	.align 2, 0
_02013484: .word sub_020134EC
	thumb_func_end sub_02013468

	thumb_func_start sub_02013488
sub_02013488: ; 0x02013488
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, [sp, #0x20]
	add r7, r1, #0
	add r0, #0x80
	lsl r1, r5, #5
	add r6, r0, r1
	add r4, r2, #0
	ldr r0, [sp, #0x1c]
	add r2, r3, #0
	lsl r3, r0, #4
	add r1, r6, r3
	strh r7, [r6, r3]
	strh r4, [r1, #2]
	strh r2, [r1, #4]
	ldr r2, [sp, #0x18]
	strh r2, [r1, #6]
	str r0, [r1, #8]
	ldr r0, _020134B8 ; =sub_02013504
	mov r2, #1
	str r5, [r1, #0xc]
	bl sub_0200E374
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020134B8: .word sub_02013504
	thumb_func_end sub_02013488

	thumb_func_start sub_020134BC
sub_020134BC: ; 0x020134BC
	push {r4, lr}
	add r4, r0, #0
	ldmia r1!, {r0, r1}
	bl sub_020131F4
	add r0, r4, #0
	bl sub_0200E390
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020134BC

	thumb_func_start sub_020134D0
sub_020134D0: ; 0x020134D0
	push {r4, lr}
	add r3, r1, #0
	add r4, r0, #0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_02013220
	add r0, r4, #0
	bl sub_0200E390
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020134D0

	thumb_func_start sub_020134EC
sub_020134EC: ; 0x020134EC
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl sub_020132A8
	add r0, r4, #0
	bl sub_0200E390
	pop {r4, pc}
	thumb_func_end sub_020134EC

	thumb_func_start sub_02013504
sub_02013504: ; 0x02013504
	push {r3, r4, r5, lr}
	sub sp, #8
	add r3, r1, #0
	add r4, r0, #0
	ldr r0, [r3, #8]
	mov r1, #2
	str r0, [sp]
	ldr r0, [r3, #0xc]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0
	mov r5, #6
	ldrsh r0, [r3, r0]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	bl sub_02013364
	add r0, r4, #0
	bl sub_0200E390
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02013504

	thumb_func_start sub_02013534
sub_02013534: ; 0x02013534
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x68
	bl sub_0201AA8C
	str r0, [sp, #8]
	cmp r0, #0
	bne _0201354E
	bl GF_AssertFail
_0201354E:
	ldr r4, [sp, #8]
	ldr r5, [sp, #8]
	mov r6, #0
	add r4, #0x30
_02013556:
	mov r0, #0x23
	add r1, r6, #0
	mov r2, #0
	add r3, r4, #0
	str r7, [sp]
	bl sub_02007A0C
	str r0, [r5]
	cmp r0, #0
	bne _0201356E
	bl GF_AssertFail
_0201356E:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #0xc
	blt _02013556
	ldr r0, [sp, #4]
	mov r1, #0x14
	add r4, r0, #0
	mul r4, r1
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0201AA8C
	ldr r1, [sp, #8]
	cmp r0, #0
	str r0, [r1, #0x60]
	bne _02013594
	bl GF_AssertFail
_02013594:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r2, r4, #0
	str r1, [r0, #0x64]
	ldr r0, [r0, #0x60]
	mov r1, #0
	bl sub_020E5B44
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02013534

	thumb_func_start sub_020135AC
sub_020135AC: ; 0x020135AC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bne _020135B6
	bl GF_AssertFail
_020135B6:
	mov r4, #0
	add r5, r6, #0
_020135BA:
	ldr r0, [r5]
	bl sub_0201AB0C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blt _020135BA
	ldr r0, [r6, #0x60]
	bl sub_0201AB0C
	add r0, r6, #0
	bl sub_0201AB0C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_020135AC

	thumb_func_start sub_020135D8
sub_020135D8: ; 0x020135D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bne _020135E4
	bl GF_AssertFail
_020135E4:
	ldr r0, [r5]
	bl sub_02013AD0
	add r4, r0, #0
	bne _020135F2
	bl GF_AssertFail
_020135F2:
	ldr r0, [r5, #0x10]
	add r3, sp, #8
	str r0, [r4, #8]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r1, [r5, #4]
	ldr r2, [r5, #0x2c]
	ldrb r0, [r1, #7]
	ldrb r1, [r1, #8]
	bl sub_02013BD4
	add r6, r0, #0
	mov r1, #0x24
	ldr r0, [r5, #0x2c]
	mul r1, r6
	bl sub_0201AACC
	add r7, r0, #0
	mov r1, #0xc
	ldr r0, [r5, #0x2c]
	mul r1, r6
	bl sub_0201AA8C
	str r0, [r4]
	str r6, [r4, #4]
	ldr r0, [r5, #0x28]
	add r1, sp, #8
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r3, [r5, #0x14]
	bl sub_02013C5C
	add r0, r5, #0
	add r1, sp, #8
	add r2, r7, #0
	add r3, r4, #0
	bl sub_02013E78
	add r0, r7, #0
	bl sub_0201AB0C
	add r0, sp, #8
	bl sub_02013FA8
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020135D8

	thumb_func_start sub_02013660
sub_02013660: ; 0x02013660
	push {r4, lr}
	add r4, r0, #0
	bne _0201366A
	bl GF_AssertFail
_0201366A:
	ldr r0, [r4]
	cmp r0, #0
	bne _02013674
	bl GF_AssertFail
_02013674:
	add r0, r4, #0
	bl sub_02013ECC
	ldr r0, [r4]
	bl sub_0201AB0C
	add r0, r4, #0
	bl sub_02013AC0
	pop {r4, pc}
	thumb_func_end sub_02013660

	thumb_func_start sub_02013688
sub_02013688: ; 0x02013688
	push {r4, r5, lr}
	sub sp, #0x14
	add r3, sp, #0
	add r5, r0, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	add r4, r1, #0
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #8]
	bl sub_02013BD4
	add r0, sp, #0
	add r1, r4, #0
	bl sub_02013E24
	add r4, r0, #0
	add r0, sp, #0
	bl sub_02013FA8
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end sub_02013688

	thumb_func_start sub_020136B4
sub_020136B4: ; 0x020136B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r2, #0
	str r1, [sp]
	cmp r5, #0
	bne _020136C6
	bl GF_AssertFail
_020136C6:
	ldr r0, [sp]
	str r0, [r5, #0xc]
	str r7, [r5, #0x10]
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r5, #8]
	lsl r7, r7, #0xc
	cmp r0, #0
	beq _020136E8
	bl sub_020248AC
	ldr r2, [r0]
	ldr r1, [sp]
	ldr r0, [r0, #4]
	add r1, r1, r2
	str r1, [sp]
	add r7, r7, r0
_020136E8:
	mov r6, #0
	str r6, [sp, #0xc]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _02013722
	add r4, r6, #0
_020136F4:
	ldr r0, [r5]
	add r0, r0, r4
	ldr r0, [r0, #4]
	lsl r1, r0, #0xc
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, sp, #4
	add r0, r0, r4
	ldr r0, [r0, #8]
	lsl r0, r0, #0xc
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, r4]
	bl sub_020247D4
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _020136F4
_02013722:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020136B4

	thumb_func_start sub_02013728
sub_02013728: ; 0x02013728
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bne _02013734
	bl GF_AssertFail
_02013734:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0201378E
	ldr r1, [r5, #0xc]
	lsl r1, r1, #0xc
	str r1, [sp]
	ldr r1, [r5, #0x10]
	lsl r7, r1, #0xc
	bl sub_020248AC
	ldr r2, [r0]
	ldr r0, [r0, #4]
	mov r6, #0
	ldr r1, [sp]
	str r6, [sp, #0xc]
	add r7, r7, r0
	add r1, r1, r2
	ldr r0, [r5, #4]
	str r1, [sp]
	cmp r0, #0
	ble _0201378E
	add r4, r6, #0
_02013760:
	ldr r0, [r5]
	add r0, r0, r4
	ldr r0, [r0, #4]
	lsl r1, r0, #0xc
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, sp, #4
	add r0, r0, r4
	ldr r0, [r0, #8]
	lsl r0, r0, #0xc
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, r4]
	bl sub_020247D4
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02013760
_0201378E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02013728

	thumb_func_start sub_02013794
sub_02013794: ; 0x02013794
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _020137A4
	bl GF_AssertFail
_020137A4:
	cmp r4, #0
	bne _020137AC
	bl GF_AssertFail
_020137AC:
	cmp r6, #0
	bne _020137B4
	bl GF_AssertFail
_020137B4:
	ldr r0, [r5, #0xc]
	str r0, [r4]
	ldr r0, [r5, #0x10]
	str r0, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02013794

	thumb_func_start sub_020137C0
sub_020137C0: ; 0x020137C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _020137CE
	bl GF_AssertFail
_020137CE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _020137EC
	add r4, r6, #0
_020137D8:
	ldr r0, [r5]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02024830
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _020137D8
_020137EC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020137C0

	thumb_func_start sub_020137F0
sub_020137F0: ; 0x020137F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _020137FE
	bl GF_AssertFail
_020137FE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0201381C
	add r4, r6, #0
_02013808:
	ldr r0, [r5]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02024A04
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02013808
_0201381C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020137F0

	thumb_func_start sub_02013820
sub_02013820: ; 0x02013820
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _0201382E
	bl GF_AssertFail
_0201382E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0201384C
	add r4, r6, #0
_02013838:
	ldr r0, [r5]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02024ADC
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02013838
_0201384C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02013820

	thumb_func_start sub_02013850
sub_02013850: ; 0x02013850
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _0201385E
	bl GF_AssertFail
_0201385E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0201387C
	add r4, r6, #0
_02013868:
	ldr r0, [r5]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02024A14
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02013868
_0201387C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02013850

	thumb_func_start sub_02013880
sub_02013880: ; 0x02013880
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _0201388E
	bl GF_AssertFail
_0201388E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _020138AC
	add r4, r6, #0
_02013898:
	ldr r0, [r5]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02024A48
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02013898
_020138AC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02013880

	thumb_func_start sub_020138B0
sub_020138B0: ; 0x020138B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _020138BE
	bl GF_AssertFail
_020138BE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _020138DC
	add r4, r6, #0
_020138C8:
	ldr r0, [r5]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02024A74
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _020138C8
_020138DC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020138B0

	thumb_func_start sub_020138E0
sub_020138E0: ; 0x020138E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _020138EE
	bl GF_AssertFail
_020138EE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0201390C
	add r4, r6, #0
_020138F8:
	ldr r0, [r5]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02024AA8
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _020138F8
_0201390C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020138E0

	thumb_func_start sub_02013910
sub_02013910: ; 0x02013910
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x18
	bl sub_0201AA8C
	add r4, r0, #0
	str r4, [r4, #0xc]
	str r4, [r4, #0x10]
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #8]
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02013BD4
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02013910

	thumb_func_start sub_02013938
sub_02013938: ; 0x02013938
	push {r4, lr}
	add r4, r0, #0
	bl sub_02013FA8
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	thumb_func_end sub_02013938

	thumb_func_start sub_02013948
sub_02013948: ; 0x02013948
	ldr r3, _0201394C ; =sub_02013E24
	bx r3
	.align 2, 0
_0201394C: .word sub_02013E24
	thumb_func_end sub_02013948

	thumb_func_start sub_02013950
sub_02013950: ; 0x02013950
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	cmp r5, #0
	bne _02013960
	bl GF_AssertFail
_02013960:
	ldr r0, [r5]
	bl sub_02013AD0
	add r4, r0, #0
	bne _0201396E
	bl GF_AssertFail
_0201396E:
	ldr r0, [r5, #0x10]
	mov r1, #0x24
	str r0, [r4, #8]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0x10]
	ldr r2, [r6, #0x14]
	ldr r0, [r5, #0x2c]
	mul r1, r2
	bl sub_0201AACC
	add r7, r0, #0
	ldr r2, [r6, #0x14]
	mov r1, #0xc
	ldr r0, [r5, #0x2c]
	mul r1, r2
	bl sub_0201AA8C
	str r0, [r4]
	ldr r0, [r6, #0x14]
	add r1, r6, #0
	str r0, [r4, #4]
	ldr r0, [r5, #0x28]
	add r2, r7, #0
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r3, [r5, #0x14]
	bl sub_02013C5C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl sub_02013E78
	add r0, r7, #0
	bl sub_0201AB0C
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02013950

	thumb_func_start sub_020139C8
sub_020139C8: ; 0x020139C8
	ldr r3, _020139CC ; =sub_02013660
	bx r3
	.align 2, 0
_020139CC: .word sub_02013660
	thumb_func_end sub_020139C8

	thumb_func_start sub_020139D0
sub_020139D0: ; 0x020139D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, [r0]
	add r7, r1, #0
	ldr r0, [r0]
	str r2, [sp, #4]
	add r5, r3, #0
	str r0, [sp, #8]
	bl sub_02024B60
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl sub_02013948
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201AACC
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	bl sub_020E5B44
	ldr r0, [sp, #4]
	ldr r3, [sp, #0xc]
	add r1, r4, #0
	add r2, r7, #0
	str r5, [sp]
	bl sub_02013D88
	add r0, r4, #0
	add r1, r6, #0
	bl DC_FlushRange
	ldr r0, [sp, #8]
	bl sub_02024B1C
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bne _02013A36
	mov r1, #1
	bl sub_020B802C
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_020CFE74
	b _02013A46
_02013A36:
	mov r1, #2
	bl sub_020B802C
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_020CFECC
_02013A46:
	add r0, r4, #0
	bl sub_0201AB0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020139D0

	thumb_func_start sub_02013A50
sub_02013A50: ; 0x02013A50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	add r7, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldrb r1, [r6, #7]
	str r0, [sp, #0x24]
	add r0, r3, #0
	add r0, r7, r0
	str r2, [sp]
	str r3, [sp, #4]
	cmp r1, r0
	bge _02013A72
	bl GF_AssertFail
_02013A72:
	ldrb r2, [r6, #8]
	ldr r1, [sp]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	cmp r2, r0
	bge _02013A82
	bl GF_AssertFail
_02013A82:
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _02013ABA
	lsl r0, r7, #5
	add r5, r4, #0
	str r0, [sp, #8]
_02013A90:
	ldrb r1, [r6, #7]
	ldr r0, [sp, #0x20]
	add r2, r1, #0
	add r0, r4, r0
	mul r2, r0
	ldr r0, [sp, #4]
	lsl r1, r5, #5
	add r2, r2, r0
	ldr r0, [sp, #0x24]
	lsl r2, r2, #5
	add r0, r0, r1
	ldr r1, [r6, #0xc]
	add r1, r1, r2
	ldr r2, [sp, #8]
	bl sub_020E5AD8
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, r0
	blt _02013A90
_02013ABA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02013A50

	thumb_func_start sub_02013AC0
sub_02013AC0: ; 0x02013AC0
	mov r2, #0x14
	mov r1, #0
_02013AC4:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02013AC4
	bx lr
	.align 2, 0
	thumb_func_end sub_02013AC0

	thumb_func_start sub_02013AD0
sub_02013AD0: ; 0x02013AD0
	ldr r1, [r0, #0x64]
	mov r2, #0
	cmp r1, #0
	ble _02013AF4
	ldr r3, [r0, #0x60]
_02013ADA:
	ldr r1, [r3]
	cmp r1, #0
	bne _02013AEA
	ldr r1, [r0, #0x60]
	mov r0, #0x14
	mul r0, r2
	add r0, r1, r0
	bx lr
_02013AEA:
	ldr r1, [r0, #0x64]
	add r2, r2, #1
	add r3, #0x14
	cmp r2, r1
	blt _02013ADA
_02013AF4:
	mov r0, #0
	bx lr
	thumb_func_end sub_02013AD0

	thumb_func_start sub_02013AF8
sub_02013AF8: ; 0x02013AF8
	push {r3, r4}
	ldr r4, _02013B20 ; =0x020F5F2C
	mov r3, #0
_02013AFE:
	ldrb r2, [r4]
	cmp r2, r0
	bgt _02013B10
	ldrb r2, [r4, #1]
	cmp r2, r1
	bgt _02013B10
	add r0, r3, #0
	pop {r3, r4}
	bx lr
_02013B10:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, #0xc
	blt _02013AFE
	mov r0, #0xc
	pop {r3, r4}
	bx lr
	nop
_02013B20: .word 0x020F5F2C
	thumb_func_end sub_02013AF8

	thumb_func_start sub_02013B24
sub_02013B24: ; 0x02013B24
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	bl sub_02013F78
	ldr r1, [r6, #0x10]
	add r4, r0, #0
	bl sub_02013FC0
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_02013AF8
	str r0, [r4, #8]
	ldr r0, [r5, #4]
	ldr r1, _02013BCC ; =0x020F5F2C
	str r0, [r4]
	ldr r0, [r5]
	ldr r6, _02013BD0 ; =0x020F5F2D
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r2, [r5, #8]
	lsl r3, r0, #1
	ldrb r0, [r1, r3]
	ldrb r3, [r6, r3]
	sub r2, r2, r0
	ldr r0, [r5, #0xc]
	sub r6, r0, r3
	cmp r2, #0
	ble _02013B8C
	str r0, [r5, #0x1c]
	str r2, [r5, #0x18]
	ldr r0, [r5]
	str r0, [r5, #0x10]
	ldr r2, [r4, #8]
	ldr r0, [r5, #4]
	lsl r2, r2, #1
	ldrb r1, [r1, r2]
	add r0, r0, r1
	str r0, [r5, #0x14]
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _02013B84
	bl GF_AssertFail
_02013B84:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x20
	strb r1, [r0]
_02013B8C:
	cmp r6, #0
	ble _02013BA2
	ldr r0, [r4, #8]
	ldr r2, [r5]
	lsl r1, r0, #1
	ldr r0, _02013BD0 ; =0x020F5F2D
	ldrb r0, [r0, r1]
	add r0, r2, r0
	str r0, [r5]
	str r6, [r5, #0xc]
	b _02013BC6
_02013BA2:
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _02013BC2
	add r3, r5, #0
	add r3, #0x10
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	add r5, #0x20
	strb r0, [r5]
	b _02013BC6
_02013BC2:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02013BC6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02013BCC: .word 0x020F5F2C
_02013BD0: .word 0x020F5F2D
	thumb_func_end sub_02013B24

	thumb_func_start sub_02013BD4
sub_02013BD4: ; 0x02013BD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	str r1, [sp]
	add r5, r2, #0
	add r6, r3, #0
	cmp r7, #0
	bne _02013BE8
	bl GF_AssertFail
_02013BE8:
	ldr r0, [sp]
	cmp r0, #0
	bne _02013BF2
	bl GF_AssertFail
_02013BF2:
	ldr r0, [sp]
	mov r4, #0
	str r0, [sp, #0x10]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	add r0, sp, #0x24
	strb r4, [r0]
	ldr r0, [sp]
	str r4, [sp, #0x2c]
	str r7, [sp, #0x30]
	cmp r0, #0
	beq _02013C50
	add r7, sp, #4
_02013C0E:
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	bl sub_02013AF8
	lsl r1, r0, #1
	ldr r0, _02013C58 ; =0x020F5F2C
	add r0, r0, r1
	ldrb r0, [r0, #1]
	ldr r1, [sp, #4]
	add r1, r1, r0
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x10]
	sub r1, r1, r0
	str r1, [sp, #0x34]
	str r0, [sp, #0x10]
_02013C2C:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	add r4, r4, #1
	bl sub_02013B24
	cmp r0, #0
	beq _02013C2C
	add r2, sp, #0x28
	add r3, sp, #4
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0x10]
	str r0, [sp]
	cmp r0, #0
	bne _02013C0E
_02013C50:
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02013C58: .word 0x020F5F2C
	thumb_func_end sub_02013BD4

	thumb_func_start sub_02013C5C
sub_02013C5C: ; 0x02013C5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r5, r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r6, r3, #0
	cmp r0, #1
	bne _02013C7E
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0]
	b _02013C82
_02013C7E:
	ldr r0, _02013CC8 ; =0x04001000
	ldr r1, [r0]
_02013C82:
	ldr r0, _02013CCC ; =0x00300010
	add r7, r1, #0
	and r7, r0
	add r0, r7, #0
	bl sub_02022448
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r4, [r0, #0xc]
	cmp r4, r0
	beq _02013CC2
_02013C98:
	add r0, r5, #0
	bl sub_020B8008
	str r7, [sp]
	ldr r0, [sp, #0x30]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	add r2, r5, #0
	bl sub_02013CD0
	add r6, r0, #0
	ldr r4, [r4, #0xc]
	ldr r0, [sp, #0x14]
	add r5, #0x24
	cmp r4, r0
	bne _02013C98
_02013CC2:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02013CC8: .word 0x04001000
_02013CCC: .word 0x00300010
	thumb_func_end sub_02013C5C

	thumb_func_start sub_02013CD0
sub_02013CD0: ; 0x02013CD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [r6, #8]
	add r5, r2, #0
	lsl r1, r0, #1
	ldr r0, _02013D74 ; =0x020F5F2C
	ldrb r0, [r0, r1]
	str r0, [sp, #0x10]
	ldr r0, _02013D78 ; =0x020F5F2D
	ldrb r0, [r0, r1]
	ldr r1, [sp, #0x10]
	add r4, r1, #0
	mul r4, r0
	str r0, [sp, #0xc]
	cmp r4, r3
	bge _02013CF6
	add r4, r3, #0
_02013CF6:
	lsl r4, r4, #5
	ldr r0, [sp, #0x34]
	add r1, r4, #0
	bl sub_0201AACC
	add r7, r0, #0
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [r6]
	bl sub_02013A50
	add r0, r7, #0
	add r1, r4, #0
	bl DC_FlushRange
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _02013D38
	ldr r6, [sp, #0x2c]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020CFE74
	mov r0, #1
	str r6, [r5, #4]
	lsl r0, r0, #0x1a
	ldr r1, [r0]
	b _02013D4A
_02013D38:
	ldr r6, [sp, #0x2c]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020CFECC
	ldr r0, _02013D7C ; =0x04001000
	str r6, [r5, #8]
	ldr r1, [r0]
_02013D4A:
	ldr r0, _02013D80 ; =0x00300010
	and r0, r1
	str r0, [r5, #0x20]
	ldr r0, _02013D84 ; =0x0000FFFF
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	mov r0, #3
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x20]
	add r0, r7, #0
	bl sub_0201AB0C
	ldr r0, [sp, #0x2c]
	add r0, r0, r4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02013D74: .word 0x020F5F2C
_02013D78: .word 0x020F5F2D
_02013D7C: .word 0x04001000
_02013D80: .word 0x00300010
_02013D84: .word 0x0000FFFF
	thumb_func_end sub_02013CD0

	thumb_func_start sub_02013D88
sub_02013D88: ; 0x02013D88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r2, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r7, [sp, #0x30]
	cmp r3, #1
	bne _02013DA0
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0]
	b _02013DA4
_02013DA0:
	ldr r0, _02013DD8 ; =0x04001000
	ldr r1, [r0]
_02013DA4:
	ldr r0, _02013DDC ; =0x00300010
	add r5, r1, #0
	and r5, r0
	add r0, r5, #0
	bl sub_02022448
	ldr r4, [r6, #0xc]
	str r0, [sp, #0x14]
	mov r3, #0
	cmp r4, r6
	beq _02013DD4
_02013DBA:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0xc]
	str r7, [sp, #8]
	add r1, r4, #0
	bl sub_02013DE0
	ldr r4, [r4, #0xc]
	add r3, r0, #0
	cmp r4, r6
	bne _02013DBA
_02013DD4:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02013DD8: .word 0x04001000
_02013DDC: .word 0x00300010
	thumb_func_end sub_02013D88

	thumb_func_start sub_02013DE0
sub_02013DE0: ; 0x02013DE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	ldr r1, [r6, #8]
	add r7, r0, #0
	add r0, r2, #0
	lsl r2, r1, #1
	ldr r1, _02013E1C ; =0x020F5F2C
	add r5, r3, #0
	ldrb r1, [r1, r2]
	ldr r3, _02013E20 ; =0x020F5F2D
	ldrb r2, [r3, r2]
	add r4, r1, #0
	ldr r3, [sp, #0x20]
	mul r4, r2
	cmp r4, r3
	bge _02013E04
	add r4, r3, #0
_02013E04:
	ldr r3, [r6, #4]
	add r0, r0, r5
	str r3, [sp]
	str r0, [sp, #4]
	ldr r3, [r6]
	add r0, r7, #0
	bl sub_02013A50
	lsl r0, r4, #5
	add r0, r5, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02013E1C: .word 0x020F5F2C
_02013E20: .word 0x020F5F2D
	thumb_func_end sub_02013DE0

	thumb_func_start sub_02013E24
sub_02013E24: ; 0x02013E24
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _02013E34
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0]
	b _02013E38
_02013E34:
	ldr r0, _02013E6C ; =0x04001000
	ldr r1, [r0]
_02013E38:
	ldr r0, _02013E70 ; =0x00300010
	and r0, r1
	bl sub_02022448
	ldr r2, [r4, #0xc]
	mov r3, #0
	cmp r2, r4
	beq _02013E66
	ldr r1, _02013E74 ; =0x020F5F2C
_02013E4A:
	ldr r5, [r2, #8]
	lsl r5, r5, #1
	add r7, r1, r5
	ldrb r6, [r1, r5]
	ldrb r5, [r7, #1]
	mul r5, r6
	cmp r5, r0
	bge _02013E5C
	add r5, r0, #0
_02013E5C:
	ldr r2, [r2, #0xc]
	lsl r5, r5, #5
	add r3, r3, r5
	cmp r2, r4
	bne _02013E4A
_02013E66:
	add r0, r3, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02013E6C: .word 0x04001000
_02013E70: .word 0x00300010
_02013E74: .word 0x020F5F2C
	thumb_func_end sub_02013E24

	thumb_func_start sub_02013E78
sub_02013E78: ; 0x02013E78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, r1, #0
	ldr r4, [r0, #0xc]
	str r1, [sp, #4]
	add r7, r2, #0
	add r6, r3, #0
	cmp r4, r0
	beq _02013EC8
	mov r5, #0
_02013E8E:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02013EF0
	ldr r1, [r6]
	str r0, [r1, r5]
	ldr r0, [r6]
	ldr r0, [r0, r5]
	cmp r0, #0
	bne _02013EA8
	bl GF_AssertFail
_02013EA8:
	ldr r0, [r4]
	add r7, #0x24
	lsl r1, r0, #3
	ldr r0, [r6]
	add r0, r0, r5
	str r1, [r0, #4]
	ldr r0, [r4, #4]
	lsl r1, r0, #3
	ldr r0, [r6]
	add r0, r0, r5
	str r1, [r0, #8]
	ldr r4, [r4, #0xc]
	ldr r0, [sp, #4]
	add r5, #0xc
	cmp r4, r0
	bne _02013E8E
_02013EC8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02013E78

	thumb_func_start sub_02013ECC
sub_02013ECC: ; 0x02013ECC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02013EEC
	add r4, r6, #0
_02013EDA:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	bl sub_02024758
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02013EDA
_02013EEC:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02013ECC

	thumb_func_start sub_02013EF0
sub_02013EF0: ; 0x02013EF0
	push {r4, r5, lr}
	sub sp, #0x44
	add r5, r0, #0
	mov r0, #0
	str r2, [sp]
	str r0, [sp, #4]
	add r4, r1, #0
	ldr r1, [r5, #0xc]
	str r1, [sp, #8]
	ldr r1, [r4, #8]
	ldr r2, [r5]
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r1, [r1, #0x30]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r2, [r5, #0x20]
	add r1, sp, #0x20
	strb r2, [r1]
	ldr r1, [r5, #8]
	str r1, [sp, #0x24]
	add r1, sp, #0
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x24]
	str r1, [sp, #0x38]
	ldr r1, [r5, #0x28]
	str r1, [sp, #0x3c]
	ldr r1, [r5, #0x2c]
	str r1, [sp, #0x40]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02013F4C
	bl sub_020248AC
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_02013F4C:
	ldr r1, [r4]
	ldr r2, [r5, #0x18]
	lsl r1, r1, #3
	add r1, r2, r1
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r1, [r4, #4]
	ldr r2, [r5, #0x1c]
	lsl r1, r1, #3
	add r1, r2, r1
	ldr r0, [sp, #0x30]
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	bl sub_02024714
	add sp, #0x44
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02013EF0

	thumb_func_start sub_02013F78
sub_02013F78: ; 0x02013F78
	push {r4, lr}
	mov r1, #0x14
	bl sub_0201AACC
	add r4, r0, #0
	bne _02013F88
	bl GF_AssertFail
_02013F88:
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02013F78

	thumb_func_start sub_02013F94
sub_02013F94: ; 0x02013F94
	push {r4, lr}
	add r4, r0, #0
	bne _02013F9E
	bl GF_AssertFail
_02013F9E:
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02013F94

	thumb_func_start sub_02013FA8
sub_02013FA8: ; 0x02013FA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, r5
	beq _02013FBE
_02013FB2:
	ldr r4, [r0, #0xc]
	bl sub_02013F94
	add r0, r4, #0
	cmp r4, r5
	bne _02013FB2
_02013FBE:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02013FA8

	thumb_func_start sub_02013FC0
sub_02013FC0: ; 0x02013FC0
	ldr r2, [r1, #0xc]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r2, [r1, #0xc]
	str r0, [r2, #0x10]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end sub_02013FC0

	thumb_func_start sub_02013FD0
sub_02013FD0: ; 0x02013FD0
	ldr r3, _02013FD8 ; =sub_02013728
	str r1, [r0, #8]
	bx r3
	nop
_02013FD8: .word sub_02013728
	thumb_func_end sub_02013FD0

	thumb_func_start sub_02013FDC
sub_02013FDC: ; 0x02013FDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r6, [sp, #0x20]
	str r1, [sp, #4]
	add r5, r2, #0
	add r4, r3, #0
	str r0, [sp, #0x24]
	mov r7, #0
_02013FF0:
	ldr r1, [r4]
	ldr r0, [sp, #4]
	ldr r2, [r5]
	add r0, r0, r1
	ldr r1, [sp]
	add r1, r1, r2
	add r2, r6, #0
	bl sub_020E5AD8
	ldr r1, [r5]
	ldr r0, [sp, #0x24]
	add r7, r7, #1
	add r0, r1, r0
	str r0, [r5]
	ldr r0, [r4]
	add r0, r0, r6
	str r0, [r4]
	cmp r7, #8
	blt _02013FF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02013FDC

	thumb_func_start sub_0201401C
sub_0201401C: ; 0x0201401C
	push {r4, r5, r6, lr}
	add r5, r3, #0
	bl sub_02007524
	add r4, r0, #0
	bne _0201402C
	bl GF_AssertFail
_0201402C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020B70A8
	add r6, r0, #0
	cmp r5, #0
	bne _0201403E
	bl GF_AssertFail
_0201403E:
	cmp r6, #0
	bne _02014046
	bl GF_AssertFail
_02014046:
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0201401C

	thumb_func_start sub_02014050
sub_02014050: ; 0x02014050
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r4, [sp, #0x40]
	str r0, [sp, #8]
	add r6, r0, r2
	ldrh r0, [r4, #2]
	str r1, [sp, #0xc]
	add r5, r3, #0
	cmp r0, r6
	bge _02014068
	bl GF_AssertFail
_02014068:
	ldr r0, [sp, #0xc]
	ldrh r1, [r4]
	add r0, r0, r5
	str r0, [sp, #0x14]
	cmp r1, r0
	bge _02014078
	bl GF_AssertFail
_02014078:
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x1c]
	ldrh r0, [r4, #2]
	lsl r7, r0, #2
	ldr r0, [sp, #0xc]
	add r1, r0, #0
	mul r1, r7
	ldr r0, [sp, #8]
	str r1, [sp, #0x18]
	lsl r1, r0, #2
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bge _020140E2
_020140A4:
	ldr r4, [sp, #8]
	add r0, r4, #0
	cmp r0, r6
	bge _020140D0
	ldr r0, [sp, #0x18]
	lsl r1, r0, #3
	ldr r0, [sp, #0x10]
	add r5, r0, r1
_020140B4:
	str r5, [sp, #0x28]
	mov r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x28
	add r3, sp, #0x24
	str r7, [sp, #4]
	bl sub_02013FDC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _020140B4
_020140D0:
	ldr r0, [sp, #0x18]
	add r0, r0, r7
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _020140A4
_020140E2:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02014050

	thumb_func_start sub_020140E8
sub_020140E8: ; 0x020140E8
	push {r4, r5}
	sub sp, #8
	ldr r2, _02014120 ; =0x020F5F44
	add r1, sp, #0
	ldr r3, [r2]
	ldr r2, [r2, #4]
	str r3, [sp]
	str r2, [sp, #4]
	ldr r2, _02014124 ; =0x000001EF
	mov r5, #0
	add r3, r2, #0
_020140FE:
	ldr r4, [r1]
	cmp r4, r3
	beq _02014118
	cmp r4, r0
	bne _02014110
	add sp, #8
	mov r0, #1
	pop {r4, r5}
	bx lr
_02014110:
	add r5, r5, #1
	add r1, r1, #4
	cmp r5, r2
	blt _020140FE
_02014118:
	mov r0, #0
	add sp, #8
	pop {r4, r5}
	bx lr
	.align 2, 0
_02014120: .word 0x020F5F44
_02014124: .word 0x000001EF
	thumb_func_end sub_020140E8

	thumb_func_start sub_02014128
sub_02014128: ; 0x02014128
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r3, #0
	mov r3, #0
	str r3, [sp, #8]
	add r3, sp, #8
	add r5, r0, #0
	bl sub_0201401C
	ldr r0, [sp, #8]
	add r1, r5, #0
	ldr r0, [r0, #0x14]
	bl sub_02009D28
	ldr r0, [sp, #0x34]
	bl sub_020140E8
	ldr r1, [sp, #0x30]
	cmp r1, #2
	bne _02014160
	cmp r0, #1
	bne _02014160
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0x14]
	ldr r2, [sp, #0x2c]
	bl sub_02009B60
_02014160:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r0, r4, #0
	bl sub_02014050
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_02014128

	thumb_func_start sub_02014178
sub_02014178: ; 0x02014178
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	add r5, r2, #0
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	add r6, r0, #0
	mul r1, r2
	add r0, r5, #0
	lsl r1, r1, #5
	str r3, [sp, #0x20]
	bl sub_0201AA8C
	add r4, r0, #0
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl sub_02014128
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02014178

	thumb_func_start sub_020141C4
sub_020141C4: ; 0x020141C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r3, [sp, #8]
	ldr r3, [sp, #0x48]
	add r4, r0, #0
	str r3, [sp, #0x48]
	mov r3, #0
	str r3, [sp, #0x2c]
	bl sub_02007524
	str r0, [sp, #0x20]
	cmp r0, #0
	bne _020141E2
	bl GF_AssertFail
_020141E2:
	ldr r0, [sp, #0x20]
	add r1, sp, #0x2c
	bl sub_020B70A8
	cmp r0, #0
	bne _020141F2
	bl GF_AssertFail
_020141F2:
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #8]
	add r6, r0, r1
	ldr r0, [sp, #0x2c]
	ldrh r0, [r0, #2]
	cmp r0, r6
	bge _02014204
	bl GF_AssertFail
_02014204:
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x48]
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	ldrh r1, [r0]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bge _0201421A
	bl GF_AssertFail
_0201421A:
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x1c]
	bl sub_02009D28
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x2c]
	ldrh r0, [r0, #2]
	lsl r7, r0, #2
	ldr r0, [sp, #0x48]
	add r1, r0, #0
	mul r1, r7
	ldr r0, [sp, #8]
	str r1, [sp, #0x14]
	lsl r1, r0, #2
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bge _0201428E
_02014250:
	ldr r4, [sp, #8]
	add r0, r4, #0
	cmp r0, r6
	bge _0201427C
	ldr r0, [sp, #0x14]
	lsl r1, r0, #3
	ldr r0, [sp, #0xc]
	add r5, r0, r1
_02014260:
	str r5, [sp, #0x28]
	mov r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, sp, #0x28
	add r3, sp, #0x24
	str r7, [sp, #4]
	bl sub_02013FDC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02014260
_0201427C:
	ldr r0, [sp, #0x14]
	add r0, r0, r7
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x48]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x48]
	cmp r1, r0
	blt _02014250
_0201428E:
	ldr r0, [sp, #0x20]
	bl sub_0201AB0C
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020141C4

	thumb_func_start sub_02014298
sub_02014298: ; 0x02014298
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r5, r2, #0
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	add r6, r0, #0
	mul r1, r2
	add r0, r5, #0
	lsl r1, r1, #5
	str r3, [sp, #0x10]
	bl sub_0201AA8C
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	str r4, [sp, #0xc]
	bl sub_020141C4
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02014298

	thumb_func_start sub_020142D4
sub_020142D4: ; 0x020142D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x48]
	str r2, [sp, #4]
	str r0, [sp, #0x14]
	add r0, r2, #0
	add r7, r0, r1
	ldr r1, [sp, #0x3c]
	add r0, r3, #0
	add r0, r0, r1
	add r1, r3, #0
	str r3, [sp, #8]
	ldr r5, [sp, #0x40]
	str r0, [sp, #0x10]
	cmp r1, r0
	bge _0201434C
	add r0, r3, #0
	lsl r0, r0, #5
	str r0, [sp, #0xc]
	add r0, r2, #0
	lsl r0, r0, #5
	str r0, [sp, #0x1c]
_02014308:
	ldr r6, [sp, #4]
	add r0, r6, #0
	cmp r0, r7
	bge _0201433A
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x1c]
	add r4, r0, r2
_0201431C:
	ldr r1, [r5]
	ldr r0, [sp, #0x14]
	mov r2, #0x20
	add r0, r0, r1
	ldr r1, [sp, #0x18]
	add r1, r1, r4
	bl sub_020E5AD8
	ldr r0, [r5]
	add r6, r6, #1
	add r0, #0x20
	str r0, [r5]
	add r4, #0x20
	cmp r6, r7
	blt _0201431C
_0201433A:
	ldr r0, [sp, #0xc]
	add r0, #0x20
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #8]
	cmp r1, r0
	blt _02014308
_0201434C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020142D4

	thumb_func_start sub_02014350
sub_02014350: ; 0x02014350
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r2, #0
	ldr r2, [r4, #8]
	str r2, [sp]
	ldr r2, [r4, #0xc]
	str r2, [sp, #4]
	ldr r2, [sp, #0x20]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x24]
	str r2, [sp, #0x10]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	bl sub_020142D4
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end sub_02014350

	thumb_func_start sub_02014374
sub_02014374: ; 0x02014374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x9c]
	mov ip, r3
	add r5, r2, #0
	ldr r6, [sp, #0x94]
	ldr r7, [sp, #0x98]
	ldr r3, _020143DC ; =0x020F5F6C
	str r1, [sp, #0x10]
	str r0, [sp, #0x9c]
	add r2, sp, #0x1c
	mov r4, #0xc
_0201438E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _0201438E
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0xc]
	add r2, r5, #0
	mov r3, ip
	str r7, [sp, #8]
	bl sub_02014298
	str r0, [sp, #0x14]
	mov r4, #0
	add r5, sp, #0x1c
_020143B4:
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x9c]
	add r2, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r3, sp, #0x18
	bl sub_02014350
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _020143B4
	ldr r0, [sp, #0x14]
	bl sub_0201AB0C
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_020143DC: .word 0x020F5F6C
	thumb_func_end sub_02014374

	thumb_func_start sub_020143E0
sub_020143E0: ; 0x020143E0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [r3, #4]
	str r4, [sp]
	ldr r4, [r3, #8]
	str r4, [sp, #4]
	ldr r4, [r3, #0xc]
	str r4, [sp, #8]
	ldr r4, [sp, #0x18]
	str r4, [sp, #0xc]
	ldr r3, [r3]
	bl sub_02014374
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020143E0

	thumb_func_start sub_02014400
sub_02014400: ; 0x02014400
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, _02014428 ; =0x020F5F4C
	add r5, r3, #0
	add r3, sp, #4
	add r7, r0, #0
	mov ip, r1
	add r6, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r7, #0
	mov r1, ip
	add r3, r6, #0
	str r5, [sp]
	bl sub_020143E0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02014428: .word 0x020F5F4C
	thumb_func_end sub_02014400

	thumb_func_start sub_0201442C
sub_0201442C: ; 0x0201442C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x32
	add r7, r2, #0
	add r5, r0, #0
	add r0, r7, #0
	lsl r1, r1, #6
	bl sub_0201AA8C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl sub_02014400
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201442C

	thumb_func_start sub_02014450
sub_02014450: ; 0x02014450
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #0x20
	bl sub_0201AA8C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02007524
	add r1, sp, #0
	add r5, r0, #0
	bl sub_020B7140
	cmp r0, #1
	beq _0201447C
	bl GF_AssertFail
_0201447C:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl sub_020D47B8
	add r0, r5, #0
	bl sub_0201AB0C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02014450

	thumb_func_start sub_02014494
sub_02014494: ; 0x02014494
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xac]
	mov ip, r3
	add r5, r2, #0
	ldr r6, [sp, #0xa4]
	ldr r7, [sp, #0xa8]
	ldr r3, _0201450C ; =0x020F5FCC
	str r1, [sp, #0x20]
	str r0, [sp, #0xac]
	add r2, sp, #0x2c
	mov r4, #0xc
_020144AE:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _020144AE
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0x20]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0xb0]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xb4]
	add r2, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xb8]
	mov r3, ip
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xbc]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	bl sub_02014178
	str r0, [sp, #0x24]
	mov r4, #0
	add r5, sp, #0x2c
_020144E4:
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0xac]
	add r2, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r3, sp, #0x28
	bl sub_02014350
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _020144E4
	ldr r0, [sp, #0x24]
	bl sub_0201AB0C
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_0201450C: .word 0x020F5FCC
	thumb_func_end sub_02014494

	thumb_func_start sub_02014510
sub_02014510: ; 0x02014510
	push {r4, lr}
	sub sp, #0x20
	ldr r4, [r3, #4]
	str r4, [sp]
	ldr r4, [r3, #8]
	str r4, [sp, #4]
	ldr r4, [r3, #0xc]
	str r4, [sp, #8]
	ldr r4, [sp, #0x28]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0x10]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x34]
	str r4, [sp, #0x18]
	ldr r4, [sp, #0x38]
	str r4, [sp, #0x1c]
	ldr r3, [r3]
	bl sub_02014494
	add sp, #0x20
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02014510

	thumb_func_start sub_02014540
sub_02014540: ; 0x02014540
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r4, _02014578 ; =0x020F5F5C
	add r5, r3, #0
	add r3, sp, #0x14
	add r7, r0, #0
	mov ip, r1
	add r6, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0x38]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r1, ip
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r3, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl sub_02014510
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02014578: .word 0x020F5F5C
	thumb_func_end sub_02014540

	thumb_func_start sub_0201457C
sub_0201457C: ; 0x0201457C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #0x10]
	mov r1, #0x32
	add r5, r2, #0
	add r7, r0, #0
	add r0, r5, #0
	lsl r1, r1, #6
	add r4, r3, #0
	bl sub_0201AA8C
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	add r2, r5, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r3, r6, #0
	bl sub_02014540
	add r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0201457C

	thumb_func_start sub_020145B4
sub_020145B4: ; 0x020145B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #8]
	ldr r0, [sp, #0x48]
	lsl r7, r1, #2
	str r0, [sp, #0x20]
	add r0, r3, #0
	add r1, r0, #0
	mul r1, r7
	str r1, [sp, #0x1c]
	add r0, r2, #0
	lsl r1, r0, #2
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x44]
	add r0, r3, #0
	add r0, r0, r1
	add r1, r3, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp, #0x18]
	cmp r1, r0
	bge _0201462E
	ldr r1, [sp, #0x40]
	add r0, r2, #0
	add r6, r0, r1
_020145F0:
	ldr r4, [sp, #0xc]
	add r0, r4, #0
	cmp r0, r6
	bge _0201461C
	ldr r0, [sp, #0x1c]
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	add r5, r0, r1
_02014600:
	str r5, [sp, #0x28]
	mov r0, #4
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x28
	add r3, sp, #0x24
	str r7, [sp, #4]
	bl sub_02013FDC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02014600
_0201461C:
	ldr r0, [sp, #0x1c]
	add r0, r0, r7
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _020145F0
_0201462E:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020145B4

	thumb_func_start sub_02014634
sub_02014634: ; 0x02014634
	push {r3, lr}
	bl sub_020DB9C0
	mov r0, #0
	ldr r3, _02014664 ; =0x021D1048
	add r1, r0, #0
	mov r2, #5
_02014642:
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02014642
	stmia r3!, {r0, r1}
	ldr r0, _02014668 ; =0x021D1048
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, _02014664 ; =0x021D1048
	bl sub_020146CC
	ldr r0, _02014664 ; =0x021D1048
	bl sub_02014700
	pop {r3, pc}
	.align 2, 0
_02014664: .word 0x021D1048
_02014668: .word 0x021D1048
	thumb_func_end sub_02014634

	thumb_func_start sub_0201466C
sub_0201466C: ; 0x0201466C
	push {r3, lr}
	ldr r0, _0201468C ; =0x021D1048
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _0201468A
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	cmp r1, #0xa
	ble _0201468A
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, _02014690 ; =0x021D1048
	bl sub_020146CC
_0201468A:
	pop {r3, pc}
	.align 2, 0
_0201468C: .word 0x021D1048
_02014690: .word 0x021D1048
	thumb_func_end sub_0201466C

	thumb_func_start sub_02014694
sub_02014694: ; 0x02014694
	push {r4, lr}
	add r4, r1, #0
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _020146A2
	bl GF_AssertFail
_020146A2:
	add r3, r4, #0
	mov r0, #1
	add r2, r4, #0
	add r3, #0x2c
	str r0, [r4]
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r3, r4, #0
	add r3, #0x3c
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end sub_02014694

	thumb_func_start sub_020146CC
sub_020146CC: ; 0x020146CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #4]
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, _020146F0 ; =sub_02014694
	add r0, #0x2c
	add r1, #0x3c
	add r3, r4, #0
	bl sub_020DBB80
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _020146EE
	bl GF_AssertFail
_020146EE:
	pop {r4, pc}
	.align 2, 0
_020146F0: .word sub_02014694
	thumb_func_end sub_020146CC

	thumb_func_start sub_020146F4
sub_020146F4: ; 0x020146F4
	mov r3, #3
	str r3, [r0, #0x48]
	str r1, [r0, #0x4c]
	str r2, [r0, #0x50]
	bx lr
	.align 2, 0
	thumb_func_end sub_020146F4

	thumb_func_start sub_02014700
sub_02014700: ; 0x02014700
	mov r1, #0
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
	thumb_func_end sub_02014700

	thumb_func_start sub_02014708
sub_02014708: ; 0x02014708
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0201473C ; =0x021D1048
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #1
	beq _0201471A
	bl GF_AssertFail
_0201471A:
	ldr r2, _02014740 ; =0x021D1058
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, _0201473C ; =0x021D1048
	ldr r0, [r0, #0x48]
	cmp r0, #3
	bne _02014730
	ldr r2, _02014744 ; =0x021D1094
	b _02014732
_02014730:
	ldr r2, _02014748 ; =0x021D1068
_02014732:
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0201473C: .word 0x021D1048
_02014740: .word 0x021D1058
_02014744: .word 0x021D1094
_02014748: .word 0x021D1068
	thumb_func_end sub_02014708

	thumb_func_start sub_0201474C
sub_0201474C: ; 0x0201474C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02014774 ; =0x021D1048
	ldr r0, [r0]
	cmp r0, #1
	beq _0201475C
	bl GF_AssertFail
_0201475C:
	ldr r0, _02014774 ; =0x021D1048
	ldr r0, [r0, #0x48]
	cmp r0, #3
	bne _02014768
	ldr r2, _02014778 ; =0x021D1094
	b _0201476A
_02014768:
	ldr r2, _0201477C ; =0x021D1068
_0201476A:
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_02014774: .word 0x021D1048
_02014778: .word 0x021D1094
_0201477C: .word 0x021D1068
	thumb_func_end sub_0201474C

	thumb_func_start sub_02014780
sub_02014780: ; 0x02014780
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0201479C ; =0x021D1048
	ldr r0, [r0]
	cmp r0, #1
	beq _02014790
	bl GF_AssertFail
_02014790:
	ldr r2, _020147A0 ; =0x021D1058
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	pop {r4, pc}
	.align 2, 0
_0201479C: .word 0x021D1048
_020147A0: .word 0x021D1058
	thumb_func_end sub_02014780

	thumb_func_start sub_020147A4
sub_020147A4: ; 0x020147A4
	push {r3, r4}
	ldr r0, _020147D0 ; =0x021D1048
	ldr r0, [r0, #0x48]
	cmp r0, #3
	bne _020147B2
	ldr r4, _020147D4 ; =0x021D1094
	b _020147B4
_020147B2:
	ldr r4, _020147D8 ; =0x021D1068
_020147B4:
	ldr r1, [r4, #4]
	mov r0, #0x3c
	add r2, r1, #0
	mul r2, r0
	mov r0, #0xe1
	ldr r1, [r4]
	lsl r0, r0, #4
	mul r0, r1
	ldr r3, [r4, #8]
	add r0, r2, r0
	add r0, r3, r0
	pop {r3, r4}
	bx lr
	nop
_020147D0: .word 0x021D1048
_020147D4: .word 0x021D1094
_020147D8: .word 0x021D1068
	thumb_func_end sub_020147A4

	thumb_func_start sub_020147DC
sub_020147DC: ; 0x020147DC
	ldr r0, _020147F0 ; =0x021D1048
	ldr r0, [r0, #0x48]
	cmp r0, #3
	bne _020147E8
	ldr r1, _020147F4 ; =0x021D1094
	b _020147EA
_020147E8:
	ldr r1, _020147F8 ; =0x021D1068
_020147EA:
	ldr r3, _020147FC ; =sub_020DC330
	ldr r0, _02014800 ; =0x021D1058
	bx r3
	.align 2, 0
_020147F0: .word 0x021D1048
_020147F4: .word 0x021D1094
_020147F8: .word 0x021D1068
_020147FC: .word sub_020DC330
_02014800: .word 0x021D1058
	thumb_func_end sub_020147DC

	thumb_func_start sub_02014804
sub_02014804: ; 0x02014804
	push {r3, lr}
	bl sub_0201481C
	cmp r0, #3
	beq _02014812
	cmp r0, #4
	bne _02014816
_02014812:
	mov r0, #1
	pop {r3, pc}
_02014816:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02014804

	thumb_func_start sub_0201481C
sub_0201481C: ; 0x0201481C
	push {lr}
	sub sp, #0xc
	add r0, sp, #0
	bl sub_0201474C
	ldr r0, [sp]
	bl sub_02014844
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_0201481C

	thumb_func_start sub_02014830
sub_02014830: ; 0x02014830
	push {lr}
	sub sp, #0xc
	add r0, sp, #0
	bl sub_0201474C
	ldr r0, [sp]
	bl sub_0201485C
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02014830

	thumb_func_start sub_02014844
sub_02014844: ; 0x02014844
	push {r4, lr}
	add r4, r0, #0
	bmi _0201484E
	cmp r4, #0x18
	blt _02014852
_0201484E:
	bl GF_AssertFail
_02014852:
	ldr r0, _02014858 ; =0x020F6060
	ldrb r0, [r0, r4]
	pop {r4, pc}
	.align 2, 0
_02014858: .word 0x020F6060
	thumb_func_end sub_02014844

	thumb_func_start sub_0201485C
sub_0201485C: ; 0x0201485C
	push {r3, lr}
	bl sub_02014844
	cmp r0, #0
	beq _02014870
	cmp r0, #1
	beq _02014874
	cmp r0, #2
	beq _02014874
	b _02014878
_02014870:
	mov r0, #0
	pop {r3, pc}
_02014874:
	mov r0, #1
	pop {r3, pc}
_02014878:
	mov r0, #2
	pop {r3, pc}
	thumb_func_end sub_0201485C

	thumb_func_start sub_0201487C
sub_0201487C: ; 0x0201487C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r3, #0
	ldr r3, _020148E8 ; =0x020F6038
	add r4, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	str r2, [sp]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _020148EC ; =0x020F602C
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	str r2, [sp, #4]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r1, [sp, #4]
	str r0, [r2]
	ldr r0, [sp]
	bl sub_020DC330
	add r2, r1, #0
	add r3, r0, #0
	mov r1, #0
	ldr r0, _020148F0 ; =0xBC19137F
	eor r1, r2
	eor r0, r3
	orr r0, r1
	beq _020148C0
	bl GF_AssertFail
_020148C0:
	sub r0, r4, r5
	mov ip, r7
	mov r0, ip
	sbc r0, r6
	bge _020148D4
	sub r0, r5, r4
	sbc r6, r7
	add sp, #0x24
	add r1, r6, #0
	pop {r4, r5, r6, r7, pc}
_020148D4:
	ldr r0, _020148F0 ; =0xBC19137F
	mov r1, #0
	sub r0, r0, r4
	sbc r1, r7
	add r0, r5, r0
	adc r6, r1
	add r1, r6, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_020148E8: .word 0x020F6038
_020148EC: .word 0x020F602C
_020148F0: .word 0xBC19137F
	thumb_func_end sub_0201487C

	thumb_func_start sub_020148F4
sub_020148F4: ; 0x020148F4
	ldr r3, _020148FC ; =sub_02014700
	ldr r0, _02014900 ; =0x021D1048
	bx r3
	nop
_020148FC: .word sub_02014700
_02014900: .word 0x021D1048
	thumb_func_end sub_020148F4

	thumb_func_start sub_02014904
sub_02014904: ; 0x02014904
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r3, _02014910 ; =sub_020146F4
	ldr r0, _02014914 ; =0x021D1048
	bx r3
	.align 2, 0
_02014910: .word sub_020146F4
_02014914: .word 0x021D1048
	thumb_func_end sub_02014904

	thumb_func_start sub_02014918
sub_02014918: ; 0x02014918
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #1
	add r0, r4, #0
	lsl r1, r1, #3
	bl sub_0201AA8C
	cmp r0, #0
	beq _0201494E
	mov r2, #0
	cmp r5, #0
	bls _02014942
	add r3, r0, #0
	add r1, r2, #0
_02014936:
	str r1, [r3]
	str r1, [r3, #4]
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blo _02014936
_02014942:
	mov r1, #0
	lsl r2, r2, #3
	mvn r1, r1
	str r1, [r0, r2]
	add r1, r0, r2
	str r4, [r1, #4]
_0201494E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02014918

	thumb_func_start sub_02014950
sub_02014950: ; 0x02014950
	push {r4, lr}
	add r4, r0, #0
	bl sub_020149E0
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	thumb_func_end sub_02014950

	thumb_func_start sub_02014960
sub_02014960: ; 0x02014960
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r1, sp, #0
	add r7, r2, #0
	add r5, r3, #0
	bl sub_020149A4
	add r4, r0, #0
	beq _0201497E
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200BBA0
	str r0, [r4]
	str r5, [r4, #4]
_0201497E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02014960

	thumb_func_start sub_02014980
sub_02014980: ; 0x02014980
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r1, sp, #0
	add r5, r2, #0
	bl sub_020149A4
	add r4, r0, #0
	beq _0201499E
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_0202642C
	str r0, [r4]
	str r5, [r4, #4]
_0201499E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02014980

	thumb_func_start sub_020149A4
sub_020149A4: ; 0x020149A4
	push {r4, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _020149C4
	mov r2, #0
	mvn r2, r2
_020149B0:
	cmp r3, r2
	bne _020149BC
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
_020149BC:
	add r0, #8
	ldr r3, [r0]
	cmp r3, #0
	bne _020149B0
_020149C4:
	mov r2, #0
	mvn r2, r2
	add r4, r0, #0
	cmp r3, r2
	beq _020149D6
_020149CE:
	add r0, #8
	ldr r3, [r0]
	cmp r3, r2
	bne _020149CE
_020149D6:
	ldr r0, [r0, #4]
	str r0, [r1]
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020149A4

	thumb_func_start sub_020149E0
sub_020149E0: ; 0x020149E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	ldr r1, [r5]
	mvn r0, r0
	cmp r1, r0
	beq _02014A06
	mov r4, #0
	add r6, r0, #0
_020149F2:
	ldr r0, [r5]
	cmp r0, #0
	beq _02014A06
	bl sub_02026380
	str r4, [r5]
	add r5, #8
	ldr r0, [r5]
	cmp r0, r6
	bne _020149F2
_02014A06:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020149E0

	thumb_func_start sub_02014A08
sub_02014A08: ; 0x02014A08
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xc
	add r4, r2, #0
	bl sub_0201AA8C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	mov r1, #1
	strb r1, [r0, #9]
	str r5, [r0]
	str r4, [r0, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02014A08

	thumb_func_start sub_02014A38
sub_02014A38: ; 0x02014A38
	push {r4, lr}
	add r4, r0, #0
	bne _02014A42
	bl GF_AssertFail
_02014A42:
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02014A38

	thumb_func_start sub_02014A4C
sub_02014A4C: ; 0x02014A4C
	push {r4, lr}
	add r4, r0, #0
	bne _02014A56
	bl GF_AssertFail
_02014A56:
	ldrb r0, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02014A4C

	thumb_func_start sub_02014A60
sub_02014A60: ; 0x02014A60
	push {r4, lr}
	add r4, r0, #0
	bne _02014A6A
	bl GF_AssertFail
_02014A6A:
	ldrb r1, [r4, #8]
	mov r0, #1
	eor r0, r1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02014A60

	thumb_func_start sub_02014A78
sub_02014A78: ; 0x02014A78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02014A86
	bl GF_AssertFail
_02014A86:
	strb r4, [r5, #9]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02014A78

	thumb_func_start sub_02014A8C
sub_02014A8C: ; 0x02014A8C
	cmp r0, #0
	beq _02014A9E
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _02014A9E
	ldrb r2, [r0, #8]
	mov r1, #1
	eor r1, r2
	strb r1, [r0, #8]
_02014A9E:
	bx lr
	thumb_func_end sub_02014A8C

	thumb_func_start sub_02014AA0
sub_02014AA0: ; 0x02014AA0
	push {r3, lr}
	mov r0, #0
	bl sub_020D4294
	mov r0, #0
	bl sub_020D422C
	pop {r3, pc}
	thumb_func_end sub_02014AA0

	thumb_func_start sub_02014AB0
sub_02014AB0: ; 0x02014AB0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #1
	bne _02014ACA
	mov r0, #0
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020D43E8
	pop {r4, r5, r6, pc}
_02014ACA:
	mov r0, #0
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020D4448
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02014AB0

	thumb_func_start sub_02014AD8
sub_02014AD8: ; 0x02014AD8
	push {r3, r4, r5, lr}
	ldr r1, _02014B04 ; =0x0000079C
	add r5, r0, #0
	bl sub_0201AA8C
	ldr r2, _02014B04 ; =0x0000079C
	mov r1, #0
	add r4, r0, #0
	bl sub_020E5B44
	mov r2, #3
	lsl r2, r2, #8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, r2
	bl sub_02014A08
	mov r1, #6
	lsl r1, r1, #8
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02014B04: .word 0x0000079C
	thumb_func_end sub_02014AD8

	thumb_func_start sub_02014B08
sub_02014B08: ; 0x02014B08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02014B1A
	bl GF_AssertFail
_02014B1A:
	ldr r0, _02014B88 ; =0x00000604
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02014B26
	bl GF_AssertFail
_02014B26:
	ldr r0, _02014B8C ; =0x0000078C
	mov r2, #0
	strb r4, [r5, r0]
	add r1, r0, #1
	strb r6, [r5, r1]
	add r1, r0, #0
	add r1, #0xc
	strh r2, [r5, r1]
	add r2, sp, #8
	mov r1, #0x14
	ldrsh r2, [r2, r1]
	add r1, r0, #0
	add r1, #0xe
	strh r2, [r5, r1]
	add r1, r0, #4
	ldr r2, [sp, #0x20]
	add r0, #8
	str r2, [r5, r1]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x18]
	str r1, [r5, r0]
	ldr r0, _02014B90 ; =0x0000060C
	mov r1, #0xc0
	add r0, r5, r0
	add r2, r7, #0
	bl sub_02014C60
	ldr r0, _02014B94 ; =sub_02014CBC
	ldr r2, [sp, #0x28]
	add r1, r5, #0
	bl sub_0200E320
	ldr r1, _02014B88 ; =0x00000604
	mov r2, #3
	str r0, [r5, r1]
	ldr r0, _02014B98 ; =0x00000794
	add r1, r5, #0
	ldr r0, [r5, r0]
	lsl r2, r2, #8
	bl sub_020D47EC
	ldr r0, _02014B98 ; =0x00000794
	mov r2, #3
	lsl r2, r2, #8
	ldr r0, [r5, r0]
	add r1, r5, r2
	bl sub_020D47EC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02014B88: .word 0x00000604
_02014B8C: .word 0x0000078C
_02014B90: .word 0x0000060C
_02014B94: .word sub_02014CBC
_02014B98: .word 0x00000794
	thumb_func_end sub_02014B08

	thumb_func_start sub_02014B9C
sub_02014B9C: ; 0x02014B9C
	push {r4, lr}
	add r4, r0, #0
	bne _02014BA6
	bl GF_AssertFail
_02014BA6:
	ldr r0, _02014BD0 ; =0x00000604
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02014BCC
	bl sub_0200E390
	ldr r0, _02014BD0 ; =0x00000604
	mov r1, #0
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02014A4C
	ldr r1, _02014BD4 ; =0x00000794
	mov r2, #3
	ldr r1, [r4, r1]
	lsl r2, r2, #8
	bl sub_020E5B44
_02014BCC:
	pop {r4, pc}
	nop
_02014BD0: .word 0x00000604
_02014BD4: .word 0x00000794
	thumb_func_end sub_02014B9C

	thumb_func_start sub_02014BD8
sub_02014BD8: ; 0x02014BD8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02014B9C
	bl sub_02014D68
	mov r0, #6
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02014A38
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02014BD8

	thumb_func_start sub_02014BF8
sub_02014BF8: ; 0x02014BF8
	mov r1, #6
	lsl r1, r1, #8
	ldr r3, _02014C04 ; =sub_02014A4C
	ldr r0, [r0, r1]
	bx r3
	nop
_02014C04: .word sub_02014A4C
	thumb_func_end sub_02014BF8

	thumb_func_start sub_02014C08
sub_02014C08: ; 0x02014C08
	push {r4, lr}
	add r4, r0, #0
	beq _02014C36
	ldr r0, _02014C38 ; =0x00000604
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02014C36
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02014A8C
	mov r0, #6
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02014A4C
	add r1, r0, #0
	ldr r0, _02014C3C ; =0x00000794
	mov r2, #3
	ldr r0, [r4, r0]
	lsl r2, r2, #8
	bl sub_020D47EC
_02014C36:
	pop {r4, pc}
	.align 2, 0
_02014C38: .word 0x00000604
_02014C3C: .word 0x00000794
	thumb_func_end sub_02014C08

	thumb_func_start sub_02014C40
sub_02014C40: ; 0x02014C40
	push {r4, lr}
	add r4, r0, #0
	beq _02014C58
	ldr r0, _02014C5C ; =0x00000604
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02014C58
	bl sub_02014D68
	add r0, r4, #0
	bl sub_02014D70
_02014C58:
	pop {r4, pc}
	nop
_02014C5C: .word 0x00000604
	thumb_func_end sub_02014C40

	thumb_func_start sub_02014C60
sub_02014C60: ; 0x02014C60
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0
	add r7, r1, #0
	add r5, r0, #0
	add r6, r4, #0
	str r2, [sp]
	cmp r7, #0
	bls _02014CAE
	asr r0, r3, #0x1f
	str r3, [sp, #4]
	str r0, [sp, #8]
_02014C78:
	asr r0, r4, #4
	lsl r1, r0, #2
	ldr r0, _02014CB4 ; =0x021094DC
	ldr r2, [sp, #4]
	ldrsh r0, [r0, r1]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	bl sub_020F2948
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _02014CB8 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r0, r0, #0xc
	strh r0, [r5]
	ldr r0, [sp]
	add r6, r6, #1
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r5, r5, #2
	cmp r6, r7
	blo _02014C78
_02014CAE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02014CB4: .word 0x021094DC
_02014CB8: .word 0x00000000
	thumb_func_end sub_02014C60

	thumb_func_start sub_02014CBC
sub_02014CBC: ; 0x02014CBC
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #6
	add r6, r1, #0
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	bl sub_02014A4C
	add r5, r0, #0
	ldr r0, _02014D58 ; =0x00000798
	mov r1, #0x64
	ldrsh r0, [r6, r0]
	bl sub_020F2998
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldr r0, _02014D5C ; =0x0000078C
	ldrb r4, [r6, r0]
	add r0, r0, #1
	ldrb r0, [r6, r0]
	cmp r4, r0
	bgt _02014D24
	lsl r0, r4, #2
	add r5, r5, r0
_02014CEA:
	ldr r2, [r5]
	lsl r0, r2, #0x10
	asr r7, r0, #0x10
	lsl r0, r3, #1
	add r1, r6, r0
	ldr r0, _02014D60 ; =0x0000060C
	ldrsh r0, [r1, r0]
	add r0, r7, r0
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	lsr r0, r2, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	stmia r5!, {r0}
	add r0, r3, #1
	mov r1, #0xc0
	bl sub_020F2998
	lsl r0, r1, #0x18
	lsr r3, r0, #0x18
	ldr r0, _02014D64 ; =0x0000078D
	add r4, r4, #1
	ldrb r0, [r6, r0]
	cmp r4, r0
	ble _02014CEA
_02014D24:
	ldr r1, _02014D58 ; =0x00000798
	add r0, r1, #2
	ldrsh r2, [r6, r1]
	ldrsh r0, [r6, r0]
	add r4, r6, r1
	add r0, r2, r0
	strh r0, [r4]
	ldrsh r0, [r6, r1]
	mov r1, #0x4b
	lsl r1, r1, #8
	cmp r0, r1
	blt _02014D48
	mov r0, #0
	ldrsh r0, [r4, r0]
	bl sub_020F2998
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02014D48:
	cmp r0, #0
	bge _02014D54
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, r1
	strh r0, [r4]
_02014D54:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02014D58: .word 0x00000798
_02014D5C: .word 0x0000078C
_02014D60: .word 0x0000060C
_02014D64: .word 0x0000078D
	thumb_func_end sub_02014CBC

	thumb_func_start sub_02014D68
sub_02014D68: ; 0x02014D68
	ldr r3, _02014D6C ; =sub_02014AA0
	bx r3
	.align 2, 0
_02014D6C: .word sub_02014AA0
	thumb_func_end sub_02014D68

	thumb_func_start sub_02014D70
sub_02014D70: ; 0x02014D70
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _02014D7A
	bl GF_AssertFail
_02014D7A:
	mov r0, #6
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02014A60
	mov r1, #3
	lsl r1, r1, #8
	add r5, r0, #0
	bl DC_FlushRange
	mov r1, #0x79
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #4
	mov r3, #1
	bl sub_02014AB0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02014D70

	thumb_func_start sub_02014DA0
sub_02014DA0: ; 0x02014DA0
	mov r1, #0
	ldr r2, _02014DB0 ; =0x021D10A8
	add r0, r1, #0
_02014DA6:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #0x10
	blt _02014DA6
	bx lr
	.align 2, 0
_02014DB0: .word 0x021D10A8
	thumb_func_end sub_02014DA0

	thumb_func_start sub_02014DB4
sub_02014DB4: ; 0x02014DB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #8]
	ldr r1, _02014EA8 ; =0x021D10A8
	add r7, r0, #0
	add r6, r2, #0
	str r3, [sp, #0xc]
	mov r5, #0
_02014DC4:
	ldr r0, [r1]
	cmp r0, #0
	beq _02014DD2
	add r5, r5, #1
	add r1, r1, #4
	cmp r5, #0x10
	blt _02014DC4
_02014DD2:
	cmp r5, #0x10
	blt _02014DDC
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02014DDC:
	ldr r0, [sp, #0x2c]
	mov r1, #0xdc
	bl sub_0201AA8C
	add r4, r0, #0
	bne _02014DEC
	bl GF_AssertFail
_02014DEC:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xdc
	bl sub_020E5B44
	add r2, r4, #0
	ldr r0, [sp, #8]
	str r7, [r4, #0x18]
	ldr r3, _02014EAC ; =0x020F6090
	str r0, [r4, #0x1c]
	ldmia r3!, {r0, r1}
	add r2, #0x34
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _02014EB0 ; =0x020F6078
	str r0, [r2]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x40
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _02014EB4 ; =0x020F6084
	str r0, [r2]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x4c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl sub_020E5B44
	ldr r0, [sp, #0xc]
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, r6, r0
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0xda
	strb r5, [r0]
	ldr r0, _02014EA8 ; =0x021D10A8
	lsl r5, r5, #2
	str r4, [r0, r5]
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _02014E80
	ldr r0, [sp, #0x2c]
	bl sub_02023114
	str r0, [r4, #0x20]
	mov r3, #0
	str r3, [r4, #0x24]
	str r3, [r4, #0x28]
	mov r0, #2
	str r3, [r4, #0x2c]
	lsl r0, r0, #0xc
	strh r0, [r4, #0x30]
	str r3, [sp]
	ldr r0, [r4, #0x20]
	ldr r1, _02014EAC ; =0x020F6090
	str r0, [sp, #4]
	ldrh r2, [r4, #0x30]
	ldr r0, _02014EB4 ; =0x020F6084
	bl sub_02023308
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdb
	strb r1, [r0]
	ldr r0, [r4, #0x20]
	bl sub_0202313C
_02014E80:
	mov r0, #6
	str r0, [sp]
	mov r0, #0x3f
	str r0, [sp, #4]
	ldr r0, _02014EB8 ; =0x020F609C
	mov r1, #0x14
	ldr r0, [r0, r5]
	mov r2, #0xc8
	mov r3, #5
	bl sub_020988F4
	str r0, [r4]
	ldr r1, _02014EB0 ; =0x020F6078
	add r0, r4, #0
	bl sub_020154E4
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02014EA8: .word 0x021D10A8
_02014EAC: .word 0x020F6090
_02014EB0: .word 0x020F6078
_02014EB4: .word 0x020F6084
_02014EB8: .word 0x020F609C
	thumb_func_end sub_02014DB4

	thumb_func_start sub_02014EBC
sub_02014EBC: ; 0x02014EBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_020154B8
	add r0, r5, #0
	add r0, #0xd8
	ldrb r1, [r0]
	mov r0, #1
	tst r0, r1
	beq _02014EDA
	add r0, r5, #0
	add r0, #0x58
	bl sub_020B5CD8
	b _02014EFA
_02014EDA:
	mov r0, #2
	tst r0, r1
	beq _02014EFA
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_02014EE6:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _02014EF2
	bl sub_020B68A4
	str r7, [r4, #0x58]
_02014EF2:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x10
	blt _02014EE6
_02014EFA:
	add r0, r5, #0
	add r0, #0xd8
	ldrb r1, [r0]
	mov r0, #4
	tst r0, r1
	beq _02014F10
	add r0, r5, #0
	add r0, #0x98
	bl sub_020B5EC4
	b _02014F38
_02014F10:
	mov r0, #8
	tst r0, r1
	beq _02014F38
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_02014F1C:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _02014F30
	bl sub_020B6C3C
	add r0, r4, #0
	add r0, #0x98
	str r7, [r0]
_02014F30:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x10
	blt _02014F1C
_02014F38:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xd8
	strb r1, [r0]
	str r1, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02014F50
	bl sub_0201AB0C
	mov r0, #0
	str r0, [r5, #4]
_02014F50:
	ldr r2, _02014F80 ; =0x021D10A8
	mov r1, #0
_02014F54:
	ldr r0, [r2]
	cmp r0, r5
	bne _02014F64
	ldr r0, _02014F80 ; =0x021D10A8
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	b _02014F6C
_02014F64:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blt _02014F54
_02014F6C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02014F76
	bl sub_02023120
_02014F76:
	add r0, r5, #0
	bl sub_0201AB0C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02014F80: .word 0x021D10A8
	thumb_func_end sub_02014EBC

	thumb_func_start sub_02014F84
sub_02014F84: ; 0x02014F84
	push {r3, r4, r5, lr}
	ldr r5, _02014FA0 ; =0x021D10A8
	mov r4, #0
_02014F8A:
	ldr r0, [r5]
	cmp r0, #0
	beq _02014F94
	bl sub_02014EBC
_02014F94:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _02014F8A
	pop {r3, r4, r5, pc}
	nop
_02014FA0: .word 0x021D10A8
	thumb_func_end sub_02014F84

	thumb_func_start sub_02014FA4
sub_02014FA4: ; 0x02014FA4
	push {r4, lr}
	ldr r1, _02014FCC ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #8]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014FBC
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014FBC:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014FC8
	bl GF_AssertFail
_02014FC8:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02014FCC: .word 0x021D10A0
	thumb_func_end sub_02014FA4

	thumb_func_start sub_02014FD0
sub_02014FD0: ; 0x02014FD0
	push {r4, lr}
	ldr r1, _02014FF8 ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0xc]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014FE8
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014FE8:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014FF4
	bl GF_AssertFail
_02014FF4:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02014FF8: .word 0x021D10A0
	thumb_func_end sub_02014FD0

	thumb_func_start sub_02014FFC
sub_02014FFC: ; 0x02014FFC
	push {r4, lr}
	ldr r1, _02015024 ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x10]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015014
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015014:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015020
	bl GF_AssertFail
_02015020:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02015024: .word 0x021D10A0
	thumb_func_end sub_02014FFC

	thumb_func_start sub_02015028
sub_02015028: ; 0x02015028
	push {r4, lr}
	ldr r1, _02015050 ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x14]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015040
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015040:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _0201504C
	bl GF_AssertFail
_0201504C:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02015050: .word 0x021D10A0
	thumb_func_end sub_02015028

	thumb_func_start sub_02015054
sub_02015054: ; 0x02015054
	push {r4, lr}
	ldr r1, _0201507C ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x18]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _0201506C
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_0201506C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015078
	bl GF_AssertFail
_02015078:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0201507C: .word 0x021D10A0
	thumb_func_end sub_02015054

	thumb_func_start sub_02015080
sub_02015080: ; 0x02015080
	push {r4, lr}
	ldr r1, _020150A8 ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x1c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015098
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015098:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020150A4
	bl GF_AssertFail
_020150A4:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_020150A8: .word 0x021D10A0
	thumb_func_end sub_02015080

	thumb_func_start sub_020150AC
sub_020150AC: ; 0x020150AC
	push {r4, lr}
	ldr r1, _020150D4 ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x20]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020150C4
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020150C4:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020150D0
	bl GF_AssertFail
_020150D0:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_020150D4: .word 0x021D10A0
	thumb_func_end sub_020150AC

	thumb_func_start sub_020150D8
sub_020150D8: ; 0x020150D8
	push {r4, lr}
	ldr r1, _02015100 ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x24]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020150F0
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020150F0:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020150FC
	bl GF_AssertFail
_020150FC:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02015100: .word 0x021D10A0
	thumb_func_end sub_020150D8

	thumb_func_start sub_02015104
sub_02015104: ; 0x02015104
	push {r4, lr}
	ldr r1, _0201512C ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x28]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _0201511C
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_0201511C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015128
	bl GF_AssertFail
_02015128:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0201512C: .word 0x021D10A0
	thumb_func_end sub_02015104

	thumb_func_start sub_02015130
sub_02015130: ; 0x02015130
	push {r4, lr}
	ldr r1, _02015158 ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x2c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015148
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015148:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015154
	bl GF_AssertFail
_02015154:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02015158: .word 0x021D10A0
	thumb_func_end sub_02015130

	thumb_func_start sub_0201515C
sub_0201515C: ; 0x0201515C
	push {r4, lr}
	ldr r1, _02015184 ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x30]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015174
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015174:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015180
	bl GF_AssertFail
_02015180:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02015184: .word 0x021D10A0
	thumb_func_end sub_0201515C

	thumb_func_start sub_02015188
sub_02015188: ; 0x02015188
	push {r4, lr}
	ldr r1, _020151B0 ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x34]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020151A0
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020151A0:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020151AC
	bl GF_AssertFail
_020151AC:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_020151B0: .word 0x021D10A0
	thumb_func_end sub_02015188

	thumb_func_start sub_020151B4
sub_020151B4: ; 0x020151B4
	push {r4, lr}
	ldr r1, _020151DC ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x38]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020151CC
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020151CC:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020151D8
	bl GF_AssertFail
_020151D8:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_020151DC: .word 0x021D10A0
	thumb_func_end sub_020151B4

	thumb_func_start sub_020151E0
sub_020151E0: ; 0x020151E0
	push {r4, lr}
	ldr r1, _02015208 ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x3c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020151F8
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020151F8:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015204
	bl GF_AssertFail
_02015204:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02015208: .word 0x021D10A0
	thumb_func_end sub_020151E0

	thumb_func_start sub_0201520C
sub_0201520C: ; 0x0201520C
	push {r4, lr}
	ldr r1, _02015234 ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x40]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015224
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015224:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015230
	bl GF_AssertFail
_02015230:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02015234: .word 0x021D10A0
	thumb_func_end sub_0201520C

	thumb_func_start sub_02015238
sub_02015238: ; 0x02015238
	push {r4, lr}
	ldr r1, _02015260 ; =0x021D10A0
	mov r2, #3
	ldr r1, [r1, #0x44]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015250
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015250:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _0201525C
	bl GF_AssertFail
_0201525C:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02015260: .word 0x021D10A0
	thumb_func_end sub_02015238

	thumb_func_start sub_02015264
sub_02015264: ; 0x02015264
	ldr r3, _02015268 ; =sub_02007524
	bx r3
	.align 2, 0
_02015268: .word sub_02007524
	thumb_func_end sub_02015264

	thumb_func_start sub_0201526C
sub_0201526C: ; 0x0201526C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _02015280
	bl GF_AssertFail
_02015280:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0201528A
	bl GF_AssertFail
_0201528A:
	add r0, r5, #0
	add r0, #0xd8
	strb r4, [r0]
	mov r0, #1
	tst r0, r4
	beq _020152A0
	add r0, r5, #0
	add r0, #0x58
	bl sub_020B5C98
	b _020152B6
_020152A0:
	mov r0, #2
	tst r0, r4
	beq _020152B6
	mov r1, #0
	add r2, r5, #0
	add r0, r1, #0
_020152AC:
	add r1, r1, #1
	str r0, [r2, #0x58]
	add r2, r2, #4
	cmp r1, #0x10
	blt _020152AC
_020152B6:
	mov r0, #4
	tst r0, r4
	beq _020152C6
	add r0, r5, #0
	add r0, #0x98
	bl sub_020B5EA8
	b _020152E0
_020152C6:
	mov r0, #8
	tst r0, r4
	beq _020152E0
	mov r2, #0
	add r3, r5, #0
	add r1, r2, #0
_020152D2:
	add r0, r3, #0
	add r0, #0x98
	add r2, r2, #1
	add r3, r3, #4
	str r1, [r0]
	cmp r2, #0x10
	blt _020152D2
_020152E0:
	str r6, [r5, #4]
	cmp r7, #1
	bne _020152EE
	add r0, r5, #0
	bl sub_02015300
	pop {r3, r4, r5, r6, r7, pc}
_020152EE:
	ldr r0, _020152FC ; =sub_02015340
	add r1, r5, #0
	mov r2, #5
	bl sub_0200E374
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020152FC: .word sub_02015340
	thumb_func_end sub_0201526C

	thumb_func_start sub_02015300
sub_02015300: ; 0x02015300
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl sub_0209857C
	ldr r0, _0201533C ; =0x021D10A0
	str r4, [r0]
	ldr r1, [r4, #0x18]
	ldr r0, [r4]
	cmp r1, #0
	bne _0201531E
	bl sub_020983E8
	b _02015322
_0201531E:
	bl sub_020984B0
_02015322:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4]
	cmp r1, #0
	bne _02015330
	bl sub_020983D4
	b _02015334
_02015330:
	bl sub_020983FC
_02015334:
	ldr r0, _0201533C ; =0x021D10A0
	mov r1, #0
	str r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0201533C: .word 0x021D10A0
	thumb_func_end sub_02015300

	thumb_func_start sub_02015340
sub_02015340: ; 0x02015340
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02015300
	add r0, r4, #0
	bl sub_0200E390
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02015340

	thumb_func_start sub_02015354
sub_02015354: ; 0x02015354
	push {r4, lr}
	add r4, r0, #0
	bne _0201535E
	bl GF_AssertFail
_0201535E:
	ldr r0, _02015390 ; =0x021D10A0
	ldr r0, [r0]
	cmp r0, #0
	bne _0201536A
	bl GF_AssertFail
_0201536A:
	ldr r0, _02015390 ; =0x021D10A0
	mov r1, #0
	ldr r3, [r0]
	add r2, r3, #0
_02015372:
	ldr r0, [r2, #0x58]
	cmp r0, #0
	bne _02015380
	lsl r0, r1, #2
	add r0, r3, r0
	str r4, [r0, #0x58]
	pop {r4, pc}
_02015380:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blt _02015372
	bl GF_AssertFail
	pop {r4, pc}
	nop
_02015390: .word 0x021D10A0
	thumb_func_end sub_02015354

	thumb_func_start sub_02015394
sub_02015394: ; 0x02015394
	push {r4, lr}
	add r4, r0, #0
	bne _0201539E
	bl GF_AssertFail
_0201539E:
	ldr r0, _020153D4 ; =0x021D10A0
	ldr r0, [r0]
	cmp r0, #0
	bne _020153AA
	bl GF_AssertFail
_020153AA:
	ldr r0, _020153D4 ; =0x021D10A0
	mov r1, #0
	ldr r3, [r0]
	add r2, r3, #0
_020153B2:
	add r0, r2, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _020153C6
	lsl r0, r1, #2
	add r0, r3, r0
	add r0, #0x98
	str r4, [r0]
	pop {r4, pc}
_020153C6:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blt _020153B2
	bl GF_AssertFail
	pop {r4, pc}
	.align 2, 0
_020153D4: .word 0x021D10A0
	thumb_func_end sub_02015394

	thumb_func_start sub_020153D8
sub_020153D8: ; 0x020153D8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _020153F4
	add r0, #0xdb
	ldrb r0, [r0]
	bl sub_020233D8
	ldr r0, [r4, #0x20]
	bl sub_0202313C
	bl sub_02023154
_020153F4:
	bl sub_020BEF98
	ldr r0, [r4]
	ldr r1, _02015410 ; =0x021DA4E8
	bl sub_020981D4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0201540A
	bl sub_02023148
_0201540A:
	bl sub_020BEF98
	pop {r4, pc}
	.align 2, 0
_02015410: .word 0x021DA4E8
	thumb_func_end sub_020153D8

	thumb_func_start sub_02015414
sub_02015414: ; 0x02015414
	ldr r3, _0201541C ; =sub_0209829C
	ldr r0, [r0]
	bx r3
	nop
_0201541C: .word sub_0209829C
	thumb_func_end sub_02015414

	thumb_func_start sub_02015420
sub_02015420: ; 0x02015420
	mov r0, #0
	ldr r3, _02015438 ; =0x021D10A8
	add r2, r0, #0
_02015426:
	ldr r1, [r3]
	cmp r1, #0
	beq _0201542E
	add r0, r0, #1
_0201542E:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x10
	blt _02015426
	bx lr
	.align 2, 0
_02015438: .word 0x021D10A8
	thumb_func_end sub_02015420

	thumb_func_start sub_0201543C
sub_0201543C: ; 0x0201543C
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r5, _0201545C ; =0x021D10A8
	add r6, r4, #0
_02015444:
	ldr r0, [r5]
	cmp r0, #0
	beq _02015450
	bl sub_020153D8
	add r4, r4, #1
_02015450:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x10
	blt _02015444
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0201545C: .word 0x021D10A8
	thumb_func_end sub_0201543C

	thumb_func_start sub_02015460
sub_02015460: ; 0x02015460
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r5, _02015480 ; =0x021D10A8
	add r6, r4, #0
_02015468:
	ldr r0, [r5]
	cmp r0, #0
	beq _02015474
	bl sub_02015414
	add r4, r4, #1
_02015474:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x10
	blt _02015468
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02015480: .word 0x021D10A8
	thumb_func_end sub_02015460

	thumb_func_start sub_02015484
sub_02015484: ; 0x02015484
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_02098160
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02015484

	thumb_func_start sub_02015494
sub_02015494: ; 0x02015494
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020154AC ; =0x021D10A0
	str r3, [r0, #4]
	ldr r0, [r4]
	bl sub_020980CC
	ldr r1, _020154AC ; =0x021D10A0
	mov r2, #0
	str r2, [r1, #4]
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
_020154AC: .word 0x021D10A0
	thumb_func_end sub_02015494

	thumb_func_start sub_020154B0
sub_020154B0: ; 0x020154B0
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_020154B0

	thumb_func_start sub_020154B8
sub_020154B8: ; 0x020154B8
	ldr r3, _020154C0 ; =sub_02097FF4
	ldr r0, [r0]
	bx r3
	nop
_020154C0: .word sub_02097FF4
	thumb_func_end sub_020154B8

	thumb_func_start sub_020154C4
sub_020154C4: ; 0x020154C4
	ldr r3, _020154CC ; =sub_02098038
	ldr r0, [r0]
	bx r3
	nop
_020154CC: .word sub_02098038
	thumb_func_end sub_020154C4

	thumb_func_start sub_020154D0
sub_020154D0: ; 0x020154D0
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_020154D0

	thumb_func_start sub_020154D4
sub_020154D4: ; 0x020154D4
	add r2, r0, #0
	add r2, #0x40
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end sub_020154D4

	thumb_func_start sub_020154E4
sub_020154E4: ; 0x020154E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r3, r4, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x40
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [r5, #0x20]
	add r0, r4, #0
	bl sub_02023204
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020154E4

	thumb_func_start sub_02015504
sub_02015504: ; 0x02015504
	ldr r0, _0201550C ; =0x021D10A0
	ldr r0, [r0, #4]
	bx lr
	nop
_0201550C: .word 0x021D10A0
	thumb_func_end sub_02015504

	thumb_func_start sub_02015510
sub_02015510: ; 0x02015510
	ldr r2, _02015520 ; =0x020F6078
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	nop
_02015520: .word 0x020F6078
	thumb_func_end sub_02015510

	thumb_func_start sub_02015524
sub_02015524: ; 0x02015524
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_02015524

	thumb_func_start sub_02015528
sub_02015528: ; 0x02015528
	add r0, #0xdb
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02015528

	thumb_func_start sub_02015530
sub_02015530: ; 0x02015530
	add r0, #0xdb
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02015530

	thumb_func_start sub_02015538
sub_02015538: ; 0x02015538
	add r2, r0, #0
	add r2, #0x50
	ldrh r2, [r2]
	strh r2, [r1]
	add r2, r0, #0
	add r2, #0x52
	ldrh r2, [r2]
	add r0, #0x54
	strh r2, [r1, #2]
	ldrh r0, [r0]
	strh r0, [r1, #4]
	bx lr
	thumb_func_end sub_02015538

	thumb_func_start sub_02015550
sub_02015550: ; 0x02015550
	push {r4, r5, r6, r7}
	ldr r0, [r0, #0x20]
	add r4, r1, #0
	ldrh r2, [r0, #0x1c]
	cmp r2, #0
	bne _02015562
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_02015562:
	mov r1, #0
	cmp r2, #0
	ble _020155EC
	ldr r3, [r0, #0x18]
	ldr r7, _020155F4 ; =sub_0209DD30
	ldr r0, _020155F8 ; =sub_0209DDF8
_0201556E:
	cmp r3, #0
	beq _020155E4
	cmp r4, #5
	bhi _020155DE
	add r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_02015582: ; jump table
	.short _0201558E - _02015582 - 2 ; case 0
	.short _0201559A - _02015582 - 2 ; case 1
	.short _020155A6 - _02015582 - 2 ; case 2
	.short _020155B4 - _02015582 - 2 ; case 3
	.short _020155C2 - _02015582 - 2 ; case 4
	.short _020155D0 - _02015582 - 2 ; case 5
_0201558E:
	ldr r5, [r3]
	cmp r5, r0
	bne _020155E4
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_0201559A:
	ldr r5, [r3]
	cmp r5, r7
	bne _020155E4
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020155A6:
	ldr r6, [r3]
	ldr r5, _020155FC ; =sub_0209DCAC
	cmp r6, r5
	bne _020155E4
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020155B4:
	ldr r6, [r3]
	ldr r5, _02015600 ; =sub_0209DBD4
	cmp r6, r5
	bne _020155E4
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020155C2:
	ldr r6, [r3]
	ldr r5, _02015604 ; =sub_0209DAB8
	cmp r6, r5
	bne _020155E4
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020155D0:
	ldr r6, [r3]
	ldr r5, _02015608 ; =sub_0209DA24
	cmp r6, r5
	bne _020155E4
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020155DE:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_020155E4:
	add r1, r1, #1
	add r3, #8
	cmp r1, r2
	blt _0201556E
_020155EC:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	nop
_020155F4: .word sub_0209DD30
_020155F8: .word sub_0209DDF8
_020155FC: .word sub_0209DCAC
_02015600: .word sub_0209DBD4
_02015604: .word sub_0209DAB8
_02015608: .word sub_0209DA24
	thumb_func_end sub_02015550

	thumb_func_start sub_0201560C
sub_0201560C: ; 0x0201560C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_02015550
	cmp r0, #0
	beq _02015626
	ldrh r1, [r4]
	strh r1, [r0]
	ldrh r1, [r4, #2]
	strh r1, [r0, #2]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
_02015626:
	pop {r4, pc}
	thumb_func_end sub_0201560C

	thumb_func_start sub_02015628
sub_02015628: ; 0x02015628
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_02015550
	add r2, r0, #0
	beq _0201563E
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
_0201563E:
	pop {r4, pc}
	thumb_func_end sub_02015628

	thumb_func_start sub_02015640
sub_02015640: ; 0x02015640
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #2
	bl sub_02015550
	add r2, r0, #0
	bne _02015666
	add r2, sp, #0
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, pc}
_02015666:
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02015640

	thumb_func_start sub_02015674
sub_02015674: ; 0x02015674
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_02015550
	cmp r0, #0
	beq _02015688
	mov r1, #0
	ldrsh r1, [r4, r1]
	strh r1, [r0, #0xc]
_02015688:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02015674

	thumb_func_start sub_0201568C
sub_0201568C: ; 0x0201568C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_02015550
	cmp r0, #0
	bne _020156A0
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_020156A0:
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	strh r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0201568C

	thumb_func_start sub_020156A8
sub_020156A8: ; 0x020156A8
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_02015550
	cmp r0, #0
	beq _020156BA
	ldrh r1, [r4]
	strh r1, [r0]
_020156BA:
	pop {r4, pc}
	thumb_func_end sub_020156A8

	thumb_func_start sub_020156BC
sub_020156BC: ; 0x020156BC
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_02015550
	cmp r0, #0
	bne _020156D0
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_020156D0:
	ldrh r0, [r0]
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020156BC

	thumb_func_start sub_020156D8
sub_020156D8: ; 0x020156D8
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_02015550
	cmp r0, #0
	beq _020156EA
	ldrh r1, [r4]
	strh r1, [r0, #2]
_020156EA:
	pop {r4, pc}
	thumb_func_end sub_020156D8

	thumb_func_start sub_020156EC
sub_020156EC: ; 0x020156EC
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_02015550
	cmp r0, #0
	bne _02015700
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_02015700:
	ldrh r0, [r0, #2]
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020156EC

	thumb_func_start sub_02015708
sub_02015708: ; 0x02015708
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_02015550
	add r2, r0, #0
	beq _0201571E
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
_0201571E:
	pop {r4, pc}
	thumb_func_end sub_02015708

	thumb_func_start sub_02015720
sub_02015720: ; 0x02015720
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #5
	bl sub_02015550
	add r2, r0, #0
	bne _02015746
	add r2, sp, #0
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, pc}
_02015746:
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02015720

	thumb_func_start sub_02015754
sub_02015754: ; 0x02015754
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_02015550
	cmp r0, #0
	beq _02015768
	mov r1, #0
	ldrsh r1, [r4, r1]
	strh r1, [r0, #0xc]
_02015768:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02015754

	thumb_func_start sub_0201576C
sub_0201576C: ; 0x0201576C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_02015550
	cmp r0, #0
	bne _02015780
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_02015780:
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	strh r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0201576C

	thumb_func_start sub_02015788
sub_02015788: ; 0x02015788
	push {r3, r4, r5, lr}
	mov r1, #8
	add r5, r0, #0
	bl sub_0201AA8C
	add r4, r0, #0
	beq _020157AA
	ldr r0, _020157B0 ; =0x0001020F
	add r1, r5, #0
	str r0, [r4]
	mov r0, #4
	bl sub_02026354
	ldr r1, _020157B4 ; =0x020F60DC
	str r0, [r4, #4]
	bl sub_020269A0
_020157AA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_020157B0: .word 0x0001020F
_020157B4: .word 0x020F60DC
	thumb_func_end sub_02015788

	thumb_func_start sub_020157B8
sub_020157B8: ; 0x020157B8
	push {r4, lr}
	add r4, r0, #0
	bne _020157C2
	bl GF_AssertFail
_020157C2:
	cmp r4, #0
	beq _020157D6
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020157D0
	bl sub_02026380
_020157D0:
	add r0, r4, #0
	bl sub_0201AB0C
_020157D6:
	pop {r4, pc}
	thumb_func_end sub_020157B8

	thumb_func_start sub_020157D8
sub_020157D8: ; 0x020157D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _020157E6
	bl GF_AssertFail
_020157E6:
	cmp r5, #0
	beq _020157EC
	str r4, [r5]
_020157EC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020157D8

	thumb_func_start sub_020157F0
sub_020157F0: ; 0x020157F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r6]
	add r5, r1, #0
	str r0, [sp, #8]
	mov r1, #0
	add r4, r2, #0
	str r1, [sp, #0xc]
	ldr r2, [r6, #4]
	add r0, r5, #0
	add r3, r4, #0
	bl sub_020200FC
	add r0, r5, #0
	bl sub_0201D8A0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020157F0

	thumb_func_start sub_0201581C
sub_0201581C: ; 0x0201581C
	ldr r1, _02015830 ; =0x0000FFFF
	mov r2, #0
	strh r1, [r0]
_02015822:
	add r2, r2, #1
	strh r1, [r0, #4]
	add r0, r0, #2
	cmp r2, #2
	blt _02015822
	bx lr
	nop
_02015830: .word 0x0000FFFF
	thumb_func_end sub_0201581C

	thumb_func_start sub_02015834
sub_02015834: ; 0x02015834
	strh r1, [r0]
	mov r2, #0
	ldr r1, _02015848 ; =0x0000FFFF
	strh r2, [r0, #2]
_0201583C:
	add r2, r2, #1
	strh r1, [r0, #4]
	add r0, r0, #2
	cmp r2, #2
	blt _0201583C
	bx lr
	.align 2, 0
_02015848: .word 0x0000FFFF
	thumb_func_end sub_02015834

	thumb_func_start sub_0201584C
sub_0201584C: ; 0x0201584C
	push {r4, lr}
	mov r1, #4
	add r4, r0, #0
	bl sub_02015834
	mov r0, #5
	strh r0, [r4, #2]
	pop {r4, pc}
	thumb_func_end sub_0201584C

	thumb_func_start sub_0201585C
sub_0201585C: ; 0x0201585C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	bl sub_02015834
	ldrb r0, [r4, #1]
	strh r0, [r5, #2]
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _02015880
	bl sub_02015DC8
	ldrh r1, [r4, #4]
	bl sub_02015B60
	strh r0, [r5, #4]
_02015880:
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _02015894
	bl sub_02015DC8
	ldrh r1, [r4, #6]
	bl sub_02015B60
	strh r0, [r5, #6]
_02015894:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0201585C

	thumb_func_start sub_02015898
sub_02015898: ; 0x02015898
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, r1, #0
	str r1, [sp, #4]
	bl sub_0200BD08
	ldr r5, [sp]
	ldr r7, _020158FC ; =0x0000FFFF
	add r6, r0, #0
	mov r4, #0
_020158AE:
	ldrh r2, [r5, #4]
	cmp r2, r7
	beq _020158C4
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200C528
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #2
	blt _020158AE
_020158C4:
	ldr r2, [sp]
	mov r0, #1
	ldrh r2, [r2]
	mov r1, #0x1b
	lsl r3, r2, #1
	ldr r2, _02015900 ; =0x020F60E0
	ldrh r2, [r2, r3]
	ldr r3, [sp, #4]
	bl sub_0200BAF8
	add r5, r0, #0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldrh r2, [r2, #2]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0200BC4C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200BB44
	add r0, r6, #0
	bl sub_0200BDA0
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020158FC: .word 0x0000FFFF
_02015900: .word 0x020F60E0
	thumb_func_end sub_02015898

	thumb_func_start sub_02015904
sub_02015904: ; 0x02015904
	push {r4, lr}
	add r4, r0, #0
	add r3, r1, #0
	ldrh r1, [r4]
	mov r0, #0x1b
	lsl r2, r1, #1
	ldr r1, _0201591C ; =0x020F60E0
	ldrh r1, [r1, r2]
	ldrh r2, [r4, #2]
	bl sub_0200B9C4
	pop {r4, pc}
	.align 2, 0
_0201591C: .word 0x020F60E0
	thumb_func_end sub_02015904

	thumb_func_start sub_02015920
sub_02015920: ; 0x02015920
	ldrh r1, [r0]
	ldr r0, _02015930 ; =0x0000FFFF
	cmp r1, r0
	beq _0201592C
	mov r0, #1
	bx lr
_0201592C:
	mov r0, #0
	bx lr
	.align 2, 0
_02015930: .word 0x0000FFFF
	thumb_func_end sub_02015920

	thumb_func_start sub_02015934
sub_02015934: ; 0x02015934
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_02015964
	mov r3, #0
	cmp r0, #0
	bls _0201595A
	ldr r1, _02015960 ; =0x0000FFFF
_02015948:
	ldrh r2, [r4, #4]
	cmp r2, r1
	bne _02015952
	mov r0, #0
	pop {r4, pc}
_02015952:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, r0
	blo _02015948
_0201595A:
	mov r0, #1
	pop {r4, pc}
	nop
_02015960: .word 0x0000FFFF
	thumb_func_end sub_02015934

	thumb_func_start sub_02015964
sub_02015964: ; 0x02015964
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #5
	blo _02015972
	bl GF_AssertFail
_02015972:
	add r0, r5, #0
	bl sub_02015A38
	cmp r4, r0
	blo _02015980
	bl GF_AssertFail
_02015980:
	ldr r1, _020159D4 ; =0x020F60E0
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	mov r0, #0x1b
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B9C4
	str r0, [sp]
	bl sub_02026AA4
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _020159D8 ; =0x0000FFFF
	mov r5, #0
	cmp r1, r0
	beq _020159C8
	add r7, r0, #0
	sub r6, r0, #1
_020159A6:
	cmp r1, r6
	bne _020159C0
	add r0, r4, #0
	bl sub_0201FB5C
	cmp r0, #0
	beq _020159B6
	add r5, r5, #1
_020159B6:
	add r0, r4, #0
	bl sub_0201FB1C
	add r4, r0, #0
	b _020159C2
_020159C0:
	add r4, r4, #2
_020159C2:
	ldrh r1, [r4]
	cmp r1, r7
	bne _020159A6
_020159C8:
	ldr r0, [sp]
	bl sub_02026380
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020159D4: .word 0x020F60E0
_020159D8: .word 0x0000FFFF
	thumb_func_end sub_02015964

	thumb_func_start sub_020159DC
sub_020159DC: ; 0x020159DC
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end sub_020159DC

	thumb_func_start sub_020159E4
sub_020159E4: ; 0x020159E4
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_020159E4

	thumb_func_start sub_020159E8
sub_020159E8: ; 0x020159E8
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end sub_020159E8

	thumb_func_start sub_020159EC
sub_020159EC: ; 0x020159EC
	push {r3, r4}
	ldrh r3, [r0]
	ldrh r2, [r1]
	cmp r3, r2
	bne _020159FE
	ldrh r3, [r0, #2]
	ldrh r2, [r1, #2]
	cmp r3, r2
	beq _02015A04
_020159FE:
	mov r0, #0
	pop {r3, r4}
	bx lr
_02015A04:
	mov r4, #0
_02015A06:
	ldrh r3, [r0, #4]
	ldrh r2, [r1, #4]
	cmp r3, r2
	beq _02015A14
	mov r0, #0
	pop {r3, r4}
	bx lr
_02015A14:
	add r4, r4, #1
	add r1, r1, #2
	add r0, r0, #2
	cmp r4, #2
	blt _02015A06
	mov r0, #1
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020159EC

	thumb_func_start sub_02015A24
sub_02015A24: ; 0x02015A24
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
	thumb_func_end sub_02015A24

	thumb_func_start sub_02015A38
sub_02015A38: ; 0x02015A38
	cmp r0, #5
	bhs _02015A40
	mov r0, #0x14
	bx lr
_02015A40:
	mov r0, #0
	bx lr
	thumb_func_end sub_02015A38

	thumb_func_start sub_02015A44
sub_02015A44: ; 0x02015A44
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #5
	blo _02015A54
	bl GF_AssertFail
_02015A54:
	strh r4, [r5]
	strh r6, [r5, #2]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02015A44

	thumb_func_start sub_02015A5C
sub_02015A5C: ; 0x02015A5C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #2
	blo _02015A6C
	bl GF_AssertFail
_02015A6C:
	lsl r0, r4, #1
	add r0, r5, r0
	strh r6, [r0, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02015A5C

	thumb_func_start sub_02015A74
sub_02015A74: ; 0x02015A74
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_02015964
	cmp r0, #2
	bhs _02015A94
	lsl r1, r0, #1
	add r2, r4, r1
	ldr r1, _02015A98 ; =0x0000FFFF
_02015A8A:
	add r0, r0, #1
	strh r1, [r2, #4]
	add r2, r2, #2
	cmp r0, #2
	blo _02015A8A
_02015A94:
	pop {r4, pc}
	nop
_02015A98: .word 0x0000FFFF
	thumb_func_end sub_02015A74

	thumb_func_start sub_02015A9C
sub_02015A9C: ; 0x02015A9C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x30
	add r6, r0, #0
	bl sub_0201AA8C
	ldr r4, _02015AD0 ; =0x020F612C
	str r0, [sp]
	mov r7, #0
	add r5, r0, #0
_02015AAE:
	ldr r0, [sp]
	mov r1, #0x1b
	str r6, [r0]
	ldrh r2, [r4]
	mov r0, #1
	add r3, r6, #0
	bl sub_0200BAF8
	str r0, [r5, #4]
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r7, #0xb
	blt _02015AAE
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02015AD0: .word 0x020F612C
	thumb_func_end sub_02015A9C

	thumb_func_start sub_02015AD4
sub_02015AD4: ; 0x02015AD4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02015ADC:
	ldr r0, [r5, #4]
	bl sub_0200BB44
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xb
	blt _02015ADC
	add r0, r6, #0
	bl sub_0201AB0C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02015AD4

	thumb_func_start sub_02015AF4
sub_02015AF4: ; 0x02015AF4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02015BB0
	ldr r0, [sp, #4]
	ldr r1, [sp]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl sub_0200BB6C
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02015AF4

	thumb_func_start sub_02015B1C
sub_02015B1C: ; 0x02015B1C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, _02015B58 ; =0x0000FFFF
	cmp r0, r1
	beq _02015B4C
	add r1, sp, #8
	add r2, sp, #4
	bl sub_02015BB0
	ldr r0, [sp, #8]
	mov r3, #0
	lsl r1, r0, #1
	ldr r0, _02015B5C ; =0x020F612C
	ldrh r0, [r0, r1]
	str r0, [sp, #8]
	str r4, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	mov r0, #0x1b
	bl sub_0200B8D4
	add sp, #0xc
	pop {r3, r4, pc}
_02015B4C:
	add r0, r4, #0
	bl sub_020263AC
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02015B58: .word 0x0000FFFF
_02015B5C: .word 0x020F612C
	thumb_func_end sub_02015B1C

	thumb_func_start sub_02015B60
sub_02015B60: ; 0x02015B60
	push {r4, r5}
	ldr r4, _02015BA4 ; =0x020F612C
	mov r2, #0
_02015B66:
	ldrh r3, [r4]
	cmp r0, r3
	bne _02015B94
	mov r4, #0
	add r3, r4, #0
	cmp r2, #0
	bls _02015B8A
	ldr r0, _02015BA8 ; =0x020F6142
_02015B76:
	lsl r5, r4, #1
	ldrh r5, [r0, r5]
	add r4, r4, #1
	lsl r4, r4, #0x10
	add r3, r3, r5
	lsl r3, r3, #0x10
	lsr r4, r4, #0x10
	lsr r3, r3, #0x10
	cmp r4, r2
	blo _02015B76
_02015B8A:
	add r0, r3, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5}
	bx lr
_02015B94:
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, #0xb
	blo _02015B66
	ldr r0, _02015BAC ; =0x0000FFFF
	pop {r4, r5}
	bx lr
	nop
_02015BA4: .word 0x020F612C
_02015BA8: .word 0x020F6142
_02015BAC: .word 0x0000FFFF
	thumb_func_end sub_02015B60

	thumb_func_start sub_02015BB0
sub_02015BB0: ; 0x02015BB0
	push {r3, r4, r5, r6}
	ldr r3, _02015BE8 ; =0x00000FFF
	ldr r6, _02015BEC ; =0x020F6142
	and r3, r0
	mov r0, #0
	add r5, r0, #0
_02015BBC:
	ldrh r4, [r6]
	add r0, r0, r4
	cmp r3, r0
	bhs _02015BD8
	str r5, [r1]
	ldr r1, _02015BEC ; =0x020F6142
	lsl r4, r5, #1
	ldrh r1, [r1, r4]
	sub r0, r0, r1
	sub r0, r3, r0
	str r0, [r2]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_02015BD8:
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #0xb
	blo _02015BBC
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02015BE8: .word 0x00000FFF
_02015BEC: .word 0x020F6142
	thumb_func_end sub_02015BB0

	thumb_func_start sub_02015BF0
sub_02015BF0: ; 0x02015BF0
	mov r0, #8
	bx lr
	thumb_func_end sub_02015BF0

	thumb_func_start sub_02015BF4
sub_02015BF4: ; 0x02015BF4
	push {r3, lr}
	mov r2, #0
	str r2, [r0]
	ldr r3, _02015C20 ; =0x020F6120
	str r2, [r0, #4]
_02015BFE:
	ldrb r1, [r3]
	cmp r1, #2
	bne _02015C10
	ldr r1, _02015C24 ; =0x020F6121
	lsl r2, r2, #1
	ldrb r1, [r1, r2]
	bl sub_02015CFC
	b _02015C18
_02015C10:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #6
	blo _02015BFE
_02015C18:
	mov r0, #0x1e
	bl sub_0202893C
	pop {r3, pc}
	.align 2, 0
_02015C20: .word 0x020F6120
_02015C24: .word 0x020F6121
	thumb_func_end sub_02015BF4

	thumb_func_start sub_02015C28
sub_02015C28: ; 0x02015C28
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1e
	bl sub_02028900
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_020272C8
	pop {r4, pc}
	thumb_func_end sub_02015C28

	thumb_func_start sub_02015C3C
sub_02015C3C: ; 0x02015C3C
	ldr r0, [r0, #4]
	add r2, r0, #0
	lsr r2, r1
	mov r0, #1
	and r0, r2
	bx lr
	thumb_func_end sub_02015C3C

	thumb_func_start sub_02015C48
sub_02015C48: ; 0x02015C48
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r2, #0
	ldr r3, [r4, #4]
	add r5, r2, #0
	mov r0, #1
_02015C54:
	add r1, r3, #0
	lsr r1, r2
	tst r1, r0
	bne _02015C5E
	add r5, r5, #1
_02015C5E:
	add r2, r2, #1
	cmp r2, #0x20
	blo _02015C54
	cmp r5, #0
	beq _02015CA0
	bl sub_0201FD44
	add r1, r5, #0
	bl sub_020F2BA4
	ldr r3, [r4, #4]
	mov r5, #0
	mov r0, #1
_02015C78:
	add r2, r3, #0
	lsr r2, r5
	tst r2, r0
	bne _02015C9A
	cmp r1, #0
	bne _02015C98
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r5
	orr r0, r1
	str r0, [r4, #4]
	mov r0, #0x1e
	bl sub_0202893C
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02015C98:
	sub r1, r1, #1
_02015C9A:
	add r5, r5, #1
	cmp r5, #0x20
	blo _02015C78
_02015CA0:
	mov r0, #0x1e
	bl sub_0202893C
	mov r0, #0x20
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02015C48

	thumb_func_start sub_02015CAC
sub_02015CAC: ; 0x02015CAC
	ldr r3, [r0, #4]
	mov r2, #0
	mov r0, #1
_02015CB2:
	add r1, r3, #0
	lsr r1, r2
	tst r1, r0
	bne _02015CBE
	mov r0, #0
	bx lr
_02015CBE:
	add r2, r2, #1
	cmp r2, #0x20
	blo _02015CB2
	mov r0, #1
	bx lr
	thumb_func_end sub_02015CAC

	thumb_func_start sub_02015CC8
sub_02015CC8: ; 0x02015CC8
	push {r3, r4}
	mov r3, #0
	ldr r4, _02015CEC ; =0x020F6142
	add r2, r3, #0
_02015CD0:
	ldrh r1, [r4]
	add r2, r2, #1
	add r4, r4, #2
	add r1, r3, r1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r2, #9
	blt _02015CD0
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	nop
_02015CEC: .word 0x020F6142
	thumb_func_end sub_02015CC8

	thumb_func_start sub_02015CF0
sub_02015CF0: ; 0x02015CF0
	ldr r0, [r0]
	add r2, r0, #0
	lsr r2, r1
	mov r0, #1
	and r0, r2
	bx lr
	thumb_func_end sub_02015CF0

	thumb_func_start sub_02015CFC
sub_02015CFC: ; 0x02015CFC
	mov r2, #1
	ldr r3, [r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r0]
	ldr r3, _02015D10 ; =sub_0202893C
	mov r0, #0x1e
	bx r3
	nop
_02015D10: .word sub_0202893C
	thumb_func_end sub_02015CFC

	thumb_func_start sub_02015D14
sub_02015D14: ; 0x02015D14
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #8
	add r5, r0, #0
	bl sub_0201AA8C
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0xd6
	add r2, r1, #0
	add r3, r5, #0
	bl sub_02007AC4
	str r0, [r4, #4]
	ldr r0, [sp, #8]
	lsr r0, r0, #2
	str r0, [r4]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02015D14

	thumb_func_start sub_02015D54
sub_02015D54: ; 0x02015D54
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0201AB0C
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02015D54

	thumb_func_start sub_02015D68
sub_02015D68: ; 0x02015D68
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_02015D68

	thumb_func_start sub_02015D6C
sub_02015D6C: ; 0x02015D6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02015D7A
	bl GF_AssertFail
_02015D7A:
	ldr r0, [r5]
	cmp r0, r4
	bhi _02015D84
	ldr r0, _02015D90 ; =0x0000FFFF
	pop {r3, r4, r5, pc}
_02015D84:
	ldr r1, [r5, #4]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02015D90: .word 0x0000FFFF
	thumb_func_end sub_02015D6C

	thumb_func_start sub_02015D94
sub_02015D94: ; 0x02015D94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02015DA2
	bl GF_AssertFail
_02015DA2:
	ldr r3, [r5]
	mov r1, #0
	cmp r3, #0
	bls _02015DC0
	ldr r2, [r5, #4]
_02015DAC:
	ldr r0, [r2]
	cmp r4, r0
	bne _02015DB8
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_02015DB8:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, r3
	blo _02015DAC
_02015DC0:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02015D94

	thumb_func_start sub_02015DC8
sub_02015DC8: ; 0x02015DC8
	cmp r0, #0xb
	blt _02015DCE
	mov r0, #0
_02015DCE:
	lsl r1, r0, #1
	ldr r0, _02015DD8 ; =0x020F612C
	ldrh r0, [r0, r1]
	bx lr
	nop
_02015DD8: .word 0x020F612C
	thumb_func_end sub_02015DC8

	thumb_func_start sub_02015DDC
sub_02015DDC: ; 0x02015DDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0x18
	bl sub_0201AA8C
	add r4, r0, #0
	bne _02015DF0
	bl GF_AssertFail
_02015DF0:
	ldr r0, [r5]
	ldr r1, [r5, #0xc]
	bl sub_0201605C
	str r0, [r4]
	ldr r0, [r5]
	str r0, [r4, #4]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	bl sub_0201608C
	str r0, [r4, #8]
	ldr r0, [r5, #4]
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_020160BC
	str r0, [r4, #0x10]
	ldr r0, [r5, #8]
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02015DDC

	thumb_func_start sub_02015E20
sub_02015E20: ; 0x02015E20
	push {r4, lr}
	add r4, r0, #0
	bne _02015E2A
	bl GF_AssertFail
_02015E2A:
	ldr r0, [r4]
	cmp r0, #0
	bne _02015E34
	bl GF_AssertFail
_02015E34:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02015E3E
	bl GF_AssertFail
_02015E3E:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02015E48
	bl GF_AssertFail
_02015E48:
	ldr r0, [r4]
	bl sub_0201AB0C
	ldr r0, [r4, #8]
	bl sub_0201AB0C
	ldr r0, [r4, #0x10]
	bl sub_0201AB0C
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02015E20

	thumb_func_start sub_02015E64
sub_02015E64: ; 0x02015E64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02015E98 ; =0x04000444
	mov r6, #0
	str r6, [r0]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _02015E8E
	add r4, r6, #0
_02015E76:
	ldr r0, [r5]
	add r0, r0, r4
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _02015E84
	bl sub_020161CC
_02015E84:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0x40
	cmp r6, r0
	blt _02015E76
_02015E8E:
	ldr r0, _02015E9C ; =0x04000448
	mov r1, #1
	str r1, [r0]
	pop {r4, r5, r6, pc}
	nop
_02015E98: .word 0x04000444
_02015E9C: .word 0x04000448
	thumb_func_end sub_02015E64

	thumb_func_start sub_02015EA0
sub_02015EA0: ; 0x02015EA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02016118
	add r4, r0, #0
	bne _02015EB2
	bl GF_AssertFail
_02015EB2:
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02015EBE
	bl GF_AssertFail
_02015EBE:
	ldr r0, [r5, #4]
	bl sub_02016170
	str r0, [r4]
	cmp r0, #0
	bne _02015ECE
	bl GF_AssertFail
_02015ECE:
	ldr r0, [r5, #4]
	ldr r1, [r4]
	add r2, r4, #4
	bl sub_02016198
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015EA0

	thumb_func_start sub_02015EDC
sub_02015EDC: ; 0x02015EDC
	push {r4, lr}
	ldr r1, _02015EF0 ; =0x02110928
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r1]
	blx r1
	add r0, r4, #0
	bl sub_02016044
	pop {r4, pc}
	.align 2, 0
_02015EF0: .word 0x02110928
	thumb_func_end sub_02015EDC

	thumb_func_start sub_02015EF4
sub_02015EF4: ; 0x02015EF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _02015F1A
	add r4, r6, #0
_02015F02:
	ldr r1, [r5, #8]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02015F10
	add r0, r1, r4
	bl sub_02015EDC
_02015F10:
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x28
	cmp r6, r0
	blt _02015F02
_02015F1A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02015EF4

	thumb_func_start sub_02015F1C
sub_02015F1C: ; 0x02015F1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02016144
	add r4, r0, #0
	bne _02015F2E
	bl GF_AssertFail
_02015F2E:
	ldr r0, [r5, #8]
	bl sub_02016184
	str r0, [r4]
	cmp r0, #0
	bne _02015F3E
	bl GF_AssertFail
_02015F3E:
	ldr r0, [r5, #4]
	ldr r1, [r4]
	add r2, r4, #4
	bl sub_020161A8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015F1C

	thumb_func_start sub_02015F4C
sub_02015F4C: ; 0x02015F4C
	push {r4, lr}
	ldr r1, _02015F60 ; =0x02110930
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r1]
	blx r1
	add r0, r4, #0
	bl sub_02016050
	pop {r4, pc}
	.align 2, 0
_02015F60: .word 0x02110930
	thumb_func_end sub_02015F4C

	thumb_func_start sub_02015F64
sub_02015F64: ; 0x02015F64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	ble _02015F8A
	add r4, r6, #0
_02015F72:
	ldr r1, [r5, #0x10]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02015F80
	add r0, r1, r4
	bl sub_02015F4C
_02015F80:
	ldr r0, [r5, #0x14]
	add r6, r6, #1
	add r4, #0x18
	cmp r6, r0
	blt _02015F72
_02015F8A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02015F64

	thumb_func_start sub_02015F8C
sub_02015F8C: ; 0x02015F8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_020160EC
	add r4, r0, #0
	bne _02015F9E
	bl GF_AssertFail
_02015F9E:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0201630C
	mov r0, #1
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015F8C

	thumb_func_start sub_02015FB0
sub_02015FB0: ; 0x02015FB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02015FBE
	bl GF_AssertFail
_02015FBE:
	str r4, [r5, #0x20]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02015FB0

	thumb_func_start sub_02015FC4
sub_02015FC4: ; 0x02015FC4
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end sub_02015FC4

	thumb_func_start sub_02015FCC
sub_02015FCC: ; 0x02015FCC
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	.align 2, 0
	thumb_func_end sub_02015FCC

	thumb_func_start sub_02015FD8
sub_02015FD8: ; 0x02015FD8
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
	thumb_func_end sub_02015FD8

	thumb_func_start sub_02015FE0
sub_02015FE0: ; 0x02015FE0
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	bx lr
	.align 2, 0
	thumb_func_end sub_02015FE0

	thumb_func_start sub_02015FE8
sub_02015FE8: ; 0x02015FE8
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #8]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	.align 2, 0
	thumb_func_end sub_02015FE8

	thumb_func_start sub_02015FF4
sub_02015FF4: ; 0x02015FF4
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_02015FF4

	thumb_func_start sub_02015FF8
sub_02015FF8: ; 0x02015FF8
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_02015FF8

	thumb_func_start sub_02015FFC
sub_02015FFC: ; 0x02015FFC
	add r0, #0x3e
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02015FFC

	thumb_func_start sub_02016004
sub_02016004: ; 0x02016004
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_02016004

	thumb_func_start sub_02016008
sub_02016008: ; 0x02016008
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_02016008

	thumb_func_start sub_0201600C
sub_0201600C: ; 0x0201600C
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_0201600C

	thumb_func_start sub_02016010
sub_02016010: ; 0x02016010
	str r1, [r0, #0x30]
	bx lr
	thumb_func_end sub_02016010

	thumb_func_start sub_02016014
sub_02016014: ; 0x02016014
	cmp r1, #0
	bne _0201601C
	str r2, [r0, #0x34]
	bx lr
_0201601C:
	str r2, [r0, #0x38]
	bx lr
	thumb_func_end sub_02016014

	thumb_func_start sub_02016020
sub_02016020: ; 0x02016020
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_02016020

	thumb_func_start sub_02016024
sub_02016024: ; 0x02016024
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020E5B44
	add r0, r4, #0
	mov r1, #0x1f
	add r0, #0x3e
	strb r1, [r0]
	ldr r0, _02016040 ; =0x00007FFF
	strh r0, [r4, #0x3c]
	pop {r4, pc}
	nop
_02016040: .word 0x00007FFF
	thumb_func_end sub_02016024

	thumb_func_start sub_02016044
sub_02016044: ; 0x02016044
	ldr r3, _0201604C ; =sub_020B8008
	mov r1, #0
	stmia r0!, {r1}
	bx r3
	.align 2, 0
_0201604C: .word sub_020B8008
	thumb_func_end sub_02016044

	thumb_func_start sub_02016050
sub_02016050: ; 0x02016050
	ldr r3, _02016058 ; =sub_020B804C
	mov r1, #0
	stmia r0!, {r1}
	bx r3
	.align 2, 0
_02016058: .word sub_020B804C
	thumb_func_end sub_02016050

	thumb_func_start sub_0201605C
sub_0201605C: ; 0x0201605C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	lsl r1, r6, #6
	bl sub_0201AA8C
	add r7, r0, #0
	bne _02016070
	bl GF_AssertFail
_02016070:
	mov r4, #0
	cmp r6, #0
	ble _02016086
	add r5, r7, #0
_02016078:
	add r0, r5, #0
	bl sub_02016024
	add r4, r4, #1
	add r5, #0x40
	cmp r4, r6
	blt _02016078
_02016086:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0201605C

	thumb_func_start sub_0201608C
sub_0201608C: ; 0x0201608C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	mov r1, #0x28
	mul r1, r6
	bl sub_0201AA8C
	add r7, r0, #0
	bne _020160A2
	bl GF_AssertFail
_020160A2:
	mov r4, #0
	cmp r6, #0
	ble _020160B8
	add r5, r7, #0
_020160AA:
	add r0, r5, #0
	bl sub_02016044
	add r4, r4, #1
	add r5, #0x28
	cmp r4, r6
	blt _020160AA
_020160B8:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201608C

	thumb_func_start sub_020160BC
sub_020160BC: ; 0x020160BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	mov r1, #0x18
	mul r1, r6
	bl sub_0201AA8C
	add r7, r0, #0
	bne _020160D2
	bl GF_AssertFail
_020160D2:
	mov r4, #0
	cmp r6, #0
	ble _020160E8
	add r5, r7, #0
_020160DA:
	add r0, r5, #0
	bl sub_02016050
	add r4, r4, #1
	add r5, #0x18
	cmp r4, r6
	blt _020160DA
_020160E8:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020160BC

	thumb_func_start sub_020160EC
sub_020160EC: ; 0x020160EC
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _02016110
	ldr r3, [r0]
	add r2, r3, #0
_020160FA:
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	bne _02016108
	lsl r0, r1, #6
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_02016108:
	add r1, r1, #1
	add r2, #0x40
	cmp r1, r4
	blt _020160FA
_02016110:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_020160EC

	thumb_func_start sub_02016118
sub_02016118: ; 0x02016118
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _0201613E
	ldr r3, [r0, #8]
	add r2, r3, #0
_02016126:
	ldr r0, [r2]
	cmp r0, #0
	bne _02016136
	mov r0, #0x28
	mul r0, r1
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_02016136:
	add r1, r1, #1
	add r2, #0x28
	cmp r1, r4
	blt _02016126
_0201613E:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02016118

	thumb_func_start sub_02016144
sub_02016144: ; 0x02016144
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _0201616A
	ldr r3, [r0, #0x10]
	add r2, r3, #0
_02016152:
	ldr r0, [r2]
	cmp r0, #0
	bne _02016162
	mov r0, #0x18
	mul r0, r1
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_02016162:
	add r1, r1, #1
	add r2, #0x18
	cmp r1, r4
	blt _02016152
_0201616A:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02016144

	thumb_func_start sub_02016170
sub_02016170: ; 0x02016170
	push {r3, lr}
	ldr r3, _02016180 ; =0x02110924
	mov r1, #0
	ldr r0, [r0, #0x10]
	ldr r3, [r3]
	add r2, r1, #0
	blx r3
	pop {r3, pc}
	.align 2, 0
_02016180: .word 0x02110924
	thumb_func_end sub_02016170

	thumb_func_start sub_02016184
sub_02016184: ; 0x02016184
	push {r3, lr}
	ldr r3, _02016194 ; =0x0211092C
	mov r1, #0
	ldr r3, [r3]
	lsl r0, r0, #5
	add r2, r1, #0
	blx r3
	pop {r3, pc}
	.align 2, 0
_02016194: .word 0x0211092C
	thumb_func_end sub_02016184

	thumb_func_start sub_02016198
sub_02016198: ; 0x02016198
	push {r3, lr}
	lsl r1, r1, #0x10
	add r3, r2, #0
	lsr r1, r1, #0xd
	mov r2, #0
	bl sub_020B82CC
	pop {r3, pc}
	thumb_func_end sub_02016198

	thumb_func_start sub_020161A8
sub_020161A8: ; 0x020161A8
	push {r3, r4, r5, lr}
	add r3, r2, #0
	ldr r2, _020161C8 ; =0xFFFF0000
	add r5, r0, #0
	and r2, r1
	lsr r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r4, [r5, #8]
	lsl r2, r2, #3
	str r2, [r5, #8]
	lsr r1, r1, #0xd
	mov r2, #0
	bl sub_020B86CC
	str r4, [r5, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_020161C8: .word 0xFFFF0000
	thumb_func_end sub_020161A8

	thumb_func_start sub_020161CC
sub_020161CC: ; 0x020161CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r7, _020162EC ; =0x04000444
	mov r6, #0
	add r5, r0, #0
	str r6, [r7]
	ldrh r1, [r5, #0x3c]
	ldr r0, _020162F0 ; =0x7FFF8000
	orr r0, r1
	str r0, [r7, #0x7c]
	add r0, r7, #0
	ldr r1, _020162F4 ; =0x00004210
	add r0, #0x80
	str r1, [r0]
	ldr r3, [r5, #0x24]
	ldr r4, [r3, #8]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #4]
	ldr r0, [r3]
	lsl r3, r2, #0x1d
	lsl r2, r1, #0x17
	lsl r1, r0, #0x14
	ldr r0, [r5, #0x28]
	lsl r4, r4, #0x1a
	lsr r0, r0, #3
	orr r4, r0
	mov r0, #1
	lsl r0, r0, #0x1e
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	str r0, [r7, #0x64]
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #8]
	cmp r0, #2
	bne _02016218
	mov r6, #1
_02016218:
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x2c]
	lsl r0, r0, #5
	add r1, r1, r0
	mov r0, #4
	sub r0, r0, r6
	lsr r1, r0
	ldr r2, _020162F8 ; =0x040004AC
	add r0, r5, #0
	str r1, [r2]
	add r0, #0x3e
	ldrb r0, [r0]
	sub r2, #8
	lsl r1, r0, #0x10
	mov r0, #0xc0
	orr r0, r1
	str r0, [r2]
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _0201624A
	mov r0, #8
	ldrsh r0, [r5, r0]
	mov r7, #0
	str r0, [sp, #0x14]
	b _02016252
_0201624A:
	mov r0, #8
	ldrsh r7, [r5, r0]
	mov r0, #0
	str r0, [sp, #0x14]
_02016252:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _02016260
	mov r0, #0xa
	ldrsh r6, [r5, r0]
	mov r4, #0
	b _02016266
_02016260:
	mov r0, #0xa
	ldrsh r4, [r5, r0]
	mov r6, #0
_02016266:
	ldr r0, [r5, #0x14]
	mov r1, #6
	lsl r2, r0, #0xc
	mov r0, #2
	ldrsh r0, [r5, r0]
	ldrsh r1, [r5, r1]
	mov r3, #4
	ldrsh r3, [r5, r3]
	add r0, r0, r1
	lsl r1, r0, #0xc
	mov r0, #0
	ldrsh r0, [r5, r0]
	add r0, r0, r3
	ldr r3, _020162FC ; =0x04000470
	lsl r0, r0, #0xc
	str r0, [r3]
	str r1, [r3]
	str r2, [r3]
	ldr r0, [r5, #0x18]
	ldr r1, _02016300 ; =0x021094DC
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r0, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	bl sub_020CFC30
	ldr r2, [r5, #0x10]
	ldr r0, [r5, #0xc]
	ldr r1, _02016304 ; =0x0400046C
	mov r3, #8
	str r0, [r1]
	str r2, [r1]
	lsr r0, r1, #0xe
	str r0, [r1]
	mov r2, #4
	mov r0, #6
	ldrsh r2, [r5, r2]
	ldrsh r0, [r5, r0]
	neg r2, r2
	neg r0, r0
	lsl r2, r2, #0xc
	lsl r0, r0, #0xc
	str r2, [r1, #4]
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1, #4]
	mov r1, #0xa
	ldrsh r1, [r5, r1]
	add r2, r0, #0
	str r1, [sp]
	ldr r1, [sp, #0x14]
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrsh r3, [r5, r3]
	add r1, r0, #0
	bl sub_020B7418
	ldr r0, _02016308 ; =0x04000448
	mov r1, #1
	str r1, [r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020162EC: .word 0x04000444
_020162F0: .word 0x7FFF8000
_020162F4: .word 0x00004210
_020162F8: .word 0x040004AC
_020162FC: .word 0x04000470
_02016300: .word 0x021094DC
_02016304: .word 0x0400046C
_02016308: .word 0x04000448
	thumb_func_end sub_020161CC

	thumb_func_start sub_0201630C
sub_0201630C: ; 0x0201630C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5, #4]
	add r7, r0, #0
	ldr r2, [r1, #0x10]
	mov r6, #8
	mov r0, #0
	cmp r2, #0
	ble _0201632A
_0201631E:
	ldr r2, [r5, #4]
	add r0, r0, #1
	ldr r2, [r2, #0x10]
	lsl r6, r6, #1
	cmp r0, r2
	blt _0201631E
_0201632A:
	ldr r1, [r1, #0x14]
	mov r4, #8
	mov r0, #0
	cmp r1, #0
	ble _02016340
_02016334:
	ldr r1, [r5, #4]
	add r0, r0, #1
	ldr r1, [r1, #0x14]
	lsl r4, r4, #1
	cmp r0, r1
	blt _02016334
_02016340:
	mov r1, #0xc
	mov r2, #0xe
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	add r0, r7, #0
	bl sub_02015FC4
	lsr r1, r6, #0x1f
	lsr r2, r4, #0x1f
	add r1, r6, r1
	add r2, r4, r2
	lsl r1, r1, #0xf
	lsl r2, r2, #0xf
	add r0, r7, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02015FD8
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02015FE0
	ldr r1, [r5, #0x18]
	add r0, r7, #0
	bl sub_02015FF4
	ldr r1, [r5, #0x14]
	add r0, r7, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02015FFC
	ldr r1, [r5, #4]
	add r0, r7, #0
	add r1, #0x10
	bl sub_02016004
	ldr r0, [r5, #4]
	mov r1, #0
	add r0, r0, #4
	bl sub_020B802C
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016008
	ldr r0, [r5, #8]
	mov r1, #0
	add r0, r0, #4
	bl sub_020B8078
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0201600C
	ldrh r1, [r5, #0x1c]
	add r0, r7, #0
	bl sub_02016010
	mov r1, #0
	add r0, r7, #0
	add r2, r1, #0
	bl sub_02016014
	add r0, r7, #0
	mov r1, #1
	mov r2, #0
	bl sub_02016014
	ldrh r1, [r5, #0x10]
	add r0, r7, #0
	bl sub_02016020
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0201630C

	thumb_func_start sub_020163E0
sub_020163E0: ; 0x020163E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _02016488 ; =sub_020164D0
	mov r1, #0x50
	mov r2, #0
	bl sub_02007200
	str r0, [sp, #4]
	bl sub_0201F988
	add r4, r0, #0
	cmp r5, #0
	beq _02016424
	cmp r6, #0
	bne _02016414
	add r0, r5, #0
	mov r1, #0
	bl sub_0200335C
	str r0, [sp]
	ldr r0, _0201648C ; =sub_020165D4
	str r0, [r4, #4]
	b _0201643E
_02016414:
	add r0, r5, #0
	mov r1, #1
	bl sub_0200335C
	str r0, [sp]
	ldr r0, _02016490 ; =sub_020165F0
	str r0, [r4, #4]
	b _0201643E
_02016424:
	cmp r6, #0
	bne _02016434
	bl sub_02026E84
	str r0, [sp]
	ldr r0, _02016494 ; =sub_020165A4
	str r0, [r4, #4]
	b _0201643E
_02016434:
	bl sub_02026E94
	str r0, [sp]
	ldr r0, _02016498 ; =sub_020165BC
	str r0, [r4, #4]
_0201643E:
	ldr r1, [sp]
	lsl r0, r7, #5
	str r0, [sp, #8]
	add r0, r1, r0
	add r1, r4, #0
	add r1, #0xc
	mov r2, #0x20
	bl sub_020D47B8
	ldr r1, [sp]
	ldr r0, [sp, #8]
	mov r2, #0x20
	add r0, r1, r0
	add r1, r4, #0
	add r1, #0x2c
	bl sub_020D47B8
	ldr r0, [sp, #4]
	mov r1, #1
	str r0, [r4]
	add r0, r4, #0
	str r5, [r4, #8]
	add r0, #0x4c
	strb r6, [r0]
	add r0, r4, #0
	add r0, #0x4d
	strb r7, [r0]
	add r0, r4, #0
	add r0, #0x4e
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4f
	strb r1, [r0]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02016488: .word sub_020164D0
_0201648C: .word sub_020165D4
_02016490: .word sub_020165F0
_02016494: .word sub_020165A4
_02016498: .word sub_020165BC
	thumb_func_end sub_020163E0

	thumb_func_start sub_0201649C
sub_0201649C: ; 0x0201649C
	cmp r1, #0
	beq _020164AA
	cmp r1, #1
	beq _020164B2
	cmp r1, #2
	beq _020164BA
	bx lr
_020164AA:
	mov r1, #0
	add r0, #0x4e
	strb r1, [r0]
	bx lr
_020164B2:
	mov r1, #2
	add r0, #0x4e
	strb r1, [r0]
	bx lr
_020164BA:
	mov r1, #3
	add r0, #0x4e
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0201649C

	thumb_func_start sub_020164C4
sub_020164C4: ; 0x020164C4
	ldr r3, _020164CC ; =sub_02007234
	ldr r0, [r0]
	bx r3
	nop
_020164CC: .word sub_02007234
	thumb_func_end sub_020164C4

	thumb_func_start sub_020164D0
sub_020164D0: ; 0x020164D0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #3
	bhi _02016546
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020164EC: ; jump table
	.short _020164F4 - _020164EC - 2 ; case 0
	.short _02016504 - _020164EC - 2 ; case 1
	.short _02016546 - _020164EC - 2 ; case 2
	.short _02016538 - _020164EC - 2 ; case 3
_020164F4:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4f
	strb r1, [r0]
	mov r0, #1
	add r4, #0x4e
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02016504:
	add r0, r4, #0
	bl sub_02016548
	cmp r0, #1
	bne _02016518
	add r1, r4, #0
	ldr r2, [r4, #4]
	add r0, r4, #0
	add r1, #0x2c
	blx r2
_02016518:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _02016546
	mov r0, #0
	add r4, #0x4f
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02016538:
	ldr r2, [r4, #4]
	add r0, r4, #0
	add r1, #0xc
	blx r2
	add r0, r5, #0
	bl sub_02007234
_02016546:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020164D0

	thumb_func_start sub_02016548
sub_02016548: ; 0x02016548
	push {r4, r5}
	add r1, r0, #0
	add r1, #0x4f
	ldrb r1, [r1]
	cmp r1, #0
	bne _02016576
	mov r1, #0x1e
	mov r4, #0
	mov r3, #1
	lsl r1, r1, #0xa
_0201655C:
	add r2, r3, #0
	lsl r2, r4
	tst r2, r1
	beq _02016568
	ldrh r2, [r0, #0xc]
	strh r2, [r0, #0x2c]
_02016568:
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, #0x10
	blo _0201655C
	mov r0, #1
	pop {r4, r5}
	bx lr
_02016576:
	cmp r1, #0x18
	bne _0201659E
	mov r1, #0x1e
	mov r5, #0
	add r4, r0, #0
	mov r3, #1
	lsl r1, r1, #0xa
_02016584:
	add r2, r3, #0
	lsl r2, r5
	tst r2, r1
	beq _02016590
	ldrh r2, [r0, #0x2a]
	strh r2, [r4, #0x2c]
_02016590:
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #0x10
	blo _02016584
	mov r0, #1
	pop {r4, r5}
	bx lr
_0201659E:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02016548

	thumb_func_start sub_020165A4
sub_020165A4: ; 0x020165A4
	push {r3, lr}
	add r3, r0, #0
	add r3, #0x4d
	ldrb r3, [r3]
	mov r0, #0
	mov r2, #0x20
	lsl r3, r3, #0x15
	lsr r3, r3, #0x10
	bl sub_0201C260
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020165A4

	thumb_func_start sub_020165BC
sub_020165BC: ; 0x020165BC
	push {r3, lr}
	add r3, r0, #0
	add r3, #0x4d
	ldrb r3, [r3]
	mov r0, #4
	mov r2, #0x20
	lsl r3, r3, #0x15
	lsr r3, r3, #0x10
	bl sub_0201C260
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020165BC

	thumb_func_start sub_020165D4
sub_020165D4: ; 0x020165D4
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r3, #8]
	add r3, #0x4d
	ldrb r3, [r3]
	mov r2, #0
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl sub_0200316C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020165D4

	thumb_func_start sub_020165F0
sub_020165F0: ; 0x020165F0
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r3, #8]
	add r3, #0x4d
	ldrb r3, [r3]
	mov r2, #1
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl sub_0200316C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020165F0

	thumb_func_start sub_0201660C
sub_0201660C: ; 0x0201660C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x78
	bl sub_0201AA8C
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02016A1C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0201660C

	thumb_func_start sub_02016624
sub_02016624: ; 0x02016624
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x77
	ldrb r1, [r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _0201663A
	bl sub_020169CC
_0201663A:
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02016624

	thumb_func_start sub_02016644
sub_02016644: ; 0x02016644
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	str r0, [r5, #0x5c]
	ldr r0, [r4, #4]
	str r0, [r5, #0x60]
	add r0, r5, #0
	ldrb r1, [r4, #0x10]
	add r0, #0x70
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r4, #0x11]
	add r0, #0x71
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x74
	ldrb r1, [r0]
	mov r0, #1
	bic r1, r0
	add r0, r5, #0
	add r0, #0x74
	strb r1, [r0]
	ldrb r0, [r4, #0x12]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1c
	cmp r1, #2
	bhs _0201667E
	b _02016680
_0201667E:
	mov r1, #0
_02016680:
	add r0, r5, #0
	add r0, #0x75
	strb r1, [r0]
	ldrb r0, [r4, #0x13]
	lsl r1, r0, #1
	ldr r0, _020166F4 ; =0x020F61B8
	ldrb r1, [r0, r1]
	add r0, r5, #0
	add r0, #0x72
	strb r1, [r0]
	ldrb r0, [r4, #0x13]
	lsl r1, r0, #1
	ldr r0, _020166F8 ; =0x020F61B9
	ldrb r1, [r0, r1]
	add r0, r5, #0
	add r0, #0x73
	strb r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02016A64
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02016A84
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02016AB0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02016B4C
	add r0, r5, #0
	add r0, #0x77
	ldrb r1, [r0]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r1, r0
	add r0, r5, #0
	add r0, #0x77
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x77
	ldrb r1, [r0]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x80
	orr r1, r0
	add r0, r5, #0
	add r0, #0x77
	strb r1, [r0]
	add r0, r5, #0
	bl sub_020167C4
	pop {r3, r4, r5, pc}
	nop
_020166F4: .word 0x020F61B8
_020166F8: .word 0x020F61B9
	thumb_func_end sub_02016644

	thumb_func_start sub_020166FC
sub_020166FC: ; 0x020166FC
	ldr r3, _02016700 ; =sub_02016644
	bx r3
	.align 2, 0
_02016700: .word sub_02016644
	thumb_func_end sub_020166FC

	thumb_func_start sub_02016704
sub_02016704: ; 0x02016704
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02016644
	cmp r4, #0
	beq _02016742
	ldr r3, [r5, #0x64]
	mov r0, #0x98
	mov r1, #0
	add r2, sp, #4
	bl sub_020079F4
	add r7, r0, #0
	mov r0, #0x40
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [r6, #0xc]
	ldr r2, [r5, #0x60]
	lsl r3, r3, #0x14
	ldr r1, [r1, #0xc]
	add r0, r4, #0
	lsr r2, r2, #2
	lsr r3, r3, #0x10
	bl sub_0200316C
	add r0, r7, #0
	bl sub_0201AB0C
_02016742:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02016704

	thumb_func_start sub_02016748
sub_02016748: ; 0x02016748
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x77
	ldrb r2, [r1]
	mov r1, #0xf0
	bic r2, r1
	mov r1, #0x80
	orr r2, r1
	add r1, r4, #0
	add r1, #0x77
	strb r2, [r1]
	bl sub_020168F4
	cmp r0, #0
	bne _02016784
	add r1, r4, #0
	add r1, #0x77
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bne _02016784
	add r4, #0x76
	ldrb r0, [r4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bne _02016782
	mov r0, #3
	pop {r4, pc}
_02016782:
	mov r0, #4
_02016784:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02016748

	thumb_func_start sub_02016788
sub_02016788: ; 0x02016788
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x28
	add r6, r1, #0
	add r4, #0xc
	mul r6, r0
	add r5, r4, r6
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r3, r5, #0
	lsl r2, r2, #2
	str r0, [sp]
	add r3, #0x24
	add r2, r5, r2
	ldrb r3, [r3]
	ldr r0, [r4, r6]
	ldr r1, [r5, #4]
	ldr r2, [r2, #0x10]
	bl sub_02016E40
	ldr r1, [r5, #4]
	ldr r0, [r4, r6]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201EFBC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02016788

	thumb_func_start sub_020167C4
sub_020167C4: ; 0x020167C4
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x74
	ldrb r1, [r1]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	bne _020167F6
	add r1, r4, #0
	add r1, #0x75
	ldrb r1, [r1]
	mov r2, #1
	bl sub_02016788
	add r0, r4, #0
	add r4, #0x75
	ldrb r2, [r4]
	mov r1, #1
	eor r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02016788
	pop {r4, pc}
_020167F6:
	add r4, #0x75
	ldrb r1, [r4]
	mov r2, #0
	bl sub_02016788
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020167C4

	thumb_func_start sub_02016804
sub_02016804: ; 0x02016804
	push {r3, lr}
	mov r2, #1
	add r3, r1, #0
	tst r3, r2
	beq _02016832
	add r1, r0, #0
	add r1, #0x76
	ldrb r3, [r1]
	mov r1, #0xf
	bic r3, r1
	add r1, r0, #0
	add r1, #0x75
	ldrb r2, [r1]
	mov r1, #0xf
	add r0, #0x76
	and r1, r2
	orr r1, r3
	strb r1, [r0]
	ldr r0, _0201687C ; =0x000005E4
	bl sub_0200604C
	mov r0, #1
	pop {r3, pc}
_02016832:
	mov r3, #2
	tst r3, r1
	beq _02016854
	add r1, r0, #0
	add r1, #0x76
	ldrb r3, [r1]
	mov r1, #0xf
	add r0, #0x76
	bic r3, r1
	add r1, r3, #0
	orr r1, r2
	strb r1, [r0]
	ldr r0, _0201687C ; =0x000005E4
	bl sub_0200604C
	mov r0, #1
	pop {r3, pc}
_02016854:
	mov r3, #0xc0
	tst r1, r3
	beq _02016876
	add r1, r0, #0
	add r1, #0x75
	ldrb r1, [r1]
	eor r2, r1
	add r1, r0, #0
	add r1, #0x75
	strb r2, [r1]
	bl sub_020167C4
	ldr r0, _02016880 ; =0x000005DC
	bl sub_0200604C
	mov r0, #0
	pop {r3, pc}
_02016876:
	mov r0, #0
	pop {r3, pc}
	nop
_0201687C: .word 0x000005E4
_02016880: .word 0x000005DC
	thumb_func_end sub_02016804

	thumb_func_start sub_02016884
sub_02016884: ; 0x02016884
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x76
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _020168B0
	ldr r0, [r4]
	bl sub_02026CC4
	cmp r0, #0
	beq _020168B0
	add r0, r4, #0
	add r0, #0x74
	ldrb r1, [r0]
	mov r0, #1
	add r4, #0x74
	bic r1, r0
	mov r0, #1
	orr r1, r0
	strb r1, [r4]
	pop {r4, pc}
_020168B0:
	add r0, r4, #0
	add r0, #0x74
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _020168E2
	ldr r0, _020168F0 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _020168E2
	add r0, r4, #0
	add r0, #0x74
	ldrb r1, [r0]
	mov r0, #1
	bic r1, r0
	add r0, r4, #0
	add r0, #0x74
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020167C4
	mov r0, #0
	pop {r4, pc}
_020168E2:
	ldr r1, _020168F0 ; =0x021D110C
	add r0, r4, #0
	ldr r1, [r1, #0x48]
	bl sub_02016804
	pop {r4, pc}
	nop
_020168F0: .word 0x021D110C
	thumb_func_end sub_02016884

	thumb_func_start sub_020168F4
sub_020168F4: ; 0x020168F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x77
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _02016908
	bl GF_AssertFail
_02016908:
	add r0, r4, #0
	add r0, #0x76
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	cmp r1, #3
	bne _02016952
	add r0, r4, #0
	bl sub_02016884
	cmp r0, #0
	bne _02016924
	mov r0, #0
	pop {r3, r4, r5, pc}
_02016924:
	add r1, r4, #0
	add r1, #0x76
	ldrb r1, [r1]
	add r0, r4, #0
	mov r2, #1
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_02016788
	add r0, r4, #0
	add r4, #0x76
	ldrb r1, [r4]
	lsl r1, r1, #0x1c
	lsr r2, r1, #0x1c
	mov r1, #1
	eor r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02016788
	mov r0, #0
	pop {r3, r4, r5, pc}
_02016952:
	add r0, r4, #0
	add r0, #0x74
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x1a
	cmp r5, #8
	bne _0201696C
	cmp r1, #0
	bne _02016968
	mov r0, #1
	pop {r3, r4, r5, pc}
_02016968:
	mov r0, #2
	pop {r3, r4, r5, pc}
_0201696C:
	lsr r2, r5, #0x1f
	lsl r0, r5, #0x1f
	sub r0, r0, r2
	mov r3, #0x1f
	ror r0, r3
	add r0, r2, r0
	bne _0201699A
	lsr r0, r5, #1
	lsr r2, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r2
	ror r0, r3
	add r0, r2, r0
	bne _02016992
	add r0, r4, #0
	mov r2, #1
	bl sub_02016788
	b _0201699A
_02016992:
	add r0, r4, #0
	mov r2, #0
	bl sub_02016788
_0201699A:
	add r0, r4, #0
	add r0, #0x74
	ldrb r2, [r0]
	mov r1, #0xfc
	add r4, #0x74
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x1a
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020168F4

	thumb_func_start sub_020169C0
sub_020169C0: ; 0x020169C0
	add r0, #0x74
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	.align 2, 0
	thumb_func_end sub_020169C0

	thumb_func_start sub_020169CC
sub_020169CC: ; 0x020169CC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6]
	bl sub_02026CAC
	add r5, r6, #0
	mov r4, #0
	add r5, #0xc
_020169DC:
	add r0, r5, #0
	bl sub_02016CC4
	add r4, r4, #1
	add r5, #0x28
	cmp r4, #2
	blt _020169DC
	ldr r1, [r6, #0x64]
	add r0, r6, #0
	bl sub_02016A1C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020169CC

	thumb_func_start sub_020169F4
sub_020169F4: ; 0x020169F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02016A02
	bl GF_AssertFail
_02016A02:
	add r0, r5, #0
	add r0, #0x76
	ldrb r1, [r0]
	mov r0, #0xf0
	add r5, #0x76
	bic r1, r0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020169F4

	thumb_func_start sub_02016A1C
sub_02016A1C: ; 0x02016A1C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x78
	bl sub_020E5B44
	add r0, r5, #0
	add r0, #0x77
	ldrb r2, [r0]
	mov r1, #0xf
	add r0, r5, #0
	bic r2, r1
	add r0, #0x77
	strb r2, [r0]
	add r0, r5, #0
	str r4, [r5, #0x64]
	add r0, #0x76
	ldrb r2, [r0]
	mov r0, #3
	bic r2, r1
	add r1, r2, #0
	orr r1, r0
	add r0, r5, #0
	add r0, #0x76
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x77
	ldrb r1, [r0]
	mov r0, #0xf0
	add r5, #0x77
	bic r1, r0
	mov r0, #0x80
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016A1C

	thumb_func_start sub_02016A64
sub_02016A64: ; 0x02016A64
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	ldr r0, [r1, #8]
	mov r1, #1
	str r0, [sp]
	ldr r0, [r3, #0x64]
	str r0, [sp, #4]
	ldr r2, [r3, #0x5c]
	ldr r3, [r3, #0x60]
	mov r0, #0x98
	bl sub_02016D24
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02016A64

	thumb_func_start sub_02016A84
sub_02016A84: ; 0x02016A84
	push {r3, lr}
	sub sp, #8
	add r3, r1, #0
	ldr r1, [r0, #0x60]
	cmp r1, #4
	bhs _02016A94
	mov r2, #0
	b _02016A96
_02016A94:
	mov r2, #4
_02016A96:
	mov r1, #0x40
	str r1, [sp]
	ldr r0, [r0, #0x64]
	mov r1, #0
	str r0, [sp, #4]
	ldr r3, [r3, #0xc]
	mov r0, #0x98
	lsl r3, r3, #5
	bl sub_02016D74
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02016A84

	thumb_func_start sub_02016AB0
sub_02016AB0: ; 0x02016AB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	mov r2, #0
	add r3, r7, #0
_02016ABA:
	add r2, r2, #1
	lsl r0, r2, #0xc
	str r0, [r3, #0x68]
	add r3, r3, #4
	cmp r2, #2
	blt _02016ABA
	ldr r0, [r7, #0x5c]
	add r2, sp, #4
	str r0, [sp, #4]
	ldr r0, [r7, #0x60]
	mov r5, #2
	strb r0, [r2, #0x12]
	mov r0, #0x98
	strh r0, [r2, #8]
	ldr r0, [r1, #8]
	strh r0, [r2, #0xe]
	ldr r0, [r1, #0xc]
	strh r0, [r2, #0x10]
	add r0, r7, #0
	add r0, #0x68
	str r0, [sp, #8]
	add r0, r7, #0
	strb r5, [r2, #0x13]
	add r0, #0x70
	ldrb r0, [r0]
	strb r0, [r2, #0x14]
	ldrb r0, [r1, #0x13]
	cmp r0, #0
	beq _02016AF6
	mov r5, #6
_02016AF6:
	add r0, r7, #0
	mov r6, #0
	str r0, [sp]
	add r0, #0xc
	add r4, r6, #0
	str r0, [sp]
_02016B02:
	mov r0, #0
	add r1, sp, #4
_02016B06:
	add r2, r5, r0
	add r2, r2, r4
	strh r2, [r1, #0xa]
	add r0, r0, #1
	add r1, r1, #2
	cmp r0, #2
	blt _02016B06
	add r1, r7, #0
	add r0, r7, #0
	add r1, #0x73
	add r0, #0x71
	ldrb r1, [r1]
	ldrb r0, [r0]
	mul r1, r6
	add r1, r0, r1
	add r0, sp, #4
	strb r1, [r0, #0x15]
	ldrh r0, [r0, #0x10]
	add r1, r0, r6
	add r0, sp, #4
	strh r1, [r0, #0x10]
	ldr r0, [sp]
	ldr r2, [r7, #0x64]
	add r1, sp, #4
	bl sub_02016C28
	ldr r0, [sp]
	add r6, r6, #1
	add r0, #0x28
	add r4, r4, #2
	str r0, [sp]
	cmp r6, #2
	blt _02016B02
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02016AB0

	thumb_func_start sub_02016B4C
sub_02016B4C: ; 0x02016B4C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
_02016B56:
	add r2, r4, #0
	add r2, #0x71
	ldrb r3, [r2]
	add r2, r4, #0
	add r2, #0x73
	ldrb r2, [r2]
	mul r2, r0
	add r2, r3, r2
	lsl r2, r2, #3
	strb r2, [r1, #4]
	add r2, r4, #0
	add r2, #0x70
	ldrb r2, [r2]
	add r0, r0, #1
	lsl r2, r2, #3
	strb r2, [r1, #6]
	add r2, r4, #0
	add r2, #0x73
	ldrb r2, [r2]
	add r3, r2, #0
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	mul r3, r0
	add r2, r3, r2
	lsl r2, r2, #3
	strb r2, [r1, #5]
	add r2, r4, #0
	add r2, #0x70
	ldrb r3, [r2]
	add r2, r4, #0
	add r2, #0x72
	ldrb r2, [r2]
	add r2, r3, r2
	lsl r2, r2, #3
	strb r2, [r1, #7]
	add r1, r1, #4
	cmp r0, #2
	blt _02016B56
	ldr r0, [r4, #0x64]
	ldr r2, _02016BBC ; =sub_02016BC0
	str r0, [sp]
	add r0, r4, #4
	mov r1, #2
	add r3, r4, #0
	bl sub_02026C44
	str r0, [r4]
	add sp, #4
	pop {r3, r4, pc}
	nop
_02016BBC: .word sub_02016BC0
	thumb_func_end sub_02016B4C

	thumb_func_start sub_02016BC0
sub_02016BC0: ; 0x02016BC0
	push {r3, r4, lr}
	sub sp, #4
	add r3, r2, #0
	add r3, #0x77
	ldrb r3, [r3]
	mov r4, #0xf0
	bic r3, r4
	lsl r4, r1, #0x18
	lsr r4, r4, #0x18
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x18
	orr r4, r3
	add r3, r2, #0
	add r3, #0x77
	strb r4, [r3]
	cmp r1, #0
	bne _02016C20
	add r1, r2, #0
	add r1, #0x76
	ldrb r1, [r1]
	mov r3, #0xf
	bic r1, r3
	lsl r3, r0, #0x18
	lsr r4, r3, #0x18
	mov r3, #0xf
	and r3, r4
	orr r3, r1
	add r1, r2, #0
	add r1, #0x76
	strb r3, [r1]
	mov r1, #0x28
	add r2, #0xc
	mul r1, r0
	add r3, r2, r1
	add r0, r3, #0
	add r0, #0x25
	ldrb r0, [r0]
	str r0, [sp]
	ldr r0, [r2, r1]
	ldr r1, [r3, #4]
	ldr r2, [r3, #0x14]
	add r3, #0x24
	ldrb r3, [r3]
	bl sub_02016E40
	ldr r0, _02016C24 ; =0x000005E4
	bl sub_0200604C
_02016C20:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02016C24: .word 0x000005E4
	thumb_func_end sub_02016BC0

	thumb_func_start sub_02016C28
sub_02016C28: ; 0x02016C28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r1, [r5, #4]
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r2, r0, #0
	str r1, [r0, #0x18]
	ldrb r0, [r5, #0x13]
	add r2, #0x18
	ldr r6, [sp, #4]
	str r0, [r2, #4]
	mov r0, #0
	str r0, [r2, #8]
	str r0, [sp, #0xc]
	ldr r1, [r5]
	ldr r0, [sp, #4]
	ldr r4, [sp, #4]
	str r1, [r0]
	ldrb r1, [r5, #0x12]
	add r6, #0x10
	add r7, r5, #0
	str r1, [r0, #4]
	ldrb r1, [r5, #0x14]
	add r0, #0x24
	strb r1, [r0]
	ldr r0, [sp, #4]
	ldrb r1, [r5, #0x15]
	add r0, #0x25
	strb r1, [r0]
_02016C64:
	ldr r0, [sp, #8]
	mov r2, #1
	str r0, [sp]
	ldrh r0, [r5, #8]
	ldrh r1, [r7, #0xa]
	add r3, r6, #0
	bl sub_020079D8
	str r0, [r4, #8]
	ldrh r1, [r5, #0xe]
	ldr r0, [r4, #0x10]
	bl sub_02016E8C
	ldrh r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	bl sub_02016EAC
	ldr r0, [sp, #0xc]
	add r6, r6, #4
	add r0, r0, #1
	add r7, r7, #2
	add r4, r4, #4
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _02016C64
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	add r0, #0x25
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	ldr r2, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, #0x24
	ldrb r3, [r3]
	ldr r0, [r0]
	ldr r1, [r1, #4]
	ldr r2, [r2, #0x10]
	bl sub_02016E40
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, #0x26
	str r0, [sp, #4]
	strb r1, [r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02016C28

	thumb_func_start sub_02016CC4
sub_02016CC4: ; 0x02016CC4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	ldr r1, [r6, #0x10]
	add r3, r6, #0
	str r0, [sp]
	ldrh r0, [r1]
	mov r2, #0
	add r3, #0x24
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r1, #2]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r6, #4]
	ldrb r3, [r3]
	lsl r1, r1, #0x18
	ldr r0, [r6]
	lsr r1, r1, #0x18
	bl sub_0201C8C4
	ldr r1, [r6, #4]
	ldr r0, [r6]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201EFBC
	mov r4, #0
	add r5, r6, #0
_02016D08:
	ldr r0, [r5, #8]
	bl sub_0201AB0C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02016D08
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x28
	bl sub_020E5B44
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02016CC4

	thumb_func_start sub_02016D24
sub_02016D24: ; 0x02016D24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r1, #0x10
	add r5, r2, #0
	add r6, r3, #0
	bl sub_0201AA8C
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_02016D40:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02016D40
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #1
	add r3, r4, #4
	bl sub_020079BC
	str r0, [r4, #8]
	str r5, [r4]
	ldr r0, [sp, #0x20]
	strh r6, [r4, #0xc]
	strh r0, [r4, #0xe]
	ldr r0, _02016D70 ; =sub_02016DBC
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200E374
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02016D70: .word sub_02016DBC
	thumb_func_end sub_02016D24

	thumb_func_start sub_02016D74
sub_02016D74: ; 0x02016D74
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0x10
	add r5, r2, #0
	add r6, r3, #0
	bl sub_0201AA8C
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_02016D8E:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02016D8E
	ldr r1, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_020079F4
	str r0, [r4, #4]
	strh r5, [r4, #8]
	ldr r0, [sp, #0x18]
	strh r6, [r4, #0xa]
	strh r0, [r4, #0xc]
	ldr r0, _02016DB8 ; =sub_02016DF8
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200E374
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02016DB8: .word sub_02016DF8
	thumb_func_end sub_02016D74

	thumb_func_start sub_02016DBC
sub_02016DBC: ; 0x02016DBC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl DC_FlushRange
	ldrh r0, [r4, #0xe]
	ldr r3, [r4, #4]
	str r0, [sp]
	ldrh r1, [r4, #0xc]
	ldr r2, [r3, #0x14]
	ldr r0, [r4]
	lsl r1, r1, #0x18
	ldr r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl sub_0201C0C0
	add r0, r5, #0
	bl sub_0200E390
	ldr r0, [r4, #8]
	bl sub_0201AB0C
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02016DBC

	thumb_func_start sub_02016DF8
sub_02016DF8: ; 0x02016DF8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldrh r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _02016E1C
	ldr r0, [r4]
	ldrh r1, [r4, #0xa]
	ldrh r2, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_020CFC6C
	b _02016E2C
_02016E1C:
	cmp r0, #4
	bne _02016E2C
	ldr r0, [r4]
	ldrh r1, [r4, #0xa]
	ldrh r2, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_020CFCC0
_02016E2C:
	add r0, r5, #0
	bl sub_0200E390
	ldr r0, [r4, #4]
	bl sub_0201AB0C
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016DF8

	thumb_func_start sub_02016E40
sub_02016E40: ; 0x02016E40
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldrh r6, [r1]
	ldrh r3, [r1, #2]
	lsl r2, r2, #0x18
	lsl r6, r6, #0x15
	lsr r6, r6, #0x18
	lsl r3, r3, #0x15
	str r6, [sp]
	lsr r3, r3, #0x18
	str r3, [sp, #4]
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x30]
	lsl r1, r4, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	add r5, r0, #0
	bl sub_0201C4EC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0201EFBC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02016E40

	thumb_func_start sub_02016E8C
sub_02016E8C: ; 0x02016E8C
	push {r3, r4}
	ldr r2, [r0, #8]
	add r0, #0xc
	lsr r4, r2, #1
	mov r3, #0
	cmp r4, #0
	ble _02016EA8
_02016E9A:
	ldrh r2, [r0]
	add r3, r3, #1
	add r2, r2, r1
	strh r2, [r0]
	add r0, r0, #2
	cmp r3, r4
	blt _02016E9A
_02016EA8:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02016E8C

	thumb_func_start sub_02016EAC
sub_02016EAC: ; 0x02016EAC
	push {r4, r5}
	ldr r2, [r0, #8]
	add r0, #0xc
	lsr r3, r2, #1
	mov r2, #0
	cmp r3, #0
	ble _02016ED2
	ldr r4, _02016ED8 ; =0x00000FFF
	lsl r1, r1, #0xc
_02016EBE:
	ldrh r5, [r0]
	add r2, r2, #1
	and r5, r4
	strh r5, [r0]
	ldrh r5, [r0]
	orr r5, r1
	strh r5, [r0]
	add r0, r0, #2
	cmp r2, r3
	blt _02016EBE
_02016ED2:
	pop {r4, r5}
	bx lr
	nop
_02016ED8: .word 0x00000FFF
	thumb_func_end sub_02016EAC

	thumb_func_start sub_02016EDC
sub_02016EDC: ; 0x02016EDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0xc
	add r6, r0, #0
	add r7, r2, #0
	bl sub_0201AA8C
	add r4, r0, #0
	strb r7, [r4, #8]
	mov r0, #0x1d
	strb r5, [r4, #9]
	lsl r0, r0, #4
	add r7, r5, #0
	mul r7, r0
	add r0, r6, #0
	add r1, r7, #0
	str r6, [r4, #4]
	bl sub_0201AA8C
	mov r1, #0
	add r2, r7, #0
	str r0, [r4]
	bl sub_020D4994
	mov r3, #0
	cmp r5, #0
	ble _02016F28
	mov r0, #0x1d
	add r6, r3, #0
	mov r2, #1
	lsl r0, r0, #4
_02016F1A:
	ldr r1, [r4]
	add r3, r3, #1
	add r1, r1, r6
	str r2, [r1, #0x20]
	add r6, r6, r0
	cmp r3, r5
	blt _02016F1A
_02016F28:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02016EDC

	thumb_func_start sub_02016F2C
sub_02016F2C: ; 0x02016F2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0201AB0C
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02016F2C

	thumb_func_start sub_02016F40
sub_02016F40: ; 0x02016F40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, r2, #0
	ldrh r6, [r0]
	ldrh r0, [r0, #2]
	add r7, r1, #0
	ldrb r1, [r5, #9]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	str r2, [sp]
	cmp r0, r1
	blo _02016F60
	bl GF_AssertFail
_02016F60:
	ldr r0, [sp, #4]
	mov r1, #0x1d
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5]
	mul r4, r1
	add r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02016F78
	bl GF_AssertFail
_02016F78:
	ldr r0, [r5]
	mov r2, #0x1d
	add r0, r0, r4
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D4994
	ldr r0, [r5]
	mov r1, #1
	add r0, r0, r4
	str r1, [r0, #0x10]
	ldr r0, [r5]
	cmp r6, #0x8f
	str r7, [r0, r4]
	blt _02016F9A
	mov r6, #0
	str r6, [sp, #8]
_02016F9A:
	ldr r0, [r5]
	add r0, r0, r4
	str r6, [r0, #0x14]
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _02016FAC
	ldr r0, [sp]
	ldrb r2, [r0, #4]
	b _02016FAE
_02016FAC:
	mov r2, #0
_02016FAE:
	ldr r0, [r5]
	add r1, r0, r4
	mov r0, #0x73
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	add r1, r1, r4
	ldr r1, [r1, #0x14]
	mov r0, #0x5a
	bl sub_02007540
	ldr r1, [r5]
	mov r2, #0
	add r1, r1, r4
	str r0, [r1, #8]
	ldr r0, [r5]
	mov r6, #0x1c
	add r1, r0, r4
	ldr r0, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [r5]
	add r0, r0, r4
	str r2, [r0, #0x1c]
	ldr r0, [r5]
	add r0, r0, r4
	str r2, [r0, #0x20]
	ldr r0, [r5]
	add r1, r0, r4
	ldr r0, _02017060 ; =0x000001CD
	strb r2, [r1, r0]
	ldr r1, [r5]
	add r3, r1, r4
	add r1, r0, #1
	strb r6, [r3, r1]
	ldr r1, [r5]
	add r0, r0, #2
	add r1, r1, r4
	strb r2, [r1, r0]
	ldr r1, [r5]
	ldr r0, _02017064 ; =sub_020170C4
	add r1, r1, r4
	bl sub_0200E320
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #4]
	ldr r0, [r5]
	add r1, r0, r4
	ldr r0, [sp, #8]
	str r0, [r1, #0x54]
	add r0, r7, #0
	mov r1, #0
	bl sub_02008A78
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x58]
	add r0, r7, #0
	mov r1, #1
	bl sub_02008A78
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x5c]
	ldr r1, [r5]
	mov r0, #0
	add r1, r1, r4
	str r0, [r1, #0x60]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x64]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x68]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x6c]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x70]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x74]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x78]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02017060: .word 0x000001CD
_02017064: .word sub_020170C4
	thumb_func_end sub_02016F40

	thumb_func_start sub_02017068
sub_02017068: ; 0x02017068
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	cmp r4, r0
	blo _02017078
	bl GF_AssertFail
_02017078:
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r1, [r5]
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x20]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02017068

	thumb_func_start sub_02017088
sub_02017088: ; 0x02017088
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1d
	lsl r0, r0, #4
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r5]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020170C2
	bl sub_0200E390
	ldr r1, [r5]
	mov r0, #0
	add r1, r1, r4
	str r0, [r1, #4]
	ldr r1, [r5]
	mov r2, #1
	add r1, r1, r4
	str r2, [r1, #0x20]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x10]
	ldr r0, [r5]
	add r0, r0, r4
	ldr r0, [r0, #8]
	bl sub_0201AB0C
_020170C2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02017088

	thumb_func_start sub_020170C4
sub_020170C4: ; 0x020170C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _020170D8
	add r0, r4, #0
	bl sub_020170FC
	b _020170DC
_020170D8:
	sub r0, r0, #1
	str r0, [r4, #0x54]
_020170DC:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _020170FA
	mov r0, #1
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0200E390
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bl sub_0201AB0C
_020170FA:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020170C4

	thumb_func_start sub_020170FC
sub_020170FC: ; 0x020170FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	str r6, [r5, #0x18]
	add r7, r5, #0
	str r6, [r5, #0x44]
	add r4, r6, #0
	add r7, #0x7c
_0201710C:
	mov r0, #0x54
	add r1, r4, #0
	mul r1, r0
	add r0, r7, r1
	ldr r1, [r7, r1]
	cmp r1, #0
	beq _0201713A
	add r1, r0, #0
	add r1, #0x2d
	ldrb r1, [r1]
	cmp r1, #0
	bne _0201712C
	ldr r2, [r0, #0x50]
	add r1, r5, #0
	blx r2
	b _02017140
_0201712C:
	add r1, r0, #0
	add r1, #0x2d
	ldrb r1, [r1]
	add r0, #0x2d
	sub r1, r1, #1
	strb r1, [r0]
	b _02017140
_0201713A:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02017140:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0201710C
	cmp r6, #4
	bne _02017154
	ldr r0, _020171E8 ; =0x000001CD
	mov r1, #0
	strb r1, [r5, r0]
_02017154:
	ldr r0, _020171E8 ; =0x000001CD
	ldrb r1, [r5, r0]
	cmp r1, #0
	beq _0201716A
	add r0, r5, #0
	bl sub_020179D4
	add r0, r5, #0
	bl sub_02017A1C
	pop {r3, r4, r5, r6, r7, pc}
_0201716A:
	add r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02017182
	ldr r0, [r5]
	bl sub_02009138
	cmp r0, #0
	bne _020171E4
	ldr r0, _020171EC ; =0x000001CF
	mov r1, #0
	strb r1, [r5, r0]
_02017182:
	add r6, r5, #0
	add r4, r5, #0
	ldr r7, _020171F0 ; =0x020F61F8
	add r6, #0xc
	add r4, #0x44
_0201718C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	ldr r0, [r5, #0xc]
	ldr r0, [r0]
	cmp r0, #0x22
	blo _0201719E
	bl GF_AssertFail
_0201719E:
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	ldr r1, [r1]
	lsl r1, r1, #2
	ldr r1, [r7, r1]
	blx r1
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _020171E4
	ldr r0, [r6]
	add r0, r0, #4
	str r0, [r6]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _020171E4
	ldr r0, _020171E8 ; =0x000001CD
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _020171D2
	add r0, r5, #0
	bl sub_020179D4
	add r0, r5, #0
	bl sub_02017A1C
	pop {r3, r4, r5, r6, r7, pc}
_020171D2:
	mov r0, #1
	ldr r1, [r5, #0x44]
	lsl r0, r0, #8
	cmp r1, r0
	blt _0201718C
	bl GF_AssertFail
	mov r0, #1
	str r0, [r5, #0x1c]
_020171E4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020171E8: .word 0x000001CD
_020171EC: .word 0x000001CF
_020171F0: .word 0x020F61F8
	thumb_func_end sub_020170FC

	thumb_func_start sub_020171F4
sub_020171F4: ; 0x020171F4
	push {r4, lr}
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	cmp r2, #1
	beq _02017202
	bl GF_AssertFail
_02017202:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020171F4

	thumb_func_start sub_02017208
sub_02017208: ; 0x02017208
	ldr r3, _02017210 ; =sub_020171F4
	add r2, r1, #0
	mov r1, #0
	bx r3
	.align 2, 0
_02017210: .word sub_020171F4
	thumb_func_end sub_02017208

	thumb_func_start sub_02017214
sub_02017214: ; 0x02017214
	ldr r3, _0201721C ; =sub_02017208
	mov r1, #1
	bx r3
	nop
_0201721C: .word sub_02017208
	thumb_func_end sub_02017214

	thumb_func_start sub_02017220
sub_02017220: ; 0x02017220
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r3, #0
	add r0, #0x7c
	mov r2, #0x54
_0201722A:
	add r1, r3, #0
	mul r1, r2
	add r4, r0, r1
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _02017254
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x54
	bl sub_020D4994
	mov r0, #1
	str r0, [r4]
	mov r0, #0xc
	add r1, r5, #0
	mul r1, r0
	ldr r0, _02017268 ; =0x020F61BC
	ldr r0, [r0, r1]
	str r0, [r4, #0x50]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02017254:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #4
	blo _0201722A
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02017268: .word 0x020F61BC
	thumb_func_end sub_02017220

	thumb_func_start sub_0201726C
sub_0201726C: ; 0x0201726C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0xc]
	add r1, r1, #4
	str r1, [r0, #0xc]
	add r0, r1, #0
	bl sub_02017214
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0201726C

	thumb_func_start sub_02017280
sub_02017280: ; 0x02017280
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0xc]
	add r1, r1, #4
	str r1, [r0, #0xc]
	add r0, r1, #0
	bl sub_02017214
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02017280

	thumb_func_start sub_02017294
sub_02017294: ; 0x02017294
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0xc]
	add r1, r1, #4
	str r1, [r0, #0xc]
	add r0, r1, #0
	bl sub_02017214
	strb r0, [r4]
	ldrb r0, [r4]
	cmp r0, #8
	blo _020172B0
	bl GF_AssertFail
_020172B0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02017294

	thumb_func_start sub_020172B4
sub_020172B4: ; 0x020172B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02017294
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02017294
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020172B4

	thumb_func_start sub_020172C8
sub_020172C8: ; 0x020172C8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02017294
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _02017308
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #2]
	add r1, r6, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r4]
	add r0, r5, #0
	bl sub_0201726C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02017308:
	cmp r0, #0x13
	bne _02017334
	add r1, sp, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #2
	add r2, #1
	bl sub_020172B4
	add r0, sp, #0
	ldrb r1, [r0, #2]
	add sp, #4
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x24]
	str r1, [r4]
	ldrb r0, [r0, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6]
	pop {r3, r4, r5, r6, pc}
_02017334:
	bl GF_AssertFail
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_020172C8

	thumb_func_start sub_0201733C
sub_0201733C: ; 0x0201733C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02017294
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_02017280
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x12
	bne _0201736E
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201726C
	b _0201738E
_0201736E:
	cmp r0, #0x13
	bne _0201738A
	add r1, sp, #0
	add r0, r5, #0
	add r1, #3
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #3]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r4]
	b _0201738E
_0201738A:
	bl GF_AssertFail
_0201738E:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _020173A2
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201726C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020173A2:
	cmp r0, #0x13
	bne _020173C0
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #2]
	add sp, #4
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6]
	pop {r3, r4, r5, r6, pc}
_020173C0:
	bl GF_AssertFail
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0201733C

	thumb_func_start sub_020173C8
sub_020173C8: ; 0x020173C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r2, sp, #0
	add r2, #3
	add r5, r0, #0
	add r6, r3, #0
	bl sub_020172B4
	add r0, sp, #0
	ldrb r0, [r0, #3]
	add r1, sp, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r7, [r0, #0x24]
	add r0, r5, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _020173FE
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201726C
	b _0201741E
_020173FE:
	cmp r0, #0x15
	bne _0201741A
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6]
	b _0201741E
_0201741A:
	bl GF_AssertFail
_0201741E:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _02017438
	add r0, r5, #0
	add r1, sp, #4
	bl sub_0201726C
	b _02017458
_02017438:
	cmp r0, #0x15
	bne _02017454
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _02017458
_02017454:
	bl GF_AssertFail
_02017458:
	ldr r0, [sp, #4]
	add r0, r7, r0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x10
	sub r1, r1, r2
	mov r0, #0x10
	ror r1, r0
	add r0, r2, r1
	str r0, [r4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020173C8

	thumb_func_start sub_02017470
sub_02017470: ; 0x02017470
	ldr r2, [r0]
	ldr r0, [r1]
	sub r0, r2, r0
	bpl _0201747C
	mov r0, #0xf
	bx lr
_0201747C:
	cmp r0, #0
	ble _02017484
	mov r0, #0x10
	bx lr
_02017484:
	mov r0, #0x11
	bx lr
	thumb_func_end sub_02017470

	thumb_func_start sub_02017488
sub_02017488: ; 0x02017488
	add r2, r0, #0
	ldr r0, [r2]
	ldr r2, [r2, #0x74]
	mov r1, #1
	neg r3, r2
	asr r2, r3, #2
	lsr r2, r2, #0x1d
	add r2, r3, r2
	ldr r3, _020174A0 ; =sub_02008C2C
	asr r2, r2, #3
	bx r3
	nop
_020174A0: .word sub_02008C2C
	thumb_func_end sub_02017488

	thumb_func_start sub_020174A4
sub_020174A4: ; 0x020174A4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020174BC
	mov r0, #1
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end sub_020174A4

	thumb_func_start sub_020174B4
sub_020174B4: ; 0x020174B4
	mov r1, #1
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_020174B4

	thumb_func_start sub_020174BC
sub_020174BC: ; 0x020174BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r2, [r4, #0x58]
	mov r1, #0
	bl sub_020087A4
	ldr r0, [r4]
	ldr r2, [r4, #0x5c]
	mov r1, #1
	bl sub_020087A4
	ldr r0, [r4]
	mov r1, #9
	mov r2, #0
	bl sub_020087A4
	ldr r0, [r4]
	mov r1, #0xa
	mov r2, #0
	bl sub_020087A4
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4]
	add r2, #0xf4
	bl sub_020087A4
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4]
	add r2, #0xf3
	bl sub_020087A4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020174BC

	thumb_func_start sub_02017504
sub_02017504: ; 0x02017504
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	add r4, r0, #0
	bl sub_020172B4
	add r0, sp, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r0, r0, #2
	ldr r1, [r1, #0x24]
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02017504

	thumb_func_start sub_0201752C
sub_0201752C: ; 0x0201752C
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020172C8
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r1, r0
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0201752C

	thumb_func_start sub_02017550
sub_02017550: ; 0x02017550
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020172C8
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r2, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02017550

	thumb_func_start sub_02017578
sub_02017578: ; 0x02017578
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_0201733C
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r1, r1, r0
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02017578

	thumb_func_start sub_0201759C
sub_0201759C: ; 0x0201759C
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_0201733C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_020F2998
	add r1, sp, #0
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_0201759C

	thumb_func_start sub_020175C4
sub_020175C4: ; 0x020175C4
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_0201733C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_020F2998
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_020175C4

	thumb_func_start sub_020175EC
sub_020175EC: ; 0x020175EC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r1, sp, #0
	add r5, r0, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _02017620
	add r1, sp, #0
	add r0, r5, #0
	add r1, #3
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #3]
	add r1, sp, #8
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0201726C
	b _0201764E
_02017620:
	cmp r0, #0x15
	bne _0201764A
	add r1, sp, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #3
	add r2, #2
	bl sub_020172B4
	add r0, sp, #0
	ldrb r1, [r0, #3]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x24]
	str r1, [sp, #0xc]
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #8]
	b _0201764E
_0201764A:
	bl GF_AssertFail
_0201764E:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x11
	bls _02017664
	bl GF_AssertFail
_02017664:
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_02017470
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _02017692
	add r1, sp, #0
	add r0, r5, #0
	add r1, #3
	bl sub_02017294
	add r0, r5, #0
	add r1, sp, #4
	bl sub_0201726C
	b _020176B6
_02017692:
	cmp r0, #0x15
	bne _020176B2
	add r1, sp, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #3
	add r2, #2
	bl sub_020172B4
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _020176B6
_020176B2:
	bl GF_AssertFail
_020176B6:
	add r0, sp, #0
	ldrb r1, [r0, #1]
	cmp r1, r4
	bne _020176C8
	ldrb r0, [r0, #3]
	ldr r1, [sp, #4]
	lsl r0, r0, #2
	add r0, r5, r0
	str r1, [r0, #0x24]
_020176C8:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020175EC

	thumb_func_start sub_020176CC
sub_020176CC: ; 0x020176CC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02017294
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	bl sub_02017214
	add r1, sp, #0
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x24]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_020176CC

	thumb_func_start sub_020176F0
sub_020176F0: ; 0x020176F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _020176FE
	bl GF_AssertFail
_020176FE:
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	str r0, [r4, #0x50]
	ldr r0, [r4, #0xc]
	bl sub_02017214
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x4c]
	pop {r4, pc}
	thumb_func_end sub_020176F0

	thumb_func_start sub_02017714
sub_02017714: ; 0x02017714
	ldr r1, [r0, #0x4c]
	add r2, r1, #1
	str r2, [r0, #0x4c]
	ldr r1, [r0, #0x48]
	cmp r2, r1
	blt _0201772A
	mov r1, #0
	str r1, [r0, #0x50]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x48]
	bx lr
_0201772A:
	ldr r1, [r0, #0x50]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_02017714

	thumb_func_start sub_02017730
sub_02017730: ; 0x02017730
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, sp, #4
	bl sub_0201726C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02017294
	add r2, sp, #0
	ldrb r2, [r2]
	ldr r0, [r4]
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, #0x24]
	bl sub_020087A4
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02017730

	thumb_func_start sub_0201775C
sub_0201775C: ; 0x0201775C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, sp, #4
	bl sub_0201726C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02017294
	add r2, sp, #0
	ldrb r2, [r2]
	ldr r0, [r4]
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, #0x24]
	bl sub_02008C2C
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0201775C

	thumb_func_start sub_02017788
sub_02017788: ; 0x02017788
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #8
	add r4, r0, #0
	bl sub_0201726C
	add r1, sp, #0
	add r0, r4, #0
	add r1, #1
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x14
	bne _020177B0
	add r0, r4, #0
	add r1, sp, #4
	bl sub_0201726C
	b _020177D0
_020177B0:
	cmp r0, #0x15
	bne _020177CC
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _020177D0
_020177CC:
	bl GF_AssertFail
_020177D0:
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _020177EE
	ldr r0, [r4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_020087A4
	add sp, #0xc
	pop {r3, r4, pc}
_020177EE:
	cmp r0, #0x17
	bne _02017800
	ldr r0, [r4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_02008C2C
	add sp, #0xc
	pop {r3, r4, pc}
_02017800:
	bl GF_AssertFail
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02017788

	thumb_func_start sub_02017808
sub_02017808: ; 0x02017808
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020173C8
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02017838 ; =0x021094DC
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02017838: .word 0x021094DC
	thumb_func_end sub_02017808

	thumb_func_start sub_0201783C
sub_0201783C: ; 0x0201783C
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020173C8
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02017870 ; =0x021094DC
	ldrsh r1, [r1, r2]
	mul r1, r0
	add r0, sp, #0
	ldrb r0, [r0]
	asr r1, r1, #0xc
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02017870: .word 0x021094DC
	thumb_func_end sub_0201783C

	thumb_func_start sub_02017874
sub_02017874: ; 0x02017874
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r4, r0, #0
	add r1, #1
	bl sub_02017294
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r1, [r0]
	cmp r1, #8
	bne _020178A0
	ldrb r0, [r0, #1]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_020178A0:
	cmp r1, #9
	bne _020178B2
	ldrb r0, [r0, #1]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x64]
	pop {r3, r4, pc}
_020178B2:
	bl GF_AssertFail
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02017874

	thumb_func_start sub_020178BC
sub_020178BC: ; 0x020178BC
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r4, r0, #0
	add r1, #1
	bl sub_02017294
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r1, [r0]
	cmp r1, #8
	bne _020178EC
	ldrb r0, [r0, #1]
	ldr r1, [r4, #0x60]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_020178EC:
	cmp r1, #9
	bne _02017902
	ldrb r0, [r0, #1]
	ldr r1, [r4, #0x64]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x64]
	pop {r3, r4, pc}
_02017902:
	bl GF_AssertFail
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_020178BC

	thumb_func_start sub_0201790C
sub_0201790C: ; 0x0201790C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r1, sp, #0
	add r1, #3
	add r5, r0, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0, #3]
	cmp r0, #8
	bne _02017928
	add r4, r5, #0
	add r4, #0x60
	b _02017968
_02017928:
	cmp r0, #9
	bne _02017932
	add r4, r5, #0
	add r4, #0x64
	b _02017968
_02017932:
	cmp r0, #0xa
	bne _0201793C
	add r4, r5, #0
	add r4, #0x68
	b _02017968
_0201793C:
	cmp r0, #0xb
	bne _02017946
	add r4, r5, #0
	add r4, #0x6c
	b _02017968
_02017946:
	cmp r0, #0xc
	bne _02017950
	add r4, r5, #0
	add r4, #0x70
	b _02017968
_02017950:
	cmp r0, #0xd
	bne _0201795A
	add r4, r5, #0
	add r4, #0x74
	b _02017968
_0201795A:
	cmp r0, #0xe
	bne _02017964
	add r4, r5, #0
	add r4, #0x78
	b _02017968
_02017964:
	bl GF_AssertFail
_02017968:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x14
	bne _02017984
	add r0, r5, #0
	add r1, sp, #4
	bl sub_0201726C
	b _020179A4
_02017984:
	cmp r0, #0x15
	bne _020179A0
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _020179A4
_020179A0:
	bl GF_AssertFail
_020179A4:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _020179BC
	ldr r0, [sp, #4]
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, pc}
_020179BC:
	cmp r0, #0x17
	bne _020179CC
	ldr r0, [sp, #4]
	ldr r1, [r4]
	add sp, #8
	add r0, r1, r0
	str r0, [r4]
	pop {r3, r4, r5, pc}
_020179CC:
	bl GF_AssertFail
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201790C

	thumb_func_start sub_020179D4
sub_020179D4: ; 0x020179D4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, [r4]
	beq _020179F6
	ldr r3, [r4, #0x60]
	ldr r2, [r4, #0x68]
	ldr r5, [r4, #0x58]
	add r2, r3, r2
	mov r1, #0
	sub r2, r5, r2
	bl sub_020087A4
	b _02017A06
_020179F6:
	ldr r3, [r4, #0x58]
	ldr r2, [r4, #0x60]
	ldr r5, [r4, #0x68]
	add r2, r3, r2
	mov r1, #0
	add r2, r5, r2
	bl sub_020087A4
_02017A06:
	ldr r3, [r4, #0x5c]
	ldr r2, [r4, #0x64]
	ldr r5, [r4, #0x6c]
	add r2, r3, r2
	ldr r0, [r4]
	mov r1, #1
	add r2, r5, r2
	bl sub_020087A4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020179D4

	thumb_func_start sub_02017A1C
sub_02017A1C: ; 0x02017A1C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xc
	add r2, r1, #0
	ldr r3, [r4, #0x70]
	add r2, #0xf4
	ldr r0, [r4]
	add r2, r3, r2
	bl sub_020087A4
	mov r1, #0xd
	add r2, r1, #0
	ldr r3, [r4, #0x74]
	add r2, #0xf3
	ldr r0, [r4]
	add r2, r3, r2
	bl sub_020087A4
	ldr r2, [r4, #0x78]
	ldr r0, [r4]
	lsl r2, r2, #0x10
	mov r1, #9
	lsr r2, r2, #0x10
	bl sub_020087A4
	ldr r0, _02017A80 ; =0x000001CE
	ldrb r0, [r4, r0]
	cmp r0, #0x1b
	bne _02017A64
	ldr r0, [r4, #0x74]
	cmp r0, #0
	bge _02017A7E
	add r0, r4, #0
	bl sub_02017488
	pop {r4, pc}
_02017A64:
	cmp r0, #0x1d
	bne _02017A76
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _02017A7E
	add r0, r4, #0
	bl sub_02017488
	pop {r4, pc}
_02017A76:
	cmp r0, #0x1c
	beq _02017A7E
	bl GF_AssertFail
_02017A7E:
	pop {r4, pc}
	.align 2, 0
_02017A80: .word 0x000001CE
	thumb_func_end sub_02017A1C

	thumb_func_start sub_02017A84
sub_02017A84: ; 0x02017A84
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02017294
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	bl sub_02017214
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #8
	beq _02017AA6
	cmp r0, #0xa
	bne _02017AB6
_02017AA6:
	add r0, sp, #0
	ldrb r0, [r0]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x68]
	pop {r3, r4, pc}
_02017AB6:
	cmp r0, #9
	beq _02017ABE
	cmp r0, #0xb
	bne _02017ACE
_02017ABE:
	add r0, sp, #0
	ldrb r0, [r0]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x6c]
	pop {r3, r4, pc}
_02017ACE:
	bl GF_AssertFail
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02017A84

	thumb_func_start sub_02017AD8
sub_02017AD8: ; 0x02017AD8
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x54
	bl sub_0201726C
	mov r0, #1
	str r0, [r4, #0x18]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02017AD8

	thumb_func_start sub_02017AEC
sub_02017AEC: ; 0x02017AEC
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #4
	add r1, #2
	add r4, r0, #0
	bl sub_02017280
	add r1, sp, #4
	add r0, r4, #0
	add r1, #1
	bl sub_02017280
	add r0, r4, #0
	add r1, sp, #4
	bl sub_02017280
	add r0, r4, #0
	add r1, sp, #8
	bl sub_0201726C
	ldr r0, [sp, #8]
	add r3, sp, #4
	str r0, [sp]
	ldrb r1, [r3, #2]
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	ldr r0, [r4]
	bl sub_020090B4
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02017AEC

	thumb_func_start sub_02017B2C
sub_02017B2C: ; 0x02017B2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_02009138
	cmp r0, #0
	beq _02017B42
	ldr r0, _02017B44 ; =0x000001CF
	mov r1, #1
	strb r1, [r4, r0]
	str r1, [r4, #0x18]
_02017B42:
	pop {r4, pc}
	.align 2, 0
_02017B44: .word 0x000001CF
	thumb_func_end sub_02017B2C

	thumb_func_start sub_02017B48
sub_02017B48: ; 0x02017B48
	ldr r1, _02017B50 ; =0x000001CD
	mov r2, #1
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
_02017B50: .word 0x000001CD
	thumb_func_end sub_02017B48

	thumb_func_start sub_02017B54
sub_02017B54: ; 0x02017B54
	push {r4, lr}
	ldr r1, _02017B88 ; =0x000001CE
	add r4, r0, #0
	add r1, r4, r1
	bl sub_02017280
	ldr r0, _02017B88 ; =0x000001CE
	mov r1, #1
	ldrb r0, [r4, r0]
	add r2, r1, #0
	cmp r0, #0x1b
	beq _02017B72
	cmp r0, #0x1d
	beq _02017B72
	mov r2, #0
_02017B72:
	cmp r2, #0
	bne _02017B7C
	cmp r0, #0x1c
	beq _02017B7C
	mov r1, #0
_02017B7C:
	cmp r1, #0
	bne _02017B84
	bl GF_AssertFail
_02017B84:
	pop {r4, pc}
	nop
_02017B88: .word 0x000001CE
	thumb_func_end sub_02017B54

	thumb_func_start sub_02017B8C
sub_02017B8C: ; 0x02017B8C
	ldr r3, _02017B94 ; =sub_02017C78
	mov r1, #0
	bx r3
	nop
_02017B94: .word sub_02017C78
	thumb_func_end sub_02017B8C

	thumb_func_start sub_02017B98
sub_02017B98: ; 0x02017B98
	ldr r3, _02017BA0 ; =sub_02017C78
	mov r1, #1
	bx r3
	nop
_02017BA0: .word sub_02017C78
	thumb_func_end sub_02017B98

	thumb_func_start sub_02017BA4
sub_02017BA4: ; 0x02017BA4
	ldr r3, _02017BAC ; =sub_02017C78
	mov r1, #2
	bx r3
	nop
_02017BAC: .word sub_02017C78
	thumb_func_end sub_02017BA4

	thumb_func_start sub_02017BB0
sub_02017BB0: ; 0x02017BB0
	ldr r3, _02017BB8 ; =sub_02017C78
	mov r1, #3
	bx r3
	nop
_02017BB8: .word sub_02017C78
	thumb_func_end sub_02017BB0

	thumb_func_start sub_02017BBC
sub_02017BBC: ; 0x02017BBC
	ldr r3, _02017BC4 ; =sub_02017C78
	mov r1, #4
	bx r3
	nop
_02017BC4: .word sub_02017C78
	thumb_func_end sub_02017BBC

	thumb_func_start sub_02017BC8
sub_02017BC8: ; 0x02017BC8
	push {r3, lr}
	cmp r0, #0x18
	bne _02017BD4
	ldr r0, [r2]
	str r0, [r3]
	pop {r3, pc}
_02017BD4:
	cmp r0, #0x19
	bne _02017BE2
	ldr r1, [r1]
	ldr r0, [r2]
	add r0, r1, r0
	str r0, [r3]
	pop {r3, pc}
_02017BE2:
	cmp r0, #0x1a
	bne _02017BF0
	ldr r1, [r3]
	ldr r0, [r2]
	add r0, r1, r0
	str r0, [r3]
	pop {r3, pc}
_02017BF0:
	bl GF_AssertFail
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02017BC8

	thumb_func_start sub_02017BF8
sub_02017BF8: ; 0x02017BF8
	push {r3, lr}
	sub r0, #0x23
	cmp r0, #4
	bhi _02017C70
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02017C0C: ; jump table
	.short _02017C16 - _02017C0C - 2 ; case 0
	.short _02017C28 - _02017C0C - 2 ; case 1
	.short _02017C3A - _02017C0C - 2 ; case 2
	.short _02017C4C - _02017C0C - 2 ; case 3
	.short _02017C5E - _02017C0C - 2 ; case 4
_02017C16:
	add r0, r1, #0
	add r0, #0x3c
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x68
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x68]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C28:
	add r0, r1, #0
	add r0, #0x40
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x6c
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x6c]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C3A:
	add r0, r1, #0
	add r0, #0x44
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x70
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x70]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C4C:
	add r0, r1, #0
	add r0, #0x48
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x74
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x74]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C5E:
	add r0, r1, #0
	add r0, #0x4c
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x78
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x78]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C70:
	bl GF_AssertFail
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02017BF8

	thumb_func_start sub_02017C78
sub_02017C78: ; 0x02017C78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0
	bl sub_02017220
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, #0x2c
	bl sub_02017280
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, #0x2d
	bl sub_02017280
	mov r0, #0xc
	mul r0, r6
	ldr r1, _02017D14 ; =0x020F61C0
	str r0, [sp]
	ldr r0, [r1, r0]
	mov r4, #0
	cmp r0, #0
	ble _02017CCE
	ldr r1, _02017D18 ; =0x020F61BC
	ldr r0, [sp]
	add r6, r1, r0
	ldr r0, [sp, #4]
	add r7, r0, #4
_02017CB8:
	lsl r1, r4, #2
	add r0, r5, #0
	add r1, r7, r1
	bl sub_0201726C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r6, #4]
	cmp r4, r0
	blt _02017CB8
_02017CCE:
	ldr r1, _02017D1C ; =0x020F61C4
	ldr r0, [sp]
	add r2, r5, #0
	ldr r0, [r1, r0]
	lsl r1, r0, #2
	ldr r0, [sp, #4]
	add r0, r0, r1
	ldr r0, [r0, #4]
	ldr r1, [sp, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02017BF8
	ldr r0, [sp, #4]
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _02017D00
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r0, #0
	ldr r2, [r2, #0x50]
	blx r2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02017D00:
	ldr r0, [sp, #4]
	add r0, #0x2d
	ldrb r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp, #4]
	add r0, #0x2d
	str r0, [sp, #4]
	strb r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02017D14: .word 0x020F61C0
_02017D18: .word 0x020F61BC
_02017D1C: .word 0x020F61C4
	thumb_func_end sub_02017C78

	thumb_func_start sub_02017D20
sub_02017D20: ; 0x02017D20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	ldr r2, [r4, #0x14]
	mul r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #4]
	sub r0, #0x1e
	cmp r0, #3
	bhi _02017DAC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02017D48: ; jump table
	.short _02017D50 - _02017D48 - 2 ; case 0
	.short _02017D64 - _02017D48 - 2 ; case 1
	.short _02017D7C - _02017D48 - 2 ; case 2
	.short _02017D92 - _02017D48 - 2 ; case 3
_02017D50:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02017DD4 ; =0x021094DC
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	ldr r0, [r4, #0x24]
	str r1, [r0]
	b _02017DB0
_02017D64:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02017DD4 ; =0x021094DC
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	ldr r0, [r4, #0x24]
	asr r1, r1, #0xc
	str r1, [r0]
	b _02017DB0
_02017D7C:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02017DD4 ; =0x021094DC
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r0, r0, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0]
	b _02017DB0
_02017D92:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02017DD4 ; =0x021094DC
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	asr r0, r1, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0]
	b _02017DB0
_02017DAC:
	bl GF_AssertFail
_02017DB0:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02017BC8
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _02017DD2
	mov r0, #0
	str r0, [r4]
_02017DD2:
	pop {r4, pc}
	.align 2, 0
_02017DD4: .word 0x021094DC
	thumb_func_end sub_02017D20

	thumb_func_start sub_02017DD8
sub_02017DD8: ; 0x02017DD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	mul r0, r1
	ldr r1, [r4, #0x18]
	bl sub_020F2998
	ldr r1, [r4, #0x14]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #4]
	sub r0, #0x1e
	cmp r0, #3
	bhi _02017E6A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02017E06: ; jump table
	.short _02017E0E - _02017E06 - 2 ; case 0
	.short _02017E22 - _02017E06 - 2 ; case 1
	.short _02017E3A - _02017E06 - 2 ; case 2
	.short _02017E50 - _02017E06 - 2 ; case 3
_02017E0E:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02017E94 ; =0x021094DC
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	ldr r0, [r4, #0x24]
	str r1, [r0]
	b _02017E6E
_02017E22:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02017E94 ; =0x021094DC
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	ldr r0, [r4, #0x24]
	asr r1, r1, #0xc
	str r1, [r0]
	b _02017E6E
_02017E3A:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02017E94 ; =0x021094DC
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r0, r0, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0]
	b _02017E6E
_02017E50:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02017E94 ; =0x021094DC
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	asr r0, r1, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0]
	b _02017E6E
_02017E6A:
	bl GF_AssertFail
_02017E6E:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02017BC8
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _02017E90
	mov r0, #0
	str r0, [r4]
_02017E90:
	pop {r4, pc}
	nop
_02017E94: .word 0x021094DC
	thumb_func_end sub_02017DD8

	thumb_func_start sub_02017E98
sub_02017E98: ; 0x02017E98
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	ldr r3, [r4, #0xc]
	ldr r2, [r4, #0x14]
	ldr r5, [r4, #8]
	mul r2, r3
	ldr r0, [r1]
	add r2, r5, r2
	add r0, r0, r2
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x2c
	add r1, r4, #0
	ldrb r0, [r0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02017BC8
	ldr r0, [r4, #0x14]
	add r1, r0, #1
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blt _02017ED0
	mov r0, #0
	str r0, [r4]
_02017ED0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02017E98

	thumb_func_start sub_02017ED4
sub_02017ED4: ; 0x02017ED4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r0, #1
	ldr r0, [r4, #8]
	mul r0, r1
	ldr r1, [r4, #0xc]
	bl sub_020F2998
	ldr r1, [r4, #0x24]
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x2c
	add r1, r4, #0
	ldrb r0, [r0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02017BC8
	ldr r0, [r4, #0x10]
	add r1, r0, #1
	str r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _02017F0C
	mov r0, #0
	str r0, [r4]
_02017F0C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02017ED4

	thumb_func_start sub_02017F10
sub_02017F10: ; 0x02017F10
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #8]
	mul r0, r1
	ldr r1, [r4, #0x24]
	add r2, r2, r0
	ldr r0, [r1]
	add r0, r0, r2
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _02017F34
	cmp r0, #0x1a
	bne _02017F5A
_02017F34:
	cmp r2, #0
	ldr r2, [r4, #0x10]
	bge _02017F4A
	ldr r1, [r4, #0x24]
	ldr r0, [r1]
	cmp r0, r2
	bgt _02017F90
	str r2, [r1]
	mov r0, #0
	str r0, [r4]
	b _02017F90
_02017F4A:
	ldr r1, [r4, #0x24]
	ldr r0, [r1]
	cmp r0, r2
	blt _02017F90
	str r2, [r1]
	mov r0, #0
	str r0, [r4]
	b _02017F90
_02017F5A:
	cmp r0, #0x19
	bne _02017F8C
	ldr r1, [r4, #0x24]
	ldr r3, [r4, #0x30]
	ldr r0, [r1]
	add r3, r3, r0
	cmp r2, #0
	ldr r2, [r4, #0x10]
	bge _02017F7C
	cmp r3, r2
	bgt _02017F90
	sub r2, r2, r3
	add r0, r0, r2
	str r0, [r1]
	mov r0, #0
	str r0, [r4]
	b _02017F90
_02017F7C:
	cmp r3, r2
	blt _02017F90
	sub r2, r3, r2
	sub r0, r0, r2
	str r0, [r1]
	mov r0, #0
	str r0, [r4]
	b _02017F90
_02017F8C:
	bl GF_AssertFail
_02017F90:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02017BC8
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02017F10

	thumb_func_start sub_02017FAC
sub_02017FAC: ; 0x02017FAC
	ldr r3, _02017FC8 ; =0x020F6280
	mov r2, #0
_02017FB0:
	ldrh r1, [r3, #2]
	cmp r0, r1
	bhs _02017FBA
	add r0, r2, #0
	bx lr
_02017FBA:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #2
	blt _02017FB0
	add r0, r2, #0
	bx lr
	nop
_02017FC8: .word 0x020F6280
	thumb_func_end sub_02017FAC

	thumb_func_start sub_02017FCC
sub_02017FCC: ; 0x02017FCC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02017FAC
	lsl r1, r0, #1
	ldr r0, _02017FE0 ; =0x020F6280
	ldrh r0, [r0, r1]
	sub r0, r4, r0
	pop {r4, pc}
	nop
_02017FE0: .word 0x020F6280
	thumb_func_end sub_02017FCC

	thumb_func_start sub_02017FE4
sub_02017FE4: ; 0x02017FE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #3
	blt _02017FF2
	bl GF_AssertFail
_02017FF2:
	ldr r0, _02017FFC ; =0x020F6280
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	add r0, r4, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02017FFC: .word 0x020F6280
	thumb_func_end sub_02017FE4

	thumb_func_start sub_02018000
sub_02018000: ; 0x02018000
	cmp r0, #1
	blo _02018008
	cmp r0, #0x6f
	bls _02018022
_02018008:
	mov r1, #0x7d
	lsl r1, r1, #4
	cmp r0, r1
	blo _02018016
	add r1, #0xa
	cmp r0, r1
	bls _02018022
_02018016:
	ldr r1, _0201802C ; =0x00000BB8
	cmp r0, r1
	blo _02018026
	add r1, #0x4c
	cmp r0, r1
	bhi _02018026
_02018022:
	mov r0, #1
	bx lr
_02018026:
	mov r0, #0
	bx lr
	nop
_0201802C: .word 0x00000BB8
	thumb_func_end sub_02018000

	thumb_func_start sub_02018030
sub_02018030: ; 0x02018030
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	str r4, [sp]
	add r2, r4, #0
	bl sub_02007C98
	str r0, [r5]
	add r0, r5, #0
	bl sub_02018324
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02018030

	thumb_func_start sub_0201804C
sub_0201804C: ; 0x0201804C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0201F668
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	bl sub_0201F64C
	add r0, r5, #0
	bl sub_0200E390
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201804C

	thumb_func_start sub_02018068
sub_02018068: ; 0x02018068
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02018098
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020BE4D0
	ldr r1, _020180B4 ; =0x02110928
	ldr r0, [sp, #4]
	ldr r1, [r1]
	blx r1
	ldr r1, _020180B4 ; =0x02110928
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
	ldr r0, [r4, #0xc]
	bl sub_020BE588
	ldr r1, _020180B8 ; =0x02110930
	ldr r1, [r1]
	blx r1
_02018098:
	ldr r0, [r4]
	cmp r0, #0
	beq _020180A2
	bl sub_0201AB0C
_020180A2:
	mov r1, #0x10
	mov r0, #0
_020180A6:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _020180A6
	add sp, #8
	pop {r4, pc}
	nop
_020180B4: .word 0x02110928
_020180B8: .word 0x02110930
	thumb_func_end sub_02018068

	thumb_func_start sub_020180BC
sub_020180BC: ; 0x020180BC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	mov r6, #0
	add r1, r3, #0
	add r5, r0, #0
	add r0, r2, #0
	ldr r3, [sp, #0x18]
	add r2, r6, #0
	str r6, [sp]
	bl sub_02007C98
	add r2, r0, #0
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020182F8
	add r0, r6, #0
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_020180BC

	thumb_func_start sub_020180E8
sub_020180E8: ; 0x020180E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020182F8
	mov r0, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020180E8

	thumb_func_start sub_020180F8
sub_020180F8: ; 0x020180F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _02018116
	add r0, r1, #0
	ldr r1, [r4, #8]
	bl sub_020C2BA0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02018116
	ldr r0, [r4]
	bl sub_0201AB0C
_02018116:
	mov r1, #0x14
	mov r0, #0
_0201811A:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0201811A
	pop {r4, pc}
	thumb_func_end sub_020180F8

	thumb_func_start sub_02018124
sub_02018124: ; 0x02018124
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r2, r0, #0xc
	cmp r1, #0
	ble _02018142
	ldr r0, [r4, #0xc]
	add r0, r0, r1
	add r1, r2, #0
	bl sub_020F2998
	str r1, [r4, #0xc]
	b _02018154
_02018142:
	ldr r0, [r4, #0xc]
	add r3, r4, #0
	add r3, #0xc
	add r0, r0, r1
	str r0, [r4, #0xc]
	bpl _02018154
	ldr r0, [r3]
	add r0, r0, r2
	str r0, [r3]
_02018154:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0]
	pop {r4, pc}
	thumb_func_end sub_02018124

	thumb_func_start sub_0201815C
sub_0201815C: ; 0x0201815C
	push {r3, r4}
	ldr r2, [r0, #8]
	ldr r3, [r0, #0xc]
	ldr r2, [r2, #8]
	ldrh r2, [r2, #4]
	lsl r4, r2, #0xc
	mov r2, #0
	cmp r1, #0
	ble _0201817E
	add r1, r3, r1
	cmp r1, r4
	bge _02018178
	str r1, [r0, #0xc]
	b _0201818A
_02018178:
	str r4, [r0, #0xc]
	mov r2, #1
	b _0201818A
_0201817E:
	add r1, r3, r1
	bmi _02018186
	str r1, [r0, #0xc]
	b _0201818A
_02018186:
	str r2, [r0, #0xc]
	mov r2, #1
_0201818A:
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0201815C

	thumb_func_start sub_02018198
sub_02018198: ; 0x02018198
	str r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0]
	bx lr
	thumb_func_end sub_02018198

	thumb_func_start sub_020181A0
sub_020181A0: ; 0x020181A0
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_020181A0

	thumb_func_start sub_020181A4
sub_020181A4: ; 0x020181A4
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	bx lr
	.align 2, 0
	thumb_func_end sub_020181A4

	thumb_func_start sub_020181B0
sub_020181B0: ; 0x020181B0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #0x78
	add r4, r0, #0
	bl sub_020E5B44
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl sub_020BE120
	mov r0, #1
	str r0, [r4, #0x6c]
	lsl r0, r0, #0xc
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020181B0

	thumb_func_start sub_020181D4
sub_020181D4: ; 0x020181D4
	ldr r3, _020181DC ; =sub_020BE294
	ldr r1, [r1, #8]
	bx r3
	nop
_020181DC: .word sub_020BE294
	thumb_func_end sub_020181D4

	thumb_func_start sub_020181E0
sub_020181E0: ; 0x020181E0
	ldr r3, _020181E8 ; =sub_020BE388
	ldr r1, [r1, #8]
	bx r3
	nop
_020181E8: .word sub_020BE388
	thumb_func_end sub_020181E0

	thumb_func_start sub_020181EC
sub_020181EC: ; 0x020181EC
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _02018280
	add r0, sp, #0x24
	bl sub_020CAFEC
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	ldr r3, _02018284 ; =0x021094DC
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020CB0D0
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020CB410
	add r0, r4, #0
	add r0, #0x74
	ldrh r0, [r0]
	ldr r3, _02018284 ; =0x021094DC
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020CB108
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020CB410
	add r0, r4, #0
	add r0, #0x72
	ldrh r0, [r0]
	ldr r3, _02018284 ; =0x021094DC
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020CB0EC
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020CB410
	add r1, r4, #0
	add r0, r4, #0
	add r4, #0x60
	add r1, #0x54
	add r2, sp, #0x24
	add r3, r4, #0
	bl sub_0201F554
_02018280:
	add sp, #0x48
	pop {r4, pc}
	.align 2, 0
_02018284: .word 0x021094DC
	thumb_func_end sub_020181EC

	thumb_func_start sub_02018288
sub_02018288: ; 0x02018288
	push {r3, lr}
	add r2, r1, #0
	ldr r1, [r0, #0x6c]
	cmp r1, #0
	beq _0201829E
	add r1, r0, #0
	add r3, r0, #0
	add r1, #0x54
	add r3, #0x60
	bl sub_0201F554
_0201829E:
	pop {r3, pc}
	thumb_func_end sub_02018288

	thumb_func_start sub_020182A0
sub_020182A0: ; 0x020182A0
	str r1, [r0, #0x6c]
	bx lr
	thumb_func_end sub_020182A0

	thumb_func_start sub_020182A4
sub_020182A4: ; 0x020182A4
	ldr r0, [r0, #0x6c]
	bx lr
	thumb_func_end sub_020182A4

	thumb_func_start sub_020182A8
sub_020182A8: ; 0x020182A8
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	str r3, [r0, #0x5c]
	bx lr
	thumb_func_end sub_020182A8

	thumb_func_start sub_020182B0
sub_020182B0: ; 0x020182B0
	push {r3, r4}
	ldr r4, [r0, #0x54]
	str r4, [r1]
	ldr r1, [r0, #0x58]
	str r1, [r2]
	ldr r0, [r0, #0x5c]
	str r0, [r3]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_020182B0

	thumb_func_start sub_020182C4
sub_020182C4: ; 0x020182C4
	str r1, [r0, #0x60]
	str r2, [r0, #0x64]
	str r3, [r0, #0x68]
	bx lr
	thumb_func_end sub_020182C4

	thumb_func_start sub_020182CC
sub_020182CC: ; 0x020182CC
	push {r3, r4}
	ldr r4, [r0, #0x60]
	str r4, [r1]
	ldr r1, [r0, #0x64]
	str r1, [r2]
	ldr r0, [r0, #0x68]
	str r0, [r3]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_020182CC

	thumb_func_start sub_020182E0
sub_020182E0: ; 0x020182E0
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, #0x70
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_020182E0

	thumb_func_start sub_020182EC
sub_020182EC: ; 0x020182EC
	lsl r1, r1, #1
	add r0, r0, r1
	add r0, #0x70
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_020182EC

	thumb_func_start sub_020182F8
sub_020182F8: ; 0x020182F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	str r2, [r5]
	add r0, r2, #0
	mov r1, #0
	add r6, r3, #0
	bl sub_020C3B90
	str r0, [r5, #4]
	ldr r1, [r5, #4]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl sub_020C2B7C
	str r0, [r5, #8]
	ldr r1, [r5, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_020BE008
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020182F8

	thumb_func_start sub_02018324
sub_02018324: ; 0x02018324
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _02018332
	bl GF_AssertFail
_02018332:
	ldr r0, [r4]
	bl sub_020C3B40
	str r0, [r4, #4]
	cmp r0, #0
	beq _0201835E
	add r2, r0, #0
	add r2, #8
	beq _02018352
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02018352
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02018354
_02018352:
	mov r1, #0
_02018354:
	cmp r1, #0
	beq _0201835E
	ldr r1, [r1]
	add r0, r0, r1
	b _02018360
_0201835E:
	mov r0, #0
_02018360:
	str r0, [r4, #8]
	ldr r0, [r4]
	bl sub_020C3B50
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _0201837A
	mov r2, #1
	ldr r0, _0201837C ; =sub_0201804C
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_0200E374
_0201837A:
	pop {r4, pc}
	.align 2, 0
_0201837C: .word sub_0201804C
	thumb_func_end sub_02018324

	thumb_func_start sub_02018380
sub_02018380: ; 0x02018380
	ldr r0, _02018388 ; =0x021D10E8
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_02018388: .word 0x021D10E8
	thumb_func_end sub_02018380

	thumb_func_start sub_0201838C
sub_0201838C: ; 0x0201838C
	push {r3, lr}
	ldr r1, _020183AC ; =0x021D10E8
	mov r2, #1
	str r2, [r1]
	mov r2, #0
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r0, [r1, #4]
	bl sub_020254FC
	ldr r2, _020183AC ; =0x021D10E8
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	pop {r3, pc}
	.align 2, 0
_020183AC: .word 0x021D10E8
	thumb_func_end sub_0201838C

	thumb_func_start sub_020183B0
sub_020183B0: ; 0x020183B0
	push {r3, r4, r5, lr}
	ldr r0, _020183EC ; =0x021D10E8
	ldr r0, [r0]
	cmp r0, #0
	beq _020183EA
	bl sub_020254FC
	ldr r2, _020183EC ; =0x021D10E8
	ldr r3, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	sub r0, r0, r3
	sbc r1, r2
	bl sub_02025504
	add r5, r1, #0
	ldr r1, _020183EC ; =0x021D10E8
	add r4, r0, #0
	ldr r3, [r1, #8]
	ldr r2, [r1, #0xc]
	sub r0, r3, r4
	sbc r2, r5
	bhs _020183EA
	ldr r0, [r1, #4]
	sub r1, r4, r3
	bl sub_0202CDBC
	ldr r0, _020183EC ; =0x021D10E8
	str r4, [r0, #8]
	str r5, [r0, #0xc]
_020183EA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_020183EC: .word 0x021D10E8
	thumb_func_end sub_020183B0

	thumb_func_start sub_020183F0
sub_020183F0: ; 0x020183F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #1
	cmp r0, #0
	beq _02018402
	cmp r0, #1
	beq _02018402
	mov r1, #0
_02018402:
	cmp r1, #0
	bne _0201840A
	bl GF_AssertFail
_0201840A:
	ldr r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020183F0

	thumb_func_start sub_02018410
sub_02018410: ; 0x02018410
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _02018420
	cmp r4, #1
	beq _02018420
	bl GF_AssertFail
_02018420:
	str r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02018410

	thumb_func_start sub_02018424
sub_02018424: ; 0x02018424
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	mov r1, #0x18
	add r5, r0, #0
	bl sub_0201AA8C
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl sub_020D4994
	str r5, [r4]
	mov r2, #0
	mov r0, #0xa5
	mov r1, #1
	add r3, r5, #0
	str r2, [sp]
	bl sub_02007A44
	add r1, r4, #4
	str r0, [r4, #0xc]
	bl sub_020B70F4
	mov r1, #0
	mov r0, #0xa5
	add r2, r1, #0
	add r3, r5, #0
	str r1, [sp]
	bl sub_02007A44
	add r1, r4, #0
	add r1, #8
	str r0, [r4, #0x10]
	bl sub_020B7140
	str r6, [r4, #0x14]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02018424

	thumb_func_start sub_02018474
sub_02018474: ; 0x02018474
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0201AB0C
	ldr r0, [r4, #0xc]
	bl sub_0201AB0C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	bl sub_020D4994
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02018474

	thumb_func_start sub_02018498
sub_02018498: ; 0x02018498
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r7, r1, #0
	ldr r0, [r5]
	mov r1, #0x38
	add r6, r3, #0
	bl sub_0201AA8C
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x38
	bl sub_020D4994
	add r0, r7, #0
	add r1, r4, #4
	mov r2, #0x18
	bl sub_020D4A50
	str r5, [r4]
	add r0, sp, #8
	ldrb r1, [r0, #0x18]
	ldrb r0, [r4, #0x18]
	cmp r1, r0
	bhs _020184D0
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
_020184D0:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x25
	strb r1, [r0]
	ldr r0, [r5]
	add r3, sp, #8
	str r0, [r4, #0x2c]
	add r0, r4, #0
	ldrb r1, [r3, #0x10]
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r3, #0x18]
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x27
	ldrb r0, [r0]
	mov r1, #0xfe
	bic r0, r1
	ldr r1, [sp]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x18
	orr r1, r0
	add r0, r4, #0
	add r0, #0x27
	strb r1, [r0]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x30]
	ldr r0, [sp, #0x28]
	str r0, [r4, #0x34]
	add r0, r4, #0
	add r0, #0x27
	ldrb r2, [r0]
	mov r0, #1
	bic r2, r0
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #1
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	add r0, r4, #0
	add r0, #0x27
	strb r1, [r0]
	ldrb r1, [r3, #0x14]
	cmp r1, #0
	bne _02018546
	ldrb r1, [r4, #0x18]
	ldrb r3, [r4, #5]
	ldr r0, [r7, #0xc]
	mov r2, #4
	bl sub_0201881C
	add r1, r4, #0
	add r1, #0x26
	strb r0, [r1]
	b _0201854C
_02018546:
	add r0, r4, #0
	add r0, #0x26
	strb r1, [r0]
_0201854C:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0201855E
	cmp r0, #1
	beq _02018566
	cmp r0, #2
	beq _0201859C
	bl GF_AssertFail
_0201855E:
	add r0, r4, #0
	add r0, #0x28
	strb r6, [r0]
	b _020185B8
_02018566:
	add r0, r4, #0
	add r0, #0x26
	ldrb r1, [r0]
	mov r0, #1
	add r1, r1, #1
	bic r1, r0
	add r0, r4, #0
	add r0, #0x26
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	add r1, r0, #2
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r1, r6, r0
	bpl _02018594
	add r0, r4, #0
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
	b _020185B8
_02018594:
	add r0, r4, #0
	add r0, #0x28
	strb r1, [r0]
	b _020185B8
_0201859C:
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	add r0, r0, #2
	sub r1, r6, r0
	bpl _020185B2
	add r0, r4, #0
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
	b _020185B8
_020185B2:
	add r0, r4, #0
	add r0, #0x28
	strb r1, [r0]
_020185B8:
	add r0, r4, #0
	bl sub_02018890
	ldr r2, [r4]
	ldr r3, [r4, #0x2c]
	ldr r2, [r2, #0x14]
	add r0, r5, #0
	add r1, r4, #4
	bl sub_02018744
	add r0, r4, #0
	bl sub_020189AC
	add r0, r4, #0
	bl sub_02018C90
	add r1, r4, #0
	add r1, #0x24
	ldrb r1, [r1]
	add r0, r4, #0
	bl sub_02018DF4
	ldr r1, _020185F8 ; =0x000005DC
	add r0, r4, #0
	bl sub_02018FE8
	add r0, r4, #0
	mov r1, #0
	bl sub_02018FFC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020185F8: .word 0x000005DC
	thumb_func_end sub_02018498

	thumb_func_start sub_020185FC
sub_020185FC: ; 0x020185FC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrb r5, [r4, #0x10]
	str r5, [sp]
	ldrb r5, [r4, #0x14]
	str r5, [sp, #4]
	ldrb r4, [r4, #0x18]
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	bl sub_02018498
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end sub_020185FC

	thumb_func_start sub_02018620
sub_02018620: ; 0x02018620
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrb r5, [r4, #0x10]
	str r5, [sp]
	ldrb r5, [r4, #0x14]
	str r5, [sp, #4]
	ldrb r4, [r4, #0x18]
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x34]
	str r4, [sp, #0x18]
	bl sub_02018498
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02018620

	thumb_func_start sub_02018648
sub_02018648: ; 0x02018648
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrb r5, [r4, #0x10]
	str r5, [sp]
	ldrb r5, [r4, #0x14]
	str r5, [sp, #4]
	ldrb r4, [r4, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x34]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x38]
	str r4, [sp, #0x10]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x18]
	bl sub_02018498
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02018648

	thumb_func_start sub_02018674
sub_02018674: ; 0x02018674
	add r0, #0x27
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	bx lr
	.align 2, 0
	thumb_func_end sub_02018674

	thumb_func_start sub_02018680
sub_02018680: ; 0x02018680
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x38
	bl sub_020D4994
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	thumb_func_end sub_02018680

	thumb_func_start sub_02018694
sub_02018694: ; 0x02018694
	push {r4, lr}
	add r4, r0, #0
	bl sub_02018D90
	add r0, r4, #0
	bl sub_02018998
	pop {r4, pc}
	thumb_func_end sub_02018694

	thumb_func_start sub_020186A4
sub_020186A4: ; 0x020186A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x25
	ldrb r1, [r1]
	cmp r1, #1
	bne _02018716
	add r1, r5, #0
	add r1, #0x2b
	ldrb r4, [r1]
	cmp r4, #0
	bne _020186CE
	bl sub_02018694
	ldr r1, [r5, #0x10]
	add r5, #0x2a
	ldrb r0, [r5]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, pc}
_020186CE:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r3, #0x1f
	ror r1, r3
	add r1, r2, r1
	bne _02018704
	lsr r1, r4, #1
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1f
	sub r1, r1, r2
	ror r1, r3
	add r1, r2, r1
	bne _020186F8
	add r1, r5, #0
	add r1, #0x2a
	ldrb r1, [r1]
	mov r2, #1
	bl sub_02018D0C
	b _02018704
_020186F8:
	add r1, r5, #0
	add r1, #0x2a
	ldrb r1, [r1]
	mov r2, #0
	bl sub_02018D0C
_02018704:
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	add r5, #0x2b
	sub r0, r0, #1
	strb r0, [r5]
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02018716:
	add r1, sp, #0
	bl sub_02018E08
	add r4, r0, #0
	ldr r0, [sp]
	cmp r0, #0
	bne _0201872C
	add r0, r5, #0
	bl sub_02018E8C
	add r4, r0, #0
_0201872C:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _0201873E
	add r0, r5, #0
	bl sub_02018694
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0201873E:
	add r0, r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020186A4

	thumb_func_start sub_02018744
sub_02018744: ; 0x02018744
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0x10
	add r7, r2, #0
	bl sub_0201AACC
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl sub_020D4994
	ldr r0, [r6, #4]
	add r1, r4, #0
	str r0, [r4, #8]
	ldr r0, [r6, #8]
	mov r2, #0x80
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x10]
	str r0, [r4]
	ldrb r0, [r5, #2]
	strb r0, [r4, #4]
	ldrh r0, [r5, #8]
	strh r0, [r4, #6]
	ldrb r0, [r5, #3]
	strb r0, [r4, #5]
	ldr r0, _020187BC ; =sub_020187C0
	bl sub_0200E374
	cmp r7, #0
	beq _020187B8
	ldrb r0, [r5, #2]
	cmp r0, #4
	bhs _020187A2
	mov r0, #0x20
	str r0, [sp]
	ldrb r3, [r5, #3]
	ldr r1, [r4, #0xc]
	add r0, r7, #0
	lsl r3, r3, #0x14
	ldr r1, [r1, #0xc]
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0200316C
	pop {r3, r4, r5, r6, r7, pc}
_020187A2:
	mov r0, #0x20
	str r0, [sp]
	ldrb r3, [r5, #3]
	ldr r1, [r4, #0xc]
	add r0, r7, #0
	lsl r3, r3, #0x14
	ldr r1, [r1, #0xc]
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_0200316C
_020187B8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020187BC: .word sub_020187C0
	thumb_func_end sub_02018744

	thumb_func_start sub_020187C0
sub_020187C0: ; 0x020187C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #8]
	add r5, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl DC_FlushRange
	ldrh r0, [r4, #6]
	ldr r3, [r4, #8]
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldrb r1, [r4, #4]
	ldr r0, [r4]
	ldr r3, [r3, #0x10]
	bl sub_0201C0C0
	ldr r0, [r4, #0xc]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldrb r0, [r4, #4]
	cmp r0, #4
	ldr r0, [r4, #0xc]
	bhs _02018802
	ldrb r1, [r4, #5]
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	lsl r1, r1, #5
	bl sub_020CFC6C
	b _0201880E
_02018802:
	ldrb r1, [r4, #5]
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	lsl r1, r1, #5
	bl sub_020CFCC0
_0201880E:
	add r0, r5, #0
	bl sub_0200E390
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020187C0

	thumb_func_start sub_0201881C
sub_0201881C: ; 0x0201881C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	mov r4, #0
	add r7, r1, #0
	add r5, r0, #0
	add r6, r4, #0
	str r3, [sp, #4]
	cmp r7, #0
	ble _02018864
_02018830:
	ldr r0, [r5]
	cmp r0, #0
	bne _0201883A
	bl GF_AssertFail
_0201883A:
	mov r0, #0
	ldr r1, [r5]
	mvn r0, r0
	cmp r1, r0
	bne _02018848
	bl GF_AssertFail
_02018848:
	ldr r0, [sp]
	ldr r1, [r5]
	mov r2, #0
	bl sub_02002F30
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r4
	bls _0201885C
	add r4, r0, #0
_0201885C:
	add r6, r6, #1
	add r5, #8
	cmp r6, r7
	blt _02018830
_02018864:
	ldr r0, [sp, #4]
	lsl r0, r0, #1
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	bne _02018884
	lsl r0, r3, #0x15
	add sp, #8
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02018884:
	lsr r0, r3, #3
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201881C

	thumb_func_start sub_02018890
sub_02018890: ; 0x02018890
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, #0x2c]
	bl sub_0201D39C
	str r0, [r5, #0x1c]
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, #0x2c]
	add r1, r1, #1
	lsl r1, r1, #2
	bl sub_0201AA8C
	str r0, [r5, #0x20]
	ldrb r2, [r5, #0x18]
	mov r1, #0
	add r2, r2, #1
	lsl r2, r2, #2
	bl sub_020D4994
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x20]
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	ble _02018988
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	add r6, r0, #0
	add r7, r0, #0
	add r4, r0, #0
_020188DC:
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r3, r5, #0
	add r3, #0x28
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	str r0, [sp, #0xc]
	ldrh r1, [r5, #0xa]
	ldr r0, [sp, #0x1c]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrb r3, [r3]
	ldr r1, [r5, #0x1c]
	ldrb r2, [r5, #6]
	add r3, r3, #1
	lsl r3, r3, #0x18
	ldr r0, [r5, #0x14]
	add r1, r1, r6
	lsr r3, r3, #0x18
	bl sub_0201D40C
	ldr r0, [r5, #0x1c]
	mov r1, #3
	add r0, r0, r6
	bl sub_0201D978
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r2, r5, #0
	add r2, #0x26
	add r0, r0, #1
	lsl r0, r0, #3
	add r1, r0, r7
	ldr r0, [r5, #0x20]
	add r6, #0x10
	strb r1, [r0, r4]
	ldr r0, [r5, #0x20]
	add r7, #0x18
	add r1, r0, r4
	ldrb r0, [r0, r4]
	add r0, #0x10
	strb r0, [r1, #1]
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, [r5, #0x20]
	add r0, r0, r4
	strb r1, [r0, #2]
	ldr r0, [r5, #0x20]
	ldrb r2, [r2]
	add r1, r0, r4
	ldrb r0, [r1, #2]
	lsl r2, r2, #3
	add r4, r4, #4
	add r0, r0, r2
	strb r0, [r1, #3]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	ldrb r1, [r5, #0x18]
	add r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _020188DC
_02018988:
	ldr r0, [sp, #0x20]
	ldr r1, [r5, #0x20]
	mov r2, #0xff
	lsl r0, r0, #2
	strb r2, [r1, r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02018890

	thumb_func_start sub_02018998
sub_02018998: ; 0x02018998
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_0201AB0C
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	bl sub_0201D54C
	pop {r4, pc}
	thumb_func_end sub_02018998

	thumb_func_start sub_020189AC
sub_020189AC: ; 0x020189AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrb r0, [r5, #0x18]
	ldrh r4, [r5, #0xc]
	sub r0, r0, #1
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _020189C6
	add r4, #0xc
_020189C6:
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r3, r5, #0
	lsl r2, r4, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	add r3, #0x28
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r1, [r5, #6]
	ldrb r3, [r3]
	ldr r0, [r5, #0x14]
	bl sub_0201C8C4
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r3, r5, #0
	add r2, r4, #1
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	add r3, #0x28
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r3, r5, #0
	add r2, r4, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	lsl r2, r2, #0x10
	add r3, #0x28
	str r0, [sp, #0xc]
	ldrb r4, [r3]
	add r3, r5, #0
	add r3, #0x26
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r4, r3
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add r0, r5, #0
	add r0, #0x24
	ldrh r4, [r5, #0xc]
	ldrb r1, [r0]
	ldr r0, [sp, #0x10]
	add r4, #9
	cmp r1, r0
	bne _02018A62
	add r4, #0xc
_02018A62:
	add r0, r5, #0
	add r0, #0x29
	ldrb r1, [r5, #0x18]
	ldrb r2, [r0]
	add r3, r5, #0
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	lsl r2, r4, #0x10
	add r3, #0x28
	str r0, [sp, #0xc]
	ldrb r1, [r5, #6]
	ldrb r3, [r3]
	ldr r0, [r5, #0x14]
	lsr r2, r2, #0x10
	bl sub_0201C8C4
	add r0, r5, #0
	add r0, #0x29
	ldrb r1, [r5, #0x18]
	ldrb r2, [r0]
	add r3, r5, #0
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	add r2, r4, #1
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	add r3, #0x28
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add r0, r5, #0
	add r0, #0x29
	add r3, r5, #0
	ldrb r1, [r5, #0x18]
	ldrb r2, [r0]
	add r3, #0x28
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	add r2, r4, #2
	lsl r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r4, [r3]
	add r3, r5, #0
	add r3, #0x26
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r4, r3
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldrb r1, [r5, #0x18]
	mov r6, #0
	sub r0, r1, #1
	cmp r0, #0
	ble _02018BFE
	ldr r0, [sp, #0x10]
	add r7, r6, #0
	sub r0, r0, #1
	str r0, [sp, #0x14]
_02018B22:
	ldrh r0, [r5, #0xc]
	add r4, r0, #6
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _02018B34
	cmp r6, #0
	beq _02018B38
_02018B34:
	cmp r0, r6
	bne _02018B3C
_02018B38:
	add r4, #0xc
	b _02018B50
_02018B3C:
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bne _02018B48
	ldr r1, [sp, #0x14]
	cmp r6, r1
	beq _02018B4E
_02018B48:
	add r1, r6, #1
	cmp r0, r1
	bne _02018B50
_02018B4E:
	add r4, #0x12
_02018B50:
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r7, #3
	add r3, r5, #0
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	add r3, #0x28
	lsl r2, r4, #0x10
	str r0, [sp, #0xc]
	ldrb r1, [r5, #6]
	ldrb r3, [r3]
	ldr r0, [r5, #0x14]
	lsr r2, r2, #0x10
	bl sub_0201C8C4
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r7, #3
	add r3, r5, #0
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	add r3, #0x28
	add r2, r4, #1
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	add r0, r5, #0
	add r0, #0x29
	add r3, r5, #0
	add r2, r4, #2
	ldrb r0, [r0]
	add r1, r7, #3
	add r3, #0x28
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r4, [r3]
	add r3, r5, #0
	add r3, #0x26
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r4, r3
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldrb r1, [r5, #0x18]
	add r6, r6, #1
	add r7, r7, #3
	sub r0, r1, #1
	cmp r6, r0
	blt _02018B22
_02018BFE:
	mov r7, #0
	cmp r1, #0
	ble _02018C8C
	add r6, r7, #0
_02018C06:
	ldrh r0, [r5, #0xc]
	add r4, r0, #3
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, r7
	bne _02018C16
	add r4, #0xc
_02018C16:
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r3, r5, #0
	lsl r2, r4, #0x10
	add r0, r0, r6
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	add r3, #0x28
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r1, [r5, #6]
	ldrb r3, [r3]
	ldr r0, [r5, #0x14]
	bl sub_0201C8C4
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r3, r5, #0
	add r2, r4, #2
	add r0, r0, r6
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	lsl r2, r2, #0x10
	add r3, #0x28
	str r0, [sp, #0xc]
	ldrb r4, [r3]
	add r3, r5, #0
	add r3, #0x26
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r4, r3
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldrb r0, [r5, #0x18]
	add r7, r7, #1
	add r6, r6, #3
	cmp r7, r0
	blt _02018C06
_02018C8C:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020189AC

	thumb_func_start sub_02018C90
sub_02018C90: ; 0x02018C90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x26
	ldrb r0, [r0]
	mov r7, #0
	lsl r0, r0, #3
	str r0, [sp, #0x10]
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	ble _02018CFA
	add r6, r7, #0
	add r4, r7, #0
_02018CAA:
	ldrb r0, [r5, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	bne _02018CB6
	ldrb r3, [r5, #5]
	b _02018CC8
_02018CB6:
	ldr r1, [r5, #0x10]
	mov r0, #4
	ldr r1, [r1, r6]
	mov r2, #0
	bl sub_02002F30
	ldr r1, [sp, #0x10]
	sub r0, r1, r0
	lsr r3, r0, #1
_02018CC8:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02018D08 ; =0x00010203
	mov r1, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	ldr r0, [r5, #0x1c]
	ldr r2, [r2, r6]
	add r0, r0, r4
	bl sub_020200FC
	ldr r0, [r5, #0x1c]
	add r0, r0, r4
	bl sub_0201D5C8
	ldrb r0, [r5, #0x18]
	add r7, r7, #1
	add r6, #8
	add r4, #0x10
	cmp r7, r0
	blt _02018CAA
_02018CFA:
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	bl sub_0201EFBC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02018D08: .word 0x00010203
	thumb_func_end sub_02018C90

	thumb_func_start sub_02018D0C
sub_02018D0C: ; 0x02018D0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #0
	beq _02018D20
	mov r0, #6
	ldr r7, _02018D88 ; =0x00040506
	str r0, [sp, #0x14]
	b _02018D26
_02018D20:
	mov r0, #3
	ldr r7, _02018D8C ; =0x00010203
	str r0, [sp, #0x14]
_02018D26:
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	lsl r6, r0, #3
	ldrb r0, [r5, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	bne _02018D3C
	ldrb r0, [r5, #5]
	str r0, [sp, #0x10]
	b _02018D50
_02018D3C:
	ldr r2, [r5, #0x10]
	lsl r1, r4, #3
	ldr r1, [r2, r1]
	mov r0, #4
	mov r2, #0
	bl sub_02002F30
	sub r0, r6, r0
	lsr r0, r0, #1
	str r0, [sp, #0x10]
_02018D50:
	ldr r0, [r5, #0x1c]
	lsl r6, r4, #4
	ldr r1, [sp, #0x14]
	add r0, r0, r6
	bl sub_0201D978
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x10]
	lsl r2, r4, #3
	ldr r2, [r3, r2]
	ldr r3, [sp, #0x10]
	add r0, r0, r6
	mov r1, #4
	bl sub_020200FC
	ldr r0, [r5, #0x1c]
	add r0, r0, r6
	bl sub_0201D5C8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02018D88: .word 0x00040506
_02018D8C: .word 0x00010203
	thumb_func_end sub_02018D0C

	thumb_func_start sub_02018D90
sub_02018D90: ; 0x02018D90
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #0x18]
	mov r6, #0
	cmp r0, #0
	ble _02018DB2
	add r4, r6, #0
_02018DA0:
	ldr r0, [r5, #0x1c]
	add r0, r0, r4
	bl sub_0201D8E4
	ldrb r0, [r5, #0x18]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _02018DA0
_02018DB2:
	add r1, r5, #0
	add r1, #0x29
	ldrb r1, [r1]
	add r3, r5, #0
	add r3, #0x28
	str r1, [sp]
	add r1, r5, #0
	add r1, #0x26
	ldrb r1, [r1]
	mov r2, #0
	add r1, r1, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	str r0, [sp, #0xc]
	ldrb r1, [r5, #6]
	ldrb r3, [r3]
	ldr r0, [r5, #0x14]
	bl sub_0201C8C4
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	bl sub_0201EFBC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02018D90

	thumb_func_start sub_02018DF4
sub_02018DF4: ; 0x02018DF4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020189AC
	ldrb r1, [r4, #6]
	ldr r0, [r4, #0x14]
	bl sub_0201EFBC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02018DF4

	thumb_func_start sub_02018E08
sub_02018E08: ; 0x02018E08
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	bl sub_02025224
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _02018E24
	mov r1, #0
	str r1, [r4]
	pop {r4, r5, r6, pc}
_02018E24:
	lsl r0, r6, #0x18
	mov r2, #1
	lsr r1, r0, #0x18
	add r0, r5, #0
	str r2, [r4]
	add r0, #0x24
	strb r1, [r0]
	add r0, r5, #0
	bl sub_02018D0C
	add r0, r5, #0
	bl sub_020189AC
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	bl sub_0201EFBC
	add r0, r5, #0
	mov r1, #1
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #8
	add r0, #0x2b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x2a
	strb r6, [r0]
	add r0, r5, #0
	add r0, #0x27
	ldrb r1, [r0]
	mov r0, #0xfe
	bic r1, r0
	mov r0, #2
	orr r1, r0
	add r0, r5, #0
	add r0, #0x27
	strb r1, [r0]
	ldr r1, _02018E88 ; =0x000005DC
	add r0, r5, #0
	bl sub_02018FE8
	add r0, r5, #0
	mov r1, #2
	bl sub_02018FFC
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	nop
_02018E88: .word 0x000005DC
	thumb_func_end sub_02018E08

	thumb_func_start sub_02018E8C
sub_02018E8C: ; 0x02018E8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02018FDC ; =0x021D110C
	ldr r1, [r0, #0x48]
	ldr r0, _02018FE0 ; =0x00000CF3
	tst r0, r1
	beq _02018EAA
	add r0, r5, #0
	add r0, #0x27
	ldrb r1, [r0]
	mov r0, #0xfe
	bic r1, r0
	add r0, r5, #0
	add r0, #0x27
	strb r1, [r0]
_02018EAA:
	ldr r0, _02018FDC ; =0x021D110C
	mov r1, #2
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _02018ECA
	ldr r1, _02018FE4 ; =0x000005DC
	add r0, r5, #0
	bl sub_02018FE8
	add r0, r5, #0
	mov r1, #3
	bl sub_02018FFC
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02018ECA:
	mov r2, #1
	add r1, r0, #0
	tst r1, r2
	beq _02018F10
	add r1, r5, #0
	add r1, #0x24
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_02018D0C
	add r0, r5, #0
	mov r1, #1
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #8
	add r0, #0x2b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x24
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2a
	strb r1, [r0]
	ldr r1, _02018FE4 ; =0x000005DC
	add r0, r5, #0
	bl sub_02018FE8
	add r0, r5, #0
	mov r1, #2
	bl sub_02018FFC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02018F10:
	add r1, r5, #0
	add r1, #0x24
	ldrb r4, [r1]
	mov r1, #0x40
	tst r0, r1
	beq _02018F6E
	ldrb r0, [r5, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02018F36
	ldrb r1, [r5, #0x18]
	sub r0, r1, #1
	add r0, r4, r0
	bl sub_020F2998
	add r0, r5, #0
	add r0, #0x24
	strb r1, [r0]
	b _02018F48
_02018F36:
	cmp r4, #0
	beq _02018F48
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x24
	strb r1, [r0]
_02018F48:
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r4, r0
	beq _02018F6E
	ldr r1, _02018FE4 ; =0x000005DC
	add r0, r5, #0
	bl sub_02018FE8
	add r0, r5, #0
	mov r1, #1
	bl sub_02018FFC
	add r1, r5, #0
	add r1, #0x24
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_02018DF4
_02018F6E:
	ldr r0, _02018FDC ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #0x80
	tst r0, r1
	beq _02018FD6
	ldrb r0, [r5, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02018F96
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	ldrb r1, [r5, #0x18]
	add r0, r0, #1
	bl sub_020F2998
	add r0, r5, #0
	add r0, #0x24
	strb r1, [r0]
	b _02018FB2
_02018F96:
	add r0, r5, #0
	add r0, #0x24
	ldrb r1, [r0]
	ldrb r0, [r5, #0x18]
	sub r0, r0, #1
	cmp r1, r0
	bge _02018FB2
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x24
	strb r1, [r0]
_02018FB2:
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r4, r0
	beq _02018FD6
	ldr r1, _02018FE4 ; =0x000005DC
	add r0, r5, #0
	bl sub_02018FE8
	add r0, r5, #0
	mov r1, #1
	bl sub_02018FFC
	add r0, r5, #0
	add r5, #0x24
	ldrb r1, [r5]
	bl sub_02018DF4
_02018FD6:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02018FDC: .word 0x021D110C
_02018FE0: .word 0x00000CF3
_02018FE4: .word 0x000005DC
	thumb_func_end sub_02018E8C

	thumb_func_start sub_02018FE8
sub_02018FE8: ; 0x02018FE8
	push {r3, lr}
	add r0, #0x27
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02018FFA
	add r0, r1, #0
	bl sub_0200604C
_02018FFA:
	pop {r3, pc}
	thumb_func_end sub_02018FE8

	thumb_func_start sub_02018FFC
sub_02018FFC: ; 0x02018FFC
	push {r4, lr}
	ldr r4, [r0, #0x30]
	add r3, r1, #0
	cmp r4, #0
	beq _02019010
	add r1, r0, #0
	add r1, #0x24
	ldrb r1, [r1]
	ldr r2, [r0, #0x34]
	blx r4
_02019010:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02018FFC

	thumb_func_start sub_02019014
sub_02019014: ; 0x02019014
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x34
	bl sub_0201AA8C
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	bl sub_020D4994
	str r5, [r4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02019014

	thumb_func_start sub_02019030
sub_02019030: ; 0x02019030
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201915C
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	thumb_func_end sub_02019030

	thumb_func_start sub_02019040
sub_02019040: ; 0x02019040
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldrb r0, [r5, #7]
	add r3, r1, #0
	add r4, r2, #0
	cmp r0, #0
	bne _020190DE
	cmp r4, #0
	beq _020190DE
	mov r0, #1
	strb r0, [r5, #7]
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [r5]
	add r0, sp, #0
	bl sub_02023618
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r0, #8]
	ldrh r1, [r0, #2]
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #6]
	strh r1, [r0, #0xe]
	ldr r1, [r5]
	add r0, sp, #0x10
	bl sub_02023630
	add r3, sp, #0x10
	ldmia r3!, {r0, r1}
	add r2, sp, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5]
	bl sub_02023658
	add r6, r0, #0
	add r0, sp, #0
	ldrh r0, [r0, #8]
	strh r0, [r5, #8]
	ldr r0, [r5]
	bl sub_0202360C
	strh r0, [r5, #0xa]
	cmp r6, #0
	beq _020190BE
	add r2, r5, #0
	add r0, sp, #0x1c
	add r1, r6, #0
	add r2, #0xc
	bl sub_020CCDAC
	b _020190C6
_020190BE:
	mov r0, #0
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
_020190C6:
	ldr r0, [r5]
	bl sub_02023614
	str r0, [r5, #0x18]
	ldr r0, _020190E4 ; =sub_020190FC
	strb r4, [r5, #4]
	mov r2, #0
	add r1, r5, #0
	strb r2, [r5, #5]
	bl sub_0200E320
	str r0, [r5, #0x30]
_020190DE:
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_020190E4: .word sub_020190FC
	thumb_func_end sub_02019040

	thumb_func_start sub_020190E8
sub_020190E8: ; 0x020190E8
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _020190F2
	mov r0, #1
	b _020190F4
_020190F2:
	mov r0, #0
_020190F4:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.align 2, 0
	thumb_func_end sub_020190E8

	thumb_func_start sub_020190FC
sub_020190FC: ; 0x020190FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0201912E
	ldrb r0, [r4, #5]
	add r2, r4, #0
	add r1, #8
	add r0, r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #4]
	add r2, #0x1c
	str r0, [sp]
	ldrb r3, [r4, #5]
	ldr r0, [r4]
	bl sub_0201917C
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #4]
	cmp r1, r0
	blo _02019158
	add r0, r4, #0
	bl sub_0201915C
	pop {r3, r4, r5, pc}
_0201912E:
	ldrb r5, [r4, #4]
	add r2, r4, #0
	add r1, #0x1c
	str r5, [sp]
	ldrb r3, [r4, #5]
	ldr r0, [r4]
	add r2, #8
	sub r3, r5, r3
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201917C
	ldrb r0, [r4, #5]
	sub r0, r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _02019158
	add r0, r4, #0
	bl sub_0201915C
_02019158:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020190FC

	thumb_func_start sub_0201915C
sub_0201915C: ; 0x0201915C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0201916E
	bl sub_0200E390
	mov r0, #0
	str r0, [r4, #0x30]
_0201916E:
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0201915C

	thumb_func_start sub_0201917C
sub_0201917C: ; 0x0201917C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r3, [sp, #4]
	ldr r4, [sp, #0x20]
	add r5, r1, #0
	add r6, r2, #0
	str r4, [sp]
	add r1, #0x10
	add r2, #0x10
	add r7, r0, #0
	bl sub_02019218
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020191C4
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r7, #0
	add r1, r5, #2
	add r2, r6, #2
	bl sub_02019238
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r7, #0
	add r1, r5, #4
	add r2, r6, #4
	bl sub_0201925C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0201917C

	thumb_func_start sub_020191C4
sub_020191C4: ; 0x020191C4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, sp, #0
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	ldrh r4, [r1]
	ldrh r0, [r2]
	cmp r0, r4
	blo _020191F2
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r1, #0
	add r1, sp, #8
	ldrb r1, [r1, #0x10]
	mul r0, r3
	bl sub_020F2998
	b _02019206
_020191F2:
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r1, #0
	add r1, sp, #8
	ldrb r1, [r1, #0x10]
	mul r0, r3
	bl sub_020F2998
	neg r0, r0
_02019206:
	add r1, r4, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0
	add r1, r5, #0
	bl sub_02023558
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020191C4

	thumb_func_start sub_02019218
sub_02019218: ; 0x02019218
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r1]
	ldr r0, [r2]
	sub r1, r0, r4
	add r0, r1, #0
	add r1, sp, #0
	ldrb r1, [r1, #0x10]
	mul r0, r3
	bl sub_020F2998
	add r0, r4, r0
	add r1, r5, #0
	bl sub_020235D4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019218

	thumb_func_start sub_02019238
sub_02019238: ; 0x02019238
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r4, [r1]
	ldrh r0, [r2]
	sub r1, r0, r4
	add r0, r1, #0
	add r1, sp, #0
	ldrb r1, [r1, #0x10]
	mul r0, r3
	bl sub_020F2998
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r5, #0
	bl sub_02023494
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019238

	thumb_func_start sub_0201925C
sub_0201925C: ; 0x0201925C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, r2, #0
	add r2, sp, #0
	add r4, r3, #0
	bl sub_020CCDAC
	add r2, sp, #0x18
	ldrb r2, [r2, #0x10]
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_020192A4
	str r0, [sp, #0xc]
	add r2, sp, #0x18
	ldrb r2, [r2, #0x10]
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_020192A4
	str r0, [sp, #0x10]
	add r2, sp, #0x18
	ldrb r2, [r2, #0x10]
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_020192A4
	str r0, [sp, #0x14]
	add r0, sp, #0xc
	add r1, r5, #0
	bl sub_02023514
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0201925C

	thumb_func_start sub_020192A4
sub_020192A4: ; 0x020192A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _020192B4
	bl GF_AssertFail
_020192B4:
	add r0, r5, #0
	mul r0, r4
	add r1, r6, #0
	bl sub_020F2998
	add r7, r0, #0
	sub r0, r4, #1
	mul r0, r5
	add r1, r6, #0
	bl sub_020F2998
	sub r0, r7, r0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020192A4

	thumb_func_start sub_020192D0
sub_020192D0: ; 0x020192D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0201A0FC
	bl sub_0201A108
	bl sub_02022C54
	bl sub_02022CBC
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _0201934C ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1]
	ldr r0, _02019350 ; =0x04001000
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _02019354 ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1]
	ldr r3, [r0]
	add r1, #0x50
	and r2, r3
	str r2, [r0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x7b
	lsl r2, r2, #0xe
	bl sub_0201A910
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x7b
	bl sub_02007280
	mov r1, #0
	mov r2, #0x80
	add r5, r0, #0
	bl sub_020D4994
	add r0, r4, #0
	bl sub_020072A4
	str r0, [r5]
	ldr r1, _02019358 ; =0x0000047D
	mov r0, #0xb
	mov r2, #1
	bl sub_02004EC4
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0201934C: .word 0xFFFFE0FF
_02019350: .word 0x04001000
_02019354: .word 0xFFFF1FFF
_02019358: .word 0x0000047D
	thumb_func_end sub_020192D0

	thumb_func_start sub_0201935C
sub_0201935C: ; 0x0201935C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02007290
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #8
	bhi _0201945A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02019378: ; jump table
	.short _0201938A - _02019378 - 2 ; case 0
	.short _02019394 - _02019378 - 2 ; case 1
	.short _020193B6 - _02019378 - 2 ; case 2
	.short _020193CA - _02019378 - 2 ; case 3
	.short _020193F2 - _02019378 - 2 ; case 4
	.short _0201940E - _02019378 - 2 ; case 5
	.short _02019426 - _02019378 - 2 ; case 6
	.short _0201943A - _02019378 - 2 ; case 7
	.short _02019456 - _02019378 - 2 ; case 8
_0201938A:
	bl sub_020194B4
	mov r0, #1
	str r0, [r5]
	b _0201945A
_02019394:
	bl sub_02034DB8
	cmp r0, #0
	beq _0201945A
	ldr r1, [r4, #0x10]
	ldr r0, _02019480 ; =0x021D1108
	str r1, [r0]
	ldr r0, _02019484 ; =sub_02019520
	ldr r1, _02019488 ; =sub_02019548
	bl sub_021EC294
	mov r0, #1
	str r0, [r4, #0x78]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_020193B6:
	ldr r0, _0201948C ; =0x020F6288
	add r1, r4, #0
	mov r2, #0x7b
	bl sub_0200724C
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_020193CA:
	ldr r0, [r4, #8]
	bl sub_020072A8
	cmp r0, #1
	bne _0201945A
	ldr r0, [r4, #8]
	bl sub_02007278
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _020193EC
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_020193EC:
	mov r0, #8
	str r0, [r5]
	b _0201945A
_020193F2:
	ldr r0, [r4]
	ldrb r0, [r0, #0xc]
	bl sub_02087E10
	ldr r1, [r4]
	mov r2, #0x7b
	ldr r1, [r1]
	bl sub_0200724C
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_0201940E:
	ldr r0, [r4, #8]
	bl sub_020072A8
	cmp r0, #1
	bne _0201945A
	ldr r0, [r4, #8]
	bl sub_02007278
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_02019426:
	ldr r0, _0201948C ; =0x020F6288
	add r1, r4, #0
	mov r2, #0x7b
	bl sub_0200724C
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_0201943A:
	ldr r0, [r4, #8]
	bl sub_020072A8
	cmp r0, #1
	bne _0201945A
	ldr r0, [r4, #8]
	bl sub_02007278
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_02019456:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0201945A:
	ldr r0, [r4, #0x78]
	cmp r0, #1
	bne _0201947C
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0201947C
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _0201947C
	bl sub_021ECB40
	bl sub_021EC9D4
	mov r1, #3
	sub r0, r1, r0
	bl sub_0203A930
_0201947C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02019480: .word 0x021D1108
_02019484: .word sub_02019520
_02019488: .word sub_02019548
_0201948C: .word 0x020F6288
	thumb_func_end sub_0201935C

	thumb_func_start sub_02019490
sub_02019490: ; 0x02019490
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02007290
	add r4, r0, #0
	bl sub_020194F8
	ldr r0, [r4]
	bl sub_0201AB0C
	add r0, r5, #0
	bl sub_02007294
	mov r0, #0x7b
	bl sub_0201A9C4
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019490

	thumb_func_start sub_020194B4
sub_020194B4: ; 0x020194B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne _020194F2
	bl sub_020915B0
	bl sub_02091614
	mov r0, #0x7b
	bl sub_02039FD8
	ldr r1, _020194F4 ; =0x00020020
	mov r0, #0x7b
	bl sub_0201AA8C
	str r0, [r4, #0xc]
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mov r2, #0
	bl sub_020B535C
	str r0, [r4, #0x10]
	bl sub_02034D8C
	mov r0, #4
	bl sub_0201A4CC
_020194F2:
	pop {r4, pc}
	.align 2, 0
_020194F4: .word 0x00020020
	thumb_func_end sub_020194B4

	thumb_func_start sub_020194F8
sub_020194F8: ; 0x020194F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #1
	bne _0201951E
	ldr r0, [r4, #0x10]
	bl sub_020B5394
	ldr r0, [r4, #0xc]
	bl sub_0201AB0C
	bl sub_02091624
	bl sub_020915C0
	bl sub_02034DE0
	mov r0, #0
	str r0, [r4, #0x78]
_0201951E:
	pop {r4, pc}
	thumb_func_end sub_020194F8

	thumb_func_start sub_02019520
sub_02019520: ; 0x02019520
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020D3A38
	add r6, r0, #0
	ldr r0, _02019544 ; =0x021D1108
	add r1, r5, #0
	ldr r0, [r0]
	add r2, r4, #0
	bl sub_020B53A0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020D3A4C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02019544: .word 0x021D1108
	thumb_func_end sub_02019520

	thumb_func_start sub_02019548
sub_02019548: ; 0x02019548
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _02019564
	bl sub_020D3A38
	add r4, r0, #0
	ldr r0, _02019568 ; =0x021D1108
	add r1, r5, #0
	ldr r0, [r0]
	bl sub_020B5530
	add r0, r4, #0
	bl sub_020D3A4C
_02019564:
	pop {r3, r4, r5, pc}
	nop
_02019568: .word 0x021D1108
	thumb_func_end sub_02019548

	thumb_func_start sub_0201956C
sub_0201956C: ; 0x0201956C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r0, r3, #0
	mov r1, #0x10
	add r5, r2, #0
	str r3, [sp]
	bl sub_0201AA8C
	add r4, r0, #0
	str r6, [r4]
	strh r5, [r4, #8]
	ldr r0, [sp]
	lsl r2, r7, #0x10
	str r0, [r4, #0xc]
	ldrh r0, [r4, #0xa]
	ldr r1, _020195BC ; =0xFFFF8000
	lsr r3, r2, #0x10
	lsr r2, r1, #0x11
	and r0, r1
	and r2, r3
	orr r0, r2
	strh r0, [r4, #0xa]
	ldrh r2, [r4, #0xa]
	sub r0, r1, #1
	lsl r5, r5, #4
	and r0, r2
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0201AA8C
	mov r1, #0
	add r2, r5, #0
	str r0, [r4, #4]
	bl sub_020D4994
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020195BC: .word 0xFFFF8000
	thumb_func_end sub_0201956C

	thumb_func_start sub_020195C0
sub_020195C0: ; 0x020195C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	bls _020195E4
	add r4, r6, #0
_020195CE:
	ldr r0, [r5, #4]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _020195DA
	bl sub_0201AB0C
_020195DA:
	ldrh r0, [r5, #8]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blo _020195CE
_020195E4:
	ldr r0, [r5, #4]
	bl sub_0201AB0C
	add r0, r5, #0
	bl sub_0201AB0C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_020195C0

	thumb_func_start sub_020195F4
sub_020195F4: ; 0x020195F4
	push {r3, r4, r5, r6, r7, lr}
	lsl r7, r1, #4
	ldr r4, [r0, #4]
	ldr r1, [sp, #0x18]
	add r6, r3, #0
	mul r1, r6
	ldr r0, [r0, #0xc]
	add r5, r4, r7
	lsl r1, r1, #1
	str r2, [sp]
	bl sub_0201AA8C
	str r0, [r4, r7]
	ldrh r0, [r5, #4]
	mov r1, #0x3f
	bic r0, r1
	lsl r1, r6, #0x10
	lsr r2, r1, #0x10
	mov r1, #0x3f
	and r1, r2
	orr r0, r1
	strh r0, [r5, #4]
	ldrh r1, [r5, #4]
	ldr r0, _02019660 ; =0xFFFFF03F
	and r1, r0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x14
	orr r0, r1
	strh r0, [r5, #4]
	ldr r0, [sp]
	ldr r1, _02019664 ; =0xFFFF1FFF
	strb r0, [r5, #0xa]
	mov r0, #0
	strb r0, [r5, #6]
	strb r0, [r5, #7]
	ldrh r2, [r5, #4]
	and r1, r2
	strh r1, [r5, #4]
	mov r1, #1
	ldrh r2, [r5, #4]
	lsl r1, r1, #0xc
	orr r1, r2
	strh r1, [r5, #4]
	strb r0, [r5, #0xc]
	mov r1, #0x20
	strb r1, [r5, #0xd]
	strb r0, [r5, #0xe]
	mov r0, #0x18
	strb r0, [r5, #0xf]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02019660: .word 0xFFFFF03F
_02019664: .word 0xFFFF1FFF
	thumb_func_end sub_020195F4

	thumb_func_start sub_02019668
sub_02019668: ; 0x02019668
	push {r4, lr}
	ldr r3, [r0, #4]
	lsl r1, r1, #4
	add r4, r3, r1
	add r0, r2, #0
	ldrh r2, [r4, #4]
	ldr r1, [r3, r1]
	lsl r3, r2, #0x1a
	lsl r2, r2, #0x14
	lsr r3, r3, #0x1a
	lsr r2, r2, #0x1a
	mul r2, r3
	lsl r2, r2, #1
	bl sub_020D47B8
	pop {r4, pc}
	thumb_func_end sub_02019668

	thumb_func_start sub_02019688
sub_02019688: ; 0x02019688
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x18]
	add r3, sp, #4
	bl sub_020079D8
	ldr r2, [sp, #4]
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, #0xc
	bl sub_02019668
	add r0, r6, #0
	bl sub_0201AB0C
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02019688

	thumb_func_start sub_020196B8
sub_020196B8: ; 0x020196B8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x18]
	add r3, sp, #4
	bl sub_02007C2C
	ldr r2, [sp, #4]
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, #0xc
	bl sub_02019668
	add r0, r6, #0
	bl sub_0201AB0C
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020196B8

	thumb_func_start sub_020196E8
sub_020196E8: ; 0x020196E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x1c]
	add r0, r2, #0
	ldr r2, [sp, #0x1c]
	lsl r1, r1, #4
	ldr r2, [r2, #4]
	add r4, r2, r1
	strb r0, [r4, #6]
	strb r3, [r4, #7]
	mov r1, #0xd
	ldrsb r1, [r4, r1]
	str r1, [sp, #0x28]
	cmp r0, r1
	bge _020197E6
	mov r1, #0xf
	ldrsb r1, [r4, r1]
	str r1, [sp, #0x20]
	cmp r3, r1
	bge _020197E6
	ldrh r1, [r4, #4]
	lsl r2, r1, #0x1a
	lsr r2, r2, #0x1a
	str r2, [sp, #0x2c]
	add r7, r0, r2
	mov r2, #0xc
	ldrsb r2, [r4, r2]
	mov ip, r2
	cmp r7, r2
	blt _020197E6
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1a
	str r1, [sp, #0x24]
	add r6, r3, r1
	mov r1, #0xe
	ldrsb r2, [r4, r1]
	cmp r6, r2
	blt _020197E6
	lsl r1, r0, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x34]
	ldr r1, [sp, #0x2c]
	mov r5, #0
	lsl r1, r1, #0x18
	str r5, [sp, #0x30]
	mov r5, ip
	lsr r1, r1, #0x18
	cmp r0, r5
	bge _02019762
	mov r5, ip
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	str r5, [sp, #0x34]
	mov r5, ip
	sub r0, r5, r0
	sub r1, r1, r0
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	str r0, [sp, #0x30]
_02019762:
	ldr r0, [sp, #0x28]
	cmp r7, r0
	blt _02019770
	sub r0, r7, r0
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_02019770:
	lsl r0, r3, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x24]
	mov r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r3, r2
	bge _02019790
	lsl r5, r2, #0x18
	sub r2, r2, r3
	sub r0, r0, r2
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r7, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r2, #0x18
_02019790:
	ldr r2, [sp, #0x20]
	cmp r6, r2
	blt _0201979E
	sub r2, r6, r2
	sub r0, r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_0201979E:
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4]
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldrb r1, [r4, #0xa]
	ldr r0, [r0]
	ldr r2, [sp, #0x34]
	bl sub_0201C4EC
	ldr r2, [sp, #0x1c]
	ldr r0, [sp, #0x1c]
	ldrh r2, [r2, #0xa]
	ldrb r1, [r4, #0xa]
	ldr r0, [r0]
	lsl r2, r2, #0x11
	lsr r3, r2, #0xf
	ldr r2, _020197EC ; =0x020F6298
	ldr r2, [r2, r3]
	blx r2
	ldrh r1, [r4, #4]
	ldr r0, _020197F0 ; =0xFFFFEFFF
	and r0, r1
	strh r0, [r4, #4]
_020197E6:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020197EC: .word 0x020F6298
_020197F0: .word 0xFFFFEFFF
	thumb_func_end sub_020196E8

	thumb_func_start sub_020197F4
sub_020197F4: ; 0x020197F4
	push {r4, lr}
	ldr r2, [r0, #4]
	lsl r3, r1, #4
	add r4, r2, r3
	mov r2, #6
	mov r3, #7
	ldrsb r2, [r4, r2]
	ldrsb r3, [r4, r3]
	bl sub_020196E8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020197F4

	thumb_func_start sub_0201980C
sub_0201980C: ; 0x0201980C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r2, [r0, #4]
	str r0, [sp, #0x10]
	lsl r0, r1, #4
	add r4, r2, r0
	mov r0, #1
	ldrh r1, [r4, #4]
	lsl r0, r0, #0xc
	orr r0, r1
	strh r0, [r4, #4]
	mov r0, #0xd
	ldrsb r6, [r4, r0]
	mov r0, #6
	ldrsb r0, [r4, r0]
	cmp r0, r6
	bge _020198F4
	mov r1, #0xf
	ldrsb r1, [r4, r1]
	str r1, [sp, #0x28]
	mov r1, #7
	ldrsb r3, [r4, r1]
	ldr r1, [sp, #0x28]
	cmp r3, r1
	bge _020198F4
	ldrh r2, [r4, #4]
	lsl r1, r2, #0x1a
	lsr r1, r1, #0x1a
	str r1, [sp, #0x24]
	add r7, r0, r1
	mov r1, #0xc
	ldrsb r1, [r4, r1]
	mov ip, r1
	cmp r7, r1
	blt _020198F4
	lsl r1, r2, #0x14
	lsr r1, r1, #0x1a
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	str r3, [sp, #0x18]
	add r2, r3, r1
	mov r1, #0xe
	ldrsb r1, [r4, r1]
	str r1, [sp, #0x14]
	cmp r2, r1
	blt _020198F4
	ldr r1, [sp, #0x24]
	mov r5, ip
	lsl r1, r1, #0x18
	str r0, [sp, #0x20]
	asr r1, r1, #0x18
	cmp r0, r5
	bge _02019884
	mov r5, ip
	str r5, [sp, #0x20]
	mov r5, ip
	sub r0, r5, r0
	sub r0, r1, r0
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
_02019884:
	cmp r7, r6
	blt _02019890
	sub r0, r7, r6
	sub r0, r1, r0
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
_02019890:
	ldr r0, [sp, #0x1c]
	ldr r5, [sp, #0x14]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	cmp r3, r5
	bge _020198AA
	add r3, r5, #0
	add r6, r5, #0
	ldr r5, [sp, #0x18]
	sub r5, r6, r5
	sub r0, r0, r5
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
_020198AA:
	ldr r5, [sp, #0x28]
	cmp r2, r5
	blt _020198B8
	sub r2, r2, r5
	sub r0, r0, r2
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
_020198B8:
	lsl r2, r3, #0x18
	lsr r2, r2, #0x18
	lsl r1, r1, #0x18
	str r2, [sp]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x20]
	ldrb r1, [r4, #0xa]
	lsl r3, r3, #0x18
	ldr r0, [r0]
	mov r2, #0
	lsr r3, r3, #0x18
	bl sub_0201C8C4
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldrh r2, [r2, #0xa]
	ldrb r1, [r4, #0xa]
	ldr r0, [r0]
	lsl r2, r2, #0x11
	lsr r3, r2, #0xf
	ldr r2, _020198F8 ; =0x020F6298
	ldr r2, [r2, r3]
	blx r2
_020198F4:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020198F8: .word 0x020F6298
	thumb_func_end sub_0201980C

	thumb_func_start sub_020198FC
sub_020198FC: ; 0x020198FC
	push {r3, r4}
	ldr r4, [r0, #4]
	lsl r1, r1, #4
	add r1, r4, r1
	strb r2, [r1, #8]
	ldr r2, _0201992C ; =0xFFFFFFF8
	strb r3, [r1, #9]
	add r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r1, #0xb]
	ldrh r3, [r1, #4]
	ldr r2, _02019930 ; =0xFFFF1FFF
	and r3, r2
	mov r2, #2
	lsl r2, r2, #0xc
	orr r3, r2
	strh r3, [r1, #4]
	ldrh r3, [r0, #0xa]
	lsl r1, r2, #2
	orr r1, r3
	strh r1, [r0, #0xa]
	pop {r3, r4}
	bx lr
	nop
_0201992C: .word 0xFFFFFFF8
_02019930: .word 0xFFFF1FFF
	thumb_func_end sub_020198FC

	thumb_func_start sub_02019934
sub_02019934: ; 0x02019934
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r1, [r5, #0xa]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	beq _02019970
	ldr r0, _02019974 ; =0xFFFF7FFF
	add r6, r5, #0
	and r0, r1
	strh r0, [r5, #0xa]
	ldrh r0, [r5, #8]
	add r6, #0xa
	mov r4, #0
	cmp r0, #0
	bls _02019970
	mov r7, #2
	lsl r7, r7, #0xe
_02019956:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02019978
	cmp r0, #1
	bne _02019968
	ldrh r0, [r6]
	orr r0, r7
	strh r0, [r6]
_02019968:
	ldrh r0, [r5, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _02019956
_02019970:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02019974: .word 0xFFFF7FFF
	thumb_func_end sub_02019934

	thumb_func_start sub_02019978
sub_02019978: ; 0x02019978
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r2, [r5, #4]
	lsl r4, r6, #4
	add r2, r2, r4
	ldrh r2, [r2, #4]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1d
	bne _02019990
	mov r0, #0
	pop {r4, r5, r6, pc}
_02019990:
	bl sub_0201980C
	ldr r2, [r5, #4]
	add r1, r2, #6
	add r3, r2, r4
	mov r2, #8
	ldrsb r0, [r1, r4]
	ldrsb r2, [r3, r2]
	add r0, r0, r2
	strb r0, [r1, r4]
	ldr r2, [r5, #4]
	add r1, r2, #7
	add r3, r2, r4
	mov r2, #9
	ldrsb r0, [r1, r4]
	ldrsb r2, [r3, r2]
	add r0, r0, r2
	strb r0, [r1, r4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020197F4
	ldr r1, [r5, #4]
	add r1, #0xb
	ldrb r0, [r1, r4]
	sub r0, r0, #1
	strb r0, [r1, r4]
	ldr r0, [r5, #4]
	add r2, r0, r4
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _020199DC
	ldrh r1, [r2, #4]
	ldr r0, _020199E0 ; =0xFFFF1FFF
	and r0, r1
	strh r0, [r2, #4]
	mov r0, #0
	pop {r4, r5, r6, pc}
_020199DC:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_020199E0: .word 0xFFFF1FFF
	thumb_func_end sub_02019978

	thumb_func_start sub_020199E4
sub_020199E4: ; 0x020199E4
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r0, r2, r0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1d
	bx lr
	.align 2, 0
	thumb_func_end sub_020199E4

	thumb_func_start sub_020199F4
sub_020199F4: ; 0x020199F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r1, r2, r0
	ldr r0, [r2, r0]
	add r7, r3, #0
	mov ip, r0
	ldrh r0, [r1, #4]
	add r1, sp, #0x10
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	mov lr, r0
	ldrb r0, [r1, #0x14]
	add r0, r7, r0
	str r0, [sp, #4]
	cmp r7, r0
	bge _02019A58
	ldrb r0, [r1, #0x18]
	ldrb r1, [r1, #0x10]
	ldr r6, _02019A5C ; =0x00000FFF
	lsl r5, r0, #0xc
	ldr r0, [sp]
	add r2, r0, r1
_02019A26:
	ldr r1, [sp]
	add r0, r1, #0
	cmp r0, r2
	bge _02019A4C
	mov r0, lr
	mul r0, r7
	lsl r3, r0, #1
	mov r0, ip
	add r3, r0, r3
_02019A38:
	lsl r0, r1, #1
	ldrh r4, [r3, r0]
	and r4, r6
	orr r4, r5
	strh r4, [r3, r0]
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, r2
	blt _02019A38
_02019A4C:
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, [sp, #4]
	cmp r7, r0
	blt _02019A26
_02019A58:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02019A5C: .word 0x00000FFF
	thumb_func_end sub_020199F4

	thumb_func_start sub_02019A60
sub_02019A60: ; 0x02019A60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	lsl r0, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [sp]
	mov r6, #0
	ldr r1, [r0, #4]
	ldr r0, [sp, #0xc]
	add r3, r1, r0
	ldr r0, [r1, r0]
	mov ip, r0
	ldrh r0, [r3, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	mov lr, r0
	ldrh r0, [r2, #0xa]
	lsl r0, r0, #0x11
	lsr r7, r0, #0x11
	ldrb r0, [r2, #9]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r0, [r2, #8]
	cmp r0, #0
	ble _02019B04
_02019A94:
	ldrb r0, [r2, #6]
	add r3, r0, r6
	ldr r0, [sp]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1a
	cmp r3, r0
	bge _02019B04
	ldrb r0, [r2, #7]
	mov r1, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _02019AF0
_02019AB4:
	ldr r0, [sp]
	ldrb r5, [r2, #5]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0xc]
	add r4, r5, r1
	add r0, r3, r0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	cmp r4, r0
	bge _02019AF0
	ldr r0, [sp, #8]
	add r3, r7, r1
	add r0, r0, r3
	ldrb r3, [r2, #6]
	add r4, r3, r6
	mov r3, lr
	mul r4, r3
	add r3, r5, r4
	add r3, r1, r3
	lsl r4, r3, #1
	mov r3, ip
	strh r0, [r3, r4]
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrb r0, [r2, #7]
	str r0, [sp, #4]
	cmp r1, r0
	blt _02019AB4
_02019AF0:
	ldr r0, [sp, #4]
	add r0, r7, r0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldrb r0, [r2, #8]
	cmp r6, r0
	blt _02019A94
_02019B04:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02019A60

	thumb_func_start sub_02019B08
sub_02019B08: ; 0x02019B08
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	ldr r0, [r2, r0]
	bx lr
	thumb_func_end sub_02019B08

	thumb_func_start sub_02019B10
sub_02019B10: ; 0x02019B10
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r0, r2, r0
	ldrb r0, [r0, #0xa]
	bx lr
	.align 2, 0
	thumb_func_end sub_02019B10

	thumb_func_start sub_02019B1C
sub_02019B1C: ; 0x02019B1C
	push {r4, r5}
	cmp r2, #0
	beq _02019B2E
	ldr r5, [r0, #4]
	lsl r4, r1, #4
	add r5, r5, r4
	mov r4, #6
	ldrsb r4, [r5, r4]
	strb r4, [r2]
_02019B2E:
	cmp r3, #0
	beq _02019B3E
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r1, r2, r0
	mov r0, #7
	ldrsb r0, [r1, r0]
	strb r0, [r3]
_02019B3E:
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end sub_02019B1C

	thumb_func_start sub_02019B44
sub_02019B44: ; 0x02019B44
	push {r4, r5}
	cmp r2, #0
	beq _02019B58
	ldr r5, [r0, #4]
	lsl r4, r1, #4
	add r4, r5, r4
	ldrh r4, [r4, #4]
	lsl r4, r4, #0x1a
	lsr r4, r4, #0x1a
	strh r4, [r2]
_02019B58:
	cmp r3, #0
	beq _02019B6A
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r0, r2, r0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1a
	strh r0, [r3]
_02019B6A:
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end sub_02019B44

	thumb_func_start sub_02019B70
sub_02019B70: ; 0x02019B70
	push {r3, r4}
	ldr r4, [r0, #4]
	lsl r1, r1, #4
	add r4, r4, r1
	strb r2, [r4, #0xc]
	ldr r2, [r0, #4]
	add r2, r2, r1
	strb r3, [r2, #0xd]
	ldr r3, _02019B9C ; =0xFFFFFFF8
	mov r2, #0x10
	add r3, sp
	ldrsb r4, [r3, r2]
	ldr r2, [r0, #4]
	add r2, r2, r1
	strb r4, [r2, #0xe]
	mov r2, #0x14
	ldr r0, [r0, #4]
	ldrsb r2, [r3, r2]
	add r0, r0, r1
	strb r2, [r0, #0xf]
	pop {r3, r4}
	bx lr
	.align 2, 0
_02019B9C: .word 0xFFFFFFF8
	thumb_func_end sub_02019B70

	thumb_func_start sub_02019BA0
sub_02019BA0: ; 0x02019BA0
	bx lr
	.align 2, 0
	thumb_func_end sub_02019BA0

	thumb_func_start sub_02019BA4
sub_02019BA4: ; 0x02019BA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [sp, #0x20]
	mov r1, #0x20
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201AA8C
	str r5, [r0]
	str r4, [r0, #4]
	str r6, [r0, #0x18]
	str r7, [r0, #0x1c]
	mov r2, #0
	ldr r1, [sp, #0x18]
	strb r2, [r0, #0xc]
	str r1, [r0, #8]
	add r1, sp, #8
	ldrb r1, [r1, #0x14]
	strb r1, [r0, #0xd]
	mov r1, #0xff
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	sub r1, r2, #1
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02019BA4

	thumb_func_start sub_02019BDC
sub_02019BDC: ; 0x02019BDC
	ldr r3, _02019BE0 ; =sub_0201AB0C
	bx r3
	.align 2, 0
_02019BE0: .word sub_0201AB0C
	thumb_func_end sub_02019BDC

	thumb_func_start sub_02019BE4
sub_02019BE4: ; 0x02019BE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	sub r7, r4, #1
_02019BF0:
	ldr r2, [r5]
	lsl r1, r4, #2
	ldrb r0, [r2, r1]
	cmp r0, #0xff
	beq _02019C1A
	add r0, r2, r1
	bl sub_02025320
	cmp r0, #1
	bne _02019C12
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02019E4C
	cmp r0, r7
	bne _02019D0E
	mov r6, #1
_02019C12:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _02019BF0
_02019C1A:
	cmp r6, #0
	beq _02019C26
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02019C26:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _02019C4C
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _02019C4C
	ldr r0, _02019D14 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r1, r0
	beq _02019C46
	add r0, r5, #0
	bl sub_02019E98
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02019C46:
	add sp, #0x10
	sub r0, #0xf4
	pop {r3, r4, r5, r6, r7, pc}
_02019C4C:
	ldr r0, _02019D14 ; =0x021D110C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _02019C72
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	b _02019CE0
_02019C72:
	mov r1, #0x80
	tst r1, r0
	beq _02019C96
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #1
	str r0, [sp, #0xc]
	b _02019CE0
_02019C96:
	mov r1, #0x20
	tst r1, r0
	beq _02019CBA
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #2
	str r0, [sp, #0xc]
	b _02019CE0
_02019CBA:
	mov r1, #0x10
	tst r0, r1
	beq _02019CDE
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #3
	str r0, [sp, #0xc]
	b _02019CE0
_02019CDE:
	mov r2, #0xff
_02019CE0:
	cmp r2, #0xff
	beq _02019CF0
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_02019EB8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02019CF0:
	ldr r0, _02019D14 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02019D00
	add sp, #0x10
	ldrb r0, [r5, #0xd]
	pop {r3, r4, r5, r6, r7, pc}
_02019D00:
	mov r0, #2
	tst r1, r0
	beq _02019D0C
	add sp, #0x10
	sub r0, r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_02019D0C:
	sub r0, r0, #3
_02019D0E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02019D14: .word 0x021D110C
	thumb_func_end sub_02019BE4

	thumb_func_start sub_02019D18
sub_02019D18: ; 0x02019D18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	sub r7, r4, #1
_02019D24:
	ldr r2, [r5]
	lsl r1, r4, #2
	ldrb r0, [r2, r1]
	cmp r0, #0xff
	beq _02019D4E
	add r0, r2, r1
	bl sub_02025320
	cmp r0, #1
	bne _02019D46
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02019E4C
	cmp r0, r7
	bne _02019E42
	mov r6, #1
_02019D46:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _02019D24
_02019D4E:
	cmp r6, #0
	beq _02019D5A
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02019D5A:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _02019D80
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _02019D80
	ldr r0, _02019E48 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r1, r0
	beq _02019D7A
	add r0, r5, #0
	bl sub_02019E98
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02019D7A:
	add sp, #0x10
	sub r0, #0xf4
	pop {r3, r4, r5, r6, r7, pc}
_02019D80:
	ldr r0, _02019E48 ; =0x021D110C
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	beq _02019DA6
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	b _02019E14
_02019DA6:
	mov r1, #0x80
	tst r1, r0
	beq _02019DCA
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #1
	str r0, [sp, #0xc]
	b _02019E14
_02019DCA:
	mov r1, #0x20
	tst r1, r0
	beq _02019DEE
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #2
	str r0, [sp, #0xc]
	b _02019E14
_02019DEE:
	mov r1, #0x10
	tst r0, r1
	beq _02019E12
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #3
	str r0, [sp, #0xc]
	b _02019E14
_02019E12:
	mov r2, #0xff
_02019E14:
	cmp r2, #0xff
	beq _02019E24
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_02019EB8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02019E24:
	ldr r0, _02019E48 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02019E34
	add sp, #0x10
	ldrb r0, [r5, #0xd]
	pop {r3, r4, r5, r6, r7, pc}
_02019E34:
	mov r0, #2
	tst r1, r0
	beq _02019E40
	add sp, #0x10
	sub r0, r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_02019E40:
	sub r0, r0, #3
_02019E42:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02019E48: .word 0x021D110C
	thumb_func_end sub_02019D18

	thumb_func_start sub_02019E4C
sub_02019E4C: ; 0x02019E4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x10
	add r4, r1, #0
	bl sub_0201A06C
	cmp r0, #1
	bne _02019E90
	strb r4, [r5, #0xd]
	mov r0, #0xff
	strb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _02019E80
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _02019E80
	mov r0, #0
	str r0, [r5, #8]
	ldr r3, [r5, #0x18]
	ldrb r1, [r5, #0xd]
	ldrb r2, [r5, #0xe]
	ldr r0, [r5, #0x1c]
	ldr r3, [r3, #4]
	blx r3
_02019E80:
	ldr r3, [r5, #0x18]
	ldrb r1, [r5, #0xd]
	ldrb r2, [r5, #0xe]
	ldr r0, [r5, #0x1c]
	ldr r3, [r3, #0xc]
	blx r3
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02019E90:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02019E4C

	thumb_func_start sub_02019E98
sub_02019E98: ; 0x02019E98
	push {r3, lr}
	add r3, r0, #0
	mov r0, #1
	str r0, [r3, #8]
	mov r0, #0xff
	strb r0, [r3, #0xe]
	strb r0, [r3, #0xf]
	ldr r0, [r3, #0x1c]
	ldrb r1, [r3, #0xd]
	ldrb r2, [r3, #0xe]
	ldr r3, [r3, #0x18]
	ldr r3, [r3]
	blx r3
	mov r0, #3
	mvn r0, r0
	pop {r3, pc}
	thumb_func_end sub_02019E98

	thumb_func_start sub_02019EB8
sub_02019EB8: ; 0x02019EB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x80
	add r1, r4, #0
	tst r1, r0
	beq _02019EDA
	ldrb r1, [r5, #0xf]
	cmp r1, #0xff
	beq _02019ED4
	add r4, r1, #0
	b _02019EDA
_02019ED4:
	eor r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02019EDA:
	mov r0, #1
	str r0, [sp, #0xc]
	mov r7, #0
_02019EE0:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r1, r2, r1
	mov r0, #1
	lsl r0, r1
	lsr r1, r4, #5
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x10]
	tst r0, r1
	bne _02019F2A
	str r7, [sp, #0xc]
	str r7, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	bl sub_02020A24
	mov r1, #0x7f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r4
	beq _02019F22
	ldrb r0, [r5, #0xd]
	cmp r1, r0
	bne _02019F26
_02019F22:
	ldrb r4, [r5, #0xd]
	b _02019F2A
_02019F26:
	add r4, r1, #0
	b _02019EE0
_02019F2A:
	ldrb r0, [r5, #0xd]
	cmp r0, r4
	beq _02019F6A
	ldr r1, [r5, #4]
	lsl r0, r4, #3
	add r0, r1, r0
	add r1, r6, #0
	bl sub_0201A020
	cmp r0, #1
	bne _02019F4C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02019F4C
	ldrb r0, [r5, #0xd]
	strb r0, [r5, #0xf]
	b _02019F50
_02019F4C:
	mov r0, #0xff
	strb r0, [r5, #0xf]
_02019F50:
	ldrb r0, [r5, #0xd]
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xd]
	ldr r3, [r5, #0x18]
	ldrb r1, [r5, #0xd]
	ldrb r2, [r5, #0xe]
	ldr r0, [r5, #0x1c]
	ldr r3, [r3, #8]
	blx r3
	mov r0, #2
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02019F6A:
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02019EB8

	thumb_func_start sub_02019F74
sub_02019F74: ; 0x02019F74
	ldrb r0, [r0, #0xd]
	bx lr
	thumb_func_end sub_02019F74

	thumb_func_start sub_02019F78
sub_02019F78: ; 0x02019F78
	ldrb r0, [r0, #0xf]
	bx lr
	thumb_func_end sub_02019F78

	thumb_func_start sub_02019F7C
sub_02019F7C: ; 0x02019F7C
	strb r1, [r0, #0xd]
	mov r1, #0xff
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	bx lr
	.align 2, 0
	thumb_func_end sub_02019F7C

	thumb_func_start sub_02019F88
sub_02019F88: ; 0x02019F88
	strb r1, [r0, #0xd]
	strb r2, [r0, #0xe]
	strb r3, [r0, #0xf]
	bx lr
	thumb_func_end sub_02019F88

	thumb_func_start sub_02019F90
sub_02019F90: ; 0x02019F90
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02019F90

	thumb_func_start sub_02019F94
sub_02019F94: ; 0x02019F94
	push {r3, lr}
	add r3, r0, #0
	str r1, [r3, #8]
	cmp r1, #1
	bne _02019FB4
	mov r0, #0xff
	strb r0, [r3, #0xe]
	strb r0, [r3, #0xf]
	ldr r0, [r3, #0x1c]
	ldrb r1, [r3, #0xd]
	ldr r3, [r3, #0x18]
	mov r2, #0
	ldr r3, [r3]
	mvn r2, r2
	blx r3
	pop {r3, pc}
_02019FB4:
	ldr r0, [r3, #0x1c]
	ldrb r1, [r3, #0xd]
	ldr r3, [r3, #0x18]
	mov r2, #0
	ldr r3, [r3, #4]
	mvn r2, r2
	blx r3
	pop {r3, pc}
	thumb_func_end sub_02019F94

	thumb_func_start sub_02019FC4
sub_02019FC4: ; 0x02019FC4
	mov r1, #0
	mvn r1, r1
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end sub_02019FC4

	thumb_func_start sub_02019FD0
sub_02019FD0: ; 0x02019FD0
	push {r4, r5}
	mov r4, #1
	lsr r2, r1, #5
	mov r3, #0x1f
	and r1, r3
	add r5, r4, #0
	lsl r5, r1
	add r0, #0x10
	lsl r2, r2, #2
	ldr r4, [r0, r2]
	add r1, r5, #0
	tst r1, r4
	beq _02019FF4
	sub r3, #0x20
	add r1, r5, #0
	eor r1, r3
	and r1, r4
	str r1, [r0, r2]
_02019FF4:
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02019FD0

	thumb_func_start sub_02019FF8
sub_02019FF8: ; 0x02019FF8
	push {r3, r4}
	mov r3, #0x1f
	lsr r2, r1, #5
	mov r4, #1
	and r1, r3
	lsl r4, r1
	add r0, #0x10
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	add r3, r4, #0
	tst r3, r1
	bne _0201A014
	eor r1, r4
	str r1, [r0, r2]
_0201A014:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02019FF8

	thumb_func_start sub_0201A018
sub_0201A018: ; 0x0201A018
	ldr r2, [r0, #4]
	lsl r0, r1, #3
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0201A018

	thumb_func_start sub_0201A020
sub_0201A020: ; 0x0201A020
	cmp r1, #3
	bhi _0201A068
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201A030: ; jump table
	.short _0201A038 - _0201A030 - 2 ; case 0
	.short _0201A044 - _0201A030 - 2 ; case 1
	.short _0201A050 - _0201A030 - 2 ; case 2
	.short _0201A05C - _0201A030 - 2 ; case 3
_0201A038:
	ldrb r1, [r0, #5]
	mov r0, #0x80
	tst r0, r1
	beq _0201A068
	mov r0, #1
	bx lr
_0201A044:
	ldrb r1, [r0, #4]
	mov r0, #0x80
	tst r0, r1
	beq _0201A068
	mov r0, #1
	bx lr
_0201A050:
	ldrb r1, [r0, #7]
	mov r0, #0x80
	tst r0, r1
	beq _0201A068
	mov r0, #1
	bx lr
_0201A05C:
	ldrb r1, [r0, #6]
	mov r0, #0x80
	tst r0, r1
	beq _0201A068
	mov r0, #1
	bx lr
_0201A068:
	mov r0, #0
	bx lr
	thumb_func_end sub_0201A020

	thumb_func_start sub_0201A06C
sub_0201A06C: ; 0x0201A06C
	push {r3, r4}
	mov r3, #0x1f
	mov r2, #1
	and r3, r1
	lsr r1, r1, #5
	add r4, r2, #0
	lsl r1, r1, #2
	lsl r4, r3
	ldr r0, [r0, r1]
	tst r0, r4
	bne _0201A084
	mov r2, #0
_0201A084:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0201A06C

	thumb_func_start sub_0201A08C
sub_0201A08C: ; 0x0201A08C
	push {r3, lr}
	ldr r3, _0201A0B4 ; =OSi_IntrTable
	ldr r1, _0201A0B8 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	mov r0, #3
	bl sub_020D422C
	ldr r0, _0201A0BC ; =0x021D110C
	ldr r0, [r0, #0x1c]
	bl sub_0201F880
	ldr r0, _0201A0BC ; =0x021D110C
	ldr r1, [r0, #0x30]
	add r1, r1, #1
	str r1, [r0, #0x30]
	pop {r3, pc}
	nop
_0201A0B4: .word OSi_IntrTable
_0201A0B8: .word 0x00003FF8
_0201A0BC: .word 0x021D110C
	thumb_func_end sub_0201A08C

	thumb_func_start sub_0201A0C0
sub_0201A0C0: ; 0x0201A0C0
	ldr r3, _0201A0D4 ; =OSi_IntrTable
	ldr r1, _0201A0D8 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	ldr r3, _0201A0DC ; =sub_020D422C
	mov r0, #3
	bx r3
	nop
_0201A0D4: .word OSi_IntrTable
_0201A0D8: .word 0x00003FF8
_0201A0DC: .word sub_020D422C
	thumb_func_end sub_0201A0C0

	thumb_func_start sub_0201A0E0
sub_0201A0E0: ; 0x0201A0E0
	push {r3, lr}
	mov r0, #1
	bl sub_020D1204
	ldr r1, _0201A0F8 ; =sub_0201A0C0
	mov r0, #1
	bl sub_020D1004
	mov r0, #1
	bl sub_020D11D4
	pop {r3, pc}
	.align 2, 0
_0201A0F8: .word sub_0201A0C0
	thumb_func_end sub_0201A0E0

	thumb_func_start sub_0201A0FC
sub_0201A0FC: ; 0x0201A0FC
	ldr r2, _0201A104 ; =0x021D110C
	str r0, [r2]
	str r1, [r2, #4]
	bx lr
	.align 2, 0
_0201A104: .word 0x021D110C
	thumb_func_end sub_0201A0FC

	thumb_func_start sub_0201A108
sub_0201A108: ; 0x0201A108
	push {r3, lr}
	mov r0, #0
	bl sub_0201A16C
	ldr r0, _0201A11C ; =0x021D110C
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, pc}
	nop
_0201A11C: .word 0x021D110C
	thumb_func_end sub_0201A108

	thumb_func_start sub_0201A120
sub_0201A120: ; 0x0201A120
	push {r3, lr}
	cmp r0, #0
	bne _0201A138
	mov r0, #0
	bl sub_0201A16C
	ldr r0, _0201A154 ; =0x021D110C
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	mov r0, #1
	pop {r3, pc}
_0201A138:
	ldr r2, _0201A154 ; =0x021D110C
	ldr r3, [r2, #8]
	cmp r3, #0
	bne _0201A14E
	str r1, [r2, #0xc]
	str r0, [r2, #8]
	mov r0, #1
	bl sub_0201A16C
	mov r0, #1
	pop {r3, pc}
_0201A14E:
	mov r0, #0
	pop {r3, pc}
	nop
_0201A154: .word 0x021D110C
	thumb_func_end sub_0201A120

	thumb_func_start sub_0201A158
sub_0201A158: ; 0x0201A158
	push {r3, lr}
	ldr r0, _0201A168 ; =0x021D110C
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0201A166
	ldr r0, [r0, #0xc]
	blx r1
_0201A166:
	pop {r3, pc}
	.align 2, 0
_0201A168: .word 0x021D110C
	thumb_func_end sub_0201A158

	thumb_func_start sub_0201A16C
sub_0201A16C: ; 0x0201A16C
	push {r3, lr}
	ldr r2, _0201A1AC ; =0x04000208
	ldrh r1, [r2]
	mov r1, #0
	strh r1, [r2]
	cmp r0, #0
	bne _0201A18A
	ldr r0, [r2, #8]
	mov r0, #2
	bl sub_020D1204
	mov r0, #0
	bl sub_020CD910
	b _0201A1A0
_0201A18A:
	ldr r0, [r2, #8]
	ldr r1, _0201A1B0 ; =sub_0201A158
	mov r0, #2
	bl sub_020D1004
	mov r0, #2
	bl sub_020D11D4
	mov r0, #1
	bl sub_020CD910
_0201A1A0:
	ldr r1, _0201A1AC ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	pop {r3, pc}
	nop
_0201A1AC: .word 0x04000208
_0201A1B0: .word sub_0201A158
	thumb_func_end sub_0201A16C

	thumb_func_start sub_0201A1B4
sub_0201A1B4: ; 0x0201A1B4
	push {r3, lr}
	sub sp, #0x30
	add r0, sp, #0x10
	bl sub_020D3E78
	add r0, sp, #0
	add r1, sp, #0x10
	mov r2, #0x20
	bl sub_020E3758
	mov r3, #0
	add r1, r3, #0
	add r2, sp, #0
_0201A1CE:
	ldrb r0, [r2]
	add r1, r1, #1
	add r2, r2, #1
	add r3, r3, r0
	cmp r1, #0x10
	blo _0201A1CE
	lsl r0, r3, #0x18
	lsr r3, r0, #0x18
	mov r0, #3
	tst r0, r3
	beq _0201A1EE
	mov r0, #3
_0201A1E6:
	add r3, r3, #1
	add r1, r3, #0
	tst r1, r0
	bne _0201A1E6
_0201A1EE:
	ldr r0, _0201A1FC ; =0x020F62A4
	mov r1, #4
	mov r2, #0xa1
	bl sub_0201A7BC
	add sp, #0x30
	pop {r3, pc}
	.align 2, 0
_0201A1FC: .word 0x020F62A4
	thumb_func_end sub_0201A1B4

	thumb_func_start sub_0201A200
sub_0201A200: ; 0x0201A200
	push {r3, r4, r5, lr}
	bl sub_020D290C
	bl sub_020CD784
	ldr r2, _0201A324 ; =0x04000304
	ldr r0, _0201A328 ; =0xFFFFFDF1
	ldrh r1, [r2]
	and r1, r0
	ldr r0, _0201A32C ; =0x0000020E
	orr r0, r1
	strh r0, [r2]
	bl sub_020CD7C4
	bl sub_020D33C0
	bl sub_0201A1B4
	mov r0, #0xa0
	bl sub_0201F82C
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl sub_020D2CA0
	add r1, r0, #0
	mov r0, #0xa0
	bl sub_0201F834
	ldr r1, _0201A330 ; =0x021D110C
	str r0, [r1, #0x18]
	mov r0, #0x20
	bl sub_0201F82C
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl sub_020D2CA0
	add r1, r0, #0
	mov r0, #0x20
	bl sub_0201F834
	ldr r1, _0201A330 ; =0x021D110C
	str r0, [r1, #0x1c]
	mov r0, #0x20
	bl sub_0201F82C
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl sub_020D2CA0
	add r1, r0, #0
	mov r0, #0x20
	bl sub_0201F834
	ldr r1, _0201A330 ; =0x021D110C
	str r0, [r1, #0x20]
	mov r0, #4
	bl sub_0201F82C
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl sub_020D2CA0
	add r1, r0, #0
	mov r0, #4
	bl sub_0201F834
	ldr r1, _0201A330 ; =0x021D110C
	str r0, [r1, #0x24]
	bl sub_020CD978
	ldr r2, _0201A334 ; =0x04001000
	ldr r0, _0201A338 ; =0xFFFEFFFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	ldr r2, _0201A324 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r1, _0201A33C ; =sub_0201A08C
	mov r0, #1
	bl sub_020D1004
	mov r0, #1
	bl sub_020D11D4
	mov r0, #1
	lsl r0, r0, #0x12
	bl sub_020D11D4
	ldr r1, _0201A340 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	bl sub_020CD944
	mov r0, #1
	bl sub_020D7F60
	bl sub_02027010
	mov r0, #0
	add r1, r0, #0
	bl sub_020D8728
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_020D2CA0
	add r5, r0, #0
	bne _0201A2F4
	bl GF_AssertFail
_0201A2F4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020D8728
	ldr r0, _0201A330 ; =0x021D110C
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x74]
	str r1, [r0, #0x2c]
	ldr r0, _0201A344 ; =0x021D116C
	strb r1, [r0, #9]
	mov r0, #5
	mov r1, #9
	lsl r0, r0, #8
	lsl r1, r1, #0xa
	bl sub_020DC9DC
	mov r0, #0
	bl sub_0201FFB0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0201A324: .word 0x04000304
_0201A328: .word 0xFFFFFDF1
_0201A32C: .word 0x0000020E
_0201A330: .word 0x021D110C
_0201A334: .word 0x04001000
_0201A338: .word 0xFFFEFFFF
_0201A33C: .word sub_0201A08C
_0201A340: .word 0x04000208
_0201A344: .word 0x021D116C
	thumb_func_end sub_0201A200

	thumb_func_start sub_0201A348
sub_0201A348: ; 0x0201A348
	push {r3, lr}
	ldr r0, _0201A398 ; =0x000001FF
	bl sub_020CE630
	mov r1, #0x1a
	mov r2, #0x29
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0xe
	bl sub_020D4858
	bl sub_020CEB60
	mov r1, #7
	mov r2, #1
	mov r0, #0xc0
	lsl r1, r1, #0x18
	lsl r2, r2, #0xa
	bl sub_020D4858
	mov r2, #1
	ldr r1, _0201A39C ; =0x07000400
	mov r0, #0xc0
	lsl r2, r2, #0xa
	bl sub_020D4858
	mov r1, #5
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0xa
	bl sub_020D4858
	mov r2, #1
	ldr r1, _0201A3A0 ; =0x05000400
	mov r0, #0
	lsl r2, r2, #0xa
	bl sub_020D4858
	pop {r3, pc}
	.align 2, 0
_0201A398: .word 0x000001FF
_0201A39C: .word 0x07000400
_0201A3A0: .word 0x05000400
	thumb_func_end sub_0201A348

	thumb_func_start sub_0201A3A4
sub_0201A3A4: ; 0x0201A3A4
	push {r4, r5, r6, lr}
	sub sp, #0x48
	add r6, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	bl sub_020D7F98
	add r0, sp, #0
	add r1, r4, #0
	bl sub_020D8278
	cmp r0, #0
	beq _0201A3F0
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r5, r1, r0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0201AA8C
	add r4, r0, #0
	beq _0201A3E8
	add r0, sp, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_020D83CC
	cmp r5, r0
	beq _0201A3E8
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0201AB80
	mov r4, #0
_0201A3E8:
	add r0, sp, #0
	bl sub_020D82C0
	b _0201A3F2
_0201A3F0:
	mov r4, #0
_0201A3F2:
	add r0, r4, #0
	add sp, #0x48
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201A3A4

	thumb_func_start sub_0201A3F8
sub_0201A3F8: ; 0x0201A3F8
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r5, r0, #0
	add r0, sp, #0
	add r4, r1, #0
	bl sub_020D7F98
	add r0, sp, #0
	add r1, r5, #0
	bl sub_020D8278
	cmp r0, #0
	beq _0201A42A
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r2, r1, r0
	ldr r1, [r4]
	cmp r1, #0
	beq _0201A424
	add r0, sp, #0
	bl sub_020D83CC
_0201A424:
	add r0, sp, #0
	bl sub_020D82C0
_0201A42A:
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0201A3F8

	thumb_func_start sub_0201A430
sub_0201A430: ; 0x0201A430
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r5, _0201A454 ; =0x021D157C
	mov r4, #0x7f
	sub r7, r6, #1
_0201A43A:
	ldr r0, [r5]
	cmp r0, #0
	beq _0201A448
	bl sub_0201AB0C
	str r6, [r5]
	str r6, [r5, #4]
_0201A448:
	sub r4, r4, #1
	sub r5, #8
	cmp r4, r7
	bgt _0201A43A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201A454: .word 0x021D157C
	thumb_func_end sub_0201A430

	thumb_func_start sub_0201A458
sub_0201A458: ; 0x0201A458
	push {r3, lr}
	sub sp, #8
	ldr r0, _0201A4A4 ; =0x021D110C
	mov r2, #0
	str r2, [r0, #0x34]
	str r2, [r0, #0x38]
	str r2, [r0, #0x3c]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	str r2, [r0, #0x48]
	str r2, [r0, #0x4c]
	str r2, [r0, #0x50]
	mov r1, #4
	str r1, [r0, #0x54]
	mov r1, #8
	str r1, [r0, #0x58]
	ldr r0, _0201A4A8 ; =0x021D114C
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	strh r2, [r0, #0x26]
	ldr r0, _0201A4AC ; =0x021D116C
	strb r2, [r0, #8]
	bl sub_020D9EF0
	bl sub_020210A0
	add r0, sp, #0
	bl sub_020D9F68
	cmp r0, #1
	bne _0201A49E
	add r0, sp, #0
	bl sub_020D9FFC
_0201A49E:
	add sp, #8
	pop {r3, pc}
	nop
_0201A4A4: .word 0x021D110C
_0201A4A8: .word 0x021D114C
_0201A4AC: .word 0x021D116C
	thumb_func_end sub_0201A458

	thumb_func_start sub_0201A4B0
sub_0201A4B0: ; 0x0201A4B0
	ldr r1, _0201A4B8 ; =0x021D116C
	strb r0, [r1, #0xa]
	bx lr
	nop
_0201A4B8: .word 0x021D116C
	thumb_func_end sub_0201A4B0

	thumb_func_start sub_0201A4BC
sub_0201A4BC: ; 0x0201A4BC
	ldr r1, _0201A4C8 ; =0x021D116C
	ldrb r2, [r1, #0xb]
	orr r0, r2
	strb r0, [r1, #0xb]
	bx lr
	nop
_0201A4C8: .word 0x021D116C
	thumb_func_end sub_0201A4BC

	thumb_func_start sub_0201A4CC
sub_0201A4CC: ; 0x0201A4CC
	ldr r1, _0201A4D8 ; =0x021D116C
	mvn r0, r0
	ldrb r2, [r1, #0xb]
	and r0, r2
	strb r0, [r1, #0xb]
	bx lr
	.align 2, 0
_0201A4D8: .word 0x021D116C
	thumb_func_end sub_0201A4CC

	thumb_func_start sub_0201A4DC
sub_0201A4DC: ; 0x0201A4DC
	push {r4, lr}
	sub sp, #0x10
	ldr r2, _0201A5D0 ; =0x027FFFA8
	mov r0, #2
	ldrh r1, [r2]
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _0201A502
	ldr r0, _0201A5D4 ; =0x021D110C
	mov r1, #0
	str r1, [r0, #0x48]
	str r1, [r0, #0x44]
	str r1, [r0, #0x4c]
	ldr r0, _0201A5D8 ; =0x021D114C
	add sp, #0x10
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	pop {r4, pc}
_0201A502:
	ldr r0, _0201A5DC ; =0x04000130
	ldrh r1, [r0]
	ldrh r0, [r2]
	orr r1, r0
	ldr r0, _0201A5E0 ; =0x00002FFF
	eor r1, r0
	and r0, r1
	lsl r0, r0, #0x10
	ldr r1, _0201A5D4 ; =0x021D110C
	lsr r2, r0, #0x10
	ldr r0, [r1, #0x5c]
	orr r0, r2
	mov r2, #0
	str r2, [r1, #0x5c]
	ldr r2, [r1, #0x38]
	add r3, r0, #0
	eor r3, r2
	and r3, r0
	str r3, [r1, #0x3c]
	str r3, [r1, #0x40]
	cmp r0, #0
	beq _0201A542
	cmp r2, r0
	bne _0201A542
	ldr r2, [r1, #0x50]
	sub r2, r2, #1
	str r2, [r1, #0x50]
	bne _0201A548
	str r0, [r1, #0x40]
	ldr r2, [r1, #0x54]
	str r2, [r1, #0x50]
	b _0201A548
_0201A542:
	ldr r1, _0201A5D4 ; =0x021D110C
	ldr r2, [r1, #0x58]
	str r2, [r1, #0x50]
_0201A548:
	ldr r1, _0201A5D4 ; =0x021D110C
	str r0, [r1, #0x38]
	ldr r2, [r1, #0x3c]
	str r2, [r1, #0x48]
	str r0, [r1, #0x44]
	ldr r0, [r1, #0x40]
	str r0, [r1, #0x4c]
	bl sub_0201A5E8
	ldr r0, _0201A5E4 ; =0x021D116C
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0201A574
	add r4, sp, #8
_0201A564:
	bl sub_020DA124
	add r0, r4, #0
	bl sub_020DA1B8
	cmp r0, #0
	bne _0201A564
	b _0201A57A
_0201A574:
	add r0, sp, #8
	bl sub_020DA3A0
_0201A57A:
	add r0, sp, #0
	add r1, sp, #8
	bl sub_020DA6E0
	add r1, sp, #0
	ldrh r3, [r1, #6]
	cmp r3, #0
	bne _0201A596
	ldrh r2, [r1]
	ldr r0, _0201A5D8 ; =0x021D114C
	strh r2, [r0, #0x20]
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x22]
	b _0201A5BA
_0201A596:
	ldr r0, _0201A5D8 ; =0x021D114C
	ldrh r2, [r0, #0x26]
	cmp r2, #0
	beq _0201A5B6
	cmp r3, #1
	beq _0201A5AA
	cmp r3, #2
	beq _0201A5B0
	cmp r3, #3
	b _0201A5BA
_0201A5AA:
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x22]
	b _0201A5BA
_0201A5B0:
	ldrh r1, [r1]
	strh r1, [r0, #0x20]
	b _0201A5BA
_0201A5B6:
	mov r0, #0
	strh r0, [r1, #4]
_0201A5BA:
	add r0, sp, #0
	ldrh r2, [r0, #4]
	ldr r0, _0201A5D8 ; =0x021D114C
	ldrh r1, [r0, #0x26]
	eor r1, r2
	and r1, r2
	strh r1, [r0, #0x24]
	strh r2, [r0, #0x26]
	add sp, #0x10
	pop {r4, pc}
	nop
_0201A5D0: .word 0x027FFFA8
_0201A5D4: .word 0x021D110C
_0201A5D8: .word 0x021D114C
_0201A5DC: .word 0x04000130
_0201A5E0: .word 0x00002FFF
_0201A5E4: .word 0x021D116C
	thumb_func_end sub_0201A4DC

	thumb_func_start sub_0201A5E8
sub_0201A5E8: ; 0x0201A5E8
	ldr r0, _0201A710 ; =0x021D110C
	ldr r1, [r0, #0x34]
	cmp r1, #3
	bls _0201A5F2
	b _0201A70C
_0201A5F2:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201A5FE: ; jump table
	.short _0201A70C - _0201A5FE - 2 ; case 0
	.short _0201A606 - _0201A5FE - 2 ; case 1
	.short _0201A63C - _0201A5FE - 2 ; case 2
	.short _0201A6C2 - _0201A5FE - 2 ; case 3
_0201A606:
	ldr r2, [r0, #0x48]
	mov r1, #8
	add r3, r2, #0
	tst r3, r1
	beq _0201A616
	lsl r1, r1, #7
	orr r1, r2
	str r1, [r0, #0x48]
_0201A616:
	ldr r1, _0201A710 ; =0x021D110C
	mov r0, #8
	ldr r2, [r1, #0x44]
	add r3, r2, #0
	tst r3, r0
	beq _0201A628
	lsl r0, r0, #7
	orr r0, r2
	str r0, [r1, #0x44]
_0201A628:
	ldr r1, _0201A710 ; =0x021D110C
	mov r0, #8
	ldr r2, [r1, #0x4c]
	add r3, r2, #0
	tst r3, r0
	beq _0201A70C
	lsl r0, r0, #7
	orr r0, r2
	str r0, [r1, #0x4c]
	bx lr
_0201A63C:
	ldr r3, [r0, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	add r2, r3, #0
	mov r1, #0
	tst r2, r0
	beq _0201A64E
	lsl r0, r0, #1
	orr r1, r0
_0201A64E:
	mov r0, #2
	lsl r0, r0, #0xa
	add r2, r3, #0
	tst r2, r0
	beq _0201A65C
	lsr r0, r0, #1
	orr r1, r0
_0201A65C:
	ldr r2, _0201A710 ; =0x021D110C
	ldr r0, _0201A714 ; =0x0000F3FF
	ldr r3, [r2, #0x48]
	and r0, r3
	orr r0, r1
	str r0, [r2, #0x48]
	ldr r3, [r2, #0x44]
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r3, #0
	mov r0, #0
	tst r2, r1
	beq _0201A67A
	lsl r1, r1, #1
	orr r0, r1
_0201A67A:
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r3, #0
	tst r2, r1
	beq _0201A688
	lsr r1, r1, #1
	orr r0, r1
_0201A688:
	ldr r2, _0201A710 ; =0x021D110C
	ldr r1, _0201A714 ; =0x0000F3FF
	ldr r3, [r2, #0x44]
	and r1, r3
	orr r0, r1
	str r0, [r2, #0x44]
	ldr r3, [r2, #0x4c]
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r3, #0
	mov r0, #0
	tst r2, r1
	beq _0201A6A6
	lsl r1, r1, #1
	orr r0, r1
_0201A6A6:
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r3, #0
	tst r2, r1
	beq _0201A6B4
	lsr r1, r1, #1
	orr r0, r1
_0201A6B4:
	ldr r2, _0201A710 ; =0x021D110C
	ldr r1, _0201A714 ; =0x0000F3FF
	ldr r3, [r2, #0x4c]
	and r1, r3
	orr r0, r1
	str r0, [r2, #0x4c]
	bx lr
_0201A6C2:
	mov r1, #2
	ldr r2, [r0, #0x48]
	lsl r1, r1, #8
	tst r1, r2
	beq _0201A6D2
	mov r1, #1
	orr r1, r2
	str r1, [r0, #0x48]
_0201A6D2:
	ldr r1, _0201A710 ; =0x021D110C
	mov r0, #2
	ldr r2, [r1, #0x44]
	lsl r0, r0, #8
	tst r0, r2
	beq _0201A6E4
	mov r0, #1
	orr r0, r2
	str r0, [r1, #0x44]
_0201A6E4:
	ldr r1, _0201A710 ; =0x021D110C
	mov r0, #2
	ldr r2, [r1, #0x4c]
	lsl r0, r0, #8
	tst r0, r2
	beq _0201A6F6
	mov r0, #1
	orr r0, r2
	str r0, [r1, #0x4c]
_0201A6F6:
	ldr r1, _0201A710 ; =0x021D110C
	ldr r0, _0201A718 ; =0x0000FCFF
	ldr r2, [r1, #0x48]
	and r2, r0
	str r2, [r1, #0x48]
	ldr r2, [r1, #0x44]
	and r2, r0
	str r2, [r1, #0x44]
	ldr r2, [r1, #0x4c]
	and r0, r2
	str r0, [r1, #0x4c]
_0201A70C:
	bx lr
	nop
_0201A710: .word 0x021D110C
_0201A714: .word 0x0000F3FF
_0201A718: .word 0x0000FCFF
	thumb_func_end sub_0201A5E8

	thumb_func_start sub_0201A71C
sub_0201A71C: ; 0x0201A71C
	ldr r2, _0201A724 ; =0x021D110C
	str r0, [r2, #0x54]
	str r1, [r2, #0x58]
	bx lr
	.align 2, 0
_0201A724: .word 0x021D110C
	thumb_func_end sub_0201A71C

	thumb_func_start sub_0201A728
sub_0201A728: ; 0x0201A728
	ldr r1, _0201A734 ; =0x021D116C
	ldrb r2, [r1, #0xc]
	orr r0, r2
	strb r0, [r1, #0xc]
	bx lr
	nop
_0201A734: .word 0x021D116C
	thumb_func_end sub_0201A728

	thumb_func_start sub_0201A738
sub_0201A738: ; 0x0201A738
	ldr r1, _0201A744 ; =0x021D116C
	mvn r0, r0
	ldrb r2, [r1, #0xc]
	and r0, r2
	strb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0201A744: .word 0x021D116C
	thumb_func_end sub_0201A738

	thumb_func_start sub_0201A748
sub_0201A748: ; 0x0201A748
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0201A76C ; =0x021D110C
	ldr r0, [r0, #0x74]
	cmp r0, #0
	beq _0201A758
	bl GF_AssertFail
_0201A758:
	add r0, r4, #0
	mov r1, #4
	bl sub_0201AACC
	ldr r1, _0201A76C ; =0x021D110C
	str r0, [r1, #0x74]
	ldr r1, _0201A770 ; =0x2F93A1BC
	str r1, [r0]
	pop {r4, pc}
	nop
_0201A76C: .word 0x021D110C
_0201A770: .word 0x2F93A1BC
	thumb_func_end sub_0201A748

	thumb_func_start sub_0201A774
sub_0201A774: ; 0x0201A774
	push {r3, lr}
	ldr r0, _0201A798 ; =0x021D110C
	ldr r0, [r0, #0x74]
	cmp r0, #0
	bne _0201A782
	bl GF_AssertFail
_0201A782:
	ldr r0, _0201A798 ; =0x021D110C
	mov r2, #0
	ldr r1, [r0, #0x74]
	str r2, [r1]
	ldr r0, [r0, #0x74]
	bl sub_0201AB0C
	ldr r0, _0201A798 ; =0x021D110C
	mov r1, #0
	str r1, [r0, #0x74]
	pop {r3, pc}
	.align 2, 0
_0201A798: .word 0x021D110C
	thumb_func_end sub_0201A774

	thumb_func_start sub_0201A79C
sub_0201A79C: ; 0x0201A79C
	ldr r0, _0201A7B4 ; =0x021D110C
	ldr r0, [r0, #0x74]
	cmp r0, #0
	beq _0201A7B0
	ldr r1, [r0]
	ldr r0, _0201A7B8 ; =0x2F93A1BC
	cmp r1, r0
	bne _0201A7B0
	mov r0, #1
	bx lr
_0201A7B0:
	mov r0, #0
	bx lr
	.align 2, 0
_0201A7B4: .word 0x021D110C
_0201A7B8: .word 0x2F93A1BC
	thumb_func_end sub_0201A79C

	thumb_func_start sub_0201A7BC
sub_0201A7BC: ; 0x0201A7BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x18
	add r6, r2, #0
	str r0, [sp, #4]
	cmp r6, r0
	bhs _0201A7D4
	add r6, r0, #0
_0201A7D4:
	cmp r3, #0
	beq _0201A7F2
	mov r0, #3
	tst r0, r3
	beq _0201A7E8
	mov r0, #3
_0201A7E0:
	add r3, r3, #1
	add r1, r3, #0
	tst r1, r0
	bne _0201A7E0
_0201A7E8:
	mov r0, #0
	add r1, r3, #0
	mov r2, #4
	bl sub_020D2CA0
_0201A7F2:
	ldr r1, [sp, #4]
	lsl r7, r6, #1
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r1, #1
	lsl r1, r1, #2
	add r1, r7, r1
	mov r0, #0
	add r1, r6, r1
	mov r2, #4
	bl sub_020D2CA0
	ldr r1, _0201A8E4 ; =0x021D1584
	str r0, [r1]
	ldr r1, [sp, #4]
	add r1, r1, #1
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _0201A8E4 ; =0x021D1584
	str r1, [r0, #4]
	ldr r0, [sp, #4]
	lsl r0, r0, #2
	add r2, r1, r0
	ldr r1, _0201A8E4 ; =0x021D1584
	str r2, [r1, #8]
	add r1, r2, r0
	ldr r0, _0201A8E4 ; =0x021D1584
	str r1, [r0, #0xc]
	add r1, r1, r7
	str r1, [r0, #0x10]
	strh r6, [r0, #0x14]
	strh r4, [r0, #0x16]
	ldr r0, [sp, #4]
	mov r7, #0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0201A8E4 ; =0x021D1584
	cmp r4, #0
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x18]
	bls _0201A894
	str r7, [sp]
_0201A846:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0201A850
	cmp r0, #2
	beq _0201A85C
_0201A850:
	ldr r1, [r5]
	mov r0, #0
	mov r2, #4
	bl sub_020D2CA0
	b _0201A866
_0201A85C:
	ldr r1, [r5]
	mov r0, #2
	mov r2, #4
	bl sub_020D2D0C
_0201A866:
	cmp r0, #0
	beq _0201A882
	ldr r1, [r5]
	mov r2, #0
	bl sub_020B535C
	ldr r1, _0201A8E4 ; =0x021D1584
	ldr r2, [r1]
	ldr r1, [sp]
	str r0, [r2, r1]
	ldr r0, _0201A8E4 ; =0x021D1584
	ldr r0, [r0, #0x10]
	strb r7, [r0, r7]
	b _0201A886
_0201A882:
	bl GF_AssertFail
_0201A886:
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #4
	add r5, #8
	str r0, [sp]
	cmp r7, r4
	blo _0201A846
_0201A894:
	ldr r0, [sp, #4]
	add r1, r0, #1
	cmp r4, r1
	bhs _0201A8B4
	ldr r3, _0201A8E4 ; =0x021D1584
	lsl r2, r4, #2
	mov r0, #0
_0201A8A2:
	ldr r5, [r3]
	str r0, [r5, r2]
	ldrh r7, [r3, #0x1a]
	ldr r5, [r3, #0x10]
	add r2, r2, #4
	strb r7, [r5, r4]
	add r4, r4, #1
	cmp r4, r1
	blo _0201A8A2
_0201A8B4:
	cmp r4, r6
	bhs _0201A8C6
	ldr r0, _0201A8E4 ; =0x021D1584
_0201A8BA:
	ldrh r2, [r0, #0x1a]
	ldr r1, [r0, #0x10]
	strb r2, [r1, r4]
	add r4, r4, #1
	cmp r4, r6
	blo _0201A8BA
_0201A8C6:
	mov r4, #0
	cmp r6, #0
	bls _0201A8DE
	ldr r0, _0201A8E4 ; =0x021D1584
	add r3, r4, #0
	add r2, r4, #0
_0201A8D2:
	ldr r1, [r0, #0xc]
	add r4, r4, #1
	strh r2, [r1, r3]
	add r3, r3, #2
	cmp r4, r6
	blo _0201A8D2
_0201A8DE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201A8E4: .word 0x021D1584
	thumb_func_end sub_0201A7BC

	thumb_func_start sub_0201A8E8
sub_0201A8E8: ; 0x0201A8E8
	ldr r1, _0201A90C ; =0x021D1584
	ldrh r0, [r1, #0x16]
	ldrh r3, [r1, #0x18]
	cmp r0, r3
	bge _0201A906
	ldr r2, [r1]
	lsl r1, r0, #2
	add r2, r2, r1
_0201A8F8:
	ldr r1, [r2]
	cmp r1, #0
	beq _0201A90A
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, r3
	blt _0201A8F8
_0201A906:
	mov r0, #0
	mvn r0, r0
_0201A90A:
	bx lr
	.align 2, 0
_0201A90C: .word 0x021D1584
	thumb_func_end sub_0201A8E8

	thumb_func_start sub_0201A910
sub_0201A910: ; 0x0201A910
	push {r3, lr}
	mov r3, #4
	bl sub_0201A928
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0201A910

	thumb_func_start sub_0201A91C
sub_0201A91C: ; 0x0201A91C
	push {r3, lr}
	mov r3, #3
	mvn r3, r3
	bl sub_0201A928
	pop {r3, pc}
	thumb_func_end sub_0201A91C

	thumb_func_start sub_0201A928
sub_0201A928: ; 0x0201A928
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp]
	add r7, r3, #0
	bl sub_020D3A9C
	cmp r0, #0x12
	bne _0201A940
	bl GF_AssertFail
_0201A940:
	ldr r1, _0201A9C0 ; =0x021D1584
	ldr r0, [r1, #0x10]
	ldrh r3, [r1, #0x1a]
	ldrb r2, [r0, r5]
	cmp r3, r2
	bne _0201A9B6
	ldrb r0, [r0, r4]
	ldr r1, [r1]
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	cmp r6, #0
	beq _0201A9B0
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_020B53A0
	str r0, [sp, #4]
	cmp r0, #0
	beq _0201A9AA
	bl sub_0201A8E8
	add r7, r0, #0
	bmi _0201A9A4
	ldr r0, [sp, #4]
	ldr r1, [sp]
	mov r2, #0
	lsl r4, r7, #2
	bl sub_020B535C
	ldr r1, _0201A9C0 ; =0x021D1584
	ldr r2, [r1]
	str r0, [r2, r4]
	ldr r0, [r1]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0201A99E
	ldr r0, [r1, #4]
	str r6, [r0, r4]
	ldr r0, [sp, #4]
	ldr r2, [r1, #8]
	add sp, #8
	str r0, [r2, r4]
	ldr r0, [r1, #0x10]
	strb r7, [r0, r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0201A99E:
	bl GF_AssertFail
	b _0201A9BA
_0201A9A4:
	bl GF_AssertFail
	b _0201A9BA
_0201A9AA:
	bl GF_AssertFail
	b _0201A9BA
_0201A9B0:
	bl GF_AssertFail
	b _0201A9BA
_0201A9B6:
	bl GF_AssertFail
_0201A9BA:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0201A9C0: .word 0x021D1584
	thumb_func_end sub_0201A928

	thumb_func_start sub_0201A9C4
sub_0201A9C4: ; 0x0201A9C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020D3A9C
	cmp r0, #0x12
	bne _0201A9D4
	bl GF_AssertFail
_0201A9D4:
	ldr r0, _0201AA34 ; =0x021D1584
	ldr r1, [r0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0201AA32
	bl sub_020B5394
	ldr r1, _0201AA34 ; =0x021D1584
	ldr r0, [r1, #0x10]
	ldrb r0, [r0, r4]
	lsl r2, r0, #2
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	ldr r0, [r0, r2]
	ldr r1, [r1, r2]
	cmp r0, #0
	beq _0201AA06
	cmp r1, #0
	beq _0201AA06
	bl sub_020B5530
	b _0201AA0A
_0201AA06:
	bl GF_AssertFail
_0201AA0A:
	ldr r1, _0201AA34 ; =0x021D1584
	mov r0, #0
	ldr r2, [r1, #0x10]
	ldr r3, [r1]
	ldrb r2, [r2, r4]
	lsl r2, r2, #2
	str r0, [r3, r2]
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #4]
	ldrb r2, [r2, r4]
	lsl r2, r2, #2
	str r0, [r3, r2]
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #8]
	ldrb r2, [r2, r4]
	lsl r2, r2, #2
	str r0, [r3, r2]
	ldrh r2, [r1, #0x1a]
	ldr r0, [r1, #0x10]
	strb r2, [r0, r4]
_0201AA32:
	pop {r4, pc}
	.align 2, 0
_0201AA34: .word 0x021D1584
	thumb_func_end sub_0201A9C4

	thumb_func_start sub_0201AA38
sub_0201AA38: ; 0x0201AA38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r5, #0
	bne _0201AA4A
	bl GF_AssertFail
_0201AA4A:
	bl sub_020D3A38
	add r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_020B53A0
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_020D3A4C
	cmp r4, #0
	beq _0201AA78
	ldr r1, [r4, #0xc]
	mov r0, #0xff
	bic r1, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r4, #0xc]
	add r4, #0x10
_0201AA78:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201AA38

	thumb_func_start sub_0201AA7C
sub_0201AA7C: ; 0x0201AA7C
	push {r3, lr}
	bl sub_02037D78
	cmp r0, #0
	beq _0201AA8A
	bl sub_02096338
_0201AA8A:
	pop {r3, pc}
	thumb_func_end sub_0201AA7C

	thumb_func_start sub_0201AA8C
sub_0201AA8C: ; 0x0201AA8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0201AAC8 ; =0x021D1584
	mov r4, #0
	ldrh r2, [r0, #0x14]
	cmp r5, r2
	bhs _0201AAAE
	ldr r2, [r0]
	ldr r0, [r0, #0x10]
	add r3, r5, #0
	ldrb r0, [r0, r5]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	mov r2, #4
	bl sub_0201AA38
	add r4, r0, #0
_0201AAAE:
	cmp r4, #0
	beq _0201AAC0
	ldr r0, _0201AAC8 ; =0x021D1584
	lsl r1, r5, #1
	ldr r2, [r0, #0xc]
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	b _0201AAC4
_0201AAC0:
	bl sub_0201AA7C
_0201AAC4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0201AAC8: .word 0x021D1584
	thumb_func_end sub_0201AA8C

	thumb_func_start sub_0201AACC
sub_0201AACC: ; 0x0201AACC
	push {r3, r4, r5, lr}
	ldr r2, _0201AB08 ; =0x021D1584
	add r5, r0, #0
	ldrh r0, [r2, #0x14]
	mov r4, #0
	cmp r5, r0
	bhs _0201AAEE
	ldr r0, [r2]
	ldr r2, [r2, #0x10]
	add r3, r5, #0
	ldrb r2, [r2, r5]
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	sub r2, r4, #4
	bl sub_0201AA38
	add r4, r0, #0
_0201AAEE:
	cmp r4, #0
	beq _0201AB00
	ldr r0, _0201AB08 ; =0x021D1584
	lsl r1, r5, #1
	ldr r2, [r0, #0xc]
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	b _0201AB04
_0201AB00:
	bl sub_0201AA7C
_0201AB04:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0201AB08: .word 0x021D1584
	thumb_func_end sub_0201AACC

	thumb_func_start sub_0201AB0C
sub_0201AB0C: ; 0x0201AB0C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	sub r0, r6, #4
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _0201AB7C ; =0x021D1584
	ldrh r1, [r0, #0x14]
	cmp r4, r1
	bhs _0201AB74
	ldr r1, [r0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r4]
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	cmp r7, #0
	bne _0201AB32
	bl GF_AssertFail
_0201AB32:
	ldr r0, _0201AB7C ; =0x021D1584
	lsl r5, r4, #1
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r5]
	cmp r0, #0
	bne _0201AB44
	add r0, r4, #0
	bl sub_0201AC84
_0201AB44:
	ldr r0, _0201AB7C ; =0x021D1584
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r5]
	cmp r0, #0
	bne _0201AB52
	bl GF_AssertFail
_0201AB52:
	ldr r0, _0201AB7C ; =0x021D1584
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, r5]
	sub r0, r0, #1
	strh r0, [r1, r5]
	bl sub_020D3A38
	sub r6, #0x10
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_020B5530
	add r0, r4, #0
	bl sub_020D3A4C
	pop {r3, r4, r5, r6, r7, pc}
_0201AB74:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201AB7C: .word 0x021D1584
	thumb_func_end sub_0201AB0C

	thumb_func_start sub_0201AB80
sub_0201AB80: ; 0x0201AB80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020D3A9C
	cmp r0, #0x12
	bne _0201AB92
	bl GF_AssertFail
_0201AB92:
	ldr r0, _0201ABE8 ; =0x021D1584
	ldrh r1, [r0, #0x14]
	cmp r5, r1
	bhs _0201ABE2
	ldr r1, [r0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r5]
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	cmp r6, #0
	bne _0201ABAC
	bl GF_AssertFail
_0201ABAC:
	sub r0, r4, #4
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r5
	beq _0201ABBC
	bl GF_AssertFail
_0201ABBC:
	sub r4, #0x10
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020B5530
	ldr r0, _0201ABE8 ; =0x021D1584
	lsl r4, r5, #1
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r4]
	cmp r0, #0
	bne _0201ABD6
	bl GF_AssertFail
_0201ABD6:
	ldr r0, _0201ABE8 ; =0x021D1584
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, r4]
	sub r0, r0, #1
	strh r0, [r1, r4]
	pop {r4, r5, r6, pc}
_0201ABE2:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	.align 2, 0
_0201ABE8: .word 0x021D1584
	thumb_func_end sub_0201AB80

	thumb_func_start sub_0201ABEC
sub_0201ABEC: ; 0x0201ABEC
	push {r3, lr}
	ldr r1, _0201AC10 ; =0x021D1584
	ldrh r2, [r1, #0x14]
	cmp r0, r2
	bhs _0201AC06
	ldr r2, [r1]
	ldr r1, [r1, #0x10]
	ldrb r0, [r1, r0]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl sub_020B556C
	pop {r3, pc}
_0201AC06:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	nop
_0201AC10: .word 0x021D1584
	thumb_func_end sub_0201ABEC

	thumb_func_start sub_0201AC14
sub_0201AC14: ; 0x0201AC14
	push {r4, lr}
	ldr r4, _0201AC34 ; =0x021D1584
	ldrh r3, [r4, #0x14]
	cmp r1, r3
	bhs _0201AC2E
	ldr r3, [r4]
	ldr r4, [r4, #0x10]
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	bl sub_020B59A4
	pop {r4, pc}
_0201AC2E:
	bl GF_AssertFail
	pop {r4, pc}
	.align 2, 0
_0201AC34: .word 0x021D1584
	thumb_func_end sub_0201AC14

	thumb_func_start sub_0201AC38
sub_0201AC38: ; 0x0201AC38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020D3A9C
	cmp r0, #0x12
	bne _0201AC4A
	bl GF_AssertFail
_0201AC4A:
	add r0, r5, #0
	sub r0, #0x10
	bl sub_020B55A4
	add r4, #0x10
	cmp r0, r4
	blo _0201AC78
	sub r2, r5, #4
	ldr r0, _0201AC80 ; =0x021D1584
	ldr r2, [r2]
	ldr r1, [r0]
	lsl r2, r2, #0x18
	ldr r0, [r0, #0x10]
	lsr r2, r2, #0x18
	ldrb r0, [r0, r2]
	sub r5, #0x10
	add r2, r4, #0
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl sub_020B53D0
	pop {r3, r4, r5, pc}
_0201AC78:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	nop
_0201AC80: .word 0x021D1584
	thumb_func_end sub_0201AC38

	thumb_func_start sub_0201AC84
sub_0201AC84: ; 0x0201AC84
	mov r0, #1
	bx lr
	thumb_func_end sub_0201AC84

	thumb_func_start sub_0201AC88
sub_0201AC88: ; 0x0201AC88
	push {r3, r4, r5, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	add r5, r0, #0
	bl sub_0201AA8C
	mov r2, #0x5a
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020E5B44
	str r5, [r4]
	mov r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201AC88

	thumb_func_start sub_0201ACAC
sub_0201ACAC: ; 0x0201ACAC
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0201ACAC

	thumb_func_start sub_0201ACB0
sub_0201ACB0: ; 0x0201ACB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	bl sub_020CD9FC
	ldr r0, [r4, #8]
	bl sub_020CDA64
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0201ACE4 ; =0xC7FFFFFF
	and r1, r0
	str r1, [r2]
	ldr r1, [r2]
	asr r0, r0, #3
	and r0, r1
	str r0, [r2]
	bl sub_02022C54
	bl sub_02022CBC
	pop {r4, pc}
	nop
_0201ACE4: .word 0xC7FFFFFF
	thumb_func_end sub_0201ACB0

	thumb_func_start sub_0201ACE8
sub_0201ACE8: ; 0x0201ACE8
	push {r3, lr}
	add r2, r0, #0
	cmp r1, #0
	bne _0201AD00
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #0xc]
	bl sub_020CD9FC
	bl sub_02022C54
	pop {r3, pc}
_0201AD00:
	ldr r0, [r2, #8]
	bl sub_020CDA64
	bl sub_02022CBC
	pop {r3, pc}
	thumb_func_end sub_0201ACE8

	thumb_func_start sub_0201AD0C
sub_0201AD0C: ; 0x0201AD0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r4, r2, #0
	str r0, [sp]
	ldrb r0, [r4, #0x10]
	ldr r1, [sp, #8]
	ldr r6, [sp, #0x30]
	bl sub_0201BA88
	add r5, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #7
	bls _0201AD2C
	b _0201B14C
_0201AD2C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201AD38: ; jump table
	.short _0201AD48 - _0201AD38 - 2 ; case 0
	.short _0201ADA0 - _0201AD38 - 2 ; case 1
	.short _0201ADF8 - _0201AD38 - 2 ; case 2
	.short _0201AE9A - _0201AD38 - 2 ; case 3
	.short _0201AF3C - _0201AD38 - 2 ; case 4
	.short _0201AF94 - _0201AD38 - 2 ; case 5
	.short _0201AFEC - _0201AD38 - 2 ; case 6
	.short _0201B0AC - _0201AD38 - 2 ; case 7
_0201AD48:
	mov r0, #1
	add r1, r6, #0
	bl sub_02022C60
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #7
	lsl r3, r2, #2
	str r0, [sp, #0xc]
	ldr r2, _0201B090 ; =0x04000008
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0xc]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0201AD96
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _0201B14C
_0201AD96:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _0201B14C
_0201ADA0:
	mov r0, #2
	add r1, r6, #0
	bl sub_02022C60
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #7
	lsl r3, r2, #2
	str r0, [sp, #0x10]
	ldr r2, _0201B094 ; =0x0400000A
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0x10]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0201ADEE
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _0201B14C
_0201ADEE:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _0201B14C
_0201ADF8:
	mov r0, #4
	add r1, r6, #0
	bl sub_02022C60
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0201AE0E
	cmp r0, #1
	beq _0201AE30
	cmp r0, #2
	beq _0201AE52
_0201AE0E:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B098 ; =0x0400000C
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201AE72
_0201AE30:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _0201B098 ; =0x0400000C
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201AE72
_0201AE52:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B098 ; =0x0400000C
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_0201AE72:
	ldr r0, _0201B098 ; =0x0400000C
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0201AE90
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _0201B14C
_0201AE90:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	b _0201B14C
_0201AE9A:
	mov r0, #8
	add r1, r6, #0
	bl sub_02022C60
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0201AEB0
	cmp r0, #1
	beq _0201AED2
	cmp r0, #2
	beq _0201AEF4
_0201AEB0:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B09C ; =0x0400000E
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201AF14
_0201AED2:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _0201B09C ; =0x0400000E
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201AF14
_0201AEF4:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B09C ; =0x0400000E
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_0201AF14:
	ldr r0, _0201B09C ; =0x0400000E
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0201AF32
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _0201B14C
_0201AF32:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	b _0201B14C
_0201AF3C:
	mov r0, #1
	add r1, r6, #0
	bl sub_02022CC8
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #7
	lsl r3, r2, #2
	str r0, [sp, #0x14]
	ldr r2, _0201B0A0 ; =0x04001008
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0x14]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0201AF8A
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _0201B14C
_0201AF8A:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _0201B14C
_0201AF94:
	mov r0, #2
	add r1, r6, #0
	bl sub_02022CC8
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrb r3, [r4, #0x14]
	lsl r0, r0, #7
	mov ip, r0
	ldr r2, _0201B0A4 ; =0x0400100A
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	lsl r3, r3, #0xd
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	mov r1, ip
	orr r0, r1
	orr r0, r7
	orr r0, r6
	orr r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0201AFE2
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _0201B14C
_0201AFE2:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _0201B14C
_0201AFEC:
	mov r0, #4
	add r1, r6, #0
	bl sub_02022CC8
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0201B002
	cmp r0, #1
	beq _0201B024
	cmp r0, #2
	beq _0201B046
_0201B002:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B0A8 ; =0x0400100C
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201B066
_0201B024:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _0201B0A8 ; =0x0400100C
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201B066
_0201B046:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B0A8 ; =0x0400100C
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_0201B066:
	ldr r0, _0201B0A8 ; =0x0400100C
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0201B084
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _0201B14C
_0201B084:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	b _0201B14C
	nop
_0201B090: .word 0x04000008
_0201B094: .word 0x0400000A
_0201B098: .word 0x0400000C
_0201B09C: .word 0x0400000E
_0201B0A0: .word 0x04001008
_0201B0A4: .word 0x0400100A
_0201B0A8: .word 0x0400100C
_0201B0AC:
	mov r0, #8
	add r1, r6, #0
	bl sub_02022CC8
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0201B0C2
	cmp r0, #1
	beq _0201B0E4
	cmp r0, #2
	beq _0201B106
_0201B0C2:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B1E0 ; =0x0400100E
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201B126
_0201B0E4:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _0201B1E0 ; =0x0400100E
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201B126
_0201B106:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B1E0 ; =0x0400100E
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_0201B126:
	ldr r0, _0201B1E0 ; =0x0400100E
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0201B144
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _0201B14C
_0201B144:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
_0201B14C:
	ldr r0, [sp, #4]
	mov r1, #0x2c
	add r5, r0, #0
	ldr r0, [sp]
	mul r5, r1
	add r2, r0, r5
	mov r3, #0
	mov r0, #1
	strh r3, [r2, #0x20]
	lsl r0, r0, #0xc
	str r0, [r2, #0x24]
	str r0, [r2, #0x28]
	str r3, [r2, #0x2c]
	str r3, [r2, #0x30]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0201B194
	ldr r0, [sp]
	ldr r6, [sp]
	ldr r0, [r0]
	add r6, #8
	bl sub_0201AA8C
	str r0, [r6, r5]
	ldr r1, [r6, r5]
	ldr r2, [r4, #8]
	mov r0, #0
	bl sub_020D4790
	ldr r0, [sp]
	ldr r2, [r4, #8]
	add r1, r0, r5
	str r2, [r1, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [r1, #0x10]
	b _0201B19A
_0201B194:
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	str r3, [r2, #0x10]
_0201B19A:
	ldr r0, [sp]
	ldrb r1, [r4, #0x10]
	add r0, r0, r5
	strb r1, [r0, #0x1d]
	ldr r1, [sp, #8]
	strb r1, [r0, #0x1c]
	ldrb r1, [r4, #0x11]
	strb r1, [r0, #0x1e]
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _0201B1BC
	ldrb r1, [r4, #0x11]
	cmp r1, #0
	bne _0201B1BC
	mov r1, #0x20
	strb r1, [r0, #0x1f]
	b _0201B1C4
_0201B1BC:
	ldr r0, [sp]
	mov r1, #0x40
	add r0, r0, r5
	strb r1, [r0, #0x1f]
_0201B1C4:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [r4]
	mov r2, #0
	bl sub_0201BC8C
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [r4, #4]
	mov r2, #3
	bl sub_0201BC8C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0201B1E0: .word 0x0400100E
	thumb_func_end sub_0201AD0C

	thumb_func_start sub_0201B1E4
sub_0201B1E4: ; 0x0201B1E4
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #1
	str r4, [sp]
	bl sub_0201AD0C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0201B1E4

	thumb_func_start sub_0201B1F4
sub_0201B1F4: ; 0x0201B1F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r2, #0
	add r6, r0, #0
	add r7, r1, #0
	add r5, r3, #0
	cmp r4, #0
	bne _0201B230
	add r3, r6, #0
	mov r1, #0x2c
	add r2, r7, #0
	mul r2, r1
	add r3, #0x1e
	add r1, r6, r2
	strb r5, [r3, r2]
	mov ip, r1
	ldrb r1, [r1, #0x1c]
	cmp r1, #0
	bne _0201B228
	ldrb r1, [r3, r2]
	cmp r1, #0
	bne _0201B228
	mov r1, #0x20
	mov r2, ip
	strb r1, [r2, #0x1f]
	b _0201B262
_0201B228:
	mov r1, #0x40
	add r2, r6, r2
	strb r1, [r2, #0x1f]
	b _0201B262
_0201B230:
	cmp r4, #3
	bne _0201B262
	mov r0, #0x2c
	mul r0, r7
	str r0, [sp]
	add r0, r6, r0
	strb r5, [r0, #0x1c]
	ldrb r0, [r0, #0x1d]
	add r1, r5, #0
	bl sub_0201BA88
	cmp r5, #0
	bne _0201B25A
	ldr r1, [sp]
	add r2, r6, r1
	ldrb r1, [r2, #0x1e]
	cmp r1, #0
	bne _0201B25A
	mov r1, #0x20
	strb r1, [r2, #0x1f]
	b _0201B262
_0201B25A:
	ldr r2, [sp]
	mov r1, #0x40
	add r2, r6, r2
	strb r1, [r2, #0x1f]
_0201B262:
	cmp r7, #7
	bls _0201B26A
	bl sub_0201BA78
_0201B26A:
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201B276: ; jump table
	.short _0201B286 - _0201B276 - 2 ; case 0
	.short _0201B306 - _0201B276 - 2 ; case 1
	.short _0201B386 - _0201B276 - 2 ; case 2
	.short _0201B4F6 - _0201B276 - 2 ; case 3
	.short _0201B680 - _0201B276 - 2 ; case 4
	.short _0201B700 - _0201B276 - 2 ; case 5
	.short _0201B780 - _0201B276 - 2 ; case 6
	.short _0201B90C - _0201B276 - 2 ; case 7
_0201B286:
	ldr r1, _0201B59C ; =0x04000008
	cmp r4, #1
	ldrh r2, [r1]
	add r1, sp, #4
	strh r2, [r1, #0x1e]
	bne _0201B2A2
	ldrh r2, [r1, #0x1e]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r2, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r2
	strh r0, [r1, #0x1e]
	b _0201B2C8
_0201B2A2:
	cmp r4, #2
	bne _0201B2B6
	ldrh r2, [r1, #0x1e]
	mov r0, #0x3c
	bic r2, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r2
	strh r0, [r1, #0x1e]
	b _0201B2C8
_0201B2B6:
	cmp r4, #3
	bne _0201B2C8
	ldrh r3, [r1, #0x1e]
	ldr r2, _0201B5A4 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r2, r3
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r1, #0x1e]
_0201B2C8:
	add r0, sp, #4
	ldrh r3, [r0, #0x1e]
	add sp, #0x24
	lsl r0, r3, #0x12
	lsr r4, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r7
	add r0, r6, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	mov r6, #0x43
	lsl r1, r0, #7
	ldr r0, _0201B59C ; =0x04000008
	lsl r5, r5, #0xe
	ldrh r7, [r0]
	lsl r4, r4, #0xd
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
_0201B306:
	ldr r1, _0201B5A8 ; =0x0400000A
	cmp r4, #1
	ldrh r2, [r1]
	add r1, sp, #4
	strh r2, [r1, #0x1c]
	bne _0201B322
	ldrh r2, [r1, #0x1c]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r2, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r2
	strh r0, [r1, #0x1c]
	b _0201B348
_0201B322:
	cmp r4, #2
	bne _0201B336
	ldrh r2, [r1, #0x1c]
	mov r0, #0x3c
	bic r2, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r2
	strh r0, [r1, #0x1c]
	b _0201B348
_0201B336:
	cmp r4, #3
	bne _0201B348
	ldrh r3, [r1, #0x1c]
	ldr r2, _0201B5A4 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r2, r3
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r1, #0x1c]
_0201B348:
	add r0, sp, #4
	ldrh r3, [r0, #0x1c]
	add sp, #0x24
	lsl r0, r3, #0x12
	lsr r4, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r7
	add r0, r6, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	mov r6, #0x43
	lsl r1, r0, #7
	ldr r0, _0201B5A8 ; =0x0400000A
	lsl r5, r5, #0xe
	ldrh r7, [r0]
	lsl r4, r4, #0xd
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
_0201B386:
	mov r1, #0x2c
	mul r1, r7
	add r2, r6, r1
	ldrb r2, [r2, #0x1c]
	cmp r2, #0
	beq _0201B39A
	cmp r2, #1
	beq _0201B40E
	cmp r2, #2
	beq _0201B482
_0201B39A:
	ldr r2, _0201B5AC ; =0x0400000C
	cmp r4, #1
	ldrh r3, [r2]
	add r2, sp, #4
	strh r3, [r2, #0x1a]
	bne _0201B3B6
	ldrh r3, [r2, #0x1a]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r3, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r3
	strh r0, [r2, #0x1a]
	b _0201B3DC
_0201B3B6:
	cmp r4, #2
	bne _0201B3CA
	ldrh r3, [r2, #0x1a]
	mov r0, #0x3c
	bic r3, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x1a]
	b _0201B3DC
_0201B3CA:
	cmp r4, #3
	bne _0201B3DC
	ldrh r4, [r2, #0x1a]
	ldr r3, _0201B5A4 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r3, r4
	lsr r0, r0, #0x10
	orr r0, r3
	strh r0, [r2, #0x1a]
_0201B3DC:
	add r0, sp, #4
	ldrh r3, [r0, #0x1a]
	add r1, r6, r1
	ldr r6, _0201B5AC ; =0x0400000C
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	ldrb r4, [r1, #0x1e]
	lsl r0, r3, #0x13
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1b
	lsl r1, r0, #8
	lsl r0, r4, #7
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #2
	orr r0, r1
	orr r0, r2
	add sp, #0x24
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B40E:
	ldr r1, _0201B5AC ; =0x0400000C
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #0x18]
	bne _0201B42A
	ldrh r1, [r2, #0x18]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x18]
	b _0201B450
_0201B42A:
	cmp r4, #2
	bne _0201B43E
	ldrh r1, [r2, #0x18]
	mov r0, #0x3c
	bic r1, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2, #0x18]
	b _0201B450
_0201B43E:
	cmp r4, #3
	bne _0201B450
	ldrh r3, [r2, #0x18]
	ldr r1, _0201B5A4 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #0x18]
_0201B450:
	add r0, sp, #4
	ldrh r3, [r0, #0x18]
	ldr r6, _0201B5AC ; =0x0400000C
	add sp, #0x24
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B482:
	ldr r1, _0201B5AC ; =0x0400000C
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #0x16]
	bne _0201B49E
	ldrh r1, [r2, #0x16]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x16]
	b _0201B4C4
_0201B49E:
	cmp r4, #2
	bne _0201B4B2
	ldrh r1, [r2, #0x16]
	mov r0, #0x38
	bic r1, r0
	lsl r0, r5, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2, #0x16]
	b _0201B4C4
_0201B4B2:
	cmp r4, #3
	bne _0201B4C4
	ldrh r3, [r2, #0x16]
	ldr r1, _0201B5A4 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #0x16]
_0201B4C4:
	add r0, sp, #4
	ldrh r3, [r0, #0x16]
	ldr r6, _0201B5AC ; =0x0400000C
	add sp, #0x24
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B4F6:
	mov r1, #0x2c
	mul r1, r7
	add r2, r6, r1
	ldrb r2, [r2, #0x1c]
	cmp r2, #0
	beq _0201B50C
	cmp r2, #1
	beq _0201B580
	cmp r2, #2
	bne _0201B50C
	b _0201B60C
_0201B50C:
	ldr r2, _0201B5B0 ; =0x0400000E
	cmp r4, #1
	ldrh r3, [r2]
	add r2, sp, #4
	strh r3, [r2, #0x14]
	bne _0201B528
	ldrh r3, [r2, #0x14]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r3, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r3
	strh r0, [r2, #0x14]
	b _0201B54E
_0201B528:
	cmp r4, #2
	bne _0201B53C
	ldrh r3, [r2, #0x14]
	mov r0, #0x3c
	bic r3, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x14]
	b _0201B54E
_0201B53C:
	cmp r4, #3
	bne _0201B54E
	ldrh r4, [r2, #0x14]
	ldr r3, _0201B5A4 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r3, r4
	lsr r0, r0, #0x10
	orr r0, r3
	strh r0, [r2, #0x14]
_0201B54E:
	add r0, sp, #4
	ldrh r3, [r0, #0x14]
	add r1, r6, r1
	ldr r6, _0201B5B0 ; =0x0400000E
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	ldrb r4, [r1, #0x1e]
	lsl r0, r3, #0x13
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1b
	lsl r1, r0, #8
	lsl r0, r4, #7
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #2
	orr r0, r1
	orr r0, r2
	add sp, #0x24
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B580:
	ldr r1, _0201B5B0 ; =0x0400000E
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #0x12]
	bne _0201B5B4
	ldrh r1, [r2, #0x12]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x12]
	b _0201B5DA
	.align 2, 0
_0201B59C: .word 0x04000008
_0201B5A0: .word 0xFFFFE0FF
_0201B5A4: .word 0xFFFF3FFF
_0201B5A8: .word 0x0400000A
_0201B5AC: .word 0x0400000C
_0201B5B0: .word 0x0400000E
_0201B5B4:
	cmp r4, #2
	bne _0201B5C8
	ldrh r1, [r2, #0x12]
	mov r0, #0x3c
	bic r1, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2, #0x12]
	b _0201B5DA
_0201B5C8:
	cmp r4, #3
	bne _0201B5DA
	ldrh r3, [r2, #0x12]
	ldr r1, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #0x12]
_0201B5DA:
	add r0, sp, #4
	ldrh r3, [r0, #0x12]
	ldr r6, _0201B8CC ; =0x0400000E
	add sp, #0x24
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B60C:
	ldr r1, _0201B8CC ; =0x0400000E
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #0x10]
	bne _0201B628
	ldrh r1, [r2, #0x10]
	ldr r0, _0201B8D0 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x10]
	b _0201B64E
_0201B628:
	cmp r4, #2
	bne _0201B63C
	ldrh r1, [r2, #0x10]
	mov r0, #0x38
	bic r1, r0
	lsl r0, r5, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2, #0x10]
	b _0201B64E
_0201B63C:
	cmp r4, #3
	bne _0201B64E
	ldrh r3, [r2, #0x10]
	ldr r1, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #0x10]
_0201B64E:
	add r0, sp, #4
	ldrh r3, [r0, #0x10]
	ldr r6, _0201B8CC ; =0x0400000E
	add sp, #0x24
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B680:
	ldr r1, _0201B8D4 ; =0x04001008
	cmp r4, #1
	ldrh r2, [r1]
	add r1, sp, #4
	strh r2, [r1, #0xe]
	bne _0201B69C
	ldrh r2, [r1, #0xe]
	ldr r0, _0201B8D0 ; =0xFFFFE0FF
	and r2, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r2
	strh r0, [r1, #0xe]
	b _0201B6C2
_0201B69C:
	cmp r4, #2
	bne _0201B6B0
	ldrh r2, [r1, #0xe]
	mov r0, #0x3c
	bic r2, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r2
	strh r0, [r1, #0xe]
	b _0201B6C2
_0201B6B0:
	cmp r4, #3
	bne _0201B6C2
	ldrh r3, [r1, #0xe]
	ldr r2, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r2, r3
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r1, #0xe]
_0201B6C2:
	add r0, sp, #4
	ldrh r3, [r0, #0xe]
	add sp, #0x24
	lsl r0, r3, #0x12
	lsr r4, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r7
	add r0, r6, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	mov r6, #0x43
	lsl r1, r0, #7
	ldr r0, _0201B8D4 ; =0x04001008
	lsl r5, r5, #0xe
	ldrh r7, [r0]
	lsl r4, r4, #0xd
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
_0201B700:
	ldr r1, _0201B8D8 ; =0x0400100A
	cmp r4, #1
	ldrh r2, [r1]
	add r1, sp, #4
	strh r2, [r1, #0xc]
	bne _0201B71C
	ldrh r2, [r1, #0xc]
	ldr r0, _0201B8D0 ; =0xFFFFE0FF
	and r2, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r2
	strh r0, [r1, #0xc]
	b _0201B742
_0201B71C:
	cmp r4, #2
	bne _0201B730
	ldrh r2, [r1, #0xc]
	mov r0, #0x3c
	bic r2, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r2
	strh r0, [r1, #0xc]
	b _0201B742
_0201B730:
	cmp r4, #3
	bne _0201B742
	ldrh r3, [r1, #0xc]
	ldr r2, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r2, r3
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r1, #0xc]
_0201B742:
	add r0, sp, #4
	ldrh r3, [r0, #0xc]
	add sp, #0x24
	lsl r0, r3, #0x12
	lsr r4, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r7
	add r0, r6, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	mov r6, #0x43
	lsl r1, r0, #7
	ldr r0, _0201B8D8 ; =0x0400100A
	lsl r5, r5, #0xe
	ldrh r7, [r0]
	lsl r4, r4, #0xd
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
_0201B780:
	mov r1, #0x2c
	mul r1, r7
	add r2, r6, r1
	ldrb r2, [r2, #0x1c]
	cmp r2, #0
	beq _0201B794
	cmp r2, #1
	beq _0201B808
	cmp r2, #2
	beq _0201B87C
_0201B794:
	ldr r2, _0201B8DC ; =0x0400100C
	cmp r4, #1
	ldrh r3, [r2]
	add r2, sp, #4
	strh r3, [r2, #0xa]
	bne _0201B7B0
	ldrh r3, [r2, #0xa]
	ldr r0, _0201B8D0 ; =0xFFFFE0FF
	and r3, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r3
	strh r0, [r2, #0xa]
	b _0201B7D6
_0201B7B0:
	cmp r4, #2
	bne _0201B7C4
	ldrh r3, [r2, #0xa]
	mov r0, #0x3c
	bic r3, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0xa]
	b _0201B7D6
_0201B7C4:
	cmp r4, #3
	bne _0201B7D6
	ldrh r4, [r2, #0xa]
	ldr r3, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r3, r4
	lsr r0, r0, #0x10
	orr r0, r3
	strh r0, [r2, #0xa]
_0201B7D6:
	add r0, sp, #4
	ldrh r3, [r0, #0xa]
	add r1, r6, r1
	ldr r6, _0201B8DC ; =0x0400100C
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	ldrb r4, [r1, #0x1e]
	lsl r0, r3, #0x13
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1b
	lsl r1, r0, #8
	lsl r0, r4, #7
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #2
	orr r0, r1
	orr r0, r2
	add sp, #0x24
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B808:
	ldr r1, _0201B8DC ; =0x0400100C
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #8]
	bne _0201B824
	ldrh r1, [r2, #8]
	ldr r0, _0201B8D0 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #8]
	b _0201B84A
_0201B824:
	cmp r4, #2
	bne _0201B838
	ldrh r1, [r2, #8]
	mov r0, #0x3c
	bic r1, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2, #8]
	b _0201B84A
_0201B838:
	cmp r4, #3
	bne _0201B84A
	ldrh r3, [r2, #8]
	ldr r1, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #8]
_0201B84A:
	add r0, sp, #4
	ldrh r3, [r0, #8]
	ldr r6, _0201B8DC ; =0x0400100C
	add sp, #0x24
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B87C:
	ldr r1, _0201B8DC ; =0x0400100C
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #6]
	bne _0201B898
	ldrh r1, [r2, #6]
	and r1, r0
