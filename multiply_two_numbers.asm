        INP
        STA input1
        INP
        STA input2
        
loopstart LDA output
        ADD input2
        STA output
        LDA count
        ADD one
        STA count
        SUB input1
        BRP loopend 
        BRA loopstart
        
loopend LDA output
        OUT
        HLT
        
input1  DAT
input2  DAT
count   DAT
output  DAT 0
one     DAT 1
