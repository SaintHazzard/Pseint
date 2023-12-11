Proceso calculadora
	Dimension operaciones[5]
	operaciones[0]='*'
	operaciones[1]='/'
	operaciones[2]='+'
	operaciones[3]='-'
	operaciones[4]='%'
	salir=Verdadero
	
	
	Escribir '1. Calculadora normal'
	Escribir '2. Calculadora magica'
	Mientras salir= Verdadero Hacer
		Si Verdadero Entonces
			Si cont = 0 Entonces
				Escribir 'Ingrese numero'
				leer a
				Escribir 'Escriba la operacion que quiere realiza, +,-,*,/ o 0 (cero) pare borrar todo'
				Leer eleccion
				total=a
				cont=1
			SiNo
				Escribir 'Ingrese numero'
				leer a
				total=operacionesNormales(total,a,eleccion)
				Escribir 'Escriba la operacion que quiere realiza, +,-,*,/ o 0 (cero) pare borrar reiniciar'
				Leer eleccion
			FinSi
		FinSi
	FinMientras
	
	
	
//	Para i=0 Hasta 3 Hacer
//		Escribir 'Realize las operaciones matematicas que quiera'
//		leer eleccion
//		Si eleccion=operaciones[i] Entonces
//			break=1
//			Escribir break
//		FinSi
//	FinPara
//	Si break = 1 Entonces
//		Escribir 'entra'
//		Si input=operaciones[0] Entonces
//			Escribir multi(a,b)
//		FinSi
//		Si input=operaciones[1] Entonces
//			Escribir division(a,b)
//		FinSi
//		Si input=operaciones[2] Entonces
//			Escribir suma(a,b)
//		FinSi
//		Si input=operaciones[3] Entonces
//			Escribir resta(a,b)
//		FinSi
//		Esperar Tecla
//	FinSi
	
	
	
	
	
	
	
FinProceso

Funcion total<-operacionesNormales(total,a,eleccion)
	Segun eleccion Hacer
		"+":
			total=suma(a,total)
		"-":
			total=resta(total,a)
		"*":
			Si total = 0 Entonces
				Escribir 'Indique numero'
				Leer b
				total=multi(2,a)
			SiNo
				total=multi(a,total)
			FinSi
		"/":
			total=division(total,a)
		'0': 
			salir=Falso
			total=0
		De Otro Modo:
			Escribir 'Eleccion invalida, no selecciono ninguna operacion'
			Esperar Tecla
	FinSegun
	
FinFuncion

Funcion total<-multi(a,b)
	total=a*b
	mostrarValor(total)
FinFuncion


Funcion total<-division(a,b)
	total=a/b
	mostrarValor(total)
FinFuncion

Funcion total<-suma(a,b)
	total=a+b
	mostrarValor(total)
FinFuncion

Funcion total<-resta(a,b)
	total=a-b
	mostrarValor(total)
FinFuncion

Funcion mostrarValor(total)
	Escribir '************************'
	Escribir 'Valor:         ', total
	Escribir '************************'
FinFuncion
	