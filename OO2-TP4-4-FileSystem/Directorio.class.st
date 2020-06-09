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
	#superclass : #Component,
	#instVars : [
		'nombre',
		'fechaCreacion',
		'contenidos'
	],
	#category : #'OO2-TP4-4-FileSystem-Model'
}

{ #category : #'as yet unclassified' }
Directorio class >> llamado: unString creadoEl: unaFecha [
	^(self new) nombre: unString fechaCreacion: unaFecha
]

{ #category : #'adding/removing' }
Directorio >> agregar: unElemento [
	contenidos add: unElemento
]

{ #category : #'as yet unclassified' }
Directorio >> cantidadDeArchivos [
^ (contenidos select: [ :e | e esArchivo ]) size.
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
	self listadoDeContenidoEnStream: stream rutaPrevia: ''.
	^ stream contents
]

{ #category : #accessing }
Directorio >> listadoDeContenidoEnStream: stream rutaPrevia: rutaPrevia [
	| ruta |
	ruta := rutaPrevia , '/' , nombre.
	stream nextPutAll: ruta.
	contenidos isNotEmpty
		ifTrue: [ 
			stream
				nextPutAll: ' (';
				print: self cantidadDeArchivos;
				nextPutAll: ' archivo'.
			self cantidadDeArchivos ~= 1
				ifTrue: [ stream nextPutAll: 's' ].
			stream nextPutAll: ')' ].
	self tieneSubdirectorios
		ifTrue: [ "stream contents trimRight."
			
			contenidos
				do: [ :f | 
					f esArchivo
						ifFalse: [ stream cr.
							f listadoDeContenidoEnStream: stream rutaPrevia: ruta ] ] ]
]

{ #category : #setter }
Directorio >> nombre: unString fechaCreacion: unaFecha [
	nombre := unString.
	fechaCreacion := unaFecha
]

{ #category : #'adding/removing' }
Directorio >> remover: unElemento [ 
	contenidos remove: unElemento.
]

{ #category : #'as yet unclassified' }
Directorio >> tamanio [
	^ contenidos sumNumbers: [ :f | f tamanio ]
]

{ #category : #'as yet unclassified' }
Directorio >> tieneSubdirectorios [
	^ ((contenidos isNotEmpty) and: (contenidos anySatisfy: [ :e | e esArchivo not ]))
]
