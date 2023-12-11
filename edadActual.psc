Proceso edadActual
	
	//Nombre Algoritmo: Edad
	//Entrada: Fecha de nacimiento, dia, mes y año            
	//Salida: Edad que tiene
	
	Definir mes Como Real;
	Dimension arrayDate[3];
	Escribir 'Indique anio de nacimiento';
	Leer anio;
	Escribir 'Indique mes de nacimiento en formato numerico';
	Leer mes;
	Escribir 'Indique dia de nacimiento';
	Leer dia;
	
	// This section determinate the Current Date
	date <- FechaActual();
	dateText <- ConvertirATexto(date);
	
	// I set the current date in a array for future operations YY/MM/DD 
	arrayDate[0] = Subcadena(dateText,0,3);
	arrayDate[1] = Subcadena(dateText,4,5);
	arrayDate[2] = Subcadena(dateText,6,7);
	Escribir 'La fecha actual es ' + arrayDate[0] +'/'+arrayDate[1]+'/'+arrayDate[2];
	
	// Here calculate the difference between Current Date and birthdate
	anioEdad = abs(ConvertirANumero(arrayDate[0])-anio);
	mesEdad = abs(ConvertirANumero(arrayDate[1])-mes);
	diasEdad = abs(ConvertirANumero(arrayDate[2])-dia);
	
	// I verificate month current date is same to birthdate month exclusive bcs when birthdate day is > current date day, age months always is equals to 11.
	Si mes = ConvertirANumero(arrayDate[1]) & dia > ConvertirANumero(arrayDate[2])   Entonces
		Escribir 'Usted tiene ', anioEdad-1, ' anios con ', 11, ' meses',' y ', 30-diasEdad,' dias';
	FinSi
	Si mes = ConvertirANumero(arrayDate[1]) & dia < ConvertirANumero(arrayDate[2])   Entonces
		Escribir 'Usted tiene ', anioEdad, ' anios con ', mesEdad, ' meses',' y ', diasEdad,' dias';	
	FinSi
	
	Si mes > ConvertirANumero(arrayDate[1]) & dia > ConvertirANumero(arrayDate[2]) Entonces
		Escribir 'Usted tiene ', anioEdad-1, ' anios con ', 11-mesEdad, ' meses',' y ', 30-diasEdad,' dias';
	FinSi
	Si mes > ConvertirANumero(arrayDate[1]) & dia < ConvertirANumero(arrayDate[2]) Entonces
		Escribir 'Usted tiene ', anioEdad-1, ' anios con ', 12-mesEdad, ' meses',' y ', diasEdad,' dias';
	FinSi
	
	Si mes < ConvertirANumero(arrayDate[1]) & dia > ConvertirANumero(arrayDate[2])  Entonces
		Escribir 'Usted tiene ', anioEdad, ' anios con ', mesEdad, ' meses',' y ', 30-diasEdad,' dias';	
	FinSi
	Si mes < ConvertirANumero(arrayDate[1]) & dia < ConvertirANumero(arrayDate[2])  Entonces
		Escribir 'Usted tiene ', anioEdad, ' anios con ', mesEdad, ' meses',' y ', diasEdad,' dias';	
	FinSi
	
	Si mes < ConvertirANumero(arrayDate[1])  & dia = ConvertirANumero(arrayDate[2]) Entonces
		Escribir 'Usted tiene ', anioEdad, ' anios con ', mesEdad, ' meses',' y ', diasEdad,' dias';
	FinSi
	Si mes > ConvertirANumero(arrayDate[1])  & dia = ConvertirANumero(arrayDate[2]) Entonces
		Escribir 'Usted tiene ', anioEdad-1, ' anios con ', 12-mesEdad, ' meses',' y ', diasEdad,' diass';
	FinSi
	
FinProceso

	