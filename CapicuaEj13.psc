Funcion esCapicua <- capicua (num)
	Definir numInv, aux como entero
	Definir esCapicua Como Logico
	aux = num
	numInv = 0
	Mientras aux > 0 Hacer
		numInv = numInv + aux mod 10
		numInv = numInv * 10
		aux = trunc (aux/10)
	FinMientras
	numInv = numInv/10
	si num = numInv Entonces
		esCapicua = Verdadero
	SiNo
		esCapicua = Falso
	FinSi
Fin Funcion

//Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es 
//capic�a o no (Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc. No podemos 
//		transformar el numero a cadena para realizar el ejercicio

Algoritmo CapicuaEj13
	Definir num Como Entero
	Escribir "Por favor digita un n�mero, vamos a ver si es capic�a:"
	Leer num
	
	Escribir "�Tu numero es Capic�a?, la respuesta es: ", capicua(num)

	
FinAlgoritmo
