Algoritmo sin_titulo
	Definir estudiates, i, n, totalParcial, porcentaje, reprobados Como Entero
	Definir calificacion, nota, suma, mayor Como Real
	
	mayor = 0
	porcentaje = 0
	totalParcial = 0
	reprobados = 0
	suma = 0
	Escribir "Ingrese la cantidad de estudiantes"
	Hacer
		Leer estudiates
	Mientras Que estudiates < 1
	
	Para i= 1 Hasta estudiates
		calificacion = 0
		Escribir "Ingrese tus calificaciones de trabajo Intregrador, exposicion y parcial"
		Para n= 1 Hasta 3
			Hacer
				Leer nota
				si nota < 0 o nota > 10 Entonces
					Escribir "Ingresar una nota valida"
				FinSi
			Mientras Que nota < 0 o nota > 10
			Segun n Hacer
				1:
					calificacion = calificacion + (nota * 0.35)
					si nota > 7.5 Entonces
						porcentaje = porcentaje + 1
					FinSi
				2:
					calificacion = calificacion + (nota * 0.25)
					si nota > mayor Entonces
						mayor = nota
					FinSi
				3:
					calificacion = calificacion + (nota * 0.40)
					si nota >= 4 y nota <= 7.5
						totalParcial = totalParcial + 1
					FinSi
			FinSegun
		FinPara
		si calificacion < 6.5 Entonces
				suma = suma + calificacion
				reprobados = reprobados + 1
			FinSi
	FinPara
	
	Escribir "Promedio de los estudiantes reprobados: ", suma / reprobados
	Escribir "Porcentaje de alumnos que tienen una nota en INTEGRADOR mayor a 7.5: ", (porcentaje * 100) / estudiates
	Escribir "Nota en exposiciones mayor: ", mayor
	Escribir "Total de estudiantes que obtuvieron en el parcial 4.0 y 7.5: ", totalParcial
FinAlgoritmo
