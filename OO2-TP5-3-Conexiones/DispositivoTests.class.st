Class {
	#name : #DispositivoTests,
	#superclass : #TestCaseLogTranscript,
	#instVars : [
		'disp'
	],
	#category : #'OO2-TP5-3-Conexiones-Tests'
}

{ #category : #running }
DispositivoTests >> setUp [
	super setUp.
	disp:= Dispositivo new.
]

{ #category : #tests }
DispositivoTests >> testConectarCon [
]

{ #category : #tests }
DispositivoTests >> testConfigurarCRC [
]

{ #category : #tests }
DispositivoTests >> testSend [
]
