	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 13, 1
	.globl	__Z3subi                        ; -- Begin function _Z3subi
	.p2align	2
__Z3subi:                               ; @_Z3subi
	.cfi_startproc
; %bb.0:
	cmp	w0, #1
	b.lt	LBB0_3
; %bb.1:                                ; %.preheader9
	mov	w8, #0
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	sub	w0, w0, #5
	add	w8, w8, #1
	cmp	w8, w0
	b.lt	LBB0_2
LBB0_3:
	tbz	w0, #31, LBB0_6
; %bb.4:                                ; %.preheader7
	mov	w8, #-1
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	sub	w0, w0, #5
	add	w8, w8, #1
	cmp	w8, w0
	b.ge	LBB0_5
LBB0_6:
	cmn	w0, #6
	b.gt	LBB0_9
; %bb.7:                                ; %.preheader5
	mov	w8, #-1
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	sub	w0, w0, #5
	add	w8, w8, #1
	cmp	w8, w0
	b.ge	LBB0_8
LBB0_9:
	cmn	w0, #51
	b.gt	LBB0_12
; %bb.10:                               ; %.preheader3
	mov	w8, #-1
LBB0_11:                                ; =>This Inner Loop Header: Depth=1
	sub	w0, w0, #5
	add	w8, w8, #1
	cmp	w8, w0
	b.ge	LBB0_11
LBB0_12:
	cmn	w0, #51
	b.gt	LBB0_15
; %bb.13:                               ; %.preheader1
	mov	w8, #-1
LBB0_14:                                ; =>This Inner Loop Header: Depth=1
	sub	w0, w0, #5
	add	w8, w8, #1
	cmp	w8, w0
	b.ge	LBB0_14
LBB0_15:
	cmn	w0, #101
	b.gt	LBB0_18
; %bb.16:                               ; %.preheader
	mov	w8, #-1
LBB0_17:                                ; =>This Inner Loop Header: Depth=1
	sub	w0, w0, #5
	add	w8, w8, #1
	cmp	w8, w0
	b.ge	LBB0_17
LBB0_18:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z8digitSumi                   ; -- Begin function _Z8digitSumi
	.p2align	2
__Z8digitSumi:                          ; @_Z8digitSumi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x0
	mov	x25, #55137
	movk	x25, #34545, lsl #16
	movk	x25, #32778, lsl #32
	movk	x25, #57670, lsl #48
	orr	x0, x25, #0x2
	bl	l_m15422940958357560741
Lloh0:
	adrp	x20, l_obfsfuncAddrLookupTable3461166234789197480@PAGE
Lloh1:
	add	x20, x20, l_obfsfuncAddrLookupTable3461166234789197480@PAGEOFF
Lloh2:
	adrp	x24, __ZN1H1pEv@GOTPAGE
