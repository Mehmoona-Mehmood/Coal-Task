.model small
.stack 100h
.data
.code
main proc

 
mov ax,3
mov bx,2
mul bx

add ax,48


mov dl,al

mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main