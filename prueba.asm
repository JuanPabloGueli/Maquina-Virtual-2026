inicio:
    LDH EAX,0x4000
    LDL EAX,0x0000       ; EAX = 1073741824
    SHL EAX,2
    STOP