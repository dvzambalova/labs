%include 'in_out.asm'

  SECTION .data
  
  msg:  DB 'Введите x: ',0
  rem:  DB 'Результат: ',0
    
  SECTION  .bss
  x:    RESB 80
  
  SECTION .text
  GLOBAL _start
   _start:
 
   mov eax, msg
   call sprintLF
   
   mov ecx, x
   mov edx, 80
   call sread
   
   mov eax,x
   call atoi
   
   ; вычисление выражения
   add eax,1
   mov ebx,18
   mul ebx
   xor edx,edx
   mov ecx,6
   div ecx
   
   mov edi,eax
   
   ; вывод результата на экран
   mov  eax,rem
   call sprint
   mov  eax,edi
   call iprintLF
   
   call quit
