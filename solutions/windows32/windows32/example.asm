; Explain what this program does
; Author:  Your name
; Date:    put the date

.586
.MODEL FLAT

INCLUDE io.h                                ; header file for input/output

.STACK 4096

.DATA
x DWORD   ?                                 ; variable to store number x   
y DWORD   ?                                 ; variable to store number y    
z DWORD   ?                                 ; variable to store number z
prompt1 BYTE    "Enter value of x", 0       ; prompt for number x
prompt2 BYTE    "Enter value of y", 0       ; prompt for number y
prompt3 BYTE    "Enter value of z", 0       ; prompt for number z


string  BYTE    40 DUP (?)                  ; buffer to store ASCII values
dispRlt BYTE  "The result is", 0            ; prompt for the result display
result  BYTE    11 DUP (?), 0               ; result in ASCII

.CODE
_MainProc PROC
        input   prompt1, string, 40         ; read ASCII characters from x
        atod    string                      ; convert to integer
        mov     x, eax                      ; store in memory

        input   prompt2, string, 40         ; read ASCII characters from y
        atod    string                      ; convert to integer
        mov     y, eax                      ; store in memory

        input   prompt3, string, 40         ; read ASCII characters from z
        atod    string                      ; convert to integer
        mov     z, eax                      ; store in memory

        mov     eax, x                      ; result := x
        add     eax, y                      ; result := x + y 
        mov     ebx, z                      ; temp   := z
        add     ebx, ebx                    ; temp   := 2*z
        sub     eax, ebx                    ; result := x + y - 2z
        inc     eax                         ; result := x + y - 2*z + 1
        neg     eax                         ; result := - (x + y - 2*z +1)

        dtoa    result, eax                 ; convert result to ASCII
        output  dispRlt, result             ; output label and result

        mov     eax, 0                      ; exit with return code 0
        ret

_MainProc ENDP
END                                          ; end of source code

