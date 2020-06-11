Class {
	#name : #EncriptadorRC4,
	#superclass : #EstrategiaDeEncriptacion,
	#category : #'OO2-TP5-2-Encriptador-Model'
}

{ #category : #initialization }
EncriptadorRC4 >> encriptar: unString [
	"lo hara de alguna manera, aca le agregamos 2 al final"
	^ unString,'2'.
]
