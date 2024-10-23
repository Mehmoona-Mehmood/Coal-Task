.model small
.stack 100h
.data
result db 0
.code
main proc

mov cx,3            ;loop for print digits

mov dx,48  

AddNumbers:
add ax,cx
loop AddNumbers

mov result,al

 
mov ah,2
 mov dl,result
 add dl,48
 int 21h
  
 


mov ah,4ch
int 21h

main endp
end main