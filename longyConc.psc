Algoritmo longyConc
	Definir palabra Como Caracter
	Escribir "Si escribes una palabra de cuatro caracteres saldr� un !"
	Escribir "Si es de mas o menos caracteres saldr� ?"
	Leer palabra
	si Longitud(palabra) == 4 Entonces
		Escribir Concatenar(palabra, "!")
	SiNo
		Escribir Concatenar(palabra, "?")
	FinSi
	
FinAlgoritmo
