Class {
	#name : #GraficoTopografia,
	#superclass : #Object,
	#instVars : [
		'topografia',
		'figure',
		'window',
		'newName'
	],
	#category : #'OO2-TP4-3-Topografia-Graficos'
}

{ #category : #'instance creation' }
GraficoTopografia class >> drawFrom: aTopografia [
	^(aTopografia makeGrafico) draw
]

{ #category : #'instance creation' }
GraficoTopografia class >> drawFrom: aTopografia newName: aName [
	^(aTopografia makeGrafico) newName: aName; draw.
]

{ #category : #'instance creation' }
GraficoTopografia class >> newFrom: aTopografia [
	^(aTopografia makeGrafico)
]

{ #category : #'initialize-release' }
GraficoTopografia >> close [
	window close.
]

{ #category : #drawing }
GraficoTopografia >> draw [
	| canvas label|
	canvas := Morph new
		color: (Color black alpha: 0.1);
		height: 420;
		width: 420.
	canvas
		addMorph:
			(self
				drawAtX: 10
				Y: 10
				H: 400
				W: 400).
	label := String new writeStream.
	label nextPutAll: 'Topografia ';
	print: newName;
	nextPutAll: ' (prop: ';
	print: topografia calculateProportion;
	nextPutAll: ' )'.
	window:= canvas openInWindowLabeled: label contents withBlanksCondensed.
]

{ #category : #drawing }
GraficoTopografia >> drawAtX: x Y: y H: h W: w [
	"figure borderWidth: 1.
	figure borderColor: (Color black)."
	figure height: h.
	figure width: w.
	figure position: (x@y).
]

{ #category : #drawing }
GraficoTopografia >> drawName: aName [
	| canvas windowName|
	canvas := Morph new
		color: (Color black alpha: 0.1);
		height: 420;
		width: 420.
	canvas
		addMorph:
			(self
				drawAtX: 10
				Y: 10
				H: 400
				W: 400).
	windowName := String new writeStream.
	windowName nextPutAll: 'Topografia ';
	print: aName.
	canvas openInWindowLabeled: windowName contents.
]

{ #category : #accessing }
GraficoTopografia >> figure [
	^ figure
]

{ #category : #initialization }
GraficoTopografia >> initialize [
	figure := Morph new.
]

{ #category : #'as yet unclassified' }
GraficoTopografia >> newName: aName [
	newName := aName
]

{ #category : #'as yet unclassified' }
GraficoTopografia >> topografia: aTopografia newName: aName [
	topografia := aTopografia.
	newName := aName
]

{ #category : #accessing }
GraficoTopografia >> window [
	^ window
]
