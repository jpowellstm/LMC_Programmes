start inp
      sta count
      lda one
      sta 98
      sta 97
      out     
      out 

loopstart lda 97
          add 98
          sta 99
          out
          lda 98
          sta 97
          lda 99
          sta 98
          lda count
          sub one
          sta count
          brz loopend
	  bra loopstart

loopend hlt

one DAT 1
count DAT 0
