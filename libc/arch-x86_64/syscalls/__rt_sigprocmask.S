/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(__rt_sigprocmask)
    movq    %rcx, %r10
    movl    $__NR_rt_sigprocmask, %eax
    syscall
    cmpq    $-MAX_ERRNO, %rax
    jb      1f
    negl    %eax
    movl    %eax, %edi
    call    __set_errno
1:
    ret
END(__rt_sigprocmask)
.hidden __rt_sigprocmask
