@ECHO OFF
"C:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "D:\WORK\ATMEGA16\Blinking_LED\labels.tmp" -fI -W+ie -o "D:\WORK\ATMEGA16\Blinking_LED\Blinking_LED.hex" -d "D:\WORK\ATMEGA16\Blinking_LED\Blinking_LED.obj" -e "D:\WORK\ATMEGA16\Blinking_LED\Blinking_LED.eep" -m "D:\WORK\ATMEGA16\Blinking_LED\Blinking_LED.map" "D:\WORK\ATMEGA16\Blinking_LED\Blinking_LED.asm"
