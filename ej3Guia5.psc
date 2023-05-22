//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
//subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
//los resultados por pantalla.
Algoritmo ej3Guia5
	Definir matrix,i,j,var1,var2, sum como enteros
	sum=0
	Escribir "Por favor define el tamaño de matriz"
	Escribir "Escribe el numero de filas:"
	Leer var1
	Escribir "Escribe el numero de columnas"
	Leer var2
	Dimension matrix(var1,var2)
	i=0
	j=0
	fillMatrix(var1,var2,i,j,matrix)
	sumMatrix(var1,var2,i,j,matrix,sum)
	Escribir"Espera mientras sucede la magia"
	Esperar 2 Segundos
	Limpiar Pantalla
	Escribir"Ahora vamos a mostrar la matriz"
	para i=0 Hasta var1-1 Hacer
		para j=0 Hasta  var2-1 Hacer
			Escribir Sin Saltar matrix(i,j), " "
		FinPara
		Escribir "  "
	FinPara
	Escribir "La suma de todos los elementos es:", sum
FinAlgoritmo

//para rellenar la matriz
SubProceso fillMatrix (var1,var2,i,j,matrix)
	para i=0 Hasta var1 -1 Hacer
		para j=0 Hasta var2 -1 Hacer
			matrix(i,j)=Aleatorio(1,30)
		FinPara
	FinPara
FinSubProceso

//para sumar la matriz
SubProceso sumMatrix(var1,var2,i,j,matrix,sum Por Referencia)
	para i=0 Hasta var1-1 Hacer
		para j=0 Hasta var2 -1 Hacer
			sum = sum + matrix(i,j)
		FinPara
	FinPara
FinSubProceso
	