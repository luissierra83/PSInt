//	Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
//	muestre por pantalla.
Algoritmo Ejercicio1Extra
	definir  vector,i,f Como entero
	dimension vector(5) 
	dimension vector2(5)
	
	para i <- 0 hasta 4 con paso 1 Hacer
		vector(i) = azar(9)
		
	FinPara
	para f<- 0 hasta 4 con paso 1 hacer 
		vector(f) = azar(9)
		
	FinPara
	
	para i <- 0 hasta 4 con paso 1 hacer 
		Escribir vector(i)Sin Saltar
	FinPara
	Escribir " "
	para f<- 0 hasta 4 con paso 1 hacer 
		Escribir vector(f)Sin Saltar
	FinPara
FinAlgoritmo