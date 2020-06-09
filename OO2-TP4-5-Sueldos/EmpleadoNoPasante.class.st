Class {
	#name : #EmpleadoNoPasante,
	#superclass : #Empleado,
	#instVars : [
		'casado',
		'hijos'
	],
	#category : #'OO2-TP4-5-Sueldos-Model'
}

{ #category : #'as yet unclassified' }
EmpleadoNoPasante >> cantidadDeHijos [
	^ hijos
]

{ #category : #'as yet unclassified' }
EmpleadoNoPasante >> hijos: aNumber casado: aBoolean [
	hijos := aNumber.
	casado := aBoolean
]

{ #category : #'as yet unclassified' }
EmpleadoNoPasante >> modificadorCasado [
	casado
		ifTrue: [ ^ 1 ]
		ifFalse: [ ^ 0 ]
]
