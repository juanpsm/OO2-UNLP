Class {
	#name : #Pasante,
	#superclass : #Empleado,
	#instVars : [
		'horas',
		'examenes'
	],
	#category : #'OO2-TP4-Sueldos'
}

{ #category : #'as yet unclassified' }
Pasante >> adicional [
	^ 100 * examenes
]

{ #category : #'as yet unclassified' }
Pasante >> basico [
	^ 2000
]

{ #category : #initialization }
Pasante >> initialize [ 
	examenes:= 0.
]
