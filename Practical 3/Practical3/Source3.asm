INCLUDE Irvine32.inc

.data
data1 DWORD 60000,80000,92100,100000,2000
data2 DWORD 5 DUP (?)

.code
main proc

	
	mov esi,0
	mov eax,data1[esi]
	xchg eax,data1[esi+16]
	xchg eax,data1[esi+8]
	xchg eax,data1[esi+4]
	xchg eax,data1[esi+12]
	xchg eax,data1[esi]
	
	mov ecx,5	;initialize count register as 5

	mov eax,data1[esi]
	mov data2[esi],eax
	mov eax,data1[esi+4]
	mov data2[esi+4],eax
	mov eax,data1[esi+8]
	mov data2[esi+8],eax
	mov eax,data1[esi+12]
	mov data2[esi+12],eax
	mov eax,data1[esi+16]
	mov data2[esi+16],eax

L1:
	mov eax,data2[esi*4]	;get the character from data1
	call WriteInt
	call Crlf
	inc esi
	loop L1

	exit
main ENDP
end main