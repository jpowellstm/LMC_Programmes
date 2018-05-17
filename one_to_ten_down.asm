LDA ten
STA count
OUT

loopstart LDA count
        SUB one
        BRZ loopend
        OUT
        STA count
        BRA loopstart
loopend HLT

one     DAT 1
ten     DAT 10
count   DAT
