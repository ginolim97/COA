INCLUDE Irvine32.inc

.data
dlist DWORD 2,5000,6000,150000,2500,150
result DWORD 0

.code
main proc

	
	mov esi,0	
	mov ecx,6	;initialize count register as 5

L1:
	mov eax,dlist[esi]
	add result,eax
	add esi,4
	loop L1

	mov eax, result
	call WriteInt
	call Crlf

	exit
main ENDP
end main