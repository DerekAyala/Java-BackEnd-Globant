Algoritmo sin_titulo
	definir rad, per Como Real
	Escribir "Ingresa el radio del circulo"
	leer rad
	perimetro(rad,per)
	Escribir "Perimetro: ", per, " Diametro: ", 2 * rad, " Area: ", AreaCirculo(rad)
	
FinAlgoritmo

subproceso perimetro(radio por valor, per por referencia) 
	per = 2 * Pi * radio
FinSubProceso

funcion area = AreaCirculo(radio)
	Definir area Como Real
	area = pi * (radio*radio)
FinFuncion