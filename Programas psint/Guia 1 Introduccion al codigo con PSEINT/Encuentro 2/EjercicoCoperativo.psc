Algoritmo sin_titulo
	definir centena,decena,unidad,num Como Entero
	
	Escribir "Ingresar un numero: "
	leer num
	
	centena = trunc(num/100)
	decena = trunc((num % 100)/10)
	unidad = (num % 100) % 10
	
	Escribir "centena: ",centena
	Escribir "decena: ", decena
	Escribir "Unidades: ", unidad
FinAlgoritmo
