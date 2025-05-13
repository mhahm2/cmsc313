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