; Explain what this program does
; Author:  Your name
; Date:    put teh date


.DATA
number  QWORD   -105
sum     QWORD   ?

.CODE
main    PROC
        mov     rax, number     ; first number to EAX
        add     rax, 158        ; add 158
        mov     sum, rax        ; sum to memory

        mov     rax, 0          ; return code
        ret                     ; exit to operating system
        
main    ENDP

END