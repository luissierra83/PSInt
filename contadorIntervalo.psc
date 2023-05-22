Algoritmo contadorIntervalo
	Definir max, min, num, contador Como Entero
	Escribir "Por favor escribir los números que conformarán el intervalo"
	Escribir "Primero el menor y luego el mayor"
	Leer min, max
	Escribir "Ahora escribe números que estén dentro del rango de los anteriores"
	Leer num
	contador = 0
	si min < max Entonces
		mientras num < max y num > min Hacer
			contador = contador + 1
			Escribir "Escribe otro número"
			Leer num
		FinMientras
		Escribir "Te saliste de rango, gracias por participar"
		Escribir "La cantidad de números dentro del intervalo fue: ", contador
	SiNo
		Escribir "Tu rango esta mal formulado, inicia de nuevo!"
	FinSi
	
FinAlgoritmo
