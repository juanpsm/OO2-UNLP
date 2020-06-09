Class {
	#name : #EmpleadoTemporario,
	#superclass : #EmpleadoNoPasante,
	#instVars : [
		'horas'
	],
	#category : #'OO2-TP4-5-Sueldos-Model'
}

{ #category : #'instance creation' }
EmpleadoTemporario class >> newWithCantidadDeHoras: aNumber cantidadDeHijos: anotherNumber esCasado: aBoolean [
	^ (self new
		hijos: anotherNumber casado: aBoolean)
		horas: aNumber

	"por que no anda 
newWithCantidadDeHoras: aNumber cantidadDeHijos: anotherNumber esCasado: aBoolean 
	^(self new) horas: aNumber;
	hijos: anotherNumber
	casado: aBoolean"
]

{ #category : #'as yet unclassified' }
EmpleadoTemporario >> adicional [
	^ (500 * self modificadorCasado) + (100 * self cantidadDeHijos)
]

{ #category : #'as yet unclassified' }
EmpleadoTemporario >> basico [
	^ 4000 + (self horasTrabajadas * 10)
]

{ #category : #'as yet unclassified' }
EmpleadoTemporario >> horas: aNumber [
	horas := aNumber.
]

{ #category : #'as yet unclassified' }
EmpleadoTemporario >> horasTrabajadas [
	^ horas
]
