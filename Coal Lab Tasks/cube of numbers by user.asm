.model small
.stack 100h
.data
.code
main proc

 mov ah,1
 int 21h             ;cube of number
 sub al,48
 mul bl
 

  mov cl,2
  div cl
      
AAM

mov ch,ah
mov cl,al
mov dl,ch

add dx,48
mov ah,2
int 21h

      
      
mov dl,cl
add dx,48
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main