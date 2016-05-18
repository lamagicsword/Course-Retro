; Yujian Li (yl7kd) 04/11/16 Section 102;

	global threexplusone

	section .text

;threexplusone;
;Parameter 1 - an integer value;
;Return value - the number of steps it takes after a while;
		;optimization used: In the prelab I first tried to aviod pushing registers like esi and ecx into the stack at the begining(which also avoid using pop at the end), then I used bit shifting method during the recursion process.I also unroll the for loop in the cpp file. These methods help to reduce the the runtime of the program by 50 percent in the case of number 27.
threexplusone:
		; Standard prologue
		push ebp
		mov  ebp, esp
		xor  eax, eax
		mov  esi, [ebp+8]

		cmp  esi, 1
		jg   recursion
		jmp  done

recursion:
		mov ecx, 1
		and ecx, esi
		cmp ecx, 0
		jg  odd
		shr esi, 1
		push esi
		call threexplusone
		inc eax
		jmp done
odd:
		mov esi, [ebp+8]
		shl esi, 1
		add esi, [ebp+8]
		inc esi
		push esi
		call threexplusone
		inc eax
		jmp done
done:
		;epilogue
		mov esp,ebp
		pop ebp

		ret
