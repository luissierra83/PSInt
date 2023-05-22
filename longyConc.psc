Algoritmo longyConc
	Definir palabra Como Caracter
	Escribir "Si escribes una palabra de cuatro caracteres saldrá un !"
	Escribir "Si es de mas o menos caracteres saldrá ?"
	Leer palabra
	si Longitud(palabra) == 4 Entonces
		Escribir Concatenar(palabra, "!")
	SiNo
		Escribir Concatenar(palabra, "?")
	FinSi
	
FinAlgoritmo
