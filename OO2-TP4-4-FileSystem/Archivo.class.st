Class {
	#name : #Archivo,
	#superclass : #Component,
	#instVars : [
		'nombre',
		'fechaCreacion',
		'tamanio'
	],
	#category : #'OO2-TP4-4-FileSystem-Model'
}

{ #category : #'as yet unclassified' }
Archivo class >> llamado: unString creadoEl: unaFecha kBytes: unNumero [
	^ self new nombre: unString fechaCreacion: unaFecha tamanio: unNumero
]

{ #category : #'as yet unclassified' }
Archivo >> esArchivo [
	^ true
]

{ #category : #initialization }
Archivo >> initialize [
	tamanio:=32
]

{ #category : #'as yet unclassified' }
Archivo >> listadoDeContenidoEnStream: stream rutaPrevia: rutaPrevia [

]

{ #category : #'as yet unclassified' }
Archivo >> nombre: unString fechaCreacion: unaFecha tamanio: unNumero [
	nombre := unString.
	fechaCreacion := unaFecha.
	tamanio := unNumero
]

{ #category : #'as yet unclassified' }
Archivo >> tamanio [
	^ tamanio
]
