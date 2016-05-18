	.file	"snippet.cpp"
	.intel_syntax noprefix
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"I am a"
	.section	.text._ZNK1a3retEv,"axG",@progbits,_ZNK1a3retEv,comdat
	.align 2
	.weak	_ZNK1a3retEv
	.type	_ZNK1a3retEv, @function
_ZNK1a3retEv:
.LFB971:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	DWORD PTR [esp+4], OFFSET FLAT:.LC0
	mov	DWORD PTR [esp], OFFSET FLAT:_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	DWORD PTR [esp+4], OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	_ZNSolsEPFRSoS_E
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE971:
	.size	_ZNK1a3retEv, .-_ZNK1a3retEv
	.section	.rodata
.LC1:
	.string	"I am 1"
	.section	.text._ZNK1a4ret1Ev,"axG",@progbits,_ZNK1a4ret1Ev,comdat
	.align 2
	.weak	_ZNK1a4ret1Ev
	.type	_ZNK1a4ret1Ev, @function
_ZNK1a4ret1Ev:
.LFB972:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	DWORD PTR [esp+4], OFFSET FLAT:.LC1
	mov	DWORD PTR [esp], OFFSET FLAT:_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	DWORD PTR [esp+4], OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	_ZNSolsEPFRSoS_E
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE972:
	.size	_ZNK1a4ret1Ev, .-_ZNK1a4ret1Ev
	.section	.text._ZN1aD2Ev,"axG",@progbits,_ZN1aD5Ev,comdat
	.align 2
	.weak	_ZN1aD2Ev
	.type	_ZN1aD2Ev, @function
_ZN1aD2Ev:
.LFB974:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], OFFSET FLAT:_ZTV1a+8
	mov	eax, 0
	test	eax, eax
	je	.L3
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_ZdlPv
.L3:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE974:
	.size	_ZN1aD2Ev, .-_ZN1aD2Ev
	.weak	_ZN1aD1Ev
	.set	_ZN1aD1Ev,_ZN1aD2Ev
	.section	.text._ZN1aD0Ev,"axG",@progbits,_ZN1aD0Ev,comdat
	.align 2
	.weak	_ZN1aD0Ev
	.type	_ZN1aD0Ev, @function
_ZN1aD0Ev:
.LFB976:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_ZN1aD1Ev
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_ZdlPv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE976:
	.size	_ZN1aD0Ev, .-_ZN1aD0Ev
	.section	.rodata
.LC2:
	.string	"I am b"
	.section	.text._ZNK1b3retEv,"axG",@progbits,_ZNK1b3retEv,comdat
	.align 2
	.weak	_ZNK1b3retEv
	.type	_ZNK1b3retEv, @function
_ZNK1b3retEv:
.LFB977:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	DWORD PTR [esp+4], OFFSET FLAT:.LC2
	mov	DWORD PTR [esp], OFFSET FLAT:_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	DWORD PTR [esp+4], OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	_ZNSolsEPFRSoS_E
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE977:
	.size	_ZNK1b3retEv, .-_ZNK1b3retEv
	.section	.rodata
.LC3:
	.string	"I am 2"
	.section	.text._ZNK1b4ret1Ev,"axG",@progbits,_ZNK1b4ret1Ev,comdat
	.align 2
	.weak	_ZNK1b4ret1Ev
	.type	_ZNK1b4ret1Ev, @function
_ZNK1b4ret1Ev:
.LFB978:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	DWORD PTR [esp+4], OFFSET FLAT:.LC3
	mov	DWORD PTR [esp], OFFSET FLAT:_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	DWORD PTR [esp+4], OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	_ZNSolsEPFRSoS_E
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE978:
	.size	_ZNK1b4ret1Ev, .-_ZNK1b4ret1Ev
	.section	.text._ZN1aC2Ev,"axG",@progbits,_ZN1aC5Ev,comdat
	.align 2
	.weak	_ZN1aC2Ev
	.type	_ZN1aC2Ev, @function
_ZN1aC2Ev:
.LFB981:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], OFFSET FLAT:_ZTV1a+8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE981:
	.size	_ZN1aC2Ev, .-_ZN1aC2Ev
	.weak	_ZN1aC1Ev
	.set	_ZN1aC1Ev,_ZN1aC2Ev
	.section	.text._ZN1bC2Ev,"axG",@progbits,_ZN1bC5Ev,comdat
	.align 2
	.weak	_ZN1bC2Ev
	.type	_ZN1bC2Ev, @function
