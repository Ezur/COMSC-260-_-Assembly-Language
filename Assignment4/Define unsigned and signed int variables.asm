; Assignment 4		(Assignemnt4.asm)
; Program Description: define (5) 32-bit unsigned and (5) 32-bit signed int variables. 
;	SUM = (A + B) - (C + D)
; Author: Elise Zur, 1851550
; Creation Date: 2/17/2022

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
	sum DWORD 0			; DWORD = 32-bit data type
	valueA DWORD 1000	; 32-bit unsigned vars
	valueB DWORD 500
	valueC DWORD 450
	valueD DWORD 100

	ssum SDWORD 0
	svalueA SDWORD 1000
	svalueB SDWORD 500
	svalueC SDWORD 450
	svalueD SDWORD 100

.code
main proc
	mov eax,valueA		; 32-bit un-signed vars
	mov ebx,valueC
	add eax,valueB
	add ebx,valueD
	sub eax,ebx
	mov sum,eax

	mov eax,svalueA		; 32-bit signed vars
	mov ebx,svalueC
	add eax,svalueB
	add ebx,svalueD
	sub eax,ebx
	mov ssum,eax

	INVOKE ExitProcess,0
main ENDP
END main
