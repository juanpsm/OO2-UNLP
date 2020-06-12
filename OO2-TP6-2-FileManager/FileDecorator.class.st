Class {
	#name : #FileDecorator,
	#superclass : #FileComponent,
	#instVars : [
		'wrapee'
	],
	#category : #'OO2-TP6-2-FileManager'
}

{ #category : #'instance creation' }
FileDecorator class >> newSource: aFileComponent [
^ self new wrapee: aFileComponent.
]

{ #category : #'menu commands' }
FileDecorator >> decorate [
	self subclassResponsibility
]

{ #category : #accessing }
FileDecorator >> extension [
	^ wrapee extension
]

{ #category : #accessing }
FileDecorator >> fcreacion [
	^ wrapee fcreacion
]

{ #category : #'menu commands' }
FileDecorator >> feoPrint [
	wrapee feoPrint = ''
		ifFalse: [ ^ wrapee feoPrint , ' - ' , self decorate ].
	^ self decorate
]

{ #category : #accessing }
FileDecorator >> fmodif [
	^ wrapee fmodif
]

{ #category : #accessing }
FileDecorator >> nombre [
	^ wrapee nombre
]

{ #category : #accessing }
FileDecorator >> permisos [
	^ wrapee permisos
]

{ #category : #'menu commands' }
FileDecorator >> prettyPrint [
	| stream |
	stream := wrapee prettyPrint.
	stream contents = ''
		ifFalse: [ stream nextPutAll: '  -  ' ].
	stream print: self decorate.
	^ stream
]

{ #category : #accessing }
FileDecorator >> tamaño [
	^ wrapee tamaño
]

{ #category : #'as yet unclassified' }
FileDecorator >> wrapee: aFileComponent [
	wrapee:= aFileComponent
]
