Class {
	#name : #FModDecorator,
	#superclass : #FileDecorator,
	#category : #'OO2-TP6-2-FileManager'
}

{ #category : #'menu commands' }
FModDecorator >> decorate [
	^ self fmodif 
]
