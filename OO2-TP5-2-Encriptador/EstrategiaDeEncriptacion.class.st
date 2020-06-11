Class {
	#name : #EstrategiaDeEncriptacion,
	#superclass : #Object,
	#category : #'OO2-TP5-2-Encriptador-Model'
}

{ #category : #initialization }
EstrategiaDeEncriptacion >> encriptar: unString [
	^ self subclassResponsibility
]
