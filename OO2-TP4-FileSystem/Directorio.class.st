"
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
	
	root listadoDeContenido.
"
Class {
	#name : #Directorio,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'fechaCreacion',
		'contenidos'
	],
	#category : #'OO2-TP4-FileSystem-Model'
}

{ #category : #'as yet unclassified' }
Directorio class >> llamado: unString creadoEl: unaFecha [
	^(self new) nombre: unString fechaCreacion: unaFecha
]

{ #category : #'as yet unclassified' }
Directorio >> agregar: unElemento [
	contenidos add: unElemento
]

{ #category : #'as yet unclassified' }
Directorio >> esArchivo [
	^ false
]

{ #category : #'as yet unclassified' }
Directorio >> getContenido [
	^ contenidos 
]

{ #category : #initialization }
Directorio >> initialize [
	contenidos:= OrderedCollection new.
]

{ #category : #'as yet unclassified' }
Directorio >> listadoDeContenido [
	| stream |
	stream := String new writeStream.
	self listadoDeContenido: stream rutaPrevia: ''.
	^ stream contents
]

{ #category : #'as yet unclassified' }
Directorio >> listadoDeContenido: stream rutaPrevia: rutaPrevia [
	| ruta |
	stream cr.
	ruta := rutaPrevia , '/' , nombre.
	stream nextPutAll: ruta.
	self tieneSubdirectorios
		ifTrue: [ 
			contenidos
				do: [ :f | f listadoDeContenido: stream rutaPrevia: ruta ] ]
		ifFalse: [ contenidos isNotEmpty
				ifTrue: [ stream
						nextPutAll: ' (';
						print: contenidos size;
						nextPutAll: ' archivo'.
					contenidos size ~= 1
						ifTrue: [ stream nextPutAll: 's' ].
					stream
						nextPutAll: ')'] ]
]

{ #category : #'as yet unclassified' }
Directorio >> nombre: unString fechaCreacion: unaFecha [
	nombre := unString.
	fechaCreacion := unaFecha
]

{ #category : #'as yet unclassified' }
Directorio >> tamanioTotalOcupado [
	^ contenidos sumNumbers: [ :f | f tamanioTotalOcupado ]
]

{ #category : #'as yet unclassified' }
Directorio >> tieneSubdirectorios [
	^ ((contenidos isNotEmpty) and: (contenidos allSatisfy: [ :e | e esArchivo not ]))
]
