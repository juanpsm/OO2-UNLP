Class {
	#name : #TopografiaSimple,
	#superclass : #Topografia,
	#instVars : [
		'proportion'
	],
	#category : #'OO2-TP4-3-Topografia-Model'
}

{ #category : #'instance creation' }
TopografiaSimple class >> newWithName: aName Proportion: aNumber [
	^(self new) proportion: aNumber; name: aName.
]

{ #category : #'instance creation' }
TopografiaSimple class >> newWithProportion: aNumber [
	^(self new) proportion: aNumber.
]

{ #category : #calculating }
TopografiaSimple >> calculateProportion [
	^ proportion 
]

{ #category : #comparing }
TopografiaSimple >> compararConMixta: topografiaMixta [
	^ false
]

{ #category : #comparing }
TopografiaSimple >> compararConSimple: anotherTopografiaSimple [
	^ (proportion = anotherTopografiaSimple calculateProportion)
	
]

{ #category : #comparing }
TopografiaSimple >> compararFelxibleConSimple: anotherTopografiaSimple [
	^ (proportion = anotherTopografiaSimple calculateProportion)
	
]

{ #category : #comparing }
TopografiaSimple >> compararFlexibleConMixta: topografiaMixta [
	^ self compararFelxibleConSimple: topografiaMixta 
	"Para no repetir codigo llamo a este otro metodo ya que es igual comparar una simple con otra simple y una simple con otra mista flexiblemente ya que lo unico que importa es que tengan igual proporcion, que sera 0 o 1"
]

{ #category : #comparing }
TopografiaSimple >> equals: anotherTopografia [
	^ anotherTopografia compararConSimple: self
	
]

{ #category : #comparing }
TopografiaSimple >> equalsFlexible: anotherTopografia [
	^ anotherTopografia compararFelxibleConSimple: self
	
]

{ #category : #initialization }
TopografiaSimple >> initialize [
	depth:= 0.
]

{ #category : #'as yet unclassified' }
TopografiaSimple >> makeGrafico [
	^ 	(GraficoTopografiaSimple newFrom: self) 
]

{ #category : #accessing }
TopografiaSimple >> proportion: aNumber [
	proportion := aNumber
]
