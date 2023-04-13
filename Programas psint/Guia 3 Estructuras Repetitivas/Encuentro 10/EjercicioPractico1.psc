Algoritmo sin_titulo
	Definir sueldoBase, ventas, cantidad, suma,empleados, i, j Como Entero
	
	Escribir "Ingresa la cantidad de empleados"
	Hacer
		Leer empleados
	Mientras Que empleados < 1
	
	Para i = 1 Hasta empleados Hacer
		suma = 0
		
		Escribir "Cual es tu sueldo base"
		Hacer
			Leer sueldoBase
		Mientras Que sueldoBase < 1
		
		Escribir "Cuantas ventas tuviste"
		Hacer
			Leer ventas
		Mientras Que ventas < 0
		
		Escribir "Escribe las cantidades"
		Para j=1 Hasta ventas Hacer
			Hacer
				Leer cantidad
			Mientras Que cantidad < 1
			suma = suma + cantidad
		FinPara
		
		Escribir "Sueldo base: ", sueldoBase
		Escribir "Ventas realizadas: ", ventas
		Escribir "Ventas: ", suma
		Escribir "comision: ", suma * 0.10
		Escribir "Sueldo final: ", sueldoBase + (suma * 0.10)
	FinPara
FinAlgoritmo
