////Realizar un programa que permita visualizar el resultado del producto de una matriz de
////enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
////inicializarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se
////realiza la multiplicación entre matrices consultar el siguiente link:
Algoritmo Extra_6
	definir matriz, vector, resultado Como Entero
	dimension matriz[3,3], vector[3], resultado[3]
	llenar(matriz, 3, 3)
	muestra(matriz, 3, 3)
	llenarV(vector, 3)
	muestraV(vector, 3)
	MultiplicaMatriz(matriz, vector, 3, resultado)
	muestraV(resultado, 3)
FinAlgoritmo
SubProceso llenarV(vector, A)
	definir i Como Entero
	para i = 0 hasta A - 1 Hacer
		vector(i) = aleatorio(1, 10)
	FinPara
FinSubProceso
SubProceso MuestraV(vector, A)
	definir i Como Entero
	para i = 0 hasta A - 1 Hacer
		escribir sin saltar " " vector(i) "|"
	FinPara
	escribir""
FinSubProceso
SubProceso MultiplicaMatriz(matriz, vector, dim, resultado Por Referencia)
	definir i, j como entero 
	para i = 0 hasta dim - 1 Hacer
		resultado(i) = 0
		para j = 0 hasta dim - 1 Hacer
			resultado(i) = resultado[i] + matriz(i, j) * vector(i)
		FinPara
	FinPara
FinSubProceso

SubProceso llenar(matriz por referencia, tam, col) ///llena la matriz con numeros aleatorios 
	Definir i, j como entero
	para i = 0 hasta tam - 1 Hacer		
		para j = 0 hasta col - 1 Hacer
			matriz[i, j] = Aleatorio(0, 100)
		FinPara
	FinPara
FinSubProceso
SubProceso muestra(matriz, tam, col)     ///genera una cuadricula con el contenido de la matriz
	definir i, j Como Entero
	para i = 0 hasta tam - 1 Hacer
		escribir Sin Saltar "| "
		para j = 0 hasta col - 1 Hacer
			escribir sin saltar matriz[i, j] " | "
		FinPara
		escribir""
		para j = 0 hasta col - 1  Hacer
			escribir sin saltar " --- "
		FinPara
		escribir ""
	FinPara
FinSubProceso