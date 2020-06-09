Class {
	#name : #TopografiaSimple,
	#superclass : #Topografia,
	#category : #'OO2-TP4-3-Topografia-Model'
}

{ #category : #'instance creation' }
TopografiaSimple class >> newWithProportion: aNumber [
	^(self new) proportion: aNumber.
]

{ #category : #'instance creation' }
TopografiaSimple class >> newWithProportion: aNumber name: aName [
	^(self new) proportion: aNumber; name: aName.
]

{ #category : #calculating }
TopografiaSimple >> calculateProportion [
	^ proportion 
]

{ #category : #comparing }
TopografiaSimple >> compararConMixta: topografiaMixta [
	^ self compararConSimple: topografiaMixta 
]

{ #category : #comparing }
TopografiaSimple >> compararConSimple: anotherTopografiaSimple [
	^ (proportion = anotherTopografiaSimple calculateProportion)
	
]

{ #category : #comparing }
TopografiaSimple >> equals: anotherTopografia [
	^ anotherTopografia compararConSimple: self
	
]

{ #category : #'as yet unclassified' }
TopografiaSimple >> makeGrafico [
	^ 	(GraficoTopografiaSimple newFrom: self) 
]
