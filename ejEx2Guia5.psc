//Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), llenarla
//con números aleatorios entre 1 y 100 y mostrar su traspuesta.

Algoritmo ejEx2Guia5
	Definir Matriz,i,j,n,m Como Entero
	Escribir "Por favor digita las dimensiones de nuestra matrix"
	Escribir"Digita el numero de filas:"
	Leer n
	Escribir "Digita el número de columnas:"
	Leer m
	Dimension Matriz(n,m)
	
	Para i=0 Hasta n-1 Hacer
		para j=0 Hasta m-1 Hacer
			Matriz(i,j) = Aleatorio(1,100)
		FinPara
	FinPara
	Para i=0 Hasta n-1 Hacer
		para j=0 Hasta m-1 Hacer
			Escribir sin saltar "[",Matriz(i,j),"]"
		FinPara
		Escribir ""
	FinPara
	Escribir "Ahora vamos a ver la matriz traspuesta:"
	Esperar 2 Segundos
	Para i=0 Hasta n-1 Hacer
		para j=0 Hasta m-1 Hacer
			Escribir sin saltar "[",Matriz(j,i),"]"
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
