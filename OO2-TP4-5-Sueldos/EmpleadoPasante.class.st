Class {
	#name : #EmpleadoPasante,
	#superclass : #Empleado,
	#instVars : [
		'examenes'
	],
	#category : #'OO2-TP4-5-Sueldos-Model'
}

{ #category : #'instance creation' }
EmpleadoPasante class >> newWithCantidadDeExamenes: aNumber [
	^(self new) examenes: aNumber
]

{ #category : #'as yet unclassified' }
EmpleadoPasante >> adicional [
	^ 100 * examenes
]

{ #category : #'as yet unclassified' }
EmpleadoPasante >> basico [
	^ 2000
]

{ #category : #'as yet unclassified' }
EmpleadoPasante >> cantidadDeExamenes [
	^ examenes
]

{ #category : #accessing }
EmpleadoPasante >> examenes: aNumber [
	examenes := aNumber
]
