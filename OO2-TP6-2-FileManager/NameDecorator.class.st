Class {
	#name : #NameDecorator,
	#superclass : #FileDecorator,
	#category : #'OO2-TP6-2-FileManager'
}

{ #category : #'menu commands' }
NameDecorator >> decorate [
	^ self nombre
]
