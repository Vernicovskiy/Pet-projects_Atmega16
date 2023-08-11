/*
��������������� ATmega16
�������� ������� 1MHz
*/

.include "m16def.inc"

.def temp = R16
 
	.cseg                    
	.org 0x00
	rjmp init

init:               
	ldi temp, low(RAMEND) ; ������������� ����� 
	out SPL, temp          
	ldi temp, high(RAMEND) 
	out SPH, temp  

	ldi temp,(1 << CS12) | (0 << CS11) | (1 << CS10) 
	; ���������� �������� ������������ �������
	out TCCR1B,temp
	; ������ ����� ������� 


main:
	nop
	rcall Delay_1sec ;����� ������������ �������� 
	nop
	rjmp main

Delay_1sec:
	push temp ; ��������� � ����� ���������� �������� temp
	ldi temp, 0
	out TCNT1H, temp ;������������� ������ �������� �������
	out TCNT1L, temp
wt1:
	in temp, TCNT1H
	cpi temp, 0x04
	brlo wt1

	pop temp ; ��������������� �� ����� �������� �������� temp  
	ret






