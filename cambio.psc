Subproceso intercambio (num1 Por Valor, num2 por valor, num3 Por Referencia)
	num3 = num1
FinSubProceso

//Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
//La variable A, debe terminar con el valor de la variable B.
Algoritmo cambio
	Definir num1, num2, num3 Como Entero
	Escribir "Vamos a convertir un número por otro"
	Escribir "Digita el primer número:"
	Leer num1
	Escribir "Ahora vamos a cambiar un segundo número por el primero que digitaste"
	Escribir "Digita el segundo número:"
	Leer num2
	intercambio(num1, num2, num3)
	Escribir "Tu segundo número se transformó en: ", num3
	
FinAlgoritmo

