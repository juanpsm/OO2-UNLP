Class {
	#name : #TopografiaSimple,
	#superclass : #Topografia,
	#category : #'OO2-TP4-Topografia-Model'
}

{ #category : #'instance creation' }
TopografiaSimple class >> newWithProportion: aNumber [
	^(self new) proportion: aNumber.
]

{ #category : #'as yet unclassified' }
TopografiaSimple >> calculateProportion [
	^ proportion 
]
