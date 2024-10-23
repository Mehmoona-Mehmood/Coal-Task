org 100h
.model small
.stack 100h
.data
    msg1 DB 10,13, "Enter First Number:$"
    msg2 DB 10,13, "Enter Second Number:$"
    msg3 DB 10,13, "Numbers are Equal:$"
    msg4 DB 10,13, "First Number is Greater:$"
    msg5 DB 10,13, "Second Number is Greater:$"
    
.code
main proc
    mov ax, @data
    mov ds, ax
    
   ;text for the first number
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    ; Get first number
    mov ah, 1
    int 21h
    sub al, '0'   
    mov cl, al   
    
    ; text for the second number
    mov dx, offset msg2
    mov ah, 9
    int 21h
    
    ; Get second number
    mov ah, 1
    int 21h
    sub al, '0'   
    mov dl, al    
    
    ; Compare the numbers
    cmp cl, dl
    je EqualLabel   
    jg GreaterLabel 
    
    ; If second number is greater
    mov dx, offset msg5
    mov ah, 9
    int 21h
    jmp EndProgram
    
GreaterLabel:
    ; If first number is greater
    mov dx, offset msg4
    mov ah, 9
    int 21h
    jmp EndProgram
    
EqualLabel:
    ; If numbers are equal
    mov dx, offset msg3
    mov ah, 9
    int 21h
    
EndProgram:
    ; Exit program
    mov ah, 4Ch
    int 21h
main endp
end main
