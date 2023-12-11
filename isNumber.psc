Proceso sin_titulo
	Leer num
	Si isNumero(num) Entonces
		Escribir "Es numero"
	SiNo
		Escribir "Entrada invalida'
	FinSi
	
FinProceso

Funcion endvalidador <- isNumero(value)
	Dimension arrayNums[10]
	arrayNums[0]=0
	arrayNums[1]=1
	arrayNums[2]=2
	arrayNums[3]=3
	arrayNums[4]=4
	arrayNums[5]=5
	arrayNums[6]=6
	arrayNums[7]=7
	arrayNums[8]=8
	arrayNums[9]=9
	negativo='-'
	length=Longitud(value)

	// Matriz donde guardo el input del usuario
	Dimension stringCheck[length]
	i=0
		// Cuando determina que hay un caracter ni valido, cancela el ciclo interno de verificacion, devolvera endvalidador=Falso, evitando ciclos internos innecesarios
	Mientras  (length=Longitud(value)-i) & i<Longitud(value) Hacer
		// Guardo el input del usuario en una matriz para realizar comparaciones
		stringCheck[i]=Subcadena(value,i,i)
			// Valida si el input es negativo
			Si i=0 & stringCheck[0]=negativo Entonces
				length=length-1
			FinSi
			// Ciclo interno, verifica si stringCheck[i] es un numero valido, cuando lo encuentra pasa al siguiente caracter de stringCheck[i]
				Mientras find<>Verdadero & j<10 Hacer
					Si (stringCheck[i] = ConvertirATexto(arrayNums[j]))  Entonces
						length=length-1
						find=Verdadero
						Escribir 'Entra 2', i
					FinSi
					j=j+1
				FinMientras
				j=0
				find=Falso
				i=i+1
		FinMientras
	// output final, verdadero=es un numero valido
	Si length=0 Entonces
		endvalidador=Verdadero
	SiNo
		endvalidador=Falso
	FinSi
	
FinFuncion
	