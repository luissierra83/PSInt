//Una empresa de venta de productos por correo desea realizar una estadística de las ventas
//realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5
//productos en los 5 días hábiles de la semana. Se desea conocer:
//	a) Total de ventas por cada día de la semana.
//	b) Total de ventas de cada producto a lo largo de la semana.
//	c) El producto más vendido en cada semana.
//	d) El nombre, el día de la semana y la cantidad del producto más vendido.
//El informe final tendrá un formato como el que se muestra a continuación:
Algoritmo EXTRA_7
	Definir datos, salto Como Entero
	dimension datos[7, 6]
	llenar(datos)
	menuop(datos)
FinAlgoritmo

SubProceso Masvendido(datos Por Referencia)
	definir i, j, Mayor, masven Como Entero
	definir salto Como Caracter
	dimension masven(5)
	mayor = 0 
	para i = 0 hasta 4
		para j = 0 hasta 4 Hacer
			si datos[j, i]> mayor Entonces
				mayor= datos[j,i]
				masven[i]= j
			FinSi
			datos[6, i] = mayor
		FinPara
		mayor = 0
	FinPara
	para i = 0 hasta 4 Hacer
		escribir "el dia " Dias(i), " el " producto(masven[i]) " fue el mas vendido"
	FinPara
	Escribir "presione ENTER para continual"
	leer salto
	
FinSubProceso
SubProceso MasVendidos(datos por referencia)    ///carga el articulo mas vendido en Datos[6,x]
	definir i, j, Mayor, masven Como Entero
	definir salto Como Caracter
	dimension masven(5)
	mayor = 0 
	para i = 0 hasta 4
		para j = 0 hasta 4 Hacer
			si datos[j, i]> mayor Entonces
				mayor= datos[j,i]
				masven[i]= j
			FinSi
			datos[6, i] = mayor
		FinPara
		mayor = 0
	FinPara
	para i = 0 hasta 4 Hacer
		escribir "el dia " Dias(i), " el " producto(masven[i]) " fue el mas vendido con: " datos[6, i] 
	FinPara
	Escribir "presione ENTER para continuar"
	leer salto
FinSubProceso

SubProceso TotalVentasDia(datos por referencia) ///carga en Datos [x, 5] la sumatoria de todos los productos
	definir i, j, tot Como Entero
	definir salto Como Caracter
	tot = 0
	para i = 0 hasta 4 Hacer
		para j = 0 hasta 4 Hacer
			tot= tot + datos(j, i) 
			datos[5, i] = tot
		FinPara
		tot = 0 
	FinPara
	para i = 0 hasta 4 Hacer
		escribir "El " producto(i) " Tuvo : "  datos[5, i] "ventas" 
	FinPara
	Escribir "presione ENTER para continuar"
	leer salto
FinSubProceso
SubProceso TotalProductosSemana(datos por referencia)			///carga  Datos [x, 5] la sumatoria de todos los productos
	definir i, j, tot Como Entero
	definir salto Como Caracter
	tot = 0
	para i = 0 hasta 4 Hacer
		para j = 0 hasta 4 Hacer
			tot= tot + datos(i, j) 
			datos[i, 5] = tot
		FinPara
		tot = 0 
	FinPara
	para i = 0 hasta 4 Hacer
		escribir "El " dias(i) "  el total de productos vendidos fue: " datos[i,5]
	finpara 
		Escribir "presione ENTER para continuar"
		leer salto
FinSubProceso
SubProceso llenar (datos Por Referencia)  ///llena con datos Aleatorios desde Datos[0,0] hasta Datos[4,4] los productos en todos los dias
	definir i, j Como Entero
	para i = 0 hasta 4 Hacer
		para j = 0 hasta 4 Hacer
			datos[i, j] = azar(20)
		FinPara
	FinPara
finSubProceso


SubProceso menuop(datos)
	definir op Como caracter
	definir salida Como Logico
	salida = Falso
	repetir
		Limpiar Pantalla
	Escribir"---------------------|MENU|---------------------"
	Escribir"1 - Total de ventas por cada día de la semana."
	Escribir"2 - Total de ventas de cada producto a lo largo de la semana"
	Escribir"3 - El producto más vendido en cada semana."
	Escribir"4 - El nombre, el día de la semana y la cantidad del producto más vendido."
	escribir"5 - Para salir"
	leer op
	Segun op hacer
		"1":
			Limpiar Pantalla
			TotalProductosSemana(datos)	
		"2": 
			Limpiar Pantalla
			TotalVentasDia(datos)
		"3": 
			Limpiar Pantalla
			MasVendido(datos)
		"4":
			Limpiar Pantalla
			MasVendidos(datos)
		"5": 
			salida = Verdadero
		De Otro Modo:
			Escribir "la opcion ingresada no es valida"
	FinSegun
	mientras que salida = falso
FinSubProceso
////FUNCIONES PARA PASAR DE POSICIONES A NOMBRE DE DIA Y NOMBRE DE PRODUCTO 
funcion Prod = Producto(k)
	definir Prod Como caracter
	segun k Hacer
		0: 
			Prod = "PRODUCTO 1"
		1: 
			Prod = "PRODUCTO 2"
		2:
			Prod = "PRODUCTO 3"
		3: 
			Prod = "PRODUCTO 4"
		4:
			Prod = "PRODUCTO 5"
	FinSegun
FinFuncion

funcion Dia = dias(k)
	definir dia Como Caracter
	segun k Hacer
		0: 
			dia = "LUNES"
		1: 
			dia = "MARTES"
		2:
			dia = "MIERCOLES"
		3: 
			dia = "JUEVES"
		4:
			dia = "VIERNES"
	FinSegun
FinFuncion

	