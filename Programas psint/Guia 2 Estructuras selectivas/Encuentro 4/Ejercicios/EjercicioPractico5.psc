Algoritmo sin_titulo
	definir dia como caracter
	Escribir "Que dia de la semana es"
	leer dia
	dia = Mayusculas(dia)
	si dia == "SABADO" O dia == "DOMINGO"
		Escribir "No es un dia laboral"
	FinSi
	si dia <> "SABADO" O dia <> "DOMINGO"
		Escribir "Es un dia laboral"
	FinSi
	Escribir 5 > 3
FinAlgoritmo
