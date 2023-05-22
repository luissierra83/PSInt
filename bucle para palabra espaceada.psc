Algoritmo sin_titulo
//Realizar un programa que pida una frase y el programa deberá mostrar la frase con un
//espacio entre cada letra. La frase se mostrará así: H o l a. Nota: recordar el
//funcionamiento de la función Subcadena().
//NOTA:. En PseInt, si queremos escribir sin que haya saltos de línea, al final de la
//operación "escribir" escribimos "sin saltar". Por ejemplo:
//Escribir sin saltar "Hola, "
//Escribir sin saltar "cómo estás?"
//Imprimirá por pantalla: Hola, cómo estás?
	
	Definir i Como entero
	Definir pala Como cadena
	
	Escribir "Ingrese una frase"
	Leer pala 
	
	Para i <- 0 Hasta Longitud(pala) Con Paso 1 Hacer
		escribir  Sin Saltar SubCadena(pala,i,i)," " 
		
	FinPara
	
FinAlgoritmo
