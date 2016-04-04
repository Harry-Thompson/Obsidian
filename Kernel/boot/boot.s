# Declaring variables
.set ALIGN,         1<<0                         # Align any loaded modules to the page boundaries
.set MEMINFO,       1<<1                         # Provide mapping of memory
.set MULTIFIELD,    ALIGN | MEMINFO              # Multiboot field
.set HEADERLOCAL,   0x1BADB002                   # Allows the bootloader (GRUB 2) to find the header
.set CHECKSUM,      -(HEADERLOCAL + MULTIFIELD)  # This is the checksum of the HEADERLOCAL, this is used to tell us whether or not we are in multiboot


.section .multiboot
.align 4
.long MULTIFIELD
.long FLAGS
.long CHECKSUM


# Allocating own stack to avoid damage

.section .bootstrap_stack, "aw", @nobits
stack_bottom:
.skip 16384 # 16 KiB
stack_top:


.section .text
.global _start
.type _start, @function
_start:

            # Set up stack
            movl $stack_top, %esp

            # Call C code
            call kernel_main

            cli
            hlt

.Lhang:
            jmp .Lhang

.size _start, . - _start
