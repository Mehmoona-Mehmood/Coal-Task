.model small
.stack 100h
.data
.code
main proc 
    
  mov ah,1
  int 21h 
  mov bl,al
   
 mov dl,10  ;for next line
 mov ah,2
 int 21h
  
 mov dl,13   ;cariage line
 mov ah,2
 int 21h 

mov cx,10          ; print digits
mov dx,bx         ;ascii code for starting

 
 l1: 
;print digits 

 mov ah,2
 int 21h
 

 loop l1

mov ah,4ch
int 21h

main endp
end main