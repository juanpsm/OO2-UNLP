Class {
	#name : #GraficoTopografiaMixta,
	#superclass : #GraficoTopografia,
	#instVars : [
		'children'
	],
	#classInstVars : [
		'children'
	],
	#category : #'OO2-TP4-3-Topografia-Graficos'
}

{ #category : #'instance creation' }
GraficoTopografiaMixta class >> newFrom: aTopografia [
	^ self new
		topografia: aTopografia newName: aTopografia name;
		addAll:
			(aTopografia getChildren
				collect: [ :c | GraficoTopografia newFrom: c ]);
		yourself
]

{ #category : #adding }
GraficoTopografiaMixta >> add: aComponent [
	children add: aComponent 
]

{ #category : #adding }
GraficoTopografiaMixta >> addAll: aCollectionOfGraficosTopografia [
	children addAll: aCollectionOfGraficosTopografia
]

{ #category : #drawing }
GraficoTopografiaMixta >> drawAtX: x Y: y H: h W: w [
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

{ #category : #acccessing }
GraficoTopografiaMixta >> getChildren [
	^ children 
]

{ #category : #initialization }
GraficoTopografiaMixta >> initialize [
	super initialize.
	children := OrderedCollection new.
]
