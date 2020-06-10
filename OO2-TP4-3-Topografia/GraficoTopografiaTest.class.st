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
]

{ #category : #drawing }
GraficoTopografiaTest >> testdraw [
	gtm1:= GraficoTopografia drawFrom: tm1 newName: 'tm1'.
	gtm2:= GraficoTopografia drawFrom: tm2 newName: 'tm2'.
	gtm3:= GraficoTopografia drawFrom: tm3 newName: 'tm3'.
	gtsagua:= GraficoTopografia drawFrom: tsagua newName: 'tstierra'.
	gtstierra:= GraficoTopografia drawFrom: tstierra newName: 'tstierra'.
	gtmMal:= GraficoTopografia drawFrom: tmMal newName: 'tmMal'.
	gtmBien:= GraficoTopografia drawFrom: tmBien newName: 'tmBien'.
]
