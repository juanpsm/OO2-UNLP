"
bib := Biblioteca new.
s1 := Socio nombre: 'Socio1' email: 'socio1@smalltalk.com' legajo: '1111/1'.
s2 := Socio nombre: 'Socio2' email: 'socio2@smalltalk.com' legajo: '2222/2'.
s3 := Socio nombre: 'Socio3' email: 'socio3@smalltalk.com' legajo: '3333/3'.
bib agregarSocio: s1; agregarSocio: s2; agregarSocio: s3.

bib exportarSocios .

col:= bib socios collect: [ :socio | Dictionary new at: #nombre put: (socio nombre);
																	at: #email put: (socio email);
																	at: #legajo put: (socio legajo);
																	yourself ].
asd := col collect: [ :dic | dic keys ].
asd := col collect: [ :dic | dic keysSortedSafely  ].

STON toStringPretty: col.
STONJSON toStringPretty: col. ""no anda""
NeoJSONWriter toStringPretty: col.

bib exporter: NeoJsonExporter new.

bib exportarSocios 
"
Class {
	#name : #Biblioteca,
	#superclass : #Object,
	#instVars : [
		'socios',
		'exporter'
	],
	#category : #'OO2-TP4-Biblioteca-Model'
}

{ #category : #'as yet unclassified' }
Biblioteca class >> new: anExporter [

	^self new initialize: anExporter
	
]

{ #category : #socios }
Biblioteca >> agregarSocio: aSocio [ 
	socios add: aSocio.
]

{ #category : #'as yet unclassified' }
Biblioteca >> exportarSocios [
"Retorna la representacion JSON de la coleccion de socios."


^ self exporter export:(self socios).
]

{ #category : #accessing }
Biblioteca >> exporter [
	^ exporter
]

{ #category : #accessing }
Biblioteca >> exporter: anObject [
	exporter := anObject
]

{ #category : #initialization }
Biblioteca >> initialize [

	socios:= OrderedCollection new.
	exporter:= VoorheesExporter new.
]

{ #category : #initialization }
Biblioteca >> initialize: anExporter [

	socios:= OrderedCollection new.
	exporter:= anExporter.
]

{ #category : #accessing }
Biblioteca >> socios [
	^ socios
]

{ #category : #accessing }
Biblioteca >> socios: anObject [
	socios := anObject
]
