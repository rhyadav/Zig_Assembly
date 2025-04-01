    .globl add_numbers      # Export the symbol add_numbers.
    .section .text
add_numbers:
    mov %rdi, %rax          # Move the first argument (in rdi) into rax.
    add %rsi, %rax          # Add the second argument (in rsi) to rax.
    ret                     # Return with result in rax.
