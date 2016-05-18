;Yujian Li(yl7kd) 03/28/16 Section 102
; 

	global	product
	global  power

	section .text

product:

	; Standard prologue
	push  ebp		; Save the old base pointer
	mov   ebp, esp		; Set new value of the base pointer
	push  esi		; Save registers

	xor   eax, eax	

	mov   esi, [ebp+8]	
	mov   ecx, [ebp+12]

	cmp   ecx, 0
	jle   product_done

product_loop:
		
	add   eax, esi

	dec   ecx

	cmp   ecx, 0
	jg	  product_loop
	
product_done:
		
	pop	esi
	pop	ebp
		
	ret

;Prologue;
power:
		; Standard prologue
	push  ebp		; Save the old base pointer
	mov   ebp, esp		; Set new value of the base pointer
	push  esi		         		
	xor   eax, eax

	mov   esi, [ebp+8]	
	mov   ecx, [ebp+12]

	cmp   ecx, 0
	jg	  power_recursion
	add   eax, 1
	jmp   power_done

power_recursion:
	dec	  ecx
		
	push  ecx
	push  esi
		
	call  power
		
	push  eax
	push  esi
		
	call  product
		
;Epilogue;
power_done:
		
	pop	esi
	mov esp, ebp
	pop ebp
		
	ret
