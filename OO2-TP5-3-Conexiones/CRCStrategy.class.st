Class {
	#name : #CRCStrategy,
	#superclass : #Object,
	#category : #'OO2-TP5-3-Conexiones-Model'
}

{ #category : #'as yet unclassified' }
CRCStrategy >> crcFor: aString [
	^ self subclassResponsibility .
]
