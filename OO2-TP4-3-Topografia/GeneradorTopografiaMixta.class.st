Class {
	#name : #GeneradorTopografiaMixta,
	#superclass : #GeneradorTopografia,
	#instVars : [
		'children'
	],
	#classInstVars : [
		'children'
	],
	#category : #'OO2-TP4-3-Topografia-Generator'
}

{ #category : #'instance creation' }
GeneradorTopografiaMixta class >> newWithRandomChildrenLevel: aNumber [
	^(self new) recursionLevel: aNumber; random.
]
