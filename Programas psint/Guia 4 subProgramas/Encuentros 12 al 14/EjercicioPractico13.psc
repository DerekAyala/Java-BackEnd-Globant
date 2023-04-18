Algoritmo sin_titulo
	definir digitos Como Entero
	Definir resultado Como Logico
	Escribir "Ingresa un numero:"
	Leer digitos
	resultado = Capicula(digitos)
	Escribir digitos, " es Capicula: ", resultado
FinAlgoritmo

funcion resultado = Capicula(digitos)
	definir digito, inverso, original Como Entero
	definir resultado Como Logico
	
	inverso = 0
	original = digitos
	
	mientras digitos > 0 Hacer
		digito = digitos mod 10
		inverso = (inverso * 10) + digito
		digitos = trunc( digitos / 10)
	FinMientras
	
	si inverso == original
		resultado  = Verdadero
	SiNo
		resultado = falso
	FinSi
FinFuncion
