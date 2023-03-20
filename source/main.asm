
; Citation: Scott Griffith for help with data setup/looping/incrementing display
.DEVICE ATmega328p ;define correct device
ldi r16, $f0 ; 
out ddrd, r16 ; configure pins 4-7 of port d to be output

ldi r16, $00
out pinb, r16 ; configure port b as input

onloop:   ; loop when button is being pressed
    in r16, pinb ; read pinb to r16
    andi r16, $01 ; and immediate r16 with 1 
    cpi r16, $01 ; then compare r16 to $01/'on'
    BREQ onloop ; return to start of loop if button is actively being pressed

inc r17 ; increment count
swap r17 ; swap the nibbles 
out PORTD, r17 ; output result to PORTD LEDs
swap r17 ; swap back for normal incrementation

offloop:  ; loop for when button is off
    in r16, pinb ; read in from pinb
    andi r16, $01 ; andi operation with r16, will read all zeroes when button is not pressed
    cpi r16, $00 ; compare r16 with $00/'off'
    BREQ offloop ; retrun to start of offloop if button is off

    rjmp onloop ; return to top
    

;out portd r17 after inc