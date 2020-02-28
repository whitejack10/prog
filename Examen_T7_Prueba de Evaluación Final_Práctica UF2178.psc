Algoritmo Examen
	// Variables definidas en el uso del programa
	Definir menu Como Caracter;
	Definir doc Como Entero;
	Definir pausa Como Cadena;
	Definir num Como Entero;
	Definir piddoc Como Entero;
	Definir menusubopt Como Entero;
	Definir text Como Cadena;
	
	// Primer array que contendrá la posición del documento
	Dimension pid[8];
	pid[1]=5;
	pid[2]=7;
	pid[3]=6;
	pid[4]=4;
	pid[5]=2;
	pid[6]=3;
	pid[7]=1;
	pid[8]=8;
	
	// Definir vacio para aquellos contenidos vacíos
	Definir vacio Como Caracter;
	vacio='$';
	
	// Segundo array que contendrá el contenido del documento
	Dimension contenido[8];
	contenido[1]=vacio;
	contenido[2]='Examen UF2178';
	contenido[3]=vacio;
	contenido[4]='El carnaval.  El carnaval es una celebración que tiene lugar inmediatamente antes de la cuaresma cristiana, y que tiene fecha variable. Tradicionalmente comienza un jueves y acaba el martes siguiente';
	contenido[5]='Por favor, no molestar'
	contenido[6]='Manual de JAVA'
	contenido[7]='Factura cliente Fujitsu'
	contenido[8]='Hola, ¿cómo estás?'
	
	// Definición y acciones de cada opción del menú
	Mientras menu <>'S' Y menu <>'s' Hacer
		// Texto del menú
		Escribir ''
		Escribir ' > > Examen'
		Escribir ''
		Escribir ' = Elige una opción del menú ='
		Escribir '1 - Visualización de documentos'
		Escribir '2 - Búsqueda de documentos'
		Escribir '3 - Edición de documentos'
		Escribir '4 - Crear documentos'
		Escribir '5 - Borrar documentos' 
		Escribir '6 - Impresión de documentos'
		Escribir '7 - Ordenación'
		Escribir 'S - Salir'
		Escribir ''
		Escribir 'Escribe un número del Menú y pulsa Enter'
		Leer menu
		Escribir ''
		Si menu='1' Entonces //Si elegimos el 1
			Escribir 'Escribe el número de documento a visualizar: '
			Leer doc
			Escribir ''
			visualizar(doc, pid, contenido); //carga del subproceso
			Escribir ''
			Escribir 'Acción terminada. Pulsa cualquier tecla para contiuar'
			Leer pausa
		FinSi
		Si menu='2' Entonces //Si elegimos el 2
			Escribir ' = > Elige una opción < ='
			Escribir '1 - Buscar el número de documento'
			Escribir '2 - Buscar solamente el primer documento con una palabra'
			Escribir '3 - Buscar todos los documentos con una palabra'
			Leer menusubopt
			Si menusubopt=1 Entonces
				Escribir 'Buscar por el número de documento'
				Escribir ''
				Escribir 'Escriba el Nº del documento: '
				Leer doc
				busquedanumero(doc, contenido); //carga del subproceso
				Escribir ''
				Escribir 'Acción terminada. Pulsa cualquier tecla para contiuar'
				Leer pausa
			FinSi
			Si menusubopt=2 Entonces
				Escribir 'Opción No disponible'
				Escribir ''
				Escribir 'Acción terminada. Pulsa cualquier tecla para contiuar'
				Leer pausa
			FinSi
			Si menusubopt=3 Entonces
				Escribir 'Opción No disponible'
				Escribir ''
				Escribir 'Acción terminada. Pulsa cualquier tecla para contiuar'
				Leer pausa
			FinSi
		FinSi
		Si menu='3' Entonces //Si elegimos el 3
			Escribir 'Escribe el número de documento a editar: '
			Leer doc
			Escribir ''
			visualizar(doc, pid, contenido); //carga del subproceso
			Escribir ''
			Escribir 'Ahora escribe el texto a añadir'
			Leer text
			Escribir ''
			Escribir ''
			edicion(doc, text, pid, contenido); //carga del subproceso
			Escribir ''
			Escribir 'Acción terminada. Pulsa cualquier tecla para contiuar'
			Leer pausa
		FinSi
		Si menu='4' Entonces //Si elegimos el 4
			Escribir 'Escribe a contnuación: '
			Leer text
			Escribir ''
			creacion(text, contenido) //carga del subproceso
			Escribir ''
			Escribir 'Acción terminada. Pulsa cualquier tecla para contiuar'
			Leer pausa
		FinSi
		Si menu='5' Entonces //Si elegimos el 5
			Escribir 'Escribe el nº de documento que desea borrar:'
			Leer doc;
			Escribir ''
			visualizar(doc, pid, contenido); //carga del subproceso
			Escribir ''
			Escribir ''
			borrado(doc, pid, contenido); //carga del subproceso
			Escribir ''
			Escribir 'Acción terminada. Pulsa cualquier tecla para contiuar'
			Leer pausa
		FinSi
		Si menu='6' Entonces //Si elegimos el 6
			Escribir 'Opción No disponible'
			Escribir ''
			Escribir 'Acción terminada. Pulsa cualquier tecla para contiuar'
			Leer pausa
		FinSi
		Si menu='7' Entonces //Si elegimos el 7
			Escribir 'Opción No disponible'
			Escribir ''
			Escribir 'Acción terminada. Pulsa cualquier tecla para contiuar'
			Leer pausa
		FinSi
		
	FinMientras
