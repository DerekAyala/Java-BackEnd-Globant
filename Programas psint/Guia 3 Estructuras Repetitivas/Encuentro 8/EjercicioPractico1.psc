Algoritmo sin_titulo
	Definir clave,intento Como Caracter
	Definir intentos Como Entero
	Definir bandera Como Logico
	
	clave = "eureka"
	intentos = 3
	bandera = Falso
	Hacer
		Escribir "Adivina la clave"
		Leer intento
		intento = Minusculas(intento)
		intentos = intentos - 1
		si intento == clave Entonces
			bandera = Verdadero
			Escribir "Adivinaste"
		FinSi
	Mientras Que intentos <> 0 y bandera <> Verdadero
	si intentos == 0 y bandera == Falso Entonces
		Escribir "Se te agotaron los intentos"
	FinSi
FinAlgoritmo
