; Program Name: Project 2
; Author: Davis Leeth
; Creation Date: 2/7/2022

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data
		input BYTE 1,2,3,4,5,6,7,8
		shift BYTE 2
.code
		main proc
			; clear up the registers to make sure there is no old values inside them
			mov EAX, 0                      
			mov EBX, 0
			mov ECX, 0
			mov EDX, 0

			; setup EAX register with 1st and 2nd values from the input array
			; add 1st value from input into register
			mov AH, input
	        ; shift the value inside the register
            add AH, shift
            
            ; add 2nd value from input into register
            mov AL, [input + 1]
			; shift the value inside the register
			add AL, shift	

			; setup EAX register with 3rd and 4th values from the input array
			
			mov BH, [input + 2]
	        
            add BH, shift
            
            mov BL, [input + 3]
			
			add BL, shift	

            ; setup EAX register with 5th and 6th values from the input array
			
			mov CH, [input + 4]
	        
            add CH, shift
            
            mov CL, [input + 5]
			
			add CL, shift	

            ; setup EAX register with 7rd and 8th values from the input array
			
			mov DH, [input + 6]
	        
            add DH, shift
            
            mov DL, [input + 7]
			
			add DL, shift	

			; exit the program
			invoke ExitProcess, 0
		main endp
end main