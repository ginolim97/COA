INCLUDE Irvine32.inc

.data
str1 BYTE "Assembly language is easy!",0
str2 BYTE "Hello World!",0Dh,0Ah,0

.code

main PROC

	mov  edx,OFFSET str1
	call WriteString
	call Crlf

	mov  edx,OFFSET str2
	call WriteString

	exit
main ENDP
END main
