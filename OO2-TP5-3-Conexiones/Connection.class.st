Class {
	#name : #Connection,
	#superclass : #Object,
	#category : #'OO2-TP5-3-Conexiones-Model'
}

{ #category : #accessing }
Connection >> pict [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
Connection >> sendData: aString Crc: aNumber [
	^ self subclassResponsibility
]
