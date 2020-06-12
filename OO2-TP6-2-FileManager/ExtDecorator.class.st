Class {
	#name : #ExtDecorator,
	#superclass : #FileDecorator,
	#category : #'OO2-TP6-2-FileManager'
}

{ #category : #'menu commands' }
ExtDecorator >> decorate [
	^ self extension
]
