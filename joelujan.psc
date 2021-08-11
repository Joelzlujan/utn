//Matriz cuadrada de mxm y se busca que las dos diagonales principales que todas las bases sean iguales. Para que la muestra sea válida el orden de la matriz( el orden de M) debe ser
//3,4 o 37 por descgracia no es posiuble saber el orden de la matriz y el mismo debe ser inferido de la muestra ingresada. Hacer un programa que permita ingresar una muestra completa, detectar si es válida,
// y de ser asi que imprima la matriz y muestre un mensaje que indique si se ha detectado  o no el gen z.
Algoritmo Joel_Lujan
	definir codigo,matriz Como Caracter
	definir long,n Como Entero                                        //n: variable salida
	definir diagprin,diagsec Como Logico
	Escribir "Ingrese codigo para analizar"
	leer codigo                                                         //codigo: variable entrada
	codigo=Mayusculas(codigo)
	n=0
	long=Longitud(codigo)
	si (long=9) o (long=16) o (long=1369)
			n=rc(long)
	SiNo
		escribir "El codigo no es valido"
	FinSi
	dimension matriz(n,n)
	llenar(matriz,n,n,codigo)
	compruebaABCD(matriz,n,n)
	diagprin=compruebadiagprin(matriz,n,n,codigo)
	diagsec=compruebadiagsec(matriz,n,n,codigo)
	si diagprin=Verdadero y diagsec=Verdadero
		entonces Escribir "Se ha encontrado el gen Z"
		muestra(matriz,n,n)                                           //matriz: variable salida
	SiNo
		Escribir "No se ha encontrado el gen Z"
	FinSi
FinAlgoritmo



SubProceso llenar(matriz,n,n,codigo)                                 //variables de entrada
	definir i,j,contador Como Entero
	contador=0
	para i=0 hasta n-1 con paso 1
		para j=0 hasta n-1 con paso 1
			matriz(i,j)=Subcadena(codigo,contador,contador)                 //
			contador=contador + 1
		FinPara
	FinPara
	FinSubProceso
	
SubProceso compruebaABCD(matriz,n,n)
	Definir i,j,contadora,contadorb,contadorc,contadord Como Entero
	contadora=0
	contadorb=0
	contadorc=0
	contadord=0
	para i=0 hasta n-1 con paso 1
		para j=0 hasta n-1 con paso 1
		si (matriz[i,j]=="A") 
			Entonces contadora=contadora +1
		FinSi
		si (matriz[i,j]=="B")
			Entonces
			contadorb=contadorb + 1
		FinSi
		si (matriz[i,j]=="C")
			Entonces
			contadorc=contadorc + 1
		FinSi
		si (matriz[i,j]=="D")
			contadord= contadord + 1
		FinSi
		FinPara
	FinPara
	si contadora=0
		escribir "Falta el tipo A dentro del codigo"
	FinSi
	si contadorb=0
		escribir "Falta el tipo B dentro del codigo"
	FinSi
	si contadorc=0
		escribir "Falta el tipo C dentro del código"
	FinSi
	si contadord=0
		escribir "Falta el tipo D dentro del código"
	FinSi
FinSubProceso
	
	SubProceso muestra(matriz,n,n)	
		definir i, j Como Entero
		para i=0 hasta n-1 con paso 1
			para j=0 hasta n-1 con paso 1
				Escribir "[",matriz(i,j),"]" Sin Saltar										//variables de salida
			FinPara
			escribir ""
		FinPara
FinSubProceso

Funcion verificacion<-compruebadiagprin(matriz,n,n,codigo)
	definir i,j,contador1 Como entero
	definir aux Como Caracter
	definir verificacion Como Logico
	aux=Subcadena(codigo,0,0)
	contador1=0
	para i=0 hasta n-1 con paso 1
		para j=0 hasta n-1 con paso 1
			si i=j
				si (matriz[i,j])==aux
					contador1=contador1 +1
				FinSi
			FinSi
		FinPara
	FinPara
	si contador1=n
		verificacion=Verdadero
	SiNo
		verificacion=Falso
	FinSi
	
FinSubProceso

Funcion verifica<-compruebadiagsec(matriz,n,n,codigo)
	definir i,j,contador2 Como Entero
	definir aux como caracter
	definir verifica Como Logico
	aux=Subcadena(codigo,n-1,n-1)
	contador2=0
	para i=0 hasta n-1 con paso 1
		para j=0 hasta n-1 con paso 1
			si i+j=n-1
				si (matriz[i,j])==aux
					contador2=contador2 +1
				FinSi
				
			FinSi
		FinPara
	FinPara
	si contador2=n
		verifica=Verdadero
	SiNo
		verifica=Falso
	FinSi
FinFuncion
	