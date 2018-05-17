LDA one
STA count
OUT

loopstart LDA count
        ADD one
        OUT
        STA count
        SUB ten
        BRP loopend
        BRA loopstart
loopend HLT

one     DAT 1
ten     DAT 10
count   DAT
