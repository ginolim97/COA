INCLUDE Irvine32.inc

.data
TF DWORD ?
TC DWORD 3200


.code

main PROC
    mov ecx,TC
	mov edx,90
	call Multiply

	mov ecx,eax
	mov edx,4
	call Divide

	add eax,TC
	mov TF,eax
	call WriteInt
	call Crlf

	exit
main ENDP

Multiply PROC USES ECX EDX
	mov eax,edx
	imul ecx
	ret
Multiply ENDP

Divide PROC USES ECX EDX
	mov eax,ecx
	mov ecx,edx
	xor edx,edx
	idiv ecx
	ret
Divide ENDP

END main
