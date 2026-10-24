saludo equ "Holaaa"
numero equ 10


main:       PUSH 3            ; b
            PUSH numero       ; a
            CALL inicio       ; al regresar, EAX contiene el resultado
            ADD SP, 8         ; limpiar los argumentos
            MOV EDX, DS
            MOV [EDX], EAX
            MOV EAX, 1
            LDH ECX, 0x04
            LDL ECX, 0x01
            SYS 0x2

            STOP

inicio:     PUSH BP
            MOV BP, SP
            PUSH EBX
            PUSH ECX
            PUSH EDX
            MOV EBX, [BP+12]; b
            MOV ECX, [BP+8]; a
            MOV EAX,1

otro:       CMP EBX,0
            JZ fin
            JP positivo

negativo:   MOV EDX,1
            DIV EDX,ECX
            ADD EBX,1
            PUSH EBX
            PUSH EDX
            CALL inicio
            ADD SP,8
            MUL EAX,ECX
            JMP fin

positivo:   SUB EBX,1
            PUSH EBX
            PUSH ECX
            CALL inicio
            ADD SP,8
            MUL EAX,ECX
            JMP fin

fin:        POP EDX
            POP ECX
            POP EBX
            MOV SP,BP
            POP BP
            RET

