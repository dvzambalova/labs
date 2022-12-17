;(3+2)*4+5
%include 'in_out.asm'

SECTION .data
div: db 'Результат: ',0h

SECTION .text
GLOBAL _start
_start:
   mov eax,3
   mov ebx,2
   add eax,ebx
   mov ecx,4
   mul ecx
   mov ebx,5
   add eax,ebx
   mov edi,eax
   
   mov eax,div
   call sprint
   mov eax,edi
   call iprintLF
   call quit
