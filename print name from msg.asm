.model small 
.stack 100h
.data 

msg1 DB 'Mehmoona$'

msg2 DB 'Mehmood$'

.code
main proc
    
 
 mov ax,@data
 mov ds,ax
 mov dl,msg1
 mov dx,offset msg1 
 
 mov ah,9  ;to print in string
 int 21h 
 
 mov dx,10     ;next line
 mov ah,2
 int 21h
 
 mov dx,13      ;carriage line
 mov ah,2
 int 21h 
 
 
 mov ax,@data
 mov ds,ax
 mov dl,msg2
 mov dx,offset msg2 
  
   
  mov ah,9  ;to print in string
 int 21h 
 
   
 mov ah,4ch
 int 21h
  
main endp
end main