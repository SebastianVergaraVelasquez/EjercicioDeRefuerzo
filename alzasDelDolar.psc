Algoritmo alzasDelDolar
	Definir Dias Como Entero;
	Definir mayorAlza Como real;
	Escribir 'Ingrese el periodo de dias a estudiar';
	Leer Dias;
	Dimension valoresDolarPorDia[Dias];
	Dimension Alzas[dias];
	valorDolarAleatorio(valoresDolarPorDia, Dias);
	determinarAlzas(valoresDolarPorDia, Dias, Alzas);
	CompararAlzas(Alzas, Dias);
	
	
FinAlgoritmo

Funcion valorDolarAleatorio (valoresDolarPorDia, Dias)
	para i<- 1 hasta Dias con paso 1 Hacer
		valoresDolarPorDia[i] = (Aleatorio(100.00, 999.99))*0.88;
		Escribir 'Dia ', i,':', valoresDolarPorDia[i], ' pesos';
	FinPara
FinFuncion

Funcion determinarAlzas (valoresDolarPorDia, Dias, Alzas)
	para i<-1 hasta Dias-1 Con Paso 1 Hacer
		si valoresDolarPorDia[i] < valoresDolarPorDia[i+1] Entonces
		Alzas[i] = valoresDolarPorDia[i+1] - valoresDolarPorDia[i];
		FinSi
	FinPara
FinFuncion

Funcion CompararAlzas (Alzas, Dias)
	mayorAlza = Alzas[1];
	Para i<-1 Hasta Dias-1 Con Paso 1 Hacer
		Si Alzas[i] < Alzas[i+1] Entonces
			mayorAlza = Alzas[i+1];
		FinSi
	FinPara
	Escribir 'La mayor alza fue de ', mayorAlza, ' pesos';
FinFuncion
	