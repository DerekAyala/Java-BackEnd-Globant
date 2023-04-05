Algoritmo sin_titulo
	Definir operacion, num1,num2 Como Entero
	Escribir "Ingresa un numero"
	Leer num1
	Escribir "Ingresa otro numero"
	Leer num2
	Escribir "Escribir operacion a realizar S para suma, R para resta, M para multiplicar y D para division"
	leer operacion
	segun operacion Hacer
		"S","s":
			Escribir "Suma: " num1 + num2
		"R","r":
			Escribir "Resta: " num1 - num2
		"M","m":
			Escribir "Multiplicacion: " num1 * num2
		"D","d":
			Escribir "Division: " num1 / num2
		De Otro Modo:
			Escribir "Opcion no valida"
	FinSegun
FinAlgoritmo
