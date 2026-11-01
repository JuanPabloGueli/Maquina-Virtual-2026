dato equ 0


\\include "main4b.asm"

inicio: CALL main
        STOP

maximo: PUSH bp
        MOV BP,sp
        PUSH ebx
        PUSH ecx
        MOV EBX,[BP+8]
        MOV EBX,[EBX]
        CMP EBX,null
        JNZ sigue
        MOV EAX,[BP+8]
        JMP fin

sigue:  MOV ECX,EBX
        ADD ECX,sig
        PUSH ecx    
        CALL maximo
        ADD sp,4

        MOV ECX,[EAX]
        CMP ECX,null
        JZ return
        CMP [ebx+dato], [ECX+dato]
        JP return
        JZ return
        JMP fin

return: MOV EAX, [bp+8]

fin:    POP ECX
        POP EBX
        MOV SP,BP
        POP BP
        RET
