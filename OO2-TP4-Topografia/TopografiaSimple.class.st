Class {
	#name : #TopografiaSimple,
	#superclass : #Topografia,
	#category : #'OO2-TP4-Topografia-Model'
}

{ #category : #'instance creation' }
TopografiaSimple class >> newWithProportion: aNumber [
	^(self new) proportion: aNumber.
]

{ #category : #calculating }
TopografiaSimple >> calculateProportion [
	^ proportion 
]

{ #category : #comparing }
TopografiaSimple >> compararConMixta: topografiaMixta [
	^ self equals: topografiaMixta 
]

{ #category : #drawing }
TopografiaSimple >> drawAtX: x Y: y H: h W: w [
	"figure borderWidth: 1.
	figure borderColor: (Color black)."
	super drawAtX: x Y: y H: h W: w.
	(proportion = 1)
		ifTrue: [ figure color: (Color blue alpha: 0.2) ]
		ifFalse: [ figure color: (Color brown alpha: 0.9) ].
	^figure 
]

{ #category : #comparing }
TopografiaSimple >> equals: anotherTopografia [
	^ (proportion = anotherTopografia calculateProportion)
	
]