_ZN1bC2Ev:
.LFB984:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_ZN1aC2Ev
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], OFFSET FLAT:_ZTV1b+8
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE984:
	.size	_ZN1bC2Ev, .-_ZN1bC2Ev
	.weak	_ZN1bC1Ev
	.set	_ZN1bC1Ev,_ZN1bC2Ev
	.text
	.globl	main
	.type	main, @function
main:
.LFB979:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	and	esp, -16
	sub	esp, 32
	.cfi_offset 3, -12
	mov	DWORD PTR [esp], 4
	call	_Znwj
	mov	ebx, eax
	mov	DWORD PTR [esp], ebx
	call	_ZN1aC1Ev
	mov	DWORD PTR [esp+24], ebx
	mov	DWORD PTR [esp], 4
	call	_Znwj
	mov	ebx, eax
	mov	DWORD PTR [esp], ebx
	call	_ZN1bC1Ev
	mov	DWORD PTR [esp+28], ebx
	mov	eax, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], edx
	call	eax
	mov	eax, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [eax]
	add	eax, 4
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], edx
	call	eax
	mov	eax, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], edx
	call	eax
	mov	eax, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [eax]
	add	eax, 4
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], edx
	call	eax
	mov	eax, 0
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE979:
	.size	main, .-main
	.weak	_ZTV1b
	.section	.rodata._ZTV1b,"aG",@progbits,_ZTV1b,comdat
	.align 8
	.type	_ZTV1b, @object
	.size	_ZTV1b, 24
_ZTV1b:
	.long	0
	.long	_ZTI1b
	.long	_ZNK1b3retEv
	.long	_ZNK1b4ret1Ev
	.long	_ZN1bD1Ev
	.long	_ZN1bD0Ev
	.section	.text._ZN1bD2Ev,"axG",@progbits,_ZN1bD5Ev,comdat
	.align 2
	.weak	_ZN1bD2Ev
	.type	_ZN1bD2Ev, @function
_ZN1bD2Ev:
.LFB995:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], OFFSET FLAT:_ZTV1b+8
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_ZN1aD2Ev
	mov	eax, 0
	test	eax, eax
	je	.L14
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_ZdlPv
.L14:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE995:
	.size	_ZN1bD2Ev, .-_ZN1bD2Ev
	.weak	_ZN1bD1Ev
	.set	_ZN1bD1Ev,_ZN1bD2Ev
	.section	.text._ZN1bD0Ev,"axG",@progbits,_ZN1bD0Ev,comdat
	.align 2
	.weak	_ZN1bD0Ev
	.type	_ZN1bD0Ev, @function
_ZN1bD0Ev:
.LFB997:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_ZN1bD1Ev
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_ZdlPv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE997:
	.size	_ZN1bD0Ev, .-_ZN1bD0Ev
	.weak	_ZTV1a
	.section	.rodata._ZTV1a,"aG",@progbits,_ZTV1a,comdat
	.align 8
	.type	_ZTV1a, @object
	.size	_ZTV1a, 24
_ZTV1a:
	.long	0
	.long	_ZTI1a
	.long	_ZNK1a3retEv
	.long	_ZNK1a4ret1Ev
	.long	_ZN1aD1Ev
	.long	_ZN1aD0Ev
	.weak	_ZTS1b
	.section	.rodata._ZTS1b,"aG",@progbits,_ZTS1b,comdat
	.type	_ZTS1b, @object
	.size	_ZTS1b, 3
_ZTS1b:
	.string	"1b"
	.weak	_ZTI1b
	.section	.rodata._ZTI1b,"aG",@progbits,_ZTI1b,comdat
	.align 4
	.type	_ZTI1b, @object
	.size	_ZTI1b, 12
_ZTI1b:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS1b
	.long	_ZTI1a
	.weak	_ZTS1a
	.section	.rodata._ZTS1a,"aG",@progbits,_ZTS1a,comdat
	.type	_ZTS1a, @object
	.size	_ZTS1a, 3
_ZTS1a:
	.string	"1a"
	.weak	_ZTI1a
	.section	.rodata._ZTI1a,"aG",@progbits,_ZTI1a,comdat
	.align 4
	.type	_ZTI1a, @object
	.size	_ZTI1a, 8
_ZTI1a:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS1a
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB998:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	cmp	DWORD PTR [ebp+8], 1
	jne	.L19
	cmp	DWORD PTR [ebp+12], 65535
	jne	.L19
	mov	DWORD PTR [esp], OFFSET FLAT:_ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	mov	DWORD PTR [esp+8], OFFSET FLAT:__dso_handle
	mov	DWORD PTR [esp+4], OFFSET FLAT:_ZStL8__ioinit
	mov	DWORD PTR [esp], OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
	call	__cxa_atexit
.L19:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE998:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB999:
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
.LFE999:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 4
	.long	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
