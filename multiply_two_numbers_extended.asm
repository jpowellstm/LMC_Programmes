start LDA zero
      STA output
      STA count
      INP
      BRZ end
      STA input1
      INP
      BRZ end
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
        BRA start

end HLT
        
input1  DAT
input2  DAT
count   DAT
output  DAT 
one     DAT 1
zero    DAT 0
