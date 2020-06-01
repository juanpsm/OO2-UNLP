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
TopografiaMixta class >> newWithRandomChildrenBreak: aNumber [
	^(self new) break: aNumber; generateRandomChildren.
]

{ #category : #adding }
TopografiaMixta >> add: aComponent [
	children add: aComponent 
]

{ #category : #'as yet unclassified' }
TopografiaMixta >> calculateProportion [
	^ ((children sumNumbers: [:c| c calculateProportion]) / (children size) )
]

{ #category : #'as yet unclassified' }
TopografiaMixta >> generateRandomChildren [
	1 to: 4
		do: [ :e | (0 to: 1 atRandom) = 0
				ifTrue:
					[ "Es simple" 
					self add: (TopografiaSimple newWithProportion: ((0 to: 1) atRandom) ) ]
				ifFalse: 
					[ "Es mixta"
					(break <= 4)
					ifTrue:[self add: (TopografiaMixta newWithRandomChildrenBreak: (break+1)) ]
					ifFalse:[self add: (TopografiaSimple newWithProportion: ((0 to: 1) atRandom) )]
					]
				]
]

{ #category : #adding }
TopografiaMixta >> getChildren [
	^ children 
]

{ #category : #initialization }
TopografiaMixta >> initialize [
	children:= OrderedCollection new.
]
