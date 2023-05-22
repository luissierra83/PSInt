//Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3.
//Inicialice las matrices para evitar el ingreso de datos por teclado.

Algoritmo ej4en22al25Extra
	
	Definir matrizA, matrizB, matrizC, dim, i, j, min, max Como Entero
	
	min = 1
	max = min * 5
	dim = 3
	
	Dimension matrizA[dim, dim]
	Dimension matrizB[dim, dim]
	Dimension matrizC[dim, dim]
	
	Para i = 0 Hasta dim - 1 Hacer
		
		Para j = 0 Hasta dim - 1 Hacer
			
			matrizA[i,j] = Aleatorio(min, max)
			matrizB[i,j] = Aleatorio(min, max)
			
		FinPara
		
	FinPara
	
	
	Escribir "MATRIZ A:"
	
	Para i = 0 Hasta dim - 1 Hacer
		
		Para j = 0 Hasta dim - 1 Hacer
			
			Escribir Sin Saltar "[" matrizA[i,j] "]"
			
		FinPara
		
		Escribir ""
		
	FinPara
	
	Escribir ""
	Escribir "MATRIZ B:"
	
	Para i = 0 Hasta dim - 1 Hacer
		
		Para j = 0 Hasta dim - 1 Hacer
			
			Escribir Sin Saltar "[" matrizB[i,j] "]"
			
		FinPara
		
		Escribir ""
		
	FinPara
	
	
	Escribir ""
	Escribir "MATRIZ C:"
	
	Para i = 0 Hasta dim - 1 Hacer
		
		Para j = 0 Hasta dim - 1 Hacer
			
			matrizC[i,j] = matrizA[i,j] * matrizB[i,j]
			Escribir Sin Saltar "[" matrizC[i,j] "]"
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinAlgoritmo
