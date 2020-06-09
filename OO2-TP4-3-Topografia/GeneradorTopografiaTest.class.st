"
A GeneradorTopografiaTest is a test class for testing the behavior of GeneradorTopografia
"
Class {
	#name : #GeneradorTopografiaTest,
	#superclass : #TopografiaTest,
	#instVars : [
		'generator'
	],
	#category : #'OO2-TP4-3-Topografia-Tests'
}

{ #category : #generators }
GeneradorTopografiaTest >> random [
generator := GeneradorTopografia new.
generator random draw.
]

{ #category : #running }
GeneradorTopografiaTest >> setUp [
	super setUp 

]

{ #category : #generators }
GeneradorTopografiaTest >> testRandom [
	generator := GeneradorTopografia new.
	generator random draw
]
