
Algoritmo CALCULADORA
	Definir opciones Como Entero
	menu(opciones)
FinAlgoritmo


SubProceso menu(opciones Por referencia)
	hacer
		
	Escribir " "	
	Escribir "Bienvenidx a la calculadora mágica, sus opciones son:"
	Escribir "1. Calcular muro de ladrillo"
	Escribir "2. Calcular viga de hormigón"
	Escribir "3. Calcular columnas de hormigón"
	Escribir "4. Calcular contrapisos"
	Escribir "5. Calcular techo"
	Escribir "6. Calcular pisos"
	Escribir "7. Calcular pintura"
	escribir "8. Calcular iluminación"
	Escribir "9. Salir"
	Escribir "Qué opción desea elegir?"
	leer opciones
	
	 
	Segun opciones hacer
		1:calcularMuro()
		2:calcularViga()
		3:calColumn()
		4:calcularContrapisos()
		5:calcularTecho()
		6:calcularPisos()
		7:calcularPintura()
		8:iluminacion()
		9: escribir "Gracias, que le salga linda su casa"
	FinSegun
	Mientras Que opciones <> 9
FinSubProceso



	
SubProceso calcularViga()
	
	Definir largo, cemento, arena, piedra, hierro8, hierro4 Como Real
	Escribir "Ingresa el largo de la viga que utilizarás en metros: "
	Leer largo
	
	cemento = largo * 9
	arena = (largo ^ 2) * 0.02
	piedra = (largo ^ 3) * 0.02
	hierro8 = largo * 4
	hierro4 = largo * 3
	
	Escribir "Necesitarás " cemento " kg de cemento, " arena " m3 de arena, " piedra " m3 de piedra,"
	Escribir hierro8 " m de hierro del 8 y " hierro4 " m del hierro del 4."
	Escribir " "
	
FinSubProceso

SubProceso calcularPintura()
	Definir superf, pintura Como real
	Definir eleccion como entero
	Escribir "Bienvenido a la calculadora de Pintura"
	Escribir "Ingrese el tamaño en del muro en metros cuadrados"
	Leer superf
	
	Escribir "la cantidad de pintura necesaria es: " redon(superf/6) " litros"
	Escribir " "
	Escribir " "
	Escribir "Gracias por utilizar la calculadora de pintura"
	
FinSubProceso

SubProceso calcularPisos()
	Definir ancho, largo, resultado como real
	
	Escribir "Ingrese ancho en metros: " 
	leer ancho
	
	Escribir "Ingrese largo en metros: " 
	leer largo
	
	resultado = superficie(ancho,largo) * 1.1 
	
	Escribir "La superficie a cubrir es " resultado "m2."
	
FinSubProceso


SubProceso iluminacion()
	definir largo, ancho como real
	Escribir "ingrese largo de la habitación en metros"
	leer largo
	Escribir "ingrese ancho  de la habitación en metros"
	leer ancho
	definir ilumina Como Real
	ilumina=superficie(largo,ancho)*0.2
	Escribir "La cantidad mínima de iluminación es: " ilumina
FinSubProceso

Funcion superf=superficie(largo, ancho)
	definir superf Como Real
	superf=largo*ancho;
	
FinFuncion

subProceso calcularContrapisos()
	Definir metroCubicoPiso, espesor, pisoAncho, pisoLargo, cementoPiso, arenaPiso, piedraPiso Como Real
	
	Escribir "Ingrese el espesor en metros del contrapiso"
	Leer espesor
	
	Escribir "Ingrese el ancho en metros del contrapiso"
	Leer pisoAncho
	
	Escribir "Ingrese el largo en metros del contrapiso"
	Leer pisoLargo
	
	metroCubicoPiso = espesor * pisoAncho * pisoLargo
	Escribir metroCubicoPiso
	cementoPiso = metroCubicoPiso * 105
	
	arenaPiso = metroCubicoPiso * 0.45
	
	piedraPiso = metroCubicoPiso * 0.9
	
	Escribir "El listado con la cantidad de materiales para el Contra Piso es de"
	Escribir cementoPiso "Kg. de cemento"
	Escribir arenaPiso "m3. de Arena"
	Escribir piedraPiso "m3. de Piedra"
	
	
