
//1. "Batalla naval espacial": Este juego se juega en un tablero de 4 x 4, donde las filas se
//	identifican de la A hasta la D y las columnas del 1 al 4. En el juego participan 2
//contendientes: el defensor y el atacante. Dicho juego consiste en:
//		
//	El defensor, ubica solo una nave nodriza triple con ciertas reglas:
//		
//		2.1) La nave debe ubicarse de tal forma que sus partes queden contiguas, ya
//		sea horizontal o vertical, pero no es válido en forma oblicua.
//		
//		2.2) Cada una de las tres partes que compone la nave contiene un escudo
//		de electrones medido con un valor del 1 al 9, el cual debe pedirse al
//		usuario junto con su posición.
//		
//	A continuación, se ilustra un ejemplo de una ubicación posible:
//		
////		
////		
//1 2 3 4
//
//A
//
//B
//
//C   4 7 1
//		
//		D
//		
//		
//		
//2.3) El atacante, indicando una coordenada del tablero (por ejemplo, C3) y
//una carga de protones, debe intentar acertar a la nave de su contrincante.
//		
//El ataque, posee las siguientes reglas:
//			
//a) La carga de protones asociada al ataque corresponde a un valor del 1 al 9.
//		
//b) ¡Si el atacante no acierta en la posición, entonces el defensor informa
//	"Espacio!".
//			
//c) Si el atacante acierta la posición:
//						
//c.1) El ataque es "efectivo" y resta el valor de la carga protones al escudo de			
//electrones, si y solo sí, el valor de la carga de protones es menor o igual al				
//valor restante de electrones del escudo. En el ejemplo de ubicación anterior				
//si el atacante indica C3 con carga 9, el ataque es "sin efecto" y no genera					
//daño alguno. Pero si indica C3 con carga 4 el ataque es "efectivo" y el escudo					
//de la posición queda con carga de 3 electrones.
//							
//c.2) Luego del ataque se debe indicar si fue efectivo o no, si se neutralizó o							
//no el escudo del casillero y la suma total de electrones que resta para hundir								
//la nave. El escudo de un casillero se neutraliza cuando llega a cero.								
//Suponiendo que en el primer ataque se indica C3 con carga 4, se indica								
//"Ataque efectivo ? Escudo no neutralizado ? Carga restante de electrones									
//igual a 3".								
//										
//d) Cada vez que el atacante realiza un disparo resta el valor de la carga de su						
//reactor de protones. El reactor de la nave atacante es de 40 protones. Un								
//disparo a realizar no puede superar la carga de protones restantes.
//																										
//El juego termina cuando se cumple alguna de las siguientes situaciones:
//										
//a) Gana el atacante cuando deja sin escudos a la nave nodriza y todavía le							
//queda carga para un disparo más.									
//											
//b) Gana el defensor cuando el atacante se queda sin carga en el reactor de					
//protones.
//																		
//Realice un programa que implemente la lógica del juego, iniciando con la distribución de la
//nave en el tablero por parte del defensor, y luego desarrollando la partida del atacante hasta										
//la culminación del juego. El programa debe indicar quién ganó el juego.


Algoritmo BatallaNavalEspacial
	
	//Organizamos el campo de juego
	Definir LargoCampo, AnchoCampo, TamanoNave Como Entero
	Definir campoinicialC, campo Como Entero
	Definir campoinicialF Como Caracter
	
	Escribir "BIENVENIDO A BATALLA NAVAL ESPACIAL"
	Escribir ""
	
	Escribir "Por favor ingrese el número de Filas:"
	Leer LargoCampo
	Escribir ""
	Escribir "Por favor ingrese el número de Columnas:"
	Leer AnchoCampo
	Escribir ""
	Escribir "Por favor ingrese el tamaño de la nave:"
	Leer TamanoNave
	Repetir
		Si (LargoCampo > AnchoCampo Y TamanoNave > LargoCampo) O (AnchoCampo > LargoCampo Y TamanoNave > AnchoCampo) Entonces
			Escribir "Por favor ingrese un tamaño de nave menor al largo o ancho del campo de batalla"
			Leer TamanoNave
		Fin Si
	Mientras Que (LargoCampo > AnchoCampo Y TamanoNave > LargoCampo) O (AnchoCampo > LargoCampo Y TamanoNave > AnchoCampo)
	Escribir ""
	
	Dimension campoinicialF(LargoCampo)
	Dimension campoinicialC(AnchoCampo)
	Dimension campo(LargoCampo,AnchoCampo)
	
	Escribir "DEFENSOR: Por favor ubica tu nave nodriza triple en el siguiente campo de batalla: "
	Escribir ""
	imprimirCampo(campoinicialF, campoinicialC, LargoCampo, AnchoCampo)
	Escribir ""
	definirPosicion(campoinicialF, campoinicialC, TamanoNave,LargoCampo, AnchoCampo,campo)
	
	
