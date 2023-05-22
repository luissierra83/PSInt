Algoritmo sin_titulo
	//	Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
	//	un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
	//	subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
	//	los resultados por pantalla.
	
	definir matriz1, i, j, num, f, c, suma  Como Entero

	suma=0

	Escribir "Ingrese dimencion de filas y columnas"
	Leer f, c
	Dimension matriz1(f,c)
	Para i<-0 Hasta f-1 Con Paso 1 Hacer
		Para j<-0 Hasta c-1 Con Paso 1 Hacer
			matriz1[i,j] = Aleatorio(0,9)
			Escribir Sin Saltar matriz1[i,j]
			Escribir " "
		Fin Para
	Fin Para 
	Escribir sumarTodo(matriz1,i,j,f,c suma)
	
FinAlgoritmo
SubProceso suma <- sumarTodo (matriz1,f,c, i, j,suma Por Referencia)
	Para i<-0 Hasta f-1 Con Paso 1 Hacer
		Para j<-0 hasta c-1 Con Paso 1 Hacer
			suma = suma + matriz1[i,j]
		Fin Para
		Escribir suma
	Fin Para
FinSubProceso
