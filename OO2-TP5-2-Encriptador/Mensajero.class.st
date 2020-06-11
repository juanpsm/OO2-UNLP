Class {
	#name : #Mensajero,
	#superclass : #Object,
	#instVars : [
		'conexion'
	],
	#category : #'OO2-TP5-2-Encriptador-Model'
}

{ #category : #accessing }
Mensajero >> conexion: unaConexion [
	conexion := unaConexion
]

{ #category : #'as yet unclassified' }
Mensajero >> enviar: unMensaje [
	^ conexion enviar: unMensaje.
]

{ #category : #initialization }
Mensajero >> initialize [
	conexion := Conexion new.
]
