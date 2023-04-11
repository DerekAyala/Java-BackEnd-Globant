Algoritmo sin_titulo
	Definir contador, sumapares, sumaimpares, num, cp, ci Como Entero
	contador = 1
	sumaimpares = 0
	sumapares = 0
	cp = 0
	ci = 0
	Hacer
		Escribir "Escriba un numero"
		Hacer
			Leer num
		Mientras Que num < 0
		si num mod 2 == 0 Entonces
			sumapares = sumapares + num
			cp = cp + 1
		SiNo
			sumaimpares = sumaimpares + num
			ci = ci + 1
		FinSi
		contador = contador + 1
	Mientras Que contador <> 10
	Escribir "Media de numeros pares: ", sumapares / cp
	Escribir "Media de numeros impares: ", sumaimpares / ci
FinAlgoritmo
