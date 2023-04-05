Algoritmo sin_titulo
	definir precio como entero
	definir mes Como Caracter
	
	Escribir "Escribir precio del producto"
	leer precio
	Escribir "Escribir mes"
	leer mes
	mes = Mayusculas(mes)
	
	si mes == "SEPTIEMBRE" O mes == "OCTUBRE" O mes == "NOVIEMBRE" entonces
		Escribir "Precio a pagar con descuento: " precio * 0.90
	SiNo
		Escribir "Precio a pagar sin descuento: " precio
	finSi
FinAlgoritmo
