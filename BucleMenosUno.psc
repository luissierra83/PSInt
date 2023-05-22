Algoritmo BucleMenosUno
	Definir num, promedio, contador, i Como Real
	Escribir "Vamos a ingresar una serie de números al azar"
	Escribir "nosotros calcularemos el promedio resultante de ellos"
	Escribir "Para terminar la lista escribe -1"
	Leer num
	contador = 0
	i = 0
	mientras i <> -1 Hacer
		contador = contador + 1
		Escribir "Escribe otro número"
		Leer i
		num = num + i
	FinMientras
	promedio = num / contador
	Escribir "El promedio de los numeros digitados es: ",promedio 
FinAlgoritmo
