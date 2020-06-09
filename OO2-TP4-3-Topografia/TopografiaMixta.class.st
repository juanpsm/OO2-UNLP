Class {
	#name : #TopografiaMixta,
	#superclass : #Topografia,
	#instVars : [
		'children'
	],
	#classInstVars : [
		'children'
	],
	#category : #'OO2-TP4-3-Topografia-Model'
}

{ #category : #'instance creation' }
TopografiaMixta class >> newName: aName [
	^(self new) name: aName.
]

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
TopografiaMixta >> compararConMixta: anotherTopografiaMixta [
	children size = anotherTopografiaMixta getChildren size
		ifTrue: [ ^ (children
				with: anotherTopografiaMixta getChildren
				collect: [ :c1 :c2 | c1 equals: c2 ]) allSatisfy: [ :each | each ] ]
]

{ #category : #comparing }
TopografiaMixta >> compararConSimple: topografiaSimple [
	^ (self calculateProportion = topografiaSimple calculateProportion)
	"^ false."
	
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
					self add: (self class newWithRandomChildrenLevel: (recursionLevel+1))
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

{ #category : #'as yet unclassified' }
TopografiaMixta >> makeGrafico [
	^ (GraficoTopografiaMixta newFrom: self) 
]
