; Name: Michael Hahm
; Email: mhahm2@umbc.edu
; CMSC 313 - HW 11 (Data to Ascii)

; Description: This program is meant to read bytes from an input buffer,
;              convert them to ASCII hex, store them into an output buffer,
;              and print the result.
;              It also uses a subroutine to convert each nibble (extra credit).

SECTION .data
inputBuf: db 0x83, 0x6A, 0x88, 0xDE, 0x9A, 0xC3, 0x54, 0x9A
inputLen equ 8  ; number of bytes in inputBuf

SECTION .bss
outputBuf: resb 80  ; output buffer for the translated data

SECTION .text
global _start

_start:
    mov esi, inputBuf   ; ESI source pointer for inputBuf
    mov edi, outputBuf  ; EDI destination pointer for the outputBuf

    mov ecx, inputLen   ; ecx used for loop counter for inputBuf

translate_loop:
    lodsb   ; load next byte from ESI into AL (low byte)

    ; convert 4 bits of the byte to ASCII hex character (translate high nibble)
    mov ah, al
    shr ah, 4
    push ax     ; save the full AL
    mov al, ah
    call nibble_to_ascii    ; calls nibble_to_ascii subroutine (EXTRA CREDIT)
    mov [edi], al
    inc edi
    pop ax  ; restore the original AL