FinAlgoritmo

Subproceso imprimirCampo(campoinicialF, campoinicialC, T,U)
	
	Definir l,k Como Entero
	Definir ABCdario Como Caracter
	
	ABCdario="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	Para l<-0 Hasta T-1 Con Paso 1 Hacer
		campoinicialF(l) = Subcadena(ABCdario,l,l)
	Fin Para
	
	Para k<-0 Hasta U-1 Con Paso 1 Hacer
		campoinicialC(k) = k + 1
	Fin Para
	
	Escribir ""
	Escribir Sin Saltar "  "
	
	Para k<-0 Hasta U-1 Con Paso 1 Hacer
		Escribir Sin Saltar campoinicialC(k)
		Escribir Sin Saltar "  "
	Fin Para
	
	Escribir " "
	
	Para l<-0 Hasta T-1 Con Paso 1 Hacer
		Escribir campoinicialF(l)
	Fin Para
	
FinSubProceso

SubProceso definirPosicion(campoinicialF, campoinicialC, N,U,T,campo)
	
	Definir k, l, i, j, Columna, Elec, abc, FilaNum, RestaFila, RestaColumna, ColumnasIguales, FilasIguales Como Entero
	Definir MaxFila, MinFila, MaxColumna, MinColumna, RestaMin, RestaMax, RestaMinF, RestaMaxF Como Entero
	Definir Fila, MaxFilaL, MinFilaL, ABCdario, FilaUlt Como Caracter
	
	ABCdario="ABCDEFGHIJKLMNOPQRSTUVWXYZ"

	Dimension Fila(N)
	Dimension FilaNum(N)
	Dimension RestaFila(N)
	Dimension RestaColumna(N)
	Dimension Columna(N)
	Dimension Elec(N)
	
	FilaUlt =  Subcadena(ABCdario,U-1,U-1)
	
	
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		
		Si i == 0 Entonces
			Escribir "Posición ",i+1," -  Fila (A,B,...,",FilaUlt,"):"
			Repetir
				leer Fila(i)
				Fila(i) = Mayusculas(Fila(i))
			Mientras Que Fila(i)<"A" O Fila(i)>campoinicialF(U-1)
			abc = 0
			Repetir
				Si Fila(i) == Subcadena(ABCdario,abc,abc) Entonces
					FilaNum(i) = abc + 1
				Fin Si
				abc = abc + 1
			Mientras Que NO(Fila(i) == Subcadena(ABCdario,abc-1,abc-1)) O abc > Longitud(ABCdario)
			RestaFila(i) = 0
		SiNo
			Si i==1 Entonces
				Repetir
					Escribir "Posición ",i+1," -  Fila (A,B,...,",FilaUlt,"):"
					Repetir
						leer Fila(i)
						Fila(i) = Mayusculas(Fila(i))
					Mientras Que Fila(i)<"A" O Fila(i)>campoinicialF(U-1)
					abc = 0
					Repetir
						Si Fila(i) == Subcadena(ABCdario,abc,abc) Entonces
							FilaNum(i) = abc + 1
						Fin Si
						abc = abc + 1
					Mientras Que NO(Fila(i) == Subcadena(ABCdario,abc-1,abc-1)) O abc > Longitud(ABCdario)
					RestaFila(i) = FilaNum(i-1) - FilaNum(i)
					Si RestaFila(i) < -i O RestaFila(i) > i Entonces
						Escribir "Recuerda que todas las partes de la nave deben ser contiguas entre sí."
						Escribir "Por ejemplo, si ya habías elegido la Fila B, entonces solo podrías escoger entre la A, la B o la C"
						Escribir ""
					Fin Si
				Mientras Que RestaFila(i) < -i O RestaFila(i) > i
			SiNo
				Repetir
					Escribir "Posición ",i+1," -  Fila (A,B,...,",FilaUlt,"):"
					Repetir
						leer Fila(i)
						Fila(i) = Mayusculas(Fila(i))
					Mientras Que Fila(i)<"A" O Fila(i)>campoinicialF(U-1)
					abc = 0
					Repetir
						Si Fila(i) == Subcadena(ABCdario,abc,abc) Entonces
							FilaNum(i) = abc + 1
						Fin Si
						abc = abc + 1
					Mientras Que NO(Fila(i) == Subcadena(ABCdario,abc-1,abc-1)) O abc > Longitud(ABCdario)
					RestaFila(i) = FilaNum(i-1) - FilaNum(i)
					Si RestaFila(i-1) == 0 Y Fila(i)<> Fila(i-1) Entonces
						Escribir "Recuerda que todas las partes de la nave deben ser contiguas entre sí."
						Escribir "Ya has escogido la letra ", Fila(i-1), " en la posición ", i, " y ", i-1
						Escribir "por lo que solo podrás escoger la letra ",  Fila(i-1)
						Escribir ""
					SiNo
						//En caso de que las dos anteriores filas sean diferentes entre sí y contiguas
						//Nos aseguramos de que no elija la misma que las anteriores
						FilasIguales = 0
						Para j<-0 Hasta i-1 Con Paso 1 Hacer
							Si Fila(i) == Fila(j)
								FilasIguales = FilasIguales + 1
							FinSi
						Fin Para
						Si RestaFila(i-1) <> 0 Y FilasIguales > 0 Entonces
							Escribir "Recuerda que todas las partes de la nave deben ser contiguas entre sí."
							Escribir "Ya has escogido la fila ",Fila(i), "."
							Escribir "escoge otra fila diferente."
							Escribir ""
						SiNo
							//Buscamos la fila maxima
							MaxFila = FilaNum(0) 
							Para j<-0 Hasta i-2 Con Paso 1 Hacer
								Si FilaNum(j+1) > FilaNum(j) Entonces
									MaxFila = FilaNum(j+1)
								Fin Si
							Fin Para
							//Buscamos la fila mínima
							MinFila = FilaNum(0) 
							Para j<-0 Hasta i-2 Con Paso 1 Hacer
								Si FilaNum(j+1) < FilaNum(j) Entonces
									MinFila = FilaNum(j+1)
								Fin Si
							Fin Para
							//Nos aseguramos que la  diferencia entre la Fila(i) con la Maxima 
							//y la Mínima NO sea  menor a -1 o mayor 1
							RestaMinF = FilaNum(i) - MinFila
							RestaMaxF = FilaNum(i) - MaxFila
							Si RestaMinF < -1 O RestaMaxF > 1 Entonces
								MinFilaL = Subcadena(ABCdario,MinFila-1,MinFila-1)
								MaxFilaL = Subcadena(ABCdario,MaxFila-1,MaxFila-1)
								Escribir "Recuerda que todas las partes de la nave deben ser contiguas entre sí."
								Escribir "Elige una columna por debajo de ", MinFilaL " o por encima de ", MaxFilaL
								Escribir ""
							Fin Si
						Fin Si
					FinSi
					
				Mientras Que (RestaFila(i-1) == 0 Y Fila(i)<> Fila(i-1)) O (RestaFila(i-1) <> 0 Y FilasIguales > 0) O (RestaMinF < -1 O RestaMaxF > 1)
				
			Fin Si
		Fin Si
		
		
		Si i == 0 Entonces
			Escribir "Posición ",i+1," -  Columna (1,2,3,...,",T,"):"
			Repetir
				leer Columna(i)
			Mientras Que Columna(i)<1 O Columna(i)>campoinicialC(T-1)
			RestaColumna(i) = 0
		SiNo
			Si i==1 Entonces
				//Revisamos si las filas de las posiciones 1 y 2 son iguales (su resta es igual a 0).
				//En caso de que sean iguales, las columas deben ser diferentes entre sí.
				Si RestaFila(i) = 0
					Repetir
						Escribir "Posición ",i+1," -  Columna (1,2,3,...,",T,"):"
						Repetir
							leer Columna(i)
						Mientras Que Columna(i)<1 O Columna(i)>campoinicialC(T-1)
						RestaColumna(i) = Columna(i) - Columna(i-1)
						//Revisamos que la diferencia entre la columna de la posicion 1 y 2 sea 1 o -1 para asgurar que son contiguas
						Si NO(RestaColumna(i) == -i) Y NO(RestaColumna(i) == i) Entonces
							Escribir "Recuerda que todas las partes de la nave deben ser contiguas entre sí."
							Escribir "Como ya elegiste la columna ", Columna(i-1), " entonces solo podrías escoger entre la columna ", Columna(i-1)-1
							Escribir " o ", Columna(i-1)+1
							Escribir ""
						Fin Si
					Mientras Que NO(RestaColumna(i) == -i) Y NO(RestaColumna(i) == i)
				SiNo
					//Como las letras de la posición 1 y 2 son diferentes, nos aseguramos de que los números de las columnas son iguales, 
					//debido que deben ser naves rectas.
					Escribir "Posición ",i+1," -  Columna (1,2,3,...,",T,"):"
					Repetir
						Repetir
							leer Columna(i)
						Mientras Que Columna(i)<1 O Columna(i)>campoinicialC(T-1)
						RestaColumna(i) = Columna(i) - Columna(i-1)
						Si Columna(i) <> Columna(i-1) Entonces
							Escribir "Recuerda que todas las partes de la nave deben ser contiguas entre sí."
							Escribir "En este caso se ha elegido diferente fila, por lo que la columna"
							Escribir "de la posición ", i+1, " debe ser igual a la de la posición ", i
							Escribir ""
						Fin Si
					Mientras Que Columna(i) <> Columna(i-1) 
				FinSi
			SiNo
				//Estos pasos son para las posiciones 3 en adelante, es decir i >= 2 
				Repetir
					Escribir "Posición ",i+1," -  Columna (1,2,3,...,",T,"):"
					Repetir
						leer Columna(i)
					Mientras Que Columna(i)<1 O Columna(i)>campoinicialC(T-1)
					RestaColumna(i) = Columna(i) - Columna(i-1)
					//En caso de que las dos anteriores columnas hayan sido iguales, 
					//Nos aseguramos de que la siguiente columna siga siendo la misma
					Si RestaColumna(i-1) == 0 Y Columna(i)<> Columna(i-1) Entonces
						Escribir "Recuerda que todas las partes de la nave deben ser contiguas entre sí."
						Escribir "Ya has escogido la columna ", Columna(i-1), " en la posición ", i, " y ", i-1
						Escribir "por lo que solo podrás escoger la columna ",  Columna(i-1)
						Escribir ""
					SiNo
						//En caso de que las dos anteriores columnas sean diferentes entre sí y contiguas
						//Nos aseguramos de que no elija la misma que las anteriores
						ColumnasIguales = 0
						Para j<-0 Hasta i-1 Con Paso 1 Hacer
							Si Columna(i) == Columna(j)
								ColumnasIguales = ColumnasIguales + 1
							FinSi
						Fin Para
						Si RestaColumna(i-1) <> 0 Y ColumnasIguales > 0 Entonces
							Escribir "Recuerda que todas las partes de la nave deben ser contiguas entre sí."
							Escribir "Ya has escogido la columna ", Columna(i), "."
							Escribir "escoge otra columna diferente."
							Escribir ""
						SiNo
							//Buscamos la columna maxima
							MaxColumna = Columna(0) 
							Para j<-0 Hasta i-2 Con Paso 1 Hacer
								Si Columna(j+1) > Columna(j) Entonces
									MaxColumna = Columna(j+1)
								Fin Si
							Fin Para
							//Buscamos la columna mínima
							MinColumna = Columna(0) 
							Para j<-0 Hasta i-2 Con Paso 1 Hacer
								Si Columna(j+1) < Columna(j) Entonces
									MinColumna = Columna(j+1)
								Fin Si
							Fin Para
							//Nos aseguramos que la  diferencia entre la Columna(i) con la Maxima 
							//y la Mínima NO sea  menor a -1 o mayor 1
							RestaMin = Columna(i) - MinColumna
							RestaMax = Columna(i) - MaxColumna
							Si RestaMin < -1 O RestaMax > 1 Entonces
								Escribir "Recuerda que todas las partes de la nave deben ser contiguas entre sí."
								Escribir "Elige una columna por debajo de ", MinColumna " o por encima de ", MaxColumna
								Escribir ""
							Fin Si
						Fin Si
					FinSi
				Mientras Que (RestaColumna(i-1) == 0 Y Columna(i)<> Columna(i-1)) O (RestaColumna(i-1) <> 0 Y ColumnasIguales > 0) O (RestaMin < -1 O RestaMax > 1)
			Fin Si
		FinSi
		
		Escribir "Ahora ingrese el escudo de electrones para la Posición ",i+1," -  (1,2,...,9)"
		Repetir
			leer Elec(i)
		Mientras Que Elec(i)<1 O Elec(i)>9
		
	Fin Para
	
	Escribir ""
	imprimirNave(campoinicialF,campoinicialC,FilaNum,Columna,Elec,U,T,N,campo)
	Escribir ""
	ataque(campo, FilaUlt,N,U,T,campoinicialF,campoinicialC,ABCdario,Elec,FilaNum, Columna)
	
