Proceso Numero_Invertido
	
//NombreAlgoritmo: Número invertido
	
//Entrada: Numero que desea invertir
//Salida: Numero invertido
	Definir num Como Real;
	Escribir 'Indique el numero que desea invertir: ';
	Leer num;
	
	Dimension arrayReversed[length(num)];
	numText = ConvertirATexto(num);
	
	Escribir Sin Saltar 'Su numero invertido es ';
	Para i=length(num)-1 Hasta 0 Con Paso -1 Hacer
		arrayReversed[i] = Subcadena(numText,i,i);
		Escribir Sin Saltar arrayReversed[i];
	FinPara
	Escribir '';
FinProceso

Funcion long <- length(object)
	long = Longitud(ConvertirATexto(object));
FinFuncion
	