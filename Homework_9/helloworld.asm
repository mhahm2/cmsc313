; Name: Michael Hahm
; Email: mhahm2@umbc.edu
; CMSC 313 - HW 9 (Hello World in nasm)

SECTION .data
msg db 'Hello World!', 0Ah

SECTION .text
global _start

_start:

    mov edx, 13
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 80h