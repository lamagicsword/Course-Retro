	.file	"snippets.cpp"
	.intel_syntax noprefix
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.align 2
	.globl	_ZN1a4getjEv
	.type	_ZN1a4getjEv, @function
_ZN1a4getjEv:
.LFB1232:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax+16]
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1232:
	.size	_ZN1a4getjEv, .-_ZN1a4getjEv
	.globl	_Z4test1a
	.type	_Z4test1a, @function
_Z4test1a:
.LFB1233:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	sub	esp, 28
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [ebp+20]
	mov	esi, DWORD PTR [ebp+16]
	movzx	eax, BYTE PTR [ebp+12]
	movsx	edi, al
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:_ZSt4cout
	call	_ZNSolsEi
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], eax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_ZNSolsEPKv
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_ZNSolsEf
	mov	DWORD PTR [esp+4], OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	_ZNSolsEPFRSoS_E
	add	esp, 28
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc.LFE1233:
	.size	_Z4test1a, .-_Z4test1a
	.globl	main
	.type	main, @function
main:
.LFB1234:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	sub	esp, 64
	mov	DWORD PTR [esp+44], 1
	mov	BYTE PTR [esp+48], 97
	mov	eax, DWORD PTR .LC0
	mov	DWORD PTR [esp+56], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+60]
	mov	DWORD PTR [esp+16], eax
	call	_Z4test1a
	lea	eax, [esp+44]
	mov	DWORD PTR [esp], eax
	call	_ZN1a4getjEv
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1234:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1247:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	cmp	DWORD PTR [ebp+8], 1
	jne	.L6
	cmp	DWORD PTR [ebp+12], 65535
	jne	.L6
	mov	DWORD PTR [esp], OFFSET FLAT:_ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	mov	DWORD PTR [esp+8], OFFSET FLAT:__dso_handle
	mov	DWORD PTR [esp+4], OFFSET FLAT:_ZStL8__ioinit
	mov	DWORD PTR [esp], OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
	call	__cxa_atexit
.L6:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1247:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN1a4getjEv, @function
_GLOBAL__sub_I__ZN1a4getjEv:
.LFB1248:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	DWORD PTR [esp+4], 65535
	mov	DWORD PTR [esp], 1
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1248:
	.size	_GLOBAL__sub_I__ZN1a4getjEv, .-_GLOBAL__sub_I__ZN1a4getjEv
	.section	.init_array,"aw"
	.align 4
	.long	_GLOBAL__sub_I__ZN1a4getjEv
	.section	.rodata
	.align 4
.LC0:
	.long	1066192077
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
