; Program Name: Project 3
; Author: Davis Leeth
; Creation Date: 2/23/2022
; Description:
; This program takes an array and copies the values to another array
; with the value's spot shifted by a certain amount.
;
; Last Modified: 2/24/2022

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD


.data
    shift dword 2
    input byte 1,2,3,4,5,6,7,8
    output byte LENGTHOF input dup(?)	
.code
    main proc
				;set all registers to zero
				mov eax, 0
				mov ebx, 0
				mov ecx, 0
				mov esi, offset input
				mov edi, offset output

				;This loop will iterate length - shift times. 
				mov ecx, LENGTHOF input
				sub ecx, shift
				add edi, shift
			
    			A:	
				;Move the value from input into al
				mov al, [esi]
				;Move the value from al into output
				mov [edi], al
				;Increment the input index
				inc esi
				;Increment the output index
				inc edi
    			loop A

				;This loop will iterate shift times
				mov ecx, shift
				mov edi, offset output
	
    			B:	
				;Move the value from input into al
				mov al, [esi]
				;Move the value from al into output
				mov [edi], al
				;Increment the input index
				inc esi
				;Increment the output index
				inc edi
				loop B



INVOKE ExitProcess,0
main ENDP
END main

