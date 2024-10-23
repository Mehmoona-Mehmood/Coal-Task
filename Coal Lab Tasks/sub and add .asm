.model small 
.stack 100h
.data
.code
main proc
    
 
 
   
 mov ah,1
 int 21h
 mov dl,al
  
 
  mov ah,1
 int 21h
 mov bl,al
 
 sub bl,dl    ;sub two no
 add bl,48
         
         
  mov ah,1
 int 21h
 mov cl,al 
 

add cl,bl        ;add 1 no 
sub cl,48

mov dl,cl 

 
 
  
  mov ah,2
 int 21h
   
 mov ah,4ch
 int 21h
  
main endp
end main