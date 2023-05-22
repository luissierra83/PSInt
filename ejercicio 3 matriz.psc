Algoritmo sin_titulo

	
//	Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//	un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
//	subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
//	los resultados por pantalla.
	
	
	
	definir n, m ,i, j , matriz,sum como entero 
	
	escribir"por favor ingrese un valor para su fila"
	leer n 
	escribir "por favor ingrese un valor para su columna"
	leer m
	
	dimension matriz[n,m]
	
	para i=0 hasta n-1 Hacer
		para j=0 hasta m-1 hacer 
			 
			matriz(i,j)= azar(n*m)
			
		FinPara
		
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			Para j<-0 hasta m-1 Con Paso 1 Hacer
				matriz[i,j] =n*m
				
			Fin Para
		Fin Para
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			Para j<-0 hasta m-1 Con Paso 1 Hacer
				Escribir Sin Saltar matriz[i,j]
			Fin Para
			Escribir " "
		Fin Para
	FinPara
	sum=0
	para i=0 hasta n-1 Hacer
		para j=0 hasta m-1 hacer 
			
			sum= sum+matriz(i,j)
		FinPara
	
	
		escribir "la suma de los elementos de la matriz es: ", sum

	FinPara
	
	
	
	
	
	
FinAlgoritmo



