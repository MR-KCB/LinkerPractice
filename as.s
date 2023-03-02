.global  _start

# Start a special section called .text.prologue making it
# allocatable and executable
.section .text.prologue, "ax"

_start:
jmp main

.text
# All other regular code in the normal .text section
