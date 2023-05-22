//subprograma inicializarMatriz:
//Debe recibir como parámetros la matriz a inicializar, la cantidad de filas y la cantidad de columnas.
//En primera instancia inicializaremos la matriz con un "*" (asterisco) en cada lugar para que la
//misma no esté vacía y no tengamos problemas.

Algoritmo ejercicioCooperativoGuia4
	Definir tablero como Cadena
	Dimension tablero[9, 12]
	inicializarMatriz(tablero, 9, 12)
//	agregarPalabra(tablero, "vector", 0)
//	agregarPalabra(tablero, "matrix", 1)
//	agregarPalabra(tablero, "programa", 2)
//	agregarPalabra(tablero, "subprograma", 3)
//	agregarPalabra(tablero, "subproceso", 4)
//	agregarPalabra(tablero, "variable", 5)
//	agregarPalabra(tablero, "entero", 6)
//	agregarPalabra(tablero, "para", 7)
//	agregarPalabra(tablero, "mientras", 8)
//	acomodarPalabras(tablero)
	//	imprimirMatriz(tablero, 9, 12)
FinAlgoritmo

SubProceso inicializarMatriz(tablero,9,12)
	Definir i,j Como Entero
	
	Para i=0 hasta 8 Hacer
		para j=0 hasta 11 Hacer
			tablero(i,j)="*"
		FinPara
	FinPara
	Para i=0 hasta 8 Hacer
		para j=0 hasta 11 Hacer
			Escribir sin saltar "[", tablero(i,j), "]"
		FinPara
		Escribir " "
	FinPara
	
	
FinSubProceso
	