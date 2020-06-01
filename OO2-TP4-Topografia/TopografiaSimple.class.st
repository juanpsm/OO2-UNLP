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

{ #category : #'as yet unclassified' }
TopografiaSimple >> drawAtX: x Y: y H: h W: w [
	"figure borderWidth: 1.
	figure borderColor: (Color black)."
	(proportion = 1)
		ifTrue: [ figure color: (Color blue alpha: 0.2) ]
		ifFalse: [ figure color: (Color brown alpha: 0.9) ].
	figure height: h.
	figure width: w.
	figure position: (x@y).
]
