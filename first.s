      lda #$00
      sta $42
loop: lda $fe       ; $fe = random generator port
      tay           ; transfer A to Y
      lda $fe
      and #$03
      clc
      adc #$02
      sta $43
      lda $fe
      sta ($42),y
      jmp loop
