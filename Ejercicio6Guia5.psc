//6. Una matriz m?gica es una matriz cuadrada (tiene igual n?mero de filas que de columnas) que
//tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//Por ejemplo:
//	2 7 6
//	9 5 1
//	4 3 8
//En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un algo-
//ritmo que compruebe si una matriz de datos enteros es m?gica o no, y en caso de que sea
//m?gica escribir la suma. Adem?s, el programa deber? comprobar que los n?meros introduci-
//dos son correctos, es decir, est?n entre el 1 y el 9. El usuario ingresa el tama?o de la matriz
//que no debe superar orden igual a 10.

Algoritmo Ejercicio6Guia5 //lina
	
	Definir matriz, orden, i, j, k Como Entero
	
	Escribir "Elija el tamaño de la matriz (no superior a 10)";
	Leer orden
	
	Dimension matriz[orden, orden]
	
	k = 0
	Para i = 0 Hasta orden - 1
		Para j = 0 Hasta orden - 1
			Repetir
				Imprimir "Ingrese un número"
				Leer matriz[i, j]
			Mientras Que matriz[i, j] < 1 | matriz[i, j] > 9
			progreso(matriz, i, k, j)
			Si k < orden - 1
				k = k + 1
			FinSi
		FinPara
	FinPara
	
	validacion(matriz, orden)
	
FinAlgoritmo

Funcion validacion(mat, tamano)
	Definir i, j, diagPrincipal, SegundaDiag, sumaFila, sumaColumna Como Entero
	Definir validar Como Logico
	
	validar = Verdadero
	
	diagPrincipal = 0
	SegundaDiag = 0

	Para i = 0 Hasta tamano - 1
		diagPrincipal = diagPrincipal + mat[i, i]
		SegundaDiag = SegundaDiag + mat[i, (tamano - 1) - i]
	FinPara

	validar = diagPrincipal == SegundaDiag
	
	i = 0
	Mientras validar & i < tamano
		sumaFila = 0
		sumaColumna = 0
		Para j = 0 Hasta tamano - 1
			sumaFila = sumaFila + mat[i, j]
			sumaColumna = sumaColumna + mat[j, i]
		FinPara
		validar = sumaFila == sumaColumna & sumaFila == diagPrincipal
		i = i + 1
	FinMientras
	
	Si validar
		Escribir "Es una matriz mágica! Suma: ", diagPrincipal
	SiNo
		Escribir "No es una matriz mágica."
	FinSi
FinFuncion

Funcion progreso (ma, fila, columna, indi)
	Definir i, j Como Entero
	Limpiar Pantalla
	Para i = 0 Hasta fila
		Si i == fila
			columna = indi
		FinSi
		Para j = 0 Hasta columna
			Escribir Sin Saltar ma[i, j], "  "
		FinPara
		Escribir ""
	FinPara
FinFuncion