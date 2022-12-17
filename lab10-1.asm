%include 'in_out.asm'
SECTION .data
     msg:    db 'Введите х: ',0
     result: db 'f(g(x))=',0
SECTION .bss
     x:    RESB 80
     rezs: RESB 80
     
SECTION .text
GLOBAL _start
 _start:
 ;основная программа
 mov  eax,msg
 call sprint
 mov  ecx, x
 mov  edx, 80
 call sread
 
 mov  eax,x
 call atoi
 
 call _calcul
 
 mov  eax,result
 call sprint
 mov  eax,[rezs]
 call iprintLF
 call quit
 
 ;подпрограмма вычисления выражения 2(3х-1)+7
 _calcul:
 call _subcalcul
 mov ebx,2
 mul ebx
 add eax,7
 mov [rezs],eax
 ret
 
 ;подпрограмма вычисления выражения 3х-1
 _subcalcul:
 mov ebx,3
 mul ebx
 dec eax
 mov [rezs],eax
 ret