Lloh3:
	ldr	x24, [x24, __ZN1H1pEv@GOTPAGEOFF]
	str	x24, [x20, x0, lsl #3]
	orr	x0, x25, #0x4
	bl	l_m15422940958357560741
Lloh4:
	adrp	x21, _printf@GOTPAGE
Lloh5:
	ldr	x21, [x21, _printf@GOTPAGEOFF]
	str	x21, [x20, x0, lsl #3]
	add	x23, x25, #1
	mov	x0, x23
	bl	l_m15422940958357560741
Lloh6:
	adrp	x26, __Z3subi@PAGE
Lloh7:
	add	x26, x26, __Z3subi@PAGEOFF
	str	x26, [x20, x0, lsl #3]
	orr	x0, x25, #0x6
	bl	l_m15422940958357560741
	str	x24, [x20, x0, lsl #3]
	add	x22, x25, #5
	mov	x0, x22
	bl	l_m15422940958357560741
	str	x21, [x20, x0, lsl #3]
	add	x0, x25, #3
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	l_m15422940958357560741
	str	x24, [x20, x0, lsl #3]
	mov	x0, #55137
	movk	x0, #34545, lsl #16
	movk	x0, #32778, lsl #32
	movk	x0, #57670, lsl #48
	bl	l_m15422940958357560741
	str	x26, [x20, x0, lsl #3]
	cmp	w19, #1
	b.lt	LBB1_3
; %bb.1:                                ; %.preheader
	mov	w20, #0
	mov	w26, #26215
	movk	w26, #26214, lsl #16
	mov	w27, #10
	mov	x28, x19
Lloh8:
	adrp	x24, l_.str@PAGE
Lloh9:
	add	x24, x24, l_.str@PAGEOFF
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	smull	x8, w28, w26
	lsr	x9, x8, #63
	asr	x8, x8, #34
	add	w21, w8, w9
	msub	w8, w21, w27, w28
	add	w20, w20, w8
	add	x8, x25, #2
	str	x8, [sp, #24]
	add	x0, sp, #24
	bl	l_lk11903805367370075611
	ldr	x8, [x0]
	add	x0, sp, #16
	blr	x8
	add	x8, x25, #4
	str	x8, [sp, #24]
	add	x0, sp, #24
	bl	l_lk11903805367370075611
	ldr	x8, [x0]
	mov	x0, x24
	blr	x8
	cmp	w28, #9
	mov	x28, x21
	b.gt	LBB1_2
	b	LBB1_4
LBB1_3:
	mov	w20, #0
LBB1_4:
	str	x23, [sp, #24]
	add	x0, sp, #24
	bl	l_lk11903805367370075611
	ldr	x8, [x0]
	mov	x0, x19
	blr	x8
	mov	x19, x0
	add	x8, x25, #6
	str	x8, [sp, #24]
	add	x0, sp, #24
	bl	l_lk11903805367370075611
	ldr	x8, [x0]
	add	x0, sp, #16
	blr	x8
	str	x22, [sp, #24]
	add	x0, sp, #24
	bl	l_lk11903805367370075611
	ldr	x8, [x0]
Lloh10:
	adrp	x0, l_.str.1@PAGE
Lloh11:
	add	x0, x0, l_.str.1@PAGEOFF
	blr	x8
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #24]
	add	x0, sp, #24
	bl	l_lk11903805367370075611
	ldr	x8, [x0]
	add	x0, sp, #16
	blr	x8
	str	x25, [sp, #24]
	add	x0, sp, #24
	bl	l_lk11903805367370075611
	ldr	x8, [x0]
	mov	x0, x20
	blr	x8
	add	w8, w19, w0
	sub	w0, w20, w8
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN1H1pEv                      ; -- Begin function _ZN1H1pEv
	.weak_def_can_be_hidden	__ZN1H1pEv
	.p2align	2
__ZN1H1pEv:                             ; @_ZN1H1pEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, #55143
	movk	x19, #34545, lsl #16
	movk	x19, #32778, lsl #32
	movk	x19, #57670, lsl #48
	mov	x0, #55143
	movk	x0, #34545, lsl #16
	movk	x0, #32778, lsl #32
	movk	x0, #57670, lsl #48
	bl	l_m15422940958357560741
Lloh12:
	adrp	x8, _printf@GOTPAGE
Lloh13:
	ldr	x8, [x8, _printf@GOTPAGEOFF]
Lloh14:
	adrp	x9, l_obfsfuncAddrLookupTable3708285264181496015@PAGE
Lloh15:
	add	x9, x9, l_obfsfuncAddrLookupTable3708285264181496015@PAGEOFF
	str	x8, [x9, x0, lsl #3]
	str	x19, [sp, #8]
	add	x0, sp, #8
	bl	l_lk923691864689839250
	ldr	x8, [x0]
Lloh16:
	adrp	x0, l_.str.4@PAGE
Lloh17:
	add	x0, x0, l_.str.4@PAGEOFF
	blr	x8
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x21, #55141
	movk	x21, #34545, lsl #16
	movk	x21, #32778, lsl #32
	movk	x21, #57670, lsl #48
	mov	x0, #55141
	movk	x0, #34545, lsl #16
	movk	x0, #32778, lsl #32
	movk	x0, #57670, lsl #48
	bl	l_m15422940958357560741
Lloh18:
	adrp	x22, l_obfsfuncAddrLookupTable4393405372055863602@PAGE
Lloh19:
	add	x22, x22, l_obfsfuncAddrLookupTable4393405372055863602@PAGEOFF
Lloh20:
	adrp	x8, __ZN1H1pEv@GOTPAGE
Lloh21:
	ldr	x8, [x8, __ZN1H1pEv@GOTPAGEOFF]
	str	x8, [x22, x0, lsl #3]
	orr	x19, x21, #0x2
	mov	x0, x19
	bl	l_m15422940958357560741
Lloh22:
	adrp	x23, __Z8digitSumi@PAGE
Lloh23:
	add	x23, x23, __Z8digitSumi@PAGEOFF
	str	x23, [x22, x0, lsl #3]
	add	x20, x21, #1
	mov	x0, x20
	bl	l_m15422940958357560741
	str	x23, [x22, x0, lsl #3]
	str	x21, [sp, #8]
	add	x0, sp, #8
	bl	l_lk5823184349590504625
	ldr	x8, [x0]
	mov	x0, sp
	blr	x8
	str	x19, [sp, #8]
	add	x0, sp, #8
	bl	l_lk5823184349590504625
	ldr	x8, [x0]
	mov	w0, #15
	blr	x8
	mov	x19, x0
	str	x20, [sp, #8]
	add	x0, sp, #8
	bl	l_lk5823184349590504625
	ldr	x8, [x0]
	mov	w0, #25
	blr	x8
	add	w0, w0, w19
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	ret
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpLdrGot	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function m15422940958357560741
l_m15422940958357560741:                ; @m15422940958357560741
	.cfi_startproc
; %bb.0:
	mov	x8, #55143
	movk	x8, #34545, lsl #16
	movk	x8, #32778, lsl #32
	movk	x8, #57670, lsl #48
	eor	x0, x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lk11903805367370075611
l_lk11903805367370075611:               ; @lk11903805367370075611
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	l_m15422940958357560741
Lloh24:
	adrp	x8, l_obfsfuncAddrLookupTable3461166234789197480@PAGE
Lloh25:
	add	x8, x8, l_obfsfuncAddrLookupTable3461166234789197480@PAGEOFF
	add	x0, x8, x0, lsl #3
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh24, Lloh25
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lk923691864689839250
l_lk923691864689839250:                 ; @lk923691864689839250
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	l_m15422940958357560741
Lloh26:
	adrp	x8, l_obfsfuncAddrLookupTable3708285264181496015@PAGE
Lloh27:
	add	x8, x8, l_obfsfuncAddrLookupTable3708285264181496015@PAGEOFF
	add	x0, x8, x0, lsl #3
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh26, Lloh27
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lk5823184349590504625
l_lk5823184349590504625:                ; @lk5823184349590504625
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	l_m15422940958357560741
Lloh28:
	adrp	x8, l_obfsfuncAddrLookupTable4393405372055863602@PAGE
Lloh29:
	add	x8, x8, l_obfsfuncAddrLookupTable4393405372055863602@PAGEOFF
	add	x0, x8, x0, lsl #3
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh28, Lloh29
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"hello"

l_.str.1:                               ; @.str.1
	.asciz	"world"

l_.str.4:                               ; @.str.4
	.asciz	"test"

.zerofill __DATA,__bss,l_obfsfuncAddrLookupTable3461166234789197480,56,4 ; @obfsfuncAddrLookupTable3461166234789197480
.zerofill __DATA,__bss,l_obfsfuncAddrLookupTable3708285264181496015,8,3 ; @obfsfuncAddrLookupTable3708285264181496015
.zerofill __DATA,__bss,l_obfsfuncAddrLookupTable4393405372055863602,24,4 ; @obfsfuncAddrLookupTable4393405372055863602
.subsections_via_symbols
