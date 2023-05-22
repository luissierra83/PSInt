//Una empresa de venta de productos por correo desea realizar una estadística de las ventas
//realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5
//productos en los 5 días hábiles de la semana. Se desea conocer:
//	a) Total de ventas por cada día de la semana.
//	b) Total de ventas de cada producto a lo largo de la semana.
//	c) El producto más vendido en cada semana.
//	d) El nombre, el día de la semana y la cantidad del producto más vendido.
Algoritmo exEj7Guia5
	Definir matriz, i,j,totalCol, totalFil, Max, productos Como Entero
	Dimension matriz(5,5)
	Dimension totalCol(5),totalFil(5), Max(5)
	Dimension productos(5)
	Para i=0 Hasta 4 Hacer
		para j=0 Hasta 4 Hacer
			matriz(i,j)= Aleatorio(1,9)
		FinPara
	FinPara
	sumaCol(matriz,totalCol,i,j)
	sumaFil(matriz,totalFil,i,j)
	maximo(matriz,i,j,Max)
	fill(productos,i)
	Escribir "Aqui es donde la magia comienza"
	esperar 2 Segundos
	Escribir Sin Saltar "           Lunes   Martes   Miércoles   Jueves   Viernes   Total Producto"
	Escribir "  "
	Para i=0 Hasta 4 Hacer
		Escribir Sin Saltar "Producto ",i+1
		para j=0 Hasta 4 Hacer
			Escribir Sin Saltar "  ",matriz(i,j),"  "
		FinPara
		Escribir Sin Saltar totalFil(i)
		Escribir " "
	FinPara
	Escribir Sin Saltar "Total semana"
	Para j=0 Hasta 4
		Escribir sin saltar totalCol(j),"  "
	FinPara
	Escribir " "
	Escribir Sin Saltar "Producto más vendido"
	Para j=0 Hasta 4
		Escribir Sin Saltar "          ",max(j), "  "
	FinPara
FinAlgoritmo

SubProceso sumaCol(matriz,totalCol,i,j)
	Para i=0 Hasta 4 Hacer
		totalCol(i)=0
		para j=0 Hasta 4
			totalCol(i)=totalCol(i) + matriz(i,j)
		FinPara
	FinPara
FinSubProceso

SubProceso sumaFil(matriz,totalFil,i,j)
	Para i=0 Hasta 4 Hacer
		totalFil(i)=0
		para j=0 Hasta 4
			totalFil(i)=totalFil(i) + matriz(i,j)
		FinPara
	FinPara
FinSubProceso

SubProceso maximo(matriz,i,j,Max)
	Para j=0 Hasta 4 Hacer
		Max(j)=matriz(0,j)
		para i=0 hasta 4 Hacer
			Si max(j) > matriz(i,j) Entonces
				max(j) = max(j)
			SiNo
				max(j) = matriz(i,j)
			FinSi
		FinPara
	FinPara
	
FinSubProceso

Subproceso fill(productos,i)
	Para i=0 Hasta 4 Hacer
		productos(i) = i+1
	FinPara
FinSubProceso
	