//	Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
//	tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//Por ejemplo:
//	2 7 6
//	9 5 1
//	4 3 8
//	
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir 
//un algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que sea
//mágica escribir la suma. Además, el programa deberá comprobar que los números introducidos
//son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la matriz	
//que no debe superar orden igual a 10.

Algoritmo matrizMagicagit
	
	definir matriz,i,j,n,m Como Entero
	escribir "Ingrese un número entre 1 y 10, con él, se creará una matriz cuadrada"
	leer n
	mientras n<1 o n>10 Hacer
		escribir "El valor ingresado no está entre el uno y el 9, presione cualquier tecla para continuar"
		Esperar Tecla
		Limpiar Pantalla
	FinMientras
	
	dimension matriz(n,n)
	Limpiar Pantalla
	para i=0 Hasta n-1
		escribir "FILA " i+1 ":"
		para j=0 hasta n-1 Hacer
			escribir "Ingrese un valor entre 1-9, este valor le corresponderá a la coordenada (" i "," j "), dentro de la matriz"
			leer matriz(i,j)
			mientras matriz(i,j)<0 o matriz(i,j)>9
				escribir "El valor ingresado no está entre 1-9, intente nuevamente"
				leer matriz(i,j)
			FinMientras
		FinPara
		Limpiar Pantalla
	FinPara
	
	para i=0 Hasta n-1 Hacer
		para j=0 hasta n-1 Hacer
			escribir sin saltar matriz(i,j) " "
		FinPara
		escribir ""
	FinPara
	
	escribir "Para comprobar si la matriz creada es mágica, presione cualquier tecla"
	Esperar Tecla
	si checkMagico(matriz,n) Entonces
		escribir "La matriz es mágica."
	SiNo
		Escribir "La matriz no es mágica."
	FinSi
	
FinAlgoritmo



funcion resultado=checkMagico(matriz Por Referencia, n)
	definir resultado como logico
	definir i,j,k, suma, suma2 como entero
	suma=0
	suma2=0
	
	////Calculo para comparar
	para j=0 hasta n-1 Hacer
		suma=suma+matriz(0,j)
	FinPara	
	escribir "Fila 1: " suma
	suma2=suma
	resultado=verdadero
	
	////CheckFilas
	para i=1 hasta n-1 Hacer
		si suma2=suma y resultado<>falso Entonces
			suma2=0
			para j=0 hasta n-1 Hacer
				suma2=suma2+matriz(i,j)
			FinPara
			escribir "Fila " i+1 ": " suma2
			resultado=suma=suma2
		SiNo
			resultado=falso
		FinSi
	FinPara
	
	////CheckColumnas
	Si resultado Entonces
		para i=0 hasta n-1 Hacer
			si suma2=suma y resultado<>falso Entonces
				suma2=0
				para j=0 hasta n-1 Hacer
					suma2=suma2+matriz(j,i)
				FinPara
				escribir "Columna " i+1 ": " suma2
				resultado=suma=suma2
			SiNo
				resultado=falso
			FinSi
		FinPara
	FinSi
	
	///CheckDiagonalPrincipal
	si resultado Entonces
		suma2=0
		para i=0 hasta n-1 Hacer
			para j=0 hasta n-1 Hacer
				si i=j Entonces
					suma2=suma2+matriz(i,j)
				FinSi
			FinPara
		FinPara
		escribir "Diagonal Principal: " suma2
		resultado=suma=suma2
	FinSi
	////CheckDiagonalInversa
	si resultado Entonces
		suma2=0
		i=n-1
		j=0
		Hacer
			suma2=suma2+matriz(i,j)
			i=i-1
			j=j+1
		hasta Que i=-1 y j=n
		
		escribir "Diagonal Inversa: " suma2
		resultado=suma=suma2
	FinSi
FinFuncion