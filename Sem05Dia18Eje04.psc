Algoritmo Sem05Dia18Eje04
	Definir inN, outN, cont, x, look Como Real
	Definir savA, savB, savC, savD, savE Como Real
	Definir menu Como Caracter
	
	Escribir "Ingresa la cantidad de números que almacenarás: "
	Leer inN
	Dimension savA[inN]
	Dimension savB[inN]
	Dimension savC[inN]
	cont = 0
	x = 0
	
	random(savA, inN)
	random(savB, inN)
	
	Hacer
		
		Escribir "Elige la opción deseada."
		Escribir "A. Para sortear los números A nuevamente"
		Escribir "B. Para sortear los números B nuevamente"
		Escribir "C. Para sumar números A y B"
		Escribir "D. Para restar numeros B y A"
		Escribir "E. Para desplegar los números"
		Escribir "F. Para salir"
		Escribir ""
		Leer menu
		
		Segun menu Hacer
			"A":
				random(savA, inN)
			"B":
				random(savB, inN)
			"C":
				sumacion(savC, savA, savB, inN)
			"D":
				restacion(savC, savA, savB, inN)
			"E":
				desplegar(savA, savB, savC, inN)
				Escribir ""
		Fin Segun
		
	Mientras Que menu <> "F" 
	
FinAlgoritmo

SubProceso random(var Por Referencia, inN)
	Definir cont Como Entero
	
	Para cont = 0 Hasta inN - 1 Hacer
		
		var[cont] = aleatorio(1, 100)
		
	FinPara
	
FinSubProceso

SubProceso sumacion(var Por Referencia, var1, var2, inN)
	Definir cont Como Entero
	
	Para cont = 0 Hasta inN - 1 Hacer
		
		var[cont] = var1[cont] + var2[cont]
		
	FinPara
	
FinSubProceso

SubProceso restacion(var Por Referencia, var1, var2, inN)
	Definir cont Como Entero
	
	Para cont = 0 Hasta inN - 1 Hacer
		
		var[cont] = var2[cont] - var1[cont]
		
	FinPara
	
FinSubProceso

SubProceso desplegar(var1, var2, var3, inN)
	
	Definir look Como Entero
	Definir letra Como Caracter
	Escribir "Que valor quieres sacar del alamacenamiento: "
	Leer look
	look = look - 1
	
	Escribir "El valor " look + 1 " es " var1[look] " en el arreglo A"
	Escribir "El valor " look + 1 " es " var2[look] " en el arreglo B"
	Escribir "El valor " look + 1 " es " var3[look] " en el arreglo C"
	
	Escribir "Que valor quieres sacar del alamacenamiento: A, B o C"
	Leer letra
	
	letra = Mayusculas(letra)
	Escribir ""
	
	Segun letra Hacer
		"A":
			Para look = 0 Hasta inN - 1 Hacer
				
				Escribir "El valor número " look + 1 " del arreglo " letra " es " var1[look]
				
			FinPara
		"B":
			Para look = 0 Hasta inN - 1 Hacer
				
				Escribir "El valor número " look + 1 " del arreglo " letra " es " var2[look]
				
			FinPara
		"C":
			Para look = 0 Hasta inN - 1 Hacer
				
				Escribir "El valor número " look + 1 " del arreglo " letra " es " var3[look]
				
			FinPara
	Fin Segun
	
	

	
FinSubProceso
