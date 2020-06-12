Class {
	#name : #FileOO2,
	#superclass : #FileComponent,
	#instVars : [
		'nombre',
		'extension',
		'tamaño',
		'fcreacion',
		'fmodif',
		'permisos'
	],
	#category : #'OO2-TP6-2-FileManager'
}

{ #category : #accessing }
FileOO2 class >> nombre: anName extension: anExt fcreacion: aDate fmodif: otherDate permisos: anObject tamaño: aSize [
	^ self new
		nombre: anName
		extension: anExt
		fcreacion: aDate
		fmodif: otherDate
		permisos: anObject
		tamaño: aSize
]

{ #category : #accessing }
FileOO2 >> extension [
	^ extension
]

{ #category : #accessing }
FileOO2 >> extension: anObject [
	extension := anObject
]

{ #category : #accessing }
FileOO2 >> fcreacion [
	^ fcreacion
]

{ #category : #accessing }
FileOO2 >> fcreacion: anObject [
	fcreacion := anObject
]

{ #category : #'menu commands' }
FileOO2 >> feoPrint [
^ ''
]

{ #category : #accessing }
FileOO2 >> fmodif [
	^ fmodif
]

{ #category : #accessing }
FileOO2 >> fmodif: anObject [
	fmodif := anObject
]

{ #category : #accessing }
FileOO2 >> nombre [
	^ nombre
]

{ #category : #accessing }
FileOO2 >> nombre: anObject [
	nombre := anObject
]

{ #category : #accessing }
FileOO2 >> nombre: anName extension: anExt fcreacion: aDate fmodif: otherDate  permisos: anObject tamaño: aSize [
	nombre := anName.
	extension := anExt.
	fcreacion := aDate.
	fmodif := otherDate.
	permisos := anObject.
	tamaño := aSize
	
	
	
	
]

{ #category : #accessing }
FileOO2 >> permisos [
	^ permisos
]

{ #category : #accessing }
FileOO2 >> permisos: anObject [
	permisos := anObject
]

{ #category : #'menu commands' }
FileOO2 >> prettyPrint [
	| stream |
	stream := String new writeStream.
	^stream.
	"self prettyPrintEn: stream
	^ stream contents"
]

{ #category : #accessing }
FileOO2 >> tamaño [
	^ tamaño
]

{ #category : #accessing }
FileOO2 >> tamaño: anObject [
	tamaño := anObject
]
