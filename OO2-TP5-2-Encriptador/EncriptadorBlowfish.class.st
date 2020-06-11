Class {
	#name : #EncriptadorBlowfish,
	#superclass : #EstrategiaDeEncriptacion,
	#category : #'OO2-TP5-2-Encriptador-Model'
}

{ #category : #initialization }
EncriptadorBlowfish >> encriptar: unString [
	"lo hara de alguna manera, aca le agregamos 3 al final"
	^ unString,'3'.
]
