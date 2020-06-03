Class {
	#name : #Empleado,
	#superclass : #Object,
	#category : #'OO2-TP4-Sueldos'
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
 ^ self basico * 0.13 + self adicional * 0.5
]

{ #category : #'as yet unclassified' }
Empleado >> sueldo [
	^ self basico + self adicional - self descuento 
]
