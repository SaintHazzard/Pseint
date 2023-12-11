Proceso vacunacionFlorida
	Dimension vacunas[10]
	Dimension vacunasKids[10]
	Dimension vacunasAdult[10]
	status=Verdadero
	vacunas[1] = 'FIEBRE AMARILLA'
	vacunas[2] = 'VARICELA'
	vacunas[3] = 'RUBEOLA'
	vacunas[4] = 'MENINGOCOCO (MENORES DE 10 AÑOS)'
	vacunas[5] = 'INFLUENZA'
	vacunas[6] = 'SARAMPION'
	vacunas[7] = 'HEPATITIS A'
	vacunas[8] = 'TETANO'
	vacunas[9] = 'DIFTERIA'
	Mientras status=Verdadero Hacer
		Limpiar Pantalla
		Escribir Sin Saltar 'Indique edad del paciente o presione 0 (CERO) para terminar el programa: '
		Leer edad
		Si edad <> 0 & edad > 0 Entonces
			eleccion=generarMenu(vacunas)
		SiNo
			Escribir 'Edad no valida'
			Esperar Tecla
		FinSi
		Si edad = 0 Entonces
			status=Falso
		FinSi
		si edad > 0 & edad < 18 Entonces
			Si edad > 10 & eleccion = 4 Entonces
				Escribir vacunas[eleccion], ' esta solo disponible para menores de 10 anios'
			SiNo
				vacunasKids[eleccion]=vacunasKids[eleccion]+1;
				Escribir 'Registro agregado'
			FinSi
			Esperar Tecla
		FinSi
		Si edad >= 18 & eleccion <> 4 Entonces
			vacunasAdult[eleccion]=vacunasAdult[eleccion]+1;
			Escribir 'Registro agregado'
			Esperar Tecla
		FinSi
		Si edad >= 18 & eleccion = 4 Entonces
			Escribir vacunas[eleccion], ' esta solo disponible para menores de 10 anios'
			Esperar Tecla
		FinSi
		
	FinMientras
	Escribir 'Programa terminado'
	Para i=1 Hasta 9 Hacer
		Escribir vacunas[i], ': '
		Escribir '	    Ninios: 		', vacunasKids[i]
		Escribir '	    Adultos:		 ', vacunasAdult[i]
	FinPara
FinProceso


Funcion eleccion<-generarMenu(vacunas)
	Escribir 'Que vacuna aplicara? '
	Para i=1 Hasta 9 Hacer
		Escribir i,'.',vacunas[i]
	FinPara
	Leer eleccion
FinFuncion



	