Class {
	#name : #Empleado,
	#superclass : #Object,
	#instVars : [
		'porcentajeDescuentoBasico',
		'porcentajeDescuentoAdicional'
	],
	#category : #'OO2-TP4-5-Sueldos-Model'
}

{ #category : #'as yet unclassified' }
Empleado >> adicional [
	^ self subclassResponsibility .
]

{ #category : #'as yet unclassified' }
Empleado >> basico [
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Empleado >> descuento [
 ^ ((self basico * porcentajeDescuentoBasico) + (self adicional * porcentajeDescuentoAdicional))
]

{ #category : #initialization }
Empleado >> initialize [
	porcentajeDescuentoBasico := 0.13.
	porcentajeDescuentoAdicional := 0.05
]

{ #category : #'as yet unclassified' }
Empleado >> sueldo [
	^ self basico + self adicional - self descuento 
]
