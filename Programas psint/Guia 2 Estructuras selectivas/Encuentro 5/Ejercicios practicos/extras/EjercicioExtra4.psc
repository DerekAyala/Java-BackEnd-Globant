Algoritmo sin_titulo
	definir horasUso, litrosGastados Como Entero
	
	Escribir "Cuantas horas de uso en minutos"
	Leer horasUso
	
	si horasUso <= 120 Entonces
		Escribir "Precio a pagar: 400 pesos"
	SiNo
		Escribir "Cantidad de litros usados"
		leer litrosGastados
		Escribir "Precio de litros gastados: " litrosGastados * 40
		Escribir "Precio de uso: " (horasUso) * 5.20
		Escribir "Precio total: ", (litrosGastados * 40) + (horasUso * 5.20)
	FinSi
FinAlgoritmo
