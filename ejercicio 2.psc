Algoritmo sin_titulo
//	Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//	usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
//	coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En
	//	caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.
	
	
	
	
	definir n,i,j,matriz , x Como Entero
	
	dimension matriz(5,5)
	
	para i=0 hasta 4 con paso 1 hacer 
		para j=0 hasta 4 con paso 1  hacer 
			
			matriz(i,j)=azar(25)
		finpara
		finpara
	
			Para i<-0 Hasta 4 Con Paso 1 Hacer
				Para j<-0 hasta 4 Con Paso 1 Hacer
					Escribir Sin Saltar "[", matriz[i,j] "]"
				Fin Para
				Escribir " "
		
		finpara 
		
		
		escribir "ingrese un número"
		leer n
		x=0
		
		Para i<-0 Hasta 4 Con Paso 1 Hacer
			Para j<-0 hasta 4 Con Paso 1 Hacer
				
				si matriz(i,j)==n
					
				Escribir "el número" n, "se encuentra en la fila:" i, "columna: ", j
				x=1
			finsi
			finpara
		finpara	
			si x==0 entonces 
				escribir"el número" n , "no se encuentra en la matriz"
			FinSi
FinAlgoritmo
