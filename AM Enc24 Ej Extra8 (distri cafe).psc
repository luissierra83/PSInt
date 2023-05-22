////Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina
////ofreciendo sus productos. Para tareas administrativas el país está dividido en cinco zonas:
////		Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas
////		estadísticas sobre el comportamiento de sus representantes en cada zona. Se desea hacer un
////	programa que lea el monto de las ventas de los representantes en cada zona y calcule luego:
////		a) el total de ventas de una zona introducida por teclado
////		b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
////		c) el total de ventas de todos los representantes.
Algoritmo extra_8
	definir datos, i Como Entero
	definir salida, name, stop Como Logico
	definir nombres, op, intro Como Caracter
	dimension datos[5,6], nombres[4]
	name = falso
	stop = falso
	salida = Falso
	
	repetir
		Limpiar Pantalla
		Escribir"---------------------|MENU|---------------------"
		Escribir"1 - Cargar Datos "
		Escribir"2 - el total de ventas de una zona"
		Escribir"3 - el total de ventas de un vendedor"
		Escribir"4 - el total de ventas del mes"
		escribir"5 - Para salir"
		leer op
		Segun op hacer
			"1":
				Limpiar Pantalla
				Carga(datos, nombres, name, stop)
				
			"2": 
				si stop Entonces
					Limpiar Pantalla
					para i= 0 hasta 4 hacer
						escribir "El total de ventas de la zona: " i + 1  " es =" datos[i, 5]
					FinPara
					Escribir "presione INTRO PARA CONTINUAR" 
					leer intro
				sino 
					Escribir"Debe cargado datos primero"
					Escribir"presione ENTER para volver al menu"
					leer intro
				FinSi
				
			"3": 
				Limpiar Pantalla
				para i= 0 hasta 4 hacer
					escribir "El total de ventas del representante: " i + 1 " es :" datos[i, 5]
				FinPara
				Escribir "presione INTRO PARA CONTINUAR" 
				leer intro
			"4":
				Limpiar Pantalla
				escribir "El total de ventas del mes fue: " datos[4,5]
				Escribir "presione INTRO PARA CONTINUAR" 
				leer intro
			"5": 
				salida = Verdadero
			De Otro Modo:
				Escribir "la opcion ingresada no es valida"
		FinSegun
	mientras que salida = falso
FinAlgoritmo
SubProceso TotalVentasM(datos, nombres, name)
	definir i, sum Como Entero
	sum = 0
	para i = 0 Hasta 3 Hacer
		sum = sum + datos[i,5]
	FinPara
	datos[4,5] = sum 
FinSubProceso
SubProceso TotalVentasV(datos, nombres, name)
	definir i, j, sum Como Entero
	definir intro Como Caracter
	sum = 0 
	para i = 0 hasta 3
		para j = 0 hasta 4 Hacer
			sum = sum + datos(i, j)
		FinPara
		datos[i,5] = sum
		sum = 0
	FinPara
	Limpiar Pantalla
	
FinSubProceso

SubProceso TotalVentasZ(datos, nombres, name)
	definir i, j, sum Como Entero
	
	sum = 0 
	para i = 0 hasta 4
		para j = 0 hasta 3 Hacer
			sum = sum + datos(j, i)
		FinPara
		datos[4,i] = sum
		sum = 0
	FinPara
	Limpiar Pantalla
	
FinSubProceso


SubProceso Carga(datos por referencia, nombres Por Referencia, name Por Referencia, stop Por Referencia)
	definir i, j  como enteros
	definir op, intro Como Caracter
	definir salida Como Logico
	salida = falso
	
	repetir
		//	Limpiar Pantalla
		Escribir"---------------------|CARGA|---------------------"
		Escribir"           1 -  Por representante "
		Escribir"           2 -      Por zona"
		escribir"           3 -     Para salir"
		leer op
		Segun op Hacer
			"1": 
				para i = 0 hasta 3 Hacer
					para j= 0 Hasta 4 Hacer
						Limpiar Pantalla
						escribir "ingrese el total de Ventas del representante " i + 1 " en la zona : " j + 1
						leer datos[i, j]
					FinPara
				FinPara
				stop = verdadero
			"2":
				para i = 0 hasta 4 Hacer
					para j= 0 Hasta 3 Hacer
						Limpiar Pantalla
						escribir "ingrese el total de Ventas de la zona" i + 1 " para el vendedor : " j + 1
						leer datos[j, i]
					FinPara
				FinPara
				stop = verdadero
			"3":
				TotalVentasZ(datos, nombres, name)
				TotalVentasV(datos, nombres, name)
				TotalVentasM(datos, nombres, name)
				muestra(datos, 5, 6)
				salida = Verdadero
		FinSegun
	mientras que salida = falso
FinSubProceso

SubProceso muestra(matriz, tamf, tamc )     ///genera una cuadricula con el contenido de la matriz
	definir i, j Como Entero
	para i = 0 hasta tamf - 1 Hacer
		escribir Sin Saltar "| "
		para j = 0 hasta tamc - 1 Hacer
			escribir sin saltar matriz[i, j] " | "
		FinPara
		escribir""
		para j = 0 hasta tamc - 1  Hacer
			escribir sin saltar " --- "
		FinPara
		escribir ""
	FinPara
FinSubProceso