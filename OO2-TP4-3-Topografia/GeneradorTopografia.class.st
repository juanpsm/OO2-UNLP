"
""newWithRandomChildrenLevel: aNumber
	^(self new) recursionLevel: aNumber; generateRandomChildren.""
"
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
GeneradorTopografia class >> newWithMaxDepth: aNumber [
	^(self new) maxRecursion: aNumber.
]

{ #category : #'instance creation' }
GeneradorTopografia class >> newWithRecursionLevel: aNumber [
	^(self new) recursionLevel: aNumber.
]

{ #category : #'instance creation' }
GeneradorTopografia class >> newWithRecursionLevel: aNumber max: anotherNumber [
	^(self new) recursionLevel: aNumber; maxRecursion: anotherNumber.
]

{ #category : #'as yet unclassified' }
GeneradorTopografia >> flipBit [
 ^ ((0 to: 1) atRandom)
]

{ #category : #'as yet unclassified' }
GeneradorTopografia >> flipCoin [
 ^ (((0 to: 1) atRandom) = 0)
]

{ #category : #initialization }
GeneradorTopografia >> initialize [
	maxRecursionLevel := 5.
	recursionLevel := 0.
]

{ #category : #accessing }
GeneradorTopografia >> maxRecursion: aPositiveNumber [
maxRecursionLevel := aPositiveNumber.
]

{ #category : #generators }
GeneradorTopografia >> random [
	topografia := TopografiaMixta new.
	self randomRecursive.
	^ topografia
]

{ #category : #generators }
GeneradorTopografia >> randomEstricto [
	"Este mensaje chequea en cada ciclo que no se haya creado un topografia complentamente del mismo color. En realidad en lugar de chequear, para no estar preguntado por las clases, las reemplaza siempre, si ya era simple la reemplaza por un nueva igual."
	topografia := TopografiaMixta new.
	self randomRecursive.
	topografia calculateProportion = 0
		ifTrue:[ topografia := (TopografiaSimple newWithProportion: 0)].
	topografia calculateProportion = 1
		ifTrue:[ topografia := (TopografiaSimple newWithProportion: 1)].
	^ topografia
]

{ #category : #generators }
GeneradorTopografia >> randomRecursive [
	1 to: 4 do: [ :e | 
		(self flipCoin or: recursionLevel >= maxRecursionLevel)
			ifTrue: [ "Es simple" 
				topografia add: (TopografiaSimple newWithProportion: self flipBit) ]
			ifFalse: [ "Es mixta"
				topografia
					add: (self class newWithRecursionLevel: (recursionLevel + 1) max: maxRecursionLevel ) random ] ]
]

{ #category : #accessing }
GeneradorTopografia >> recursionLevel: aNumber [ 
	recursionLevel := aNumber 
]
