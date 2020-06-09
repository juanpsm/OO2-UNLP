Class {
	#name : #GraficoTopografiaSimple,
	#superclass : #GraficoTopografia,
	#category : #'OO2-TP4-3-Topografia-Graficos'
}

{ #category : #'instance creation' }
GraficoTopografiaSimple class >> newFrom: aTopografia [
	^ self new
		topografia: aTopografia newName: aTopografia name;
		yourself
]

{ #category : #'instance creation' }
GraficoTopografiaSimple class >> newFrom: aTopografia newName: aName [
	^ self new
		topografia: aTopografia newName: aName;
		yourself
]

{ #category : #drawing }
GraficoTopografiaSimple >> drawAtX: x Y: y H: h W: w [
	figure borderWidth: 1.
	figure borderColor: (Color black).
	super drawAtX: x Y: y H: h W: w.
	(topografia calculateProportion = 1)
		ifTrue: [ figure color: (Color blue alpha: 0.2) ]
		ifFalse: [ figure color: (Color brown alpha: 0.9) ].
	^figure 
]