FinSubProceso

SubProceso ImprimirNave(campoinicialF,campoinicialC,FilasN,Columnas,Electrones,U,T,N,campo)
	
	Escribir ""
	Escribir "El campo de batalla quedó de la siguiente forma:"
	Escribir ""
	
	Definir l,k,i Como Entero
	Definir ABCdario Como Caracter
	
	
	//Inicializamos la matriz campo
	Para l<-0 Hasta U-1 Con Paso 1 Hacer
		Para k<-0 Hasta T-1 Con Paso 1 Hacer
				campo(l,k) = 0
		Fin Para
	Fin Para
	
	//Llenamos la matriz campo con los datos dados por el usuario
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		Para l<-0 Hasta U-1 Con Paso 1 Hacer
			Para k<-0 Hasta T-1 Con Paso 1 Hacer
					Si FilasN(i)==l+1 Y Columnas(i)==k+1 Y campo(l,k)==0 Entonces
						campo(l,k) = Electrones(i)
					Fin Si
			Fin Para
		Fin Para
	Fin Para
	
	Escribir Sin Saltar "     "
	//Imprimimos las columnas
	Para k<-0 Hasta T-1 Con Paso 1 Hacer
		Escribir Sin Saltar campoinicialC(k)
		Escribir Sin Saltar "    "
	Fin Para
	Escribir ""
	
	//Imprimimos las letras y después el campo
	Para l<-0 Hasta U-1 Con Paso 1 Hacer
		Escribir Sin Saltar campoinicialF(l)
		Para k<-0 Hasta T-1 Con Paso 1 Hacer
			Si campo(l,k) == 0 Entonces
				Escribir Sin Saltar "      "
			SiNo
				Escribir Sin Saltar "  " campo(l,k) "  "
			Fin Si
		Fin Para
		Escribir ""
	Fin Para
	
