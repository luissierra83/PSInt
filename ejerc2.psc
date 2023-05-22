Algoritmo ejerc2
	//	Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
	//	usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
	//	coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En
	//	caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje..
	definir matriz1, i, j, num, contador  Como Entero
	Dimension matriz1(5,5)
	contador=0
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			matriz1[i,j] = Aleatorio(0,9)
		Fin Para
	Fin Para 
	Escribir "¿Que numero desea buscar?"
	Leer num
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 hasta 4 Con Paso 1 Hacer
			
			si matriz1[i,j] = num Entonces
				Escribir "Su numero se halla en la posicion: " i ", " j
				contador = contador +1
			sino si contador==0 y i == 4 y j == 4  Entonces
					Escribir "Su numero no se halla"
				FinSi
				
			FinSi
			
		Fin Para
	Fin Para
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 hasta 4 Con Paso 1 Hacer
			Escribir Sin Saltar matriz1[i,j]
		Fin Para
		Escribir " "
	FinPara
	
	
FinAlgoritmo
