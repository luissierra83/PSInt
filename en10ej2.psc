Algoritmo en10ej2
	
//	Realizar un programa que lea un n�mero entero (tama�o del lado) y a partir de �l cree
//	un cuadrado de asteriscos de ese tama�o. Los asteriscos s�lo se ver�n en el borde del
//cuadrado, no en el interior. Por ejemplo, si se ingresa el n�mero 4 se debe mostrar:
	
	Definir num, i, j Como Entero
	Definir lado, lado2 Como Caracter
	
	Escribir "Inserte tama�o del lado: "
	Leer num
	
	lado = ""
	lado2 = ""
	
	Para i = 1 Hasta num Con Paso 1 Hacer
			
		lado = Concatenar(lado, "* ")
		
		Si i == 1 o i == num Entonces
			lado2 = Concatenar(lado2, "*")
		SiNo
			lado2 = Concatenar(lado2, "  ")
		FinSi
		
	FinPara
		
	Para j = 1 Hasta num Con Paso 1 Hacer
		
		Si j == 1 o j == num
			Escribir lado
		SiNo
			Escribir lado2
		FinSi
		
	FinPara
	
FinAlgoritmo
