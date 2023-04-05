Algoritmo sin_titulo
	Definir nota1,nota2,nota3,nota4 Como Entero
	Definir promedio Como Real
	
	Escribir "Escribir tus 4 notas"
	Leer nota1,nota2,nota3,nota4
	
	si nota1 < nota2 y nota1 < nota3 y nota1 < nota4 Entonces
		promedio = (nota2 + nota3 + nota4)/3
		Escribir "Nota 1 Eliminada: ", nota1
	SiNo
		si nota2 < nota1 y nota2 < nota3 y nota2 < nota4 Entonces
			promedio = (nota1 + nota3 + nota4)/3
			Escribir "Nota 2 Eliminada: ", nota2
		SiNo
			si nota3 < nota1 y nota3 < nota2 y nota3 < nota4 Entonces
				promedio = (nota1 + nota2 + nota4)/3
				Escribir "Nota 3 Eliminada: ", nota3
			SiNo
				promedio = (nota1 + nota2 + nota3)/3
				Escribir "Nota 4 Eliminada: ", nota4
			FinSi
		FinSi
	FinSi
	Escribir "El Promedio fue: ", promedio
FinAlgoritmo
