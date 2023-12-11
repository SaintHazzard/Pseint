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
	
	Para i=0 Hasta length-1 Hacer
		// Guardo el input del usuario en una matriz para realizar comparaciones
		stringCheck[i]=Subcadena(value,i,i)
		validador=Falso
		// Cuando determina que hay una letra, cancela el ciclo interno de verificacion, devolvera endvalidador=Falso, evitando ciclos innecesarios
		Si length=Longitud(value)-i Entonces
			// Valida si el numero es negativo
			Si stringCheck[i]=negativo Entonces
				length=length-1
			FinSi
			// Ciclo interno, verifica si el value ingresado es un numero, cuando encuentra el numero pasa al siguiente caracter de stringCheck evitando ciclos innecesarios
			Para j=0 Hasta  9 Hacer
					Si (stringCheck[i] = ConvertirATexto(arrayNums[j]) & validador<>Verdadero)  Entonces
						validador=Verdadero
						length=length-1
						Escribir 'ciclo interno'
					FinSi
			FinPara
		FinSi
		// output final, verdadedoro=es un numero valido
		Si length=0 Entonces
			endvalidador=Verdadero
			
		SiNo
			endvalidador=Falso
		FinSi
	FinPara
	
FinFuncion
	