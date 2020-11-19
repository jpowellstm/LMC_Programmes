 start INP
       STA 99

loopstart SUB one
          BRZ loopend
          ADD one
          BRZ loopend
          SUB two
          STA 99
          LDA count
          ADD one
          STA count
          LDA 99
          BRA loopstart
        
loopend   LDA 99
          OUT
          LDA count
          BRZ end
        
        STA 99
        LDA reset
        STA count
        LDA 99
        BRA loopstart
        
end HLT

two     DAT 2
one     DAT 1
count   DAT 0
reset   DAT 0
