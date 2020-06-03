Class {
	#name : #Temporario,
	#superclass : #Empleado,
	#instVars : [
		'horas',
		'casado',
		'hijos'
	],
	#category : #'OO2-TP4-Sueldos'
}

{ #category : #'as yet unclassified' }
Temporario >> adicional [
	^ 500 * casado + 100 * hijos
]

{ #category : #'as yet unclassified' }
Temporario >> basico [
	^ 4000 + (horas * 10)
]
