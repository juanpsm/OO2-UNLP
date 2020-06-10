"
m:= TopografiaMixta newWithRandomChildrenLevel: 0.

canvas := Morph new
color: (Color black);
height: 420;
width: 420.

m drawAtX: 10 Y: 10 H: 400 W: 400.

canvas addMorph: (m figure).
canvas openInWindowLabeled: 'Topografia'.

m getChildren.
m calculateProportion asFloat.

---------------------------
canvas:= Morph new
color: (Color black alpha: 0.8);
height: 420;
width: 420.

f := Morph new
color: (Color red alpha: 0.8);
position: (canvas position + (10@10));
height: 400;
width: 400.

c1:= Morph new.
c1 color: (Color blue alpha: 0.8).
c1 height: (f height / 2).
c1 width:  (f width / 2).
c1 position: (f position + (0@0)).
c2:= Morph new.
c2 color: (Color blue alpha: 0.8).
c2 height: (f height / 2).
c2 width:  (f width / 2).
c2 position: (f position + ((f height / 2)@(f height / 2))).
f addMorph: c1.
f addMorph: c2.
canvas addMorph: f.
canvas openInWindow.
"
Class {
	#name : #Topografia,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'OO2-TP4-3-Topografia-Model'
}

{ #category : #'as yet unclassified' }
Topografia >> calculateProportion [
	^ self subclassResponsibility.
]

{ #category : #comparing }
Topografia >> equals: anotherTopografia [
	^ self subclassResponsibility
]

{ #category : #comparing }
Topografia >> equalsFlexible: anotherTopografia [
	^ self subclassResponsibility
]

{ #category : #accessing }
Topografia >> name [
	^ name
]

{ #category : #accessing }
Topografia >> name: aName [
	name := aName
]
