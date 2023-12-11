Proceso piedraPapelTijera
	Escribir 'Indique numero de jugadores, 1 o 2'
	leer numPlayer
	Dimension opciones[4]
	Dimension jugadores[3]
	
	opciones[1]='Piedra'
	opciones[2]='Papel'
	opciones[3]='Tijera'
	status=Verdadero
	//Logica un jugador
	Si numPlayer = 1 Entonces
		Escribir 'Un jugador vs Maquina'
		Mientras status=Verdadero Hacer
			
			Para i=1 Hasta 3 Hacer
				Escribir i,'.', opciones[i]
			FinPara
			Leer eleccion
			Si (eleccion > 0 & eleccion < 4) Entonces
				maquina=opciones[Aleatorio(1,3)]
				Si opciones[eleccion] = maquina  Entonces
					Escribir 'Empate'
				SiNo
					Si (opciones[eleccion] = 'Piedra' & maquina = 'Tijera') | (opciones[eleccion] = 'Tijera' & maquina = 'Papel') | (opciones[eleccion] = 'Papel' & maquina = 'Piedra')Entonces
						winUser = winUser+1
					SiNo
						winMaquina = winMaquina+1
					FinSi
				FinSi
				Escribir 'Usuario:      ',opciones[eleccion], '  Maquina: ', maquina
				Escribir  winUser, '                ', winMaquina
				status=validacionGanador(winUser,winUser2,winMaquina)
				Escribir 'Presione cualquier tecla para continuar'
				Esperar Tecla
			FinSi
			
		FinMientras
	FinSi
	
	//Logica dps jugadores
	Si numPlayer=2 Entonces
		Escribir 'jugador vs Jugador'
		Mientras status=Verdadero Hacer
			// Escribir el menu
			Para i=1 Hasta 3 Hacer
				Escribir i,'.', opciones[i]
			FinPara
			// Almacenamieno de elecciones de los jugadores
			Para i=1 Hasta 2 Hacer
				Escribir 'Jugador ', i, ' Seleccione una opcion'
				leer eleccion
				Si (eleccion > 0 & eleccion < 4) Entonces
					jugadores[i]=opciones[eleccion]
				SiNo
					Escribir 'Eleccion invalida'
				FinSi
			FinPara
			Si (eleccion > 0 & eleccion < 4) Entonces
				si jugadores[1] = jugadores[2] Entonces
					Escribir 'Empate'
				SiNo
					Si (jugadores[1] = 'Piedra' & jugadores[2]= 'Tijera') | (jugadores[1] = 'Tijera' & jugadores[2] = 'Papel') | (jugadores[1] = 'Papel' & jugadores[2] = 'Piedra')Entonces
						winUser = winUser+1
					SiNo
						winUser2 = winUser2+1
					FinSi
				FinSi
				Escribir 'Usuario 1     ', '  Usuario 2'
				Escribir  winUser, '                ', winUser2
				status=validacionGanador(winUser,winUser2,winMaquina)
				Escribir 'Presione cualquier tecla para continuar'
			FinSi
			
		FinMientras
	FinSi
FinProceso




Funcion status<-validacionGanador(winUser,winUser2,winMaquina)
	status=Verdadero
	Si winUser = 3 | winUser2 = 3 | winMaquina=3 Entonces
		Si winUser = 3 Entonces
			Escribir 'Gano el usuario'
		FinSi
		Si winMaquina = 3 Entonces
			Escribir 'Gano la maquina'	
		FinSi
		Si winUser2 = 3 Entonces
			Escribir 'Gano el usuario 2'	
		FinSi
		status=Falso
	FinSi
	
FinFuncion