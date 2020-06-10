Class {
	#name : #TopografiaTest,
	#superclass : #TestCase,
	#instVars : [
		'tm1',
		'tm2',
		'tm3',
		'tm3igual',
		'tsagua',
		'tsagua2',
		'tstierra',
		'tmMal',
		'tmBien'
	],
	#category : #'OO2-TP4-3-Topografia-Tests'
}

{ #category : #running }
TopografiaTest >> setUp [
	tm1:= TopografiaMixta new.
	tm1 add:((TopografiaMixta new) add: (TopografiaSimple newWithProportion: 1);
											add: (TopografiaSimple newWithProportion: 1);
											add: (TopografiaSimple newWithProportion: 0);
											add: (TopografiaSimple newWithProportion: 0)
	);
	add: (TopografiaSimple newWithProportion: 1);
	add: (TopografiaSimple newWithProportion: 0);
	add: (TopografiaSimple newWithProportion: 0).
	
	tm2:= TopografiaMixta new.
	tm2 add:((TopografiaMixta new) add: (TopografiaSimple newWithProportion: 1);
											add: (TopografiaSimple newWithProportion: 1);
											add: (TopografiaSimple newWithProportion: 0);
											add: (TopografiaSimple newWithProportion: 0)
	);
	add: (TopografiaSimple newWithProportion: 1);
	add: (TopografiaSimple newWithProportion: 1);
	add: (TopografiaSimple newWithProportion: 0).
	
	tm3:= TopografiaMixta new.
	tm3 add:((TopografiaMixta new) add: (TopografiaSimple newWithProportion: 0);
											add: (TopografiaSimple newWithProportion: 0);
											add: (TopografiaSimple newWithProportion: 1);
											add: (TopografiaSimple newWithProportion: 1)
	);
	add: (TopografiaSimple newWithProportion: 0);
	add: (TopografiaSimple newWithProportion: 0);
	add: (TopografiaSimple newWithProportion: 1).
	
	tm3igual:= TopografiaMixta new.
	tm3igual add:((TopografiaMixta new) add: (TopografiaSimple newWithProportion: 0);
											add: (TopografiaSimple newWithProportion: 0);
											add: (TopografiaSimple newWithProportion: 1);
											add: (TopografiaSimple newWithProportion: 1)
	);
	add: (TopografiaSimple newWithProportion: 0);
	add: (TopografiaSimple newWithProportion: 0);
	add: (TopografiaSimple newWithProportion: 1).
	
	tsagua:= TopografiaSimple newWithProportion: 1.
	tsagua2:= TopografiaSimple newWithProportion: 1.
	tstierra:= TopografiaSimple newWithProportion: 0.
	
	tmMal:= TopografiaMixta new.
	tmMal add:((TopografiaMixta new) add: (TopografiaSimple newWithProportion: 0);
											add: (TopografiaSimple newWithProportion: 0);
											add: (TopografiaSimple newWithProportion: 0);
											add: (TopografiaSimple newWithProportion: 0)
	);
	add: (TopografiaSimple newWithProportion: 0);
	add: (TopografiaSimple newWithProportion: 0);
	add: (TopografiaSimple newWithProportion: 1).
	
	tmBien := TopografiaMixta new.
	tmBien add: (TopografiaSimple newWithProportion: 0);
	add: (TopografiaSimple newWithProportion: 0);
	add: (TopografiaSimple newWithProportion: 0);
	add: (TopografiaSimple newWithProportion: 1).

]

{ #category : #tests }
TopografiaTest >> testCalculateProportion [

	self assert: [ tm1 calculateProportion = ((1/4) + (1/8)) ]
]

{ #category : #'as yet unclassified' }
TopografiaTest >> testequals [

	self deny:[tm1 equals: tm2].
	self assert:[tm3 equals: tm3igual].
	self assert: [ tsagua equals: tsagua2 ].
	self deny: [ tsagua equals: tstierra ].
	
	"Considera cuatro topografias simples del mismo material, distinta a una topografia simple de la misma proporción"
	self deny: [ tmMal equals: tmBien ]
]

{ #category : #'as yet unclassified' }
TopografiaTest >> testequalsFlexible [

	self deny:[tm1 equalsFlexible: tm2].
	self assert:[tm3 equalsFlexible: tm3igual].
	self assert: [ tsagua equalsFlexible: tsagua2 ].
	self deny: [ tsagua equalsFlexible: tstierra ].
	
	"Considera cuatro topografias simples iguales, igual a una topografia de la misma proporción"
	self assert: [ tmMal equalsFlexible: tmBien ]
]
