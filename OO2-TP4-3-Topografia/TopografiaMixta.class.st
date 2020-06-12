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
TopografiaMixta class >> newWithName: aName [
	^(self new) name: aName.
]

{ #category : #adding }
TopografiaMixta >> add: aComponent [
	children add: aComponent 
]

{ #category : #calculations }
TopografiaMixta >> calculateProportion [
	^ (children sumNumbers: [ :c | c calculateProportion ])
		/ children size
]

{ #category : #comparing }
TopografiaMixta >> compararConMixta: anotherTopografiaMixta [
"Crea una colección en donde se agrupan los resultados de haber comparado uno a uno cada hijo, y luego verifica que sean todos verdaderos estos elementos" 
	children size = anotherTopografiaMixta getChildren size
		ifTrue: [ ^ (children
				with: anotherTopografiaMixta getChildren
				collect: [ :c1 :c2 | c1 equals: c2 ]) allSatisfy: [ :each | each ] ]
		ifFalse: [ ^ false ]
]

{ #category : #comparing }
TopografiaMixta >> compararConSimple: topografiaSimple [
	^ false
	
]

{ #category : #comparing }
TopografiaMixta >> compararFelxibleConSimple: topografiaSimple [
	"Toma a una topografia con 4 partes iguales como igual a una simple del mismo material"
	^ (self calculateProportion = topografiaSimple calculateProportion)
]

{ #category : #comparing }
TopografiaMixta >> compararFlexibleConMixta: anotherTopografiaMixta [
	children size = anotherTopografiaMixta getChildren size
		ifTrue: [ ^ (children
				with: anotherTopografiaMixta getChildren
				collect: [ :c1 :c2 | c1 equalsFlexible: c2 ]) allSatisfy: [ :each | each ] ]
			"Crea una colección en donde se agrupan los resultados de haber comparado uno a uno cada hijo, y luego verifica que sean todos verdaderos estos elementos"
]

{ #category : #comparing }
TopografiaMixta >> equals: anotherTopografia [
	^ anotherTopografia compararConMixta: self.
]

{ #category : #comparing }
TopografiaMixta >> equalsFlexible: anotherTopografia [
	^ anotherTopografia compararFlexibleConMixta: self
]

{ #category : #acccessing }
TopografiaMixta >> getChildren [
	^ children 
]

{ #category : #initialization }
TopografiaMixta >> initialize [
	children:= OrderedCollection new.
]

{ #category : #'as yet unclassified' }
TopografiaMixta >> makeGrafico [
	^ (GraficoTopografiaMixta newFrom: self) 
]
