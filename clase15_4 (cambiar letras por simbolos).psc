Algoritmo clase15_4
	
	definir palabra, letras, aux Como Caracter
	definir i, j como entero
	
	escribir "ingrese la palabra o frase"
	leer palabra
	
	j = Longitud(palabra)
	aux = " "
	para i = 0 hasta j Hacer
		letras = subcadena(palabra, i, i)
		
		segun Minusculas(letras) hacer
			"a": 
				escribir sin saltar"@"
			"e": 
				escribir sin saltar"#"
			"i":
				escribir sin saltar "$"
			"o":
				escribir sin saltar "%"
			"u":
				escribir sin saltar "*"
			De Otro Modo:
				escribir sin saltar letras
		FinSegun
	FinPara
	
	
FinAlgoritmo
