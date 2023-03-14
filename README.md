# LM6 Branching
Due at start of class 3/21/2023  

You are pretty close to knowing all the instructions. Now we can start doing interesting things!

## Grade Break Down
| Part   |                           | Points  |
|--------|---------------------------|---------|
| Part 1 | Branching Demo            | 90 pts  |   
|        | Self Reflection           | 10 pts  |
|        |                           |Total: 100|

Video link to working demo: 

## LM Evaluation
You will be graded on:
  - Good circuit planning
  - Effective implementation of the requirements
  - Well documented code

**Remember to read and fill out the self-reflection AFTER finishing the assignment.**

## Reference links:
METRO Schematics: https://github.com/adafruit/Adafruit-METRO-328-PCB  
ATmega328P Data Sheet: https://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7810-Automotive-Microcontrollers-ATmega328P_Datasheet.pdf  
AVR Language Set: http://ww1.microchip.com/downloads/en/devicedoc/atmel-0856-avr-instruction-set-manual.pdf  

AVR Debugger: http://www.avr-asm-tutorial.net/avr_sim/index_en.html  
AVR Assembler: http://www.avr-asm-tutorial.net/gavrasm/index_en.html  
AVR Uploader: https://github.com/avrdudes/avrdude   
Alternate for Windows AVRDUDE: https://github.com/mariusgreuel/avrdude/releases  

# Project Requirements

You are going to make a binary counter. Your counter will have the following attributes / behaviors:
* Display `count` on 4 LEDs
  * identify a MSB, LSB
  * all off would represent 0
  * all on would represent d15
  * an alternating pattern would be d5 or d10 depending on MSB/LSB
* Have a `incrament` button
  * when pressed, `count` will increment by one (count++)
* If `count` ever gets to 1111 (d15), make sure to roll back over to 0 on the next `increment`
 
## Extra Credit (+20 pts):
* Add a button that decrements from the count
* All of the above requirements must be met
* Manage rolling over from 0 to 1111

Feel free to experiment / add functionality. I am setting a minimum bar, not a maximum expectation.