FinSubProceso

SubProceso ataque(campo, FilaUlt,N,U,T,campoinicialF,campoinicialC,ABCdario, Electrones,FilasN,Columnas)
	
	Definir FilaAt Como Caracter
	Definir FilaNumAt, ColumnaAt, ataqueN,abc, Protones, disparo, i,  SumaElectrones Como Entero
	Definir LeResta, Neutralizado Como Logico
	
	
	Escribir "ATANCANTE: Ahora es tu hora! Recuerda que cuentas con una carga de 40 protones."
	Escribir ""
	ataqueN = 1
	Protones = 40
	SumaElectrones = 0
	
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		SumaElectrones = SumaElectrones + Electrones(i)
	Fin Para
	
	
	Repetir
		Escribir "ATAQUE #:", ataqueN
		Escribir  ""
		Escribir "Indica las coordenadas del ataque: "
		
		//Se escoge la fila, se evalúa que sea válida y se le asigna el número correspondiente en el vector FilaNumAt
		Escribir "Fila (A,B,...,",FilaUlt,"):"
		Repetir
			leer FilaAt
			FilaAt = Mayusculas(FilaAt)
		Mientras Que FilaAt<"A" O FilaAt>campoinicialF(U-1)
		abc = 0
		Repetir
			Si FilaAt == Subcadena(ABCdario,abc,abc) Entonces
				FilaNumAt = abc + 1
			Fin Si
			abc = abc + 1
		Mientras Que NO(FilaAt== Subcadena(ABCdario,abc-1,abc-1)) O abc > Longitud(ABCdario)
		
		//Se escoge la columna y se evalúa que sea válida
		Escribir "Columna (1,2,3,...,",T,"):"
		Repetir
			leer ColumnaAt
		Mientras Que ColumnaAt<1 O ColumnaAt>campoinicialC(T-1)
		
		//Se escoge la cantidad de protones con los que se hará el disparo
		Escribir "Protones para el ataque (1,2,3,...,9):"
		Repetir
			leer disparo
		Mientras Que disparo<1 O disparo>9
		
		LeResta = Falso
		Neutralizado = Falso
		
		//Revisamos si el disparo fue efectivo
		Si campo(FilaNumAt-1, ColumnaAt-1) > 0 Entonces
			Si disparo <= campo(FilaNumAt-1, ColumnaAt-1) Entonces
				campo(FilaNumAt-1, ColumnaAt-1) = campo(FilaNumAt-1, ColumnaAt-1) - disparo
				SumaElectrones = SumaElectrones - disparo
				Escribir "Disparo # ", ataqueN, " efectivo. La suma total de electrones restantes para destruir"
				Escribir "la nave es de " SumaElectrones, "."
				LeResta = Verdadero
				Si campo(FilaNumAt-1, ColumnaAt-1) < 1 Entonces
					Escribir "Escudo neutralizado."
					Neutralizado = Verdadero
				Fin Si
			SiNo
				Escribir "Disparo # ", ataqueN, " sin efecto. La suma total de electrones restantes para destruir"
				Escribir "la nave es de " SumaElectrones, "."
			Fin Si
		SiNo
			Escribir "ESPACIO!"
		Fin Si
		
		//Restamos la cantidad de Protones
		Protones = Protones - disparo
		Escribir "Te quedan ", Protones, " protones restantes."
		//Seguimos con el siguiente ataque
		ataqueN = ataqueN + 1
		Escribir ""
		Escribir ""
		
		Esperar 1 Segundos
		Escribir "El campo de batalla quedó de la siguiente manera:"
		Escribir ""
		ImprimirNaveDespAt(campoinicialF,campoinicialC,FilasN,Columnas,Electrones,disparo,LeResta, Neutralizado, U,T,N,campo)
		Escribir ""
		
	Mientras Que Protones > 0 Y SumaElectrones > 0
	
	//Mandamos el mensaje final
	Si Protones > 0 Y SumaElectrones <= 0 Entonces
		Escribir "El ganador es el ATACANTE!"
	SiNo
		Escribir "El ganador es el DEFENSOR!"
	Fin Si
	
	
FinSubProceso

SubProceso ImprimirNaveDespAt(campoinicialF,campoinicialC,FilasN,Columnas,Electrones, disparo, LeResta, Neutralizado, U,T,N,campo)
	
	Definir l,k,i Como Entero
	Definir ABCdario Como Caracter
	
		
	//Llenamos la matriz campo con los datos dados por el usuario
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		Para l<-0 Hasta U-1 Con Paso 1 Hacer
			Para k<-0 Hasta T-1 Con Paso 1 Hacer
				Si FilasN(i)==l+1 Y Columnas(i)==k+1 Y campo(l,k)==0 Entonces
					Si Neutralizado == Verdadero Entonces
						campo(l,k) = 0
					SiNo
						Si campo(l,k) == 0 Entonces
							campo(l,k) = 0
						SiNo
							Si LeResta == Verdadero Entonces
								campo(l,k) = campo(l,k)- disparo
							SiNo
								campo(l,k) = campo(l,k)
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Para
		Fin Para
	Fin Para
	
	Escribir Sin Saltar "     "
	//Imprimimos las columnas
	Para k<-0 Hasta T-1 Con Paso 1 Hacer
		Escribir Sin Saltar campoinicialC(k)
		Escribir Sin Saltar "    "
	Fin Para
	Escribir ""
	
	//Imprimimos las letras y después el campo
	Para l<-0 Hasta U-1 Con Paso 1 Hacer
		Escribir Sin Saltar campoinicialF(l)
		Para k<-0 Hasta T-1 Con Paso 1 Hacer
			Si campo(l,k) == 0 Entonces
				Escribir Sin Saltar "      "
			SiNo
				Escribir Sin Saltar "  " campo(l,k) "  "
			Fin Si
		Fin Para
		Escribir ""
	Fin Para
	
	
	
FinSubProceso
