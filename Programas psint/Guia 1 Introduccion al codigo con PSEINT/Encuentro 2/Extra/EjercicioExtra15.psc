Algoritmo sin_titulo
	definir HH, MM, SS, segundos Como Entero
	Escribir "Hora: "
	leer HH
	Escribir "Minuto: "
	leer MM
	Escribir "Segundo: "
	leer SS
	
	Escribir "Tiempo en segundos: "
	leer segundos
	
	Escribir "Hora: ", HH + (trunc(segundos/3600))
	Escribir "Minuto: ", MM + (trunc((segundos % 3600)/60))
	Escribir "Segudnos: ", SS + (segundos % 3600) % 60
	
	
FinAlgoritmo
