.model small 
.stack 100h
.data 

msg1 DB 'Name:Mehmoona Mehmood  $'

msg2 DB 'Age:18$' 

msg3 DB 'Email id:mehmoona786@gmail.com  $'

msg4 DB 'Education:Bachelor of Software Engineering$'

msg5 DB 'Skills:Web Developer,web Designer$'





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
  
   
  mov ah,9  
 int 21h  
       
       
 
 mov dx,10     
 mov ah,2
 int 21h
 
 mov dx,13      
 mov ah,2
 int 21h 
            
            
 mov ax,@data
 mov ds,ax
 mov dl,msg3
 mov dx,offset msg3 
 
 mov ah,9  
 int 21h  
 
 
 mov dx,10     
 mov ah,2
 int 21h
 
 mov dx,13      
 mov ah,2
 int 21h 
 
 
 mov ax,@data
 mov ds,ax
 mov dl,msg4
 mov dx,offset msg4 
 
 
  mov ah,9  
 int 21h  
 
 
 mov dx,10     
 mov ah,2
 int 21h
 
 mov dx,13      
 mov ah,2
 int 21h 
            
            
 mov ax,@data
 mov ds,ax
 mov dl,msg5
 mov dx,offset msg5 
 
 mov ah,9  
 int 21h 
  
   
             
            
            
            
            
   
 mov ah,4ch
 int 21h
  
main endp
end main