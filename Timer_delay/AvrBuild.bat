@ECHO OFF
"C:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "D:\WORK\ATMEGA16\Timer_delay\labels.tmp" -fI -W+ie -o "D:\WORK\ATMEGA16\Timer_delay\Timer_delay.hex" -d "D:\WORK\ATMEGA16\Timer_delay\Timer_delay.obj" -e "D:\WORK\ATMEGA16\Timer_delay\Timer_delay.eep" -m "D:\WORK\ATMEGA16\Timer_delay\Timer_delay.map" "D:\WORK\ATMEGA16\Timer_delay\Timer_delay.asm"