FinSubProceso


Subproceso calColumn()
	Definir metro, cemento, arena, piedra, hierro10, hierro4 Como Real
	Escribir "Cuantos metros tiene tu columna:"
	Leer metro
	
	cemento = metro * 7.5
	arena = metro * 0.016
	piedra = metro * 0.016
	hierro10 = metro * 6
	hierro4 = metro * 3
	
	
	Escribir "Necesitas ", cemento, "kg de cemento"
	Escribir "Necesitas ", arena, "m3 de arena"
	Escribir "Necesitas ", piedra, "m3 de piedra"
	Escribir "Necesitas ", hierro10, "m de Hierro 10"
	Escribir "Necesitas ", hierro4, "m de Hierro 4"
	
FinSubProceso

SubProceso calcularMuro()
	
	Definir espesor, esp como Entero
	Definir largo,  ancho, super, cement20, arena20, ladri20 como Real
	Definir cement30, arena30, ladri30, cement, arena, ladri como Real
	
	Escribir "Por favor seleccione el espesor del muro: "
	Escribir "1 - 20 cm"
	Escribir "2 - 30 cm"
	Leer espesor
	
	Mientras espesor <> 1 Y espesor <> 2 
		Escribir "Por favor ingrese"
		Escribir "-1- si desea que el espesor sea de 20 cm o"
		Escribir "-2- si desea que espesor sea de 30 cm"
		Leer espesor
	Fin Mientras
	
	Si espesor == 1 Entonces
		esp = 20
	SiNo
		esp = 30
	Fin Si
	
	Escribir "Por favor ingrese en METROS el largo del muro: "
	Leer largo
	Escribir "Por favor ingrese en METROS el ancho del muro: "
	Leer ancho
	
	super = superficie(largo, ancho)
	
	cement20 = 10.9 //15.2 kg de cemento / m2. 
	arena20 = 0.09 //0.115 m3 de arena / m2.
	ladri20 = 90   //120 ladrillos / m2.
	
	cement30 = 15.2 //15.2 kg de cemento / m2. 
	arena30 = 0.115 //0.115 m3 de arena / m2.
	ladri30 = 120   //120 ladrillos / m2.
	
	
	Si espesor == 1 Entonces
		cement = cement20 * super
		arena = arena20 * super
		ladri = ladri20 * super
	SiNo
		cement = cement30 * super
		arena = arena30 * super
		ladri = ladri30 * super
	Fin Si
	
	Escribir " "
	Escribir "Para un espesor de ", esp, "cm y un área de ", super, "m2,"
	Escribir "La cantidad de materiales que se necesitan son: "
	Escribir " - " cement, "kg de cemento."
	Escribir " - " arena, "m3 de arena."
	Escribir " - " ladri, " ladrillos."
	
FinSubProceso

SubProceso calcularTecho()
	
	Definir espesor, largo, alto, volumen, cemento, arena, piedra, hierro6, hierro8 Como Real
	
	Escribir 'Ingrese el espesor en metros: ' Sin Saltar
	
	Leer espesor
	
	Escribir 'Ingrese el largo en metros: ' Sin Saltar
	
	Leer largo
	
	Escribir 'Ingrese el alto en metros: ' Sin Saltar
	
	Leer alto
	
	volumen = calcularVolumen(espesor, largo, alto)
	
	Escribir "Superficie del techo: ", volumen, " m3"
	
	Escribir "Cantidad de materiales de construcción: "
	
	cemento = 33 * volumen
	
	arena = 0.072 * volumen
	
	piedra = 0.072 * volumen
	
	hierro8 = 7 * volumen
	
	hierro6 = 4 * volumen
	
	//Mostramos resultados
	Escribir "Cemento: ", cemento, " kg"
	
	Escribir "Arena: ", arena, " m3"
	
	Escribir "Piedra: ", piedra, " m3"
	
	Escribir "Hierro de 8: ", hierro8, " m"
	
	Escribir "Hierro de 6: ", hierro6, " m"
	
	
FinSubProceso

Funcion volumen = calcularVolumen(espesor,largo, alto)
	
	Definir volumen Como Real
	
	volumen = espesor * largo * alto
	
FinFuncion
