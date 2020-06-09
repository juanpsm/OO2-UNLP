Class {
	#name : #DirectorioTest,
	#superclass : #TestCase,
	#instVars : [
		'vacio',
		'conUnArchivo',
		'conVariosArchivos',
		'conSubdirectorios',
		'config',
		'grande',
		'backup2015'
	],
	#category : #'OO2-TP4-4-FileSystem-Tests'
}

{ #category : #'as yet unclassified' }
DirectorioTest class >> llamado: nombre creadoEl: date [

^ self new initialize:nombre creado: date.
]

{ #category : #running }
DirectorioTest >> setUp [
	| date |
	date := '2015-01-01'.
	
	"Directorio vacío"
	vacio := Directorio llamado: 'home' creadoEl: date.

	"Directorio con un solo archivo"
	conUnArchivo := Directorio llamado: 'var' creadoEl: date.
	config := Archivo
		llamado: 'config.bak'
		creadoEl: '2016-04-02' asDate
		kBytes: 128.
	conUnArchivo agregar: config.

	"Directorio con varios archivos, pero sin subdirectorios"
	conVariosArchivos := Directorio llamado: 'tmp' creadoEl: date.
	grande := Archivo
		llamado: 'grande.tmp'
		creadoEl: '2016-04-02' asDate
		kBytes: 2000000.
	conVariosArchivos
		agregar: (Archivo llamado: 'nada.tmp' creadoEl: '2015-05-01' asDate kBytes: 0);
		agregar:
			(Archivo llamado: 'chico.tmp' creadoEl: '2013-06-03' asDate kBytes: 10);
		agregar: grande;
		agregar:
			(Archivo
				llamado: 'mediano.tmp'
				creadoEl: '1995-11-23' asDate
				kBytes: 10000).

	"Directorio con subdirectorios, archivos, y archivos dentro de los subdirectorios"
	conSubdirectorios := Directorio llamado: 'log' creadoEl: date.
	backup2015 := Archivo
		llamado: '2015.zip'
		creadoEl: '2016-04-06' asDate
		kBytes: 240000000.
	conSubdirectorios
		agregar:
			(Archivo
				llamado: 'sys.log'
				creadoEl: '2016-03-03' asDate
				kBytes: 90000);
		agregar:
			((Directorio llamado: 'mysql' creadoEl: date)
				agregar:
					(Archivo
						llamado: 'mysql01.log'
						creadoEl: '2015-12-03' asDate
						kBytes: 1200000);
				agregar:
					(Archivo
						llamado: 'mysql02.log'
						creadoEl: '2014-03-03' asDate
						kBytes: 2000000);
				agregar:
					(Archivo
						llamado: 'mysql03.log'
						creadoEl: '2013-03-21' asDate
						kBytes: 2000000);
				agregar:
					(Archivo
						llamado: 'mysql04.log'
						creadoEl: '2014-07-15' asDate
						kBytes: 2000000);
				agregar:
					((Directorio llamado: 'older' creadoEl: date)
						agregar: backup2015;
						yourself);
				yourself);
		agregar:
			((Directorio llamado: 'postgres' creadoEl: date)
				agregar:
					(Archivo
						llamado: 'pg01.log'
						creadoEl: '2015-04-12' asDate
						kBytes: 1400000);
				agregar:
					(Archivo
						llamado: 'pg02.log'
						creadoEl: '2016-03-08' asDate
						kBytes: 4000000);
				agregar:
					(Archivo
						llamado: 'pg03.log'
						creadoEl: '2016-02-13' asDate
						kBytes: 4000000);
				yourself)
]

{ #category : #tests }
DirectorioTest >> testDePractica [
	|root dA dB dA1 dA2 dA11 dA12 f1 f2 f3 f4 f5|
	
	root := Directorio llamado: 'root' creadoEl: (Date today).
	dA := Directorio llamado: 'A' creadoEl: (Date today).
	dB := Directorio llamado: 'B' creadoEl: (Date today).
	dA1 := Directorio llamado: 'A.1' creadoEl: (Date today).
	dA2 := Directorio llamado: 'A.2' creadoEl: (Date today).
	dA11 := Directorio llamado: 'A.1.1' creadoEl: (Date today).
	dA12 := Directorio llamado: 'A.1.2' creadoEl: (Date today).
	f1 := Archivo llamado: 'file1' creadoEl: (Date today) kBytes: 32.
	f2 := Archivo llamado: 'file2' creadoEl: (Date today) kBytes: 32.
	f3 := Archivo llamado: 'file3' creadoEl: (Date today) kBytes: 32.
	f4 := Archivo llamado: 'file4' creadoEl: (Date today) kBytes: 32.
	f5 := Archivo llamado: 'file5' creadoEl: (Date today) kBytes: 32.
	
	dA11 
		agregar: f1;
		agregar: f2;
		agregar: f3.
	dA12 
		agregar: f4;
		agregar: f5.
	dA1
		agregar: dA11;
		agregar: dA12.
	dA
		agregar: dA1;
		agregar: dA2.
	
	root agregar: dA;
		agregar:dB.
	
	^root listadoDeContenido.
	
]

{ #category : #running }
DirectorioTest >> testListadoDeContenido [
	| listado listadoStream|
	self assert: vacio listadoDeContenido equals: '/home'.
	self assert: conUnArchivo listadoDeContenido equals: '/var (1 archivo)'.
	self assert: conVariosArchivos listadoDeContenido equals: '/tmp (4 archivos)'.
	listadoStream := WriteStream on: String new.
	listadoStream << '/log (1 archivo)'; cr.
	listadoStream << '/log/mysql (4 archivos)'; cr.
	listadoStream << '/log/mysql/older (1 archivo)'; cr.
	listadoStream << '/log/postgres (3 archivos)'.
	listado := listadoStream contents.
	self assert: conSubdirectorios listadoDeContenido = listado
]
