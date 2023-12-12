
Algoritmo ListasOrdenadas
	Dimension Lista[3,10];
	Definir AuxAsc, AuxDes Como Entero;
	generarNumeros(Lista);
	ordenarAscendente_OrdenarDescendente(Lista,AuxAsc, AuxDes);
	ListaNormal(Lista);
	ListaAscendente(Lista);
	ListaDescendente(Lista);
	
FinAlgoritmo

Funcion generarNumeros (Lista)
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Lista[1,i] = Aleatorio(1,10);
		Lista[2,i] = Lista[1,i];
		Lista[3,i] = Lista[1,i];
	FinPara
FinFuncion

Funcion ordenarAscendente_OrdenarDescendente(Lista, AuxAsc, AuxDes)
	para i<-1 hasta 10 con paso 1 Hacer
		para j<-1 hasta 9 con paso 1 Hacer
			//Ascendente
			si Lista[2,j] > Lista[2,j+1] Entonces
				AuxAsc = Lista[2,j];
				Lista[2,j] = Lista[2,j+1] ;
				Lista[2,j+1] = AuxAsc;
			FinSi
			
			si Lista[3,j] < Lista[3,j+1] Entonces
				AuxDes = Lista[3,j+1];
				Lista[3,j+1] = Lista[3,j] ;
				Lista[3,j] = AuxDes;
			FinSi
			
		FinPara
	FinPara
FinFuncion

Funcion ListaNormal (Lista)
	Escribir 'La lista original es';
	para i<-1 hasta 10 Con Paso 1 Hacer
		Escribir Lista[1,i] ;
	FinPara
FinFuncion

Funcion ListaAscendente (Lista)
	Escribir 'La lista ascendente es';
	para i<-1 hasta 10 Con Paso 1 Hacer
		Escribir Lista[2,i] ;
	FinPara
FinFuncion

Funcion ListaDescendente(Lista)
	Escribir 'La lista descendente es ';
	para i<-1 hasta 10 Con Paso 1 Hacer
		Escribir Lista[3,i] ;
	FinPara
FinFuncion