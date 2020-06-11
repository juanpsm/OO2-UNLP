Class {
	#name : #MensajeroTests,
	#superclass : #TestCase,
	#instVars : [
		'mensajero',
		'conexSeg',
		'conexNoSeg'
	],
	#category : #'OO2-TP5-2-Encriptador-Tests'
}

{ #category : #running }
MensajeroTests >> setUp [
	mensajero:= Mensajero new.
	mensajero:= Mensajero new.
	conexSeg:=ConexionSegura new.
	conexNoSeg:=Conexion new.
]

{ #category : #tests }
MensajeroTests >> testEnviar [
	
]

{ #category : #tests }
MensajeroTests >> testEnviarBlowfish [
	mensajero conexion: conexSeg.
	conexSeg setStrategy: EncriptadorBlowfish new.
	self assert: [ (mensajero enviar: 'gg') = 'gg3' ]
]

{ #category : #tests }
MensajeroTests >> testEnviarNoSeguro [
	mensajero conexion: conexNoSeg.
	self assert: [ (mensajero enviar: 'gg') = 'gg' ]
]

{ #category : #tests }
MensajeroTests >> testEnviarRC4 [
	mensajero conexion: conexSeg.
	conexSeg setStrategy: EncriptadorRC4 new.
	self assert: [ (mensajero enviar: 'gg') = 'gg2' ]
]

{ #category : #tests }
MensajeroTests >> testEnviarRSA [
	mensajero conexion: conexSeg.
	conexSeg setStrategy: EncriptadorRSA new.
	self assert: [ (mensajero enviar: 'gg') = 'gg1' ]
]
