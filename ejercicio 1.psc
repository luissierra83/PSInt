Algoritmo sin_titulo
//	Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
	//	los muestre por pantalla.
	
	
	definir n, matriz, i, j como entero 
	dimension matriz(3,3)
	
	para i=0 hasta 2 con paso 1 hacer 
		para j=0 hasta 2 con paso 1 Hacer
		
			escribir"por favor ingrese un número entero"
			leer matriz(i,j)	
			
			
		FinPara
	FinPara
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 hasta 2 Con Paso 1 Hacer
			
			Escribir Sin Saltar "[", matriz[i,j] "]"
		finpara	
		Escribir " "
	Fin Para
	
FinAlgoritmo
