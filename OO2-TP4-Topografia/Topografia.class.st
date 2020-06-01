"
joe := Morph new color: Color blue. 
joe openInWorld. 
bill := Morph new color: Color red . 
bill openInWorld.
"
Class {
	#name : #Topografia,
	#superclass : #Object,
	#instVars : [
		'proportion',
		'break'
	],
	#category : #'OO2-TP4-Topografia-Model'
}

{ #category : #accessing }
Topografia >> break [
	^ break
]

{ #category : #accessing }
Topografia >> break: aNumber [ 
	break := aNumber 
]

{ #category : #'as yet unclassified' }
Topografia >> calculateProportion [
	^ self subclassResponsibility.
]

{ #category : #accessing }
Topografia >> proportion: aNumber [
	proportion := aNumber
]
