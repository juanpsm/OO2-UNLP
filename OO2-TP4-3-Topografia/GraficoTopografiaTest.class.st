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
GraficoTopografiaTest >> testCloseAll [
	Transcript show: self class instVarNames.
	gtm1 close.
	gtm2 close.
	gtm3 close.
	gtsagua close.
	gtstierra close.
	gtmMal close.
	gtmBien close.
	
]

{ #category : #drawing }
GraficoTopografiaTest >> testDelete [
	gtm1:= GraficoTopografia newFrom: tm1.
	
	gtm1 draw.
	
	gtm1 window close
]

{ #category : #drawing }
GraficoTopografiaTest >> testDraw [
	gtm1:= GraficoTopografia drawFrom: tm1.
	gtm2:= GraficoTopografia drawFrom: tm2.
	gtm3:= GraficoTopografia drawFrom: tm3.
	gtsagua:= GraficoTopografia drawFrom: tsagua.
	gtstierra:= GraficoTopografia drawFrom: tstierra.
	gtmMal:= GraficoTopografia drawFrom: tmMal.
	gtmBien:= GraficoTopografia drawFrom: tmBien.
]
