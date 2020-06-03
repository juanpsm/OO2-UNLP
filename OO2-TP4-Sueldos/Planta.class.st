Class {
	#name : #Planta,
	#superclass : #Empleado,
	#instVars : [
		'horas',
		'casado',
		'hijos',
		'años'
	],
	#category : #'OO2-TP4-Sueldos'
}

{ #category : #'as yet unclassified' }
Planta >> adicional [
	^ 500 * casado + 100 * hijos + 100 * años
]

{ #category : #'as yet unclassified' }
Planta >> basico [
	^ 3000
]

{ #category : #initialization }
Planta >> initialize [ 
	casado:= 0.
	hijos:= 0.
	años:= 0.
]
