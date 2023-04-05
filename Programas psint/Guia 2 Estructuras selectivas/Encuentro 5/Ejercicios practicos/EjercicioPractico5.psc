Algoritmo sin_titulo
	definir n1,n2,n3 como entero
	definir flag Como Logico
	
	Escribir "Ingresa 3 calificaciones"
	leer n1,n2,n3
	
	flag = n1>= 1 y n2>= 1 y n3>= 1 y n1<= 10 y n2<= 10 y n3<= 10 
	
	si flag == Verdadero  entonces
		Escribir "Si se encuentran las calificaciones en el rango"
	SiNo
		Escribir "alguna calificacion no cuadra"
	finSi
	
	
FinAlgoritmo
