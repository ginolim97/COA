INCLUDE Irvine32.inc

.data
LIST DWORD 70019,9003,3001,4,6,1 

.code

main PROC

	mov  esi,OFFSET LIST
	mov ecx,LENGTHOF LIST

L1: mov eax,dword ptr [esi] ;get the values stored in address of esi
	test eax,1
	jz evnn
	add esi,type LIST		;return 4
	loop L1

evnn: call WriteInt
	  call Crlf

	exit
main ENDP
END main
