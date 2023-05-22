//Tomando en cuenta el ejercicio 6, mejore el mecanismo de inserción del carácter, facilitando
//un potencial reordenamiento del vector. Digamos que se pide ingresar el carácter en la
//posición X y la misma está ocupada, entonces de existir un espacio en cualquier posición X-n
//o X+n, desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar el carácter
//	en cuestión en el lugar deseado. El procedimiento de reordenamiento debe ubicar el espacio
//	más cercano.
//Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
//	H o l a m u n d o c r u e l !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//	
//	Si se desea ingresar el carácter "%" en la posición 8, entonces el resultado con desplaza-
//	miento sería:
//		
//		h o l a m u n % d o c r u e l !
//		0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//		
//		Notar que el desplazamiento se hizo hacia la izquierda porque el espacio de la posición 10 es-
//	taba más cerca de la posición 8 que el espacio de la posición 4. Nota: en caso del que el des-
//		plazamiento sea a la izquierda y se requiera que se remueva la letra, se hará. Por ejemplo,
//		
//		para poner un "%" en la posición 6, haríamos un desplazamiento a la izquierda y borraríamos
//la letra h
Algoritmo Ejercicio5Extra	
	definir i,tamano,posi como entero
	definir frasecomp,frase,letra,busca Como Caracter
	Dimension frasecomp(20)
	Escribir "Ingrese frase"
	leer frase
	tamano = Longitud(frase)
	para i=0 hasta 19 Hacer
		frasecomp(i) = SubCadena(frase,i,i)
		escribir frasecomp(i) Sin Saltar		
	FinPara	
	escribir""
	escribir "Ingrese caracter"
	Leer letra
	escribir "ingrese posicion"
	leer posi	
	para i=0 hasta 19 Hacer
		si posi = i Entonces
			si frasecomp(i)=" " Entonces
				frasecomp(i) = letra
				Escribir frasecomp(i) Sin Saltar
			SiNo
				Escribir Sin Saltar letra
			FinSi			
		FinSi
		frasecomp(i) = Subcadena(frase,i,i)
		Escribir frasecomp(i) Sin Saltar		
	FinPara
	escribir""	
FinAlgoritmo