	.file	"snippet2.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	_Z6triplei
	.type	_Z6triplei, @function
_Z6triplei:
.LFB998:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	sub	esp, 20
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], OFFSET FLAT:_ZSt4cout
	lea	eax, [eax+eax*2]
	mov	DWORD PTR [esp+4], eax
	call	_ZNSolsEi
	mov	esi, eax
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax-12]
	mov	ebx, DWORD PTR [esi+124+eax]
	test	ebx, ebx
	je	.L7
	cmp	BYTE PTR [ebx+28], 0
	je	.L3
	movzx	eax, BYTE PTR [ebx+39]
.L4:
	movsx	eax, al
	mov	DWORD PTR [esp], esi
	mov	DWORD PTR [esp+4], eax
	call	_ZNSo3putEc
	mov	DWORD PTR [esp+32], eax
	add	esp, 20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_ZNSo5flushEv
	.p2align 4,,7
	.p2align 3
.L3:
	.cfi_restore_state
	mov	DWORD PTR [esp], ebx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	eax, DWORD PTR [ebx]
	mov	DWORD PTR [esp+4], 10
	mov	DWORD PTR [esp], ebx
	call	[DWORD PTR [eax+24]]
	jmp	.L4
.L7:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE998:
	.size	_Z6triplei, .-_Z6triplei
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB999:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	.cfi_offset 3, -12
	xor	ebx, ebx
	and	esp, -16
	sub	esp, 16
	.p2align 4,,7
	.p2align 3
.L10:
	mov	DWORD PTR [esp], ebx
	add	ebx, 1
	call	_Z6triplei
	cmp	ebx, 10
	jne	.L10
	xor	eax, eax
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE999:
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z6triplei, @function
_GLOBAL__sub_I__Z6triplei:
.LFB1006:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	DWORD PTR [esp], OFFSET FLAT:_ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	mov	DWORD PTR [esp+8], OFFSET FLAT:__dso_handle
	mov	DWORD PTR [esp+4], OFFSET FLAT:_ZStL8__ioinit
	mov	DWORD PTR [esp], OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
	call	__cxa_atexit
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1006:
	.size	_GLOBAL__sub_I__Z6triplei, .-_GLOBAL__sub_I__Z6triplei
	.section	.init_array,"aw"
	.align 4
	.long	_GLOBAL__sub_I__Z6triplei
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
