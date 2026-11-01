\\STACK 1024

mensaje equ "Probando el constant segment\n"
resultado equ "Resultado de 12 + 30:\n"

main:       mov     edx, ks
            add     edx, mensaje
            sys     0x4

            mov     eax, 12
            add     eax, 30
            mov     edx, ds
            mov     [edx], eax

            mov     edx, ks
            add     edx, resultado
            sys     0x4

            mov     eax, 0x01
            ldh     ecx, 0x04
            ldl     ecx, 0x01
            mov     edx, ds
            sys     0x2

            stop
