Class {
	#name : #ConexionSegura,
	#superclass : #Conexion,
	#instVars : [
		'encriptador'
	],
	#category : #'OO2-TP5-2-Encriptador-Model'
}

{ #category : #accessing }
ConexionSegura >> encriptador [
	^ encriptador
]

{ #category : #'as yet unclassified' }
ConexionSegura >> enviar: unMensaje [
|mensajeEncriptado|
	mensajeEncriptado := self encriptador encriptar: unMensaje.
	^ super enviar: mensajeEncriptado.
]

{ #category : #initialization }
ConexionSegura >> initialize [
	encriptador := EncriptadorRSA new. "Por defecto"
]

{ #category : #initialization }
ConexionSegura >> setStrategy: unaEstrategiaDeEncriptacion [
	encriptador := unaEstrategiaDeEncriptacion.
	"Acá iría el condicional si uso primitiva"
]
