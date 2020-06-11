"
A GeneradorTopografiaTest is a test class for testing the behavior of GeneradorTopografia
"
Class {
	#name : #GeneradorTopografiaTest,
	#superclass : #TopografiaTest,
	#instVars : [
		'generator',
		'grafico',
		'topografia'
	],
	#category : #'OO2-TP4-3-Topografia-Tests'
}

{ #category : #generators }
GeneradorTopografiaTest >> RandomIgualesFlexibleLocuraNOANDA [
"test que obliga a las dos topoografias a ser de la misma profundidad. Ojo puede tardar"
	|t1 t2 max g1|
	max:= 4.
	g1 := GeneradorTopografia newWithMaxDepth: max .
	t1 := g1 random.
	t2 := g1 random.
	((t1 equalsFlexible: t2) and:[g1 depth = max] )
		ifTrue: [ 
			GraficoTopografia drawFrom: t1 newName: '1'.
			GraficoTopografia drawFrom: t2 newName: '2'.
			 ]
		ifFalse:[ self testRandomIguales]
		
	"max:= 4.
g1 := GeneradorTopografia newWithMaxDepth: max .
	t1 := g1 random.
	t2 := g1 random.
g1 depth.
g1 recursionLevel.
c:= 0.

1 to: 10000 do: [ :e | 
		t1:=g1 random.
		c:= c+1.

		((t1 equalsFlexible: t2) and:[g1 depth = max] ) ifTrue: [ 
			GraficoTopografia drawFrom: t1 newName: (e asString).
			cc:= Dictionary new.
			cc at: 'depth' put: (g1 depth).
			cc at: 'max' put: max.
			cc at: '=' put: (true and:[(g1 depth)= max]).
			cc at: 'iter' put: e.
			^cc]
	]."
]

{ #category : #running }
GeneradorTopografiaTest >> setUp [
	super setUp 

]

{ #category : #generators }
GeneradorTopografiaTest >> testRandom [
	generator := GeneradorTopografia new.
	topografia := generator random.
	grafico:= GraficoTopografia drawFrom: (topografia) newName: 'random max: default'.
	
	GraficoTopografia drawFrom: ((GeneradorTopografia newWithMaxDepth: 0)random) newName: 'random max: 0'.
	
	GraficoTopografia drawFrom: ((GeneradorTopografia newWithMaxDepth: 1)random) newName: 'random max: 1'.
	
	GraficoTopografia drawFrom: ((GeneradorTopografia newWithMaxDepth: 2)random) newName: 'random max: 2'.
	
	GraficoTopografia drawFrom: ((GeneradorTopografia newWithMaxDepth: 3)random) newName: 'random max: 3'.
]

{ #category : #generators }
GeneradorTopografiaTest >> testRandomEstricto [
	generator := GeneradorTopografia new.
	GraficoTopografia drawFrom: (generator randomEstricto) newName: 'estricto'.
]

{ #category : #generators }
GeneradorTopografiaTest >> testRandomIguales [
	|t1 t2 max|
	max:= 3.
	t1 := (GeneradorTopografia newWithMaxDepth: max ) random.
	t2 := (GeneradorTopografia newWithMaxDepth: max ) random.
	(t1 equals: t2)
		ifTrue: [ 
			GraficoTopografia drawFrom: t1 newName: '1'.
			GraficoTopografia drawFrom: t2 newName: '2'.
			 ]
		ifFalse:[ self testRandomIguales]
]

{ #category : #generators }
GeneradorTopografiaTest >> testRandomIgualesFlexible [
	|t1 t2 max|
	max:= 3.
	t1 := (GeneradorTopografia newWithMaxDepth: max ) random.
	t2 := (GeneradorTopografia newWithMaxDepth: max ) random.
	(t1 equalsFlexible: t2)
		ifTrue: [ 
			GraficoTopografia drawFrom: t1 newName: '1'.
			GraficoTopografia drawFrom: t2 newName: '2'.
			 ]
		ifFalse:[ self testRandomIguales]
]
