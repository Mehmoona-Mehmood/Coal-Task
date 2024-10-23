.model small
.stack 100h
.data

msg1 DB 'Mehmoona$'
.code
main proc 
   
  mov ah,1
  int 21h 
  mov bx,ax
   
 mov dl,10  ;for next line
 mov ah,2
 int 21h
  
 mov dl,13   ;cariage line
 mov ah,2
 int 21h   
 

mov cx,bx
          
mov dx,bx  

 
 l1: 
 
  mov ax,@data
 mov ds,ax
 mov dl,msg1
 mov dx,offset msg1 
 
 mov ah,9  ;to print in string
 int 21h 
 
;print digits 
 mov ah,2
 int 21h
 
 
 loop l1

mov ah,4ch
int 21h

main endp
end main