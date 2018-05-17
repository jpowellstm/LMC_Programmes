INP
STA input

loopstart LDA count
        ADD two 
        OUT
        STA count
        SUB input
        BRP loopend 
        BRA loopstart
loopend HLT

one     DAT 1
two     DAT 2
input   DAT
count   DAT
