/*
Микроконтроллер:	ATmega16
Тактовая частота:	1 MHz
*/

.include "m16def.inc"

.def temp = R16
.def dly1 = R17
.def dly2 = R18
.def dly3 = R19

	.cseg
	.org 0x00

init: 
	ldi temp, low(RAMEND) ;инициализация стека  
	out SPL, temp
	ldi temp, high(RAMEND)
	out SPH, temp

main:
	nop
	rcall Delay_1sec ;вызов подпрограммы задержки
	nop
	rjmp main
;Подпрограмма задержки
Delay_1sec:                 
    ldi     dly1,   100     
Delay1:
    ldi     dly2,   50     
Delay2:
	ldi 	dly3,	50
Delay3:
	dec     dly3            
    nop                     
    brne    Delay3         
	
	dec     dly2            
    nop                     
    brne    Delay2          


    dec     dly1            
    brne    Delay1          
	ret
