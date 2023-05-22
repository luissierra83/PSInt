Algoritmo primeraUltimaLetra
	Definir palabra Como Caracter
	Definir longPalabra Como Entero
	Escribir "Vamos a comprobar si la palabra que vas a digitar comienza y termina con la misma letra"
	Leer palabra
	longPalabra = Longitud(palabra) - 1
	si Subcadena(palabra, 0,0) == Subcadena(palabra,longPalabra,longPalabra) Entonces
		Escribir "CORRECTO"
	SiNo
		Escribir "INCORRECTO"
	FinSi
FinAlgoritmo
