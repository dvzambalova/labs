%include 'in_out.asm'

  SECTION .data
  
  div:  DB 'Результат: ',0
  rem:  DB 'Остаток от деления: ',0
  
  SECTION .text
  GLOBAL _start
   _start:
   
   ; вычисление выражения
   mov eax,4
   mov ebx,6
   mul ebx
   add eax,2
   xor edx,edx
   mov ebx,5
   div ebx
   
   mov edi,eax
   
   ; вывод результата на экран
   mov  eax,div
   call sprint
   mov  eax,edi
   call iprintLF
   
   mov  eax,rem
   call sprint 
   mov  eax,edx
   call iprintLF
   
   call quit
