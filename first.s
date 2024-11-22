            lda #$00
      sta $42
      lda #$01
      sta $23


loop:
      lda $fe
      and #$03
      clc
      adc #$02
      sta $43
      ldy $fe
      lda $fe
      and $23
      sta ($42),y
      lda $ff
      cmp #46
      bne loop
      inc $23
      jsr init
      jmp loop

init:
      lda #$00
      ldy #$00
loop_init:
      sta $200,y
      sta $300,y
      sta $400,y
      sta $500,y
      iny
      bne loop_init
      rts
