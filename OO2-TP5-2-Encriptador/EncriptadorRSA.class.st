Class {
	#name : #EncriptadorRSA,
	#superclass : #EstrategiaDeEncriptacion,
	#category : #'OO2-TP5-2-Encriptador-Model'
}

{ #category : #initialization }
EncriptadorRSA >> encriptar: unString [
	"lo hara de alguna manera, aca le agregamos 1 al final"
	^ unString,'1'.
]
