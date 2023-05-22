//6. Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
//tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//Por ejemplo:
//	2 7 6
//	9 5 1
//	4 3 8
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//	algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que
//	sea mágica escribir la suma. Además, el programa deberá comprobar que los números
//	introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la
//	matriz que no debe superar orden igual a 10.

Algoritmo ejercicio6Matrices
	
	definir contadorLogico, matriz,sumamagica, n, contador,constanteMagicaFila,constanteMagicaColumna, sumamagicaDiagonal1, sumamagicaDiagonal2,i,j  como entero 
	
	Escribir "Ingrese el tamaño de la matriz entre 1 y 9."
	Hacer 
		leer n
	
	Mientras Que n < 1 o n > 9 //lo va a hacer mientras este fuera de rango
	
	dimension matriz(n,n)
	i = 0
	j = 0
	Para i = 0 Hasta n-1 Hacer  //cargamos la matriz
		Para j = 0 Hasta n-1 Hacer
				matriz(i,j) = aleatorio(1,9)			
			FinPara
		FinPara
		
	mostrarVector(matriz,n)
	//constanteMagica se calcula con la primer fila 
	
	sumamagicaDiagonal1 = 0
	sumamagicaDiagonal2 =0
	contador = 0
	sumamagica= 0
	contadorLogico = 0
	Para i = 0 Hasta n-1 Hacer
		constanteMagicaFila = 0
		constanteMagicaColumna = 0
		Para j = 0 Hasta n-1 Hacer
			constanteMagicaFila = constanteMagicaFila + matriz(i,j)
			constanteMagicaColumna = constanteMagicaColumna +matriz(j,i)
		si i=j 
			sumamagicaDiagonal1 = sumamagicaDiagonal1 + matriz(i,j)
		fin si
		si i+j = n-1
			sumamagicaDiagonal2 = sumamagicaDiagonal2 + matriz(i,j)
		fin si
		
	FinPara
	si contador = 0
		sumamagica = constanteMagicaFila
		Escribir "valor comparativo " sumamagica
	FinSi
	contador = contador + 1
	Escribir "Suma de la fila " i+1 " es " constanteMagicaFila " y de la columna " constanteMagicaColumna
	
	si sumamagica = constanteMagicaFila o sumamagica = constanteMagicaColumna o  sumamagica = sumamagicaDiagonal1 o  sumamagica = sumamagicaDiagonal2
		contadorLogico = contadorLogico + 1
	FinSi
FinPara
	Escribir "La diagonales son " sumamagicaDiagonal1 " y " sumamagicaDiagonal2 " contadorLogico " contadorLogico
	//ahora comparamos los resultados de las sumas 
	si n = 1
		Escribir "La matriz es magica solo hubo " contadorLogico " coincicencias"
		SiNo 
		si contador = (n+2)
		Escribir "La matriz es magica exitieron " (n+2) " coincidencias"
	
		SiNo
		Escribir "La matriz no es magica solo hubo " contadorLogico-1 " coincicencias"
	FinSi
	FinSi
	

	
	
	
	
FinAlgoritmo

SubProceso mostrarVector(vec Por Referencia, posiciones )
	
	Definir i,j como Entero
	
	Escribir "El vector quedó de la siguiente manera: "
	Para i<-0 Hasta posiciones-1 Con Paso 1 Hacer
		Para j<-0 Hasta posiciones-1 Con Paso 1 Hacer
		Escribir Sin Saltar "[", vec[i,j], "] "		
		
	Fin Para		
	Escribir ""
	Fin Para
	
	
FinSubProceso