Class {
	#name : #TopografiaMixta,
	#superclass : #Topografia,
	#instVars : [
		'children'
	],
	#classInstVars : [
		'children'
	],
	#category : #'OO2-TP4-Topografia-Model'
}

{ #category : #'instance creation' }
TopografiaMixta class >> newWithRandomChildrenLevel: aNumber [
	^(self new) recursionLevel: aNumber; generateRandomChildren.
]

{ #category : #adding }
TopografiaMixta >> add: aComponent [
	children add: aComponent 
]

{ #category : #calculations }
TopografiaMixta >> calculateProportion [
	^ ((children sumNumbers: [:c| c calculateProportion]) / (children size) )
]

{ #category : #comparing }
TopografiaMixta >> compararConMixta: topografiaMixta [
	children size = topografiaMixta getChildren size
		ifTrue: [ ^ (children
				with: topografiaMixta getChildren
				collect: [ :c1 :c2 | c1 equals: c2 ]) allSatisfy: [ :e | e ] ]
]

{ #category : #drawing }
TopografiaMixta >> drawAtX: x Y: y H: h W: w [
	"figure borderWidth: 2.
	figure borderColor: (Color black)."
	super drawAtX: x Y: y H: h W: w.
	(children at: 1) drawAtX: x 			Y: y 			H: (h/2) W: (w/2).
	(children at: 2) drawAtX: (x+(w/2)) 	Y: y 			H: (h/2) W: (w/2).
	(children at: 3) drawAtX: x 			Y: (y+(h/2)) H: (h/2) W: (w/2).
	(children at: 4) drawAtX: (x+(w/2)) 	Y: (y+(h/2)) H: (h/2) W: (w/2).
	figure addMorph: ((children at: 1) figure).
	figure addMorph: ((children at: 2) figure).
	figure addMorph: ((children at: 3) figure).
	figure addMorph: ((children at: 4) figure).
	
	^figure
]

{ #category : #comparing }
TopografiaMixta >> equals: anotherTopografia [
	^ anotherTopografia compararConMixta: self.
]

{ #category : #generators }
TopografiaMixta >> generateRandomChildren [
	1 to: 4
		do: [ :e | ((((0 to: 1) atRandom) = 0) or: (recursionLevel > maxRecursionLevel))
				ifTrue:
					[ "Es simple" 
					self add: (TopografiaSimple newWithProportion: ((0 to: 1) atRandom) ) ]
				ifFalse: 
					[ "Es mixta"
					self add: (TopografiaMixta newWithRandomChildrenLevel: (recursionLevel+1))
					]
				]
]

{ #category : #acccessing }
TopografiaMixta >> getChildren [
	^ children 
]

{ #category : #initialization }
TopografiaMixta >> initialize [
	super initialize.
	children:= OrderedCollection new.
]
