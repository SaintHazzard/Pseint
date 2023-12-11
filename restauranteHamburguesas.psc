Proceso restauranteHamburguesas
	Dimension alimentoEspecifico[10]
	Dimension alimento[8,4]
	Dimension alimentoPrecio[8,4]
	Dimension cantParcial[8,4]
	
	alimentoEspecifico[1]='PAN'
	alimentoEspecifico[2]='CARNE'
	alimentoEspecifico[3]='POLLO'
	alimentoEspecifico[4]='POLLO DESMECHADO'
	alimentoEspecifico[5]='TOCINETA'
	alimentoEspecifico[6]='PAPA FRITA'
	alimentoEspecifico[7]='BEBIDAS'
	alimentoEspecifico[8]='Finalizar pedido parcial'
	alimentoEspecifico[9]='Totalizar cuenta'
	
	statusMain = Verdadero
	statusPerso = Verdadero
	
	alimento[1,1] = 'PAN CENTENO'
	alimento[1,2] = 'PAN Avena'
	alimento[2,1] = 'CARNE 250G'
	alimento[2,2] = 'CARNE 300G'
	alimento[3,1] = 'POLLO 250G'
	alimento[3,2] = 'POLLO 350G'
	alimento[4,1] = 'POLLO DESMECHADO 250G'
	alimento[4,2] = 'POLLO DESMECHADO 350G'
	alimento[5,1] = '1 LONJA DE TOCINETA'
	alimento[5,2] = '2 LONJAS DE TOCINETA'
	alimento[6,1] = 'PAPA FRITA A LA FRANCESA'
	alimento[6,2] = 'PAPA FRITA EN CASCOS '
	alimento[7,1] = 'GASEOSA'
	alimento[7,2] = 'CERVEZA CLUB COLOMBIA'
	alimento[7,3] = 'NARANJADA'
	
	alimentoPrecio[1, 1] = 1000
    alimentoPrecio[1, 2] = 1500
    alimentoPrecio[2, 1] = 5000
    alimentoPrecio[2, 2] = 7000
    alimentoPrecio[3, 1] = 4500
    alimentoPrecio[3, 2] = 5500
    alimentoPrecio[4, 1] = 6500
    alimentoPrecio[4, 2] = 7500
    alimentoPrecio[5, 1] = 1500
    alimentoPrecio[5, 2] = 2500
    alimentoPrecio[6, 1] = 5000
    alimentoPrecio[6, 2] = 6000
    alimentoPrecio[7, 1] = 5000
    alimentoPrecio[7, 2] = 8000
    alimentoPrecio[7, 3] = 9000

		Mientras statusPerso=Verdadero Hacer
			Limpiar Pantalla
			Escribir 'Personalize su pedido, o para terminar su pedido presione 9'
			Para i=1 Hasta 9 Hacer
				Escribir i,'.',alimentoEspecifico[i]
			FinPara
			Leer eleccion
			Si eleccion >= 1 & eleccion <= 6 Entonces
				Para i=1 Hasta 2 Hacer
					Escribir  i,'. ',alimento[eleccion,i], '  ',alimentoPrecio[eleccion,i]
				FinPara
				
				Leer eleccionAdd
				Si eleccion >= 1 & eleccion <= 7 Entonces
					Si eleccionAdd >=1 & eleccionAdd <= 2 Entonces
						cantParcial[eleccion,eleccionAdd]=cantParcial[eleccion,eleccionAdd]+1
						parcialHamburguesa=parcialHamburguesa+alimentoPrecio[eleccion,eleccionAdd]
					SiNo
						Escribir 'Eleccion invalida'
						Esperar Tecla
					FinSi
				FinSi
			FinSi
			Si eleccion = 7 Entonces
				Para i=1 Hasta 3 Hacer
					Escribir  i,'. ',alimento[eleccion,i], '  ',alimentoPrecio[eleccion,i]
				FinPara
				Leer eleccionAdd
				Si eleccionAdd >=1 & eleccionAdd <= 3 Entonces
					cantParcial[eleccion,eleccionAdd]=cantParcial[eleccion,eleccionAdd]+1
					parcialHamburguesa=parcialHamburguesa+alimentoPrecio[eleccion,eleccionAdd]
				SiNo
					Escribir 'Eleccion invalida'
					Esperar Tecla
				FinSi
			FinSi
			
//		Escribir eleccion,eleccionAdd
			
			Si eleccion = 8 Entonces
				Escribir 'Su hamburguesa tiene un valor de ',parcialHamburguesa;
				totalCuenta=totalCuenta+parcialHamburguesa
				Escribir 'Presione una tecla para personalizar la siguiente o totalizar su cuenta'
				Esperar Tecla
				parcialHamburguesa=0
			FinSi
			Si eleccion=9 Entonces
				statusPerso=Falso
			FinSi
		FinMientras
	Escribir 'El valor de total de su cuenta es: ', totalCuenta, ' mas la propina recomendada seria de ', totalCuenta*1.1;
		
	
	
FinProceso


Funcion resumenHam
//	Para i=1 Hasta 7 Hacer
//		Si cantParcial[i,eleccionAdd] > 0 Entonces
//			Escribir alimento[eleccion,eleccionAdd],' x ', cantParcial[eleccion,eleccionAdd], ': ', alimentoPrecio[eleccion,eleccionAdd]
//		FinSi
//	FinPara
FinFuncion


