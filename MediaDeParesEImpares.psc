Algoritmo MediaDeParesEImpares
	Definir num, sumapar, contadorpar, contadorimpar, sumaimpar Como Entero
	contadorimpar = 0
	contadorpar = 0
	sumaimpar = 0
	sumapar = 0
	
	Hacer			
		Escribir "Ingrese un numero:"
		Leer num
	
	si num mod 2 = 0 Entonces
		 
			contadorpar = contadorpar + 1
			sumapar = sumapar + num
		sino
			contadorimpar=contadorimpar + 1
			sumaimpar = sumaimpar + num
			
		FinSi
		
	Mientras Que contadorpar + contadorimpar < 10
	
	Escribir "La suma de los numeros pares fueron " sumapar ", y la media fue " sumapar/contadorpar " ,ingreso " contadorpar " numeros pares"
	Escribir "La suma de los numeros impares fueron " sumaimpar ", y la media fue " sumaimpar/contadorimpar " ,ingreso " contadorimpar " numeros impares"
	
FinAlgoritmo
