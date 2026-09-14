inicio:     MOV EAX,0b01
            MOV EDX, DS
            ADD EDX,4
            LDH ECX,0x04
            LDL ECX,0x01
            SYS 0x1
            XOR AC,AC
            MOV EAX,[EDX]
otro:       CMP EAX,0
            JZ fin
            JNN sigue
            ADD AC,1
            SHL EAX,1
sigue:      SHL EAX,1
            JMP otro
fin:        ADD EDX,4
            MOV [EDX],AC
            MOV EAX,0b01
            LDH ECX,0x04
            LDL ECX,0x01
            SYS 0x2
            STOP