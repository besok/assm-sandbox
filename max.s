.section .data
data_items: .long 1,2,3,121,6,9,2,12,4,5,0

.section .text
.globl _start

_start:
 movl $0, %edi
 movl data_items(,%edi,4), %eax
 movl %eax, %ebx

iter:
 cmpl $0, %eax
 je exit
 incl %edi
 movl data_items(,%edi,4), %eax
 cmpl %ebx, %eax
 jle iter
 movl %eax, %ebx
 jmp iter

exit:
 movl $1, %eax
 int  $0x80    
