Class {
	#name : #EmpleadoPlantaTests,
	#superclass : #EmpleadoNoPasanteTests,
	#category : #'OO2-TP4-5-Sueldos-Tests'
}

{ #category : #tests }
EmpleadoPlantaTests >> testAdicional [
	self assert: [ 
		emplPlanta4añosCasado2hijos 	adicional = (100 * 4 + (100 * 2) + 500) ].
	self assert: [ 
		emplPlanta4añosSolteroSinHijos adicional = (100 * 4) ].
	self assert: [ 
		emplPlantaTodoCero 				adicional = 0 ].
]

{ #category : #tests }
EmpleadoPlantaTests >> testAntiguedad [
	self assert: [ 
		emplPlanta4añosCasado2hijos 	antiguedad = 4 ].
	self assert: [ 
		emplPlanta4añosSolteroSinHijos antiguedad = 4 ].
	self assert: [ 
		emplPlantaTodoCero 				antiguedad = 0 ].
]

{ #category : #tests }
EmpleadoPlantaTests >> testBasico [
	self assert: [ 
		emplPlanta4añosCasado2hijos 	basico = 3000 ].
	self assert: [ 
		emplPlanta4añosSolteroSinHijos basico = 3000 ].
	self assert: [ 
		emplPlantaTodoCero 				basico = 3000 ].
]
