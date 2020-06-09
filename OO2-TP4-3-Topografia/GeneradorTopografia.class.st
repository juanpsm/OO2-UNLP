Class {
	#name : #GeneradorTopografia,
	#superclass : #Object,
	#instVars : [
		'recursionLevel',
		'maxRecursionLevel',
		'topografia'
	],
	#category : #'OO2-TP4-3-Topografia-Generator'
}

{ #category : #'instance creation' }
GeneradorTopografia class >> newWithRandomLevel: aNumber [
	^(self new) recursionLevel: aNumber.
]

{ #category : #initialization }
GeneradorTopografia >> initialize [
	maxRecursionLevel := 10.
	recursionLevel := 0.
]

{ #category : #generators }
GeneradorTopografia >> random [
	topografia := TopografiaMixta new.
	self randomRecursive.
	^ topografia
]

{ #category : #generators }
GeneradorTopografia >> randomRecursive [
	1 to: 4
		do: [ :e | ((((0 to: 1) atRandom) = 0) or: (recursionLevel > maxRecursionLevel))
				ifTrue:
					[ "Es simple" 
					topografia add: (TopografiaSimple newWithProportion: ((0 to: 1) atRandom) ) ]
				ifFalse: 
					[ "Es mixta"
					topografia add: ((GeneradorTopografia newWithRandomLevel: (recursionLevel+1) ) random)]
				]
"newWithRandomChildrenLevel: aNumber
	^(self new) recursionLevel: aNumber; generateRandomChildren."
]

{ #category : #accessing }
GeneradorTopografia >> recursionLevel [
	^ recursionLevel
]

{ #category : #accessing }
GeneradorTopografia >> recursionLevel: aNumber [ 
	recursionLevel := aNumber 
]
