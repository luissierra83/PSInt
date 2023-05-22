//Continuando el ejercicio anterior, ahora se pedirá una frase o palabra y se validara si la
//primera letra de la frase es igual a la última letra de la frase. Se deberá de imprimir un
//mensaje por pantalla que diga "CORRECTO", en caso contrario, se deberá imprimir
//"INCORRECTO".

Algoritmo ejercicio_7
	Definir frase Como Caracter
	Definir longitudFrase Como Entero
	Escribir "Ingresa una frase: "
	Leer frase
	longitudFrase = Longitud(frase)
	Si Subcadena(frase, 0, 0) == Subcadena(frase, longitudFrase-1, longitudFrase-1) Entonces
		Escribir "Correcto"
	SiNo
		Escribir "Incorrecto"
	FinSi
FinAlgoritmo
//frase = "programacion"
//Subcadena(frase, 0, 0) = "p"
//Subcadena(frase, 12, 12) = "n"
//Subcadena(frase, 3, 6) = "gram"
//longitudFrase = 12
