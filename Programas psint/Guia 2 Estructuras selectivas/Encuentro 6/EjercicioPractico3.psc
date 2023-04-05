Algoritmo sin_titulo
	definir defectuosos,sinDefectos Como Entero
	Escribir "Cantidad de torinillos sin defectos"
	Leer sinDefectos
	Escribir "Cantidad de tornillos Defectuosos"
	Leer defectuosos
	si sinDefectos < 1000 y defectuosos > 200 Entonces
		Escribir "Grado 5"
	SiNo
		si sinDefectos > 1000 y defectuosos > 200 Entonces
			Escribir "Grado 6"
		SiNo
			si sinDefectos < 1000 y defectuosos < 200 Entonces
				Escribir "Grado 7"
			SiNo
				Escribir "Grado 8"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
