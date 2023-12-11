Proceso NumerosPares
	Definir i Como Entero;	
	Escribir 'Los numeros pares entre 0 y 100 son: ';
	Para i<-0 Hasta 100 Con Paso 1 Hacer
		Si i mod 2 = 0 y i<99 Entonces
			Escribir Sin Saltar i,",";
		FinSi
		Si i mod 2 = 0 y i=100 Entonces
			Escribir i;
		FinSi
	FinPara
	Escribir "";
FinProceso
