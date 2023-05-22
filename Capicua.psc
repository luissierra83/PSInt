Algoritmo Capicua
	
	Definir num, centena, decena, unidad Como Entero
	
	Escribir "Por favor escriba un numero de tres cifras"
	Leer num
	
	unidad = num mod 10
	decena = trunc (num / 10) mod 10
	centena = trunc (num / 100)
	si unidad = centena Entonces
		escribir "felicidades, su numero es capicua"
	FinSi
FinAlgoritmo
