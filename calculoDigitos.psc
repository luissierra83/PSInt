Algoritmo calculoDigitos
	Definir num, cont como real
	Escribir "Digita un número"
	Leer num
	cont = 0
	mientras trunc(num)<>0  Hacer
		cont = cont + 1
		num = num*0.1
	FinMientras
	Escribir "El total de caracteres es: ", cont
FinAlgoritmo
