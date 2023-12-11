Proceso CualEsMayorMenor
	Escribir 'Ingrese 3 numeros enteros';
	Leer a;
	leer b;
	Leer c;
	Dimension arrayNum[3];
	
	arrayNum[0] = a;
	arrayNum[1] = b;
	arrayNum[2] = c;
	MaxNum=0;
	minNum=0;
	Para i=0 Hasta 2 Hacer
		Si MaxNum <= arrayNum[i] Entonces
			MaxNum = arrayNum[i];
		FinSi
		Si minNum > arrayNum[i] | minNum=0 Entonces
			minNum=arrayNum[i];
		FinSi
	FinPara
	Escribir 'El numero maximo es ', MaxNum, ' el numero minimo es ', minNum;
	
FinProceso


Funcion MaxNum <- 