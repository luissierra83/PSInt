Algoritmo StarWars
	Definir n, vez, cont, mapEnNum, pos Como Entero
	Definir map Como Caracter
	Definir life Como Logico
	n = 4
	vez = 0
	life = Falso
	Dimension map[n, n], mapEnNum[3], pos[3]
	
	mapa(map, n, life)
	life = Verdadero
	colocar(map, mapEnNum, pos, life)
	
Si life Entonces

	mapa(map, n, life)
	ataque(map, mapEnNum, pos, life)

FinSi
	
	
	
	
FinAlgoritmo


SubProceso mapa(var, n, vida)
	Definir col, row Como Entero
	n = n -1
	
	Escribir "Tu mapa espacial"
	
	Para col = 0 Hasta n + 1 Hacer
		
		Segun col Hacer
			0: Escribir Sin Saltar "  "
			1: Escribir Sin Saltar "1 "
			2: Escribir Sin Saltar "2 "
			3: Escribir Sin Saltar "3 "
			4: Escribir Sin Saltar "4 "
		FinSegun
		
	FinPara
	
	Escribir ""
	
	Para col = 0 Hasta n Hacer
		Segun col Hacer
			0: Escribir Sin Saltar "A "
			1: Escribir Sin Saltar "B "
			2: Escribir Sin Saltar "C "
			3: Escribir Sin Saltar "D "
		FinSegun
		
		Para row = 0 Hasta n Hacer
			
			Si vida == Falso Entonces
				var[row, col] = "_ "
			FinSi
			
			Escribir Sin Saltar var[row, col]
			
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
FinSubProceso

SubProceso colocar(grid, gridN, ubi, vida Por Referencia)
	Definir orientacion, posicion, inicio Como Caracter
	Definir row, col, lim, i Como Entero
	i = 0
	
	Hacer
		
		Escribir "Quieres poner tu nave en 1.vertical o 2.horizontal: "
		Leer orientacion
		
	Mientras Que orientacion < "1" o orientacion > "2"

		Segun orientacion Hacer
			"1": orientacion = "Columna"
			"2": orientacion = "Fila"
		FinSegun
	
	Hacer
		
		Escribir "Elige la " orientacion " de tu nave de la primera hasta la cuarta: "
		Escribir "Coloca un numero del 1 al 4"
		Leer posicion
		
	Mientras Que posicion < "1" o posicion > "4"
	
		Segun orientacion Hacer
			"Columna": orientacion = "Fila"
			"Fila": orientacion = "Columna"
		FinSegun
	
	Hacer
		
		Escribir "Elige el primer cuadro de tu nave, 1.primera o 2.segunda " orientacion
		Leer inicio
		
	Mientras Que inicio < "1" o inicio > "2"
	
		Segun orientacion Hacer
			"Fila": orientacion = "Ver"
			"Columna": orientacion = "Hor"
		FinSegun
		
		Si inicio < "2" Entonces
			lim = 2
		SiNo
			lim = 3
		FinSi
	
	Si orientacion == "Ver" Entonces
		
		col = ConvertirANumero(posicion) - 1
		row = ConvertirANumero(inicio) - 1
		
		
		Mientras row <= lim Hacer
			
			Escribir "Elige un valor del 1 al 9 para cargar el escudo de electrones de "
			Escribir  "Pieza " i + 1 " de tu nave"
			Leer grid[col, row]
				gridN[i] = ConvertirANumero(grid[col, row])
					ubi[i] = (col * 10) + row
				
				Si gridN[i] > 9 o gridN[i] < 0 Entonces
					vida = Falso
				FinSi
				
				i = i + 1
				grid[col, row] = Concatenar(grid[col, row], " ")
				row = row + 1
			
		FinMientras
		
	FinSi
	
	Si orientacion == "Hor" Entonces
		
		row = ConvertirANumero(posicion) - 1
		col = ConvertirANumero(inicio) - 1
		
		Mientras col <= lim Hacer
			
			Escribir "Elige un valor del 1 al 9 para cargar el escudo de protones de "
			Escribir  "Pieza " i + 1 " de tu nave"
			Leer grid[col, row]
				gridN[i] = ConvertirANumero(grid[col, row])
					ubi[i] = (col * 10) + row
				
				Si gridN[i] > 9 o gridN[i] < 0 Entonces
					vida = Falso
				FinSi
				
				i = i + 1
				grid[col, row] = Concatenar(grid[col, row], " ")
				col = col + 1
			
		FinMientras
		
	FinSi
	
	Si vida == Falso Entonces
		Escribir "Sobrecargaste tu escudo de electrones, vuelve a comenzar."
	FinSi
	
FinSubProceso

SubProceso ataque(grid, gridN, ubi, vida Por Referencia)
	Definir attack Como Cadena
	Definir carga, reactor Como Entero
		reactor = 40
	
	Hacer
		Escribir "Tu reactor tiene " reactor " puntos de carga"
		Escribir ""
		Escribir "Elige una posición para atacar:"
		Escribir "Una letras de la A a la D y una columa de 1 a 4. Eje: A2"
		Leer attack
		Escribir "Da un número del 1 al 9 para cargar tu disparo de protones"
		Leer carga
		
		Si carga > 9 Entonces
			Escribir "Sobrecargaste tu cañon de protones"
			Escribir "Perdiste el disparo"
		SiNo
			disparo(attack, grid, gridN, ubi, carga)
		FinSi
		
		reactor = reactor - carga 
		
		Si gridN[0] == 0 y gridN[1] == 0 y gridN[2] == 0 Entonces
			Escribir "Tu nave ha sido destruida"
			Escribir "GAME OVER - Gana Player 2"
				vida = Falso
		FinSi
			
		Si reactor <= 0 Entonces
			Escribir "Te has quedado sin energia"
			Escribir "GAME OVER - Gana Player 1"
				vida = Falso
		FinSi
		
	Mientras Que vida == Verdadero
	
FinSubProceso

SubProceso disparo(attack, grid, gridN, ubi, carga)
	Definir fila, col Como Caracter
	Definir hor, ver, loop, parte Como Entero 
	Definir posible Como Logico
	
	posible = Verdadero
	
	fila = Mayusculas(Subcadena(attack, 0, 0))
	col = Subcadena(attack, 1,1)
	
	Si fila >= "A" y fila <= "D" Entonces
		Si fila == "A" Entonces
			hor = 0
		FinSi
		Si fila == "B" Entonces
			hor = 1
		FinSi
		Si fila == "C" Entonces
			hor = 2
		FinSi
		Si fila == "D" Entonces
			hor = 3
		FinSi
	SiNo
		Escribir "Tu ataque cayó fuera del mapa"
		posible = Falso
	FinSi
	
	Si col <= "4" y col >= "1" y posible == Verdadero Entonces
		ver = ConvertirANumero(col) - 1
	SiNo
		Escribir "Tu ataque cayó fuera del mapa"
		posible = Falso
	FinSi
	
	Si posible == Verdadero Entonces
		
		Para loop = 0 Hasta 2 Con Paso 1
			
			Si ubi[loop] = (ver * 10) + hor Entonces
				
				parte = loop
				
			FinSi
			
		FinPara
		
		Si grid[ver, hor] <> "_ " Entonces
			
			Si carga <= gridN[parte] Entonces
				gridN[parte] = gridN[parte] - carga
				grid[ver, hor] = Concatenar(ConvertirATexto(gridN[parte]), " ")
				Escribir "El ataque fue efectivo"
				
				Si gridN[parte] > 0 Entonces
					Escribir "Ataque efectivo - escudo no neutralizado"
					Escribir "La carga restante de electrones es " gridN[parte] 
				FinSi
			SiNo
				Escribir "El ataque no tuvo efecto."
			FinSi
			
			mapa(grid, 4, verdadero)
		FinSi
		
	FinSi
	
	
FinSubProceso






