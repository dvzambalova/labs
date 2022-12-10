%include 'in_out.asm'

SECTION .data
msg1 db 'Функция: f(x)=10(x-1)',0
msg2 db "Результат: ",0

SECTION  .bss
x:    RESB 80


SECTION .text
global _start

_start:
   mov eax,msg1
   call sprintLF

   pop  ecx
   pop  edx
   sub  ecx,1
   mov esi,0
   
next:
   cmp ecx,0h
   jz  _end
   
   pop  eax
   call atoi
   dec eax
   mov ebx,10
   mul ebx
   add  esi,eax
   loop next
   
_end:
   mov  eax, msg2
   call sprint
   mov  eax, esi
   call iprintLF
   call quit
