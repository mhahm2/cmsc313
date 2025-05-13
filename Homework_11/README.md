Homework 11 - NASM Ascii Hex translator

Description: This program is meant to read bytes from a buffer, convert them into ASCII hex, and print out the results.

Compilation:
  Simply do the following manual compile/run in your terminal (excluding the quotes)
  - "nasm -f elf32 -g -F dwarf -o hw11_ascii.o hw11_ascii.asm"
  - "ld -m elf_i386 -o hw11_ascii hw11_ascii.o"
  - "./hw11_ascii"
