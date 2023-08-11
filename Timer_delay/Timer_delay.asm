/*
Микроконтроллер ATmega16
Тактовая частота 1MHz
*/

.include "m16def.inc"

.def temp = R16
 
	.cseg                    
	.org 0x00
	rjmp init

init:               
	ldi temp, low(RAMEND) ; инициализация стека 
	out SPL, temp          
	ldi temp, high(RAMEND) 
	out SPH, temp  

	ldi temp,(1 << CS12) | (0 << CS11) | (1 << CS10) 
	; установили значения предделителя таймера
	out TCCR1B,temp
	; начало счёта таймера 


main:
	nop
	rcall Delay_1sec ;вызов подпрограммы задрежки 
	nop
	rjmp main

Delay_1sec:
	push temp ; сохраняем в стеке содержимое регистра temp
	ldi temp, 0
	out TCNT1H, temp ;принудительно задали значение таймера
	out TCNT1L, temp
wt1:
	in temp, TCNT1H
	cpi temp, 0x04
	brlo wt1

	pop temp ; восстанавливаем из стека значение регистра temp  
	ret






