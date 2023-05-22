Algoritmo comisionesVentas
	definir sueldo, numVentas, comision, sueldoTotal Como Real
	Escribir "vamos a calcular las cuanto ganarás en comisiones!"
	Escribir "Por favor digite su sueldo base:"
	Leer sueldo
	Escribir "Por favor digita el numero de ventas realizadas"
	Leer numVentas
	comision = (sueldo * 0.1) * numVentas
	sueldoTotal = comision + sueldo
	Escribir "Tus comisiones fueron de: $", comision
	Escribir "Por lo tanto tu sueldo total es de: $", sueldoTotal	
FinAlgoritmo
