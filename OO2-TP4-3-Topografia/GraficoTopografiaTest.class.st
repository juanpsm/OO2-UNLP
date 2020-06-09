"
A GraficoTopografiaTest is a test class for testing the behavior of GraficoTopografia
"
Class {
	#name : #GraficoTopografiaTest,
	#superclass : #TopografiaTest,
	#instVars : [
		'gtm1',
		'gtm2',
		'gtm3',
		'gtsagua',
		'gtstierra',
		'gtmMal',
		'gtmBien'
	],
	#category : #'OO2-TP4-3-Topografia-Tests'
}

{ #category : #running }
GraficoTopografiaTest >> setUp [
	super setUp.
	gtm1:= GraficoTopografia newFrom: tm1 newName: 'tm1'.
	gtm2:= GraficoTopografia newFrom: tm2 newName: 'tm1'.
	gtm3:= GraficoTopografia newFrom: tm3 newName: 'tm1'.
	gtsagua:= GraficoTopografia newFrom: tsagua newName: 'tstierra'.
	gtstierra:= GraficoTopografia newFrom: tstierra newName: 'tstierra'.
	gtmMal:= GraficoTopografia newFrom: tmMal newName: 'tmMal'.
	gtmBien:= GraficoTopografia newFrom: tmBien newName: 'tmBien'.
]

{ #category : #drawing }
GraficoTopografiaTest >> testdraw [
	gtm1 draw."
	gtm2:= GraficoTopografia new.
	gtm3:= GraficoTopografia new.
	gtsagua:= GraficoTopografia new.
	gtstierra:= GraficoTopografia new.
	gtmMal:= GraficoTopografia new.
	gtmBien:= GraficoTopografia new."
]