FinAlgoritmo

// Visualización de documentos
SubProceso visualizar(a Por Valor, pid Por Referencia, contenido Por Referencia) //a es doc, pid es del array pid, contenido es del array contenido
	Escribir 'Contenido del documento nº: ', a, ' con Nº PID: ', pid[a], ' es:';
	Escribir contenido[a];
FinSubProceso

// Búsqueda de documentos
SubProceso busquedanumero(a Por Valor, contenido Por Referencia) //a es doc, contenido es del array contenido
	Escribir contenido[a];
FinSubProceso

// Edición de documentos
SubProceso edicion(a Por Valor, text Por Referencia, pid Por Referencia, contenido Por Referencia) //a es doc, text es la inserción del texto escrito, pid es del array pid, contenido es del array contenido
	Si contenido[a]='$' Entonces //Cuando el contenido está vacío
		contenido[a] <- text;
	SiNo
		acum <- contenido[a]+' '+text; //Cuando ya hay contenido
		contenido[a] <- acum;
	FinSi
	Escribir '> > Contenido Actualizado :)'
	Escribir ''
	Escribir 'Contenido del documento nº: ', a, ' con Nº PID: ', pid[a], ' es:';
	Escribir contenido[a];
FinSubProceso

// Crear documentos
SubProceso creacion(text Por Referencia, contenido Por Referencia) //text es la inserción del texto escrito, contenido es del array contenido
	i=1 //Inicio de contador
	Mientras i < 9 Hacer //Cuando encuentre un espacio vacío añade el texto
		Si contenido[i]='$' Entonces
			contenido[i] <- text;
			Escribir 'El texto se ha creado en el documento nº: ', i;
			i=8
		FinSi
		i=i+1
	FinMientras
		
FinSubProceso

// Borrar documentos
SubProceso borrado(a Por Valor, pid Por Referencia, contenido Por Referencia) //a es doc, pid es del array pid, contenido es del array contenido
	contenido[a]='$' //El contenido pasa a ser un espacio vacío, que es $
	Escribir '> > Contenido Actualizado :)'
	Escribir ''
	Escribir 'Contenido del documento nº: ', a, ' con Nº PID: ', pid[a], ' es:';
	Escribir contenido[a];
FinSubProceso

