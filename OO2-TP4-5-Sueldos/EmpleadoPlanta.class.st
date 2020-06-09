Class {
	#name : #EmpleadoPlanta,
	#superclass : #EmpleadoNoPasante,
	#instVars : [
		'antiguedad'
	],
	#category : #'OO2-TP4-5-Sueldos-Model'
}

{ #category : #'instance creation' }
EmpleadoPlanta class >> newWithAntiguedad: aNumber cantidadDeHijos: anotherNumber esCasado: aBoolean [
"|empleado|
	empleado:= self new.
	empleado 	hijos: anotherNumber casado: aBoolean;
		años: aNumber.
^ empleado 
	""por que no anda ?"
	^ ((self new
		antiguedad: aNumber)
		hijos: anotherNumber casado: aBoolean)
]

{ #category : #'as yet unclassified' }
EmpleadoPlanta >> adicional [
	^ (500 * self modificadorCasado ) + (100 * self cantidadDeHijos) + (100 * self antiguedad)
]

{ #category : #'as yet unclassified' }
EmpleadoPlanta >> antiguedad [
	^ antiguedad
]

{ #category : #accessing }
EmpleadoPlanta >> antiguedad: aNumber [
	antiguedad := aNumber.
]

{ #category : #'as yet unclassified' }
EmpleadoPlanta >> basico [
	^ 3000
]
