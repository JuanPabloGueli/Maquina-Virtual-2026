\\STACK 1024

prompt1 equ "Ingresa el primer texto (sin espacios):\n"
prompt2 equ "Ingresa el segundo texto (sin espacios):\n"
salida1 equ "\nPrimer texto: "
salida2 equ "\nSegundo texto: "

main:       mov     edx, ks
            add     edx, prompt1
            sys     0x4

            mov     edx, ss
            mov     ecx, 32
            sys     0x3

            mov     edx, ks
            add     edx, prompt2
            sys     0x4

            mov     edx, ss
            add     edx, 32
            mov     ecx, 32
            sys     0x3

            mov     edx, ks
            add     edx, salida1
            sys     0x4

            mov     edx, ss
            sys     0x4

            mov     edx, ks
            add     edx, salida2
            sys     0x4

            mov     edx, ss
            add     edx, 32
            sys     0x4

            stop
