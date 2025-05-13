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

    ; convert 3 bits of the byte to the ASCII hex character (translate low nibble)
    and al, 0x0F
    call nibble_to_ascii    ; calls nibble_to_ascii subroutine (EXTRA CREDIT)
    mov [edi], al
    inc edi

    ; add space/newline (as instructed for output from assignment instructions)
    dec ecx
    cmp ecx, 0
    jne add_space   ; call add_space subroutine to space out ASCII outputs

    ; add newlines (as instructed for output from assignment instructions)
    mov byte [edi], 0x0A    ; first newline
    inc edi
    mov byte [edi], 0x0A    ; second newline (completely blank)
    inc edi
    jmp done

; add_space subroutine
add_space:
    mov byte [edi], ' ' ; space out the ASCII outputs (match assignment sample output)
    inc edi
    jmp translate_loop  ; afterwards, jump back to loop for next ASCII output

done:
    ; syscall to write the stdout, outputBuf, and length
    mov eax, 4  ; syscall number 4 (syswrite)
    mov ebx, 1  ; file descriptor 1 (stdout)
    mov ecx, outputBuf
    mov edx, edi
    sub edx, outputBuf
    int 0x80    ; perform the syscall

    ; syscall to exit(0)
    mov eax, 1
    xor ebx, ebx
    int 0x80    ; perform syscall