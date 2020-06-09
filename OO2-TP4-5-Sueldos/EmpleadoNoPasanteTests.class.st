Class {
	#name : #EmpleadoNoPasanteTests,
	#superclass : #EmpleadoTests,
	#category : #'OO2-TP4-5-Sueldos-Tests'
}

{ #category : #tests }
EmpleadoNoPasanteTests >> testCantidadDeHijos [
	self assert: [ 
		emplPlanta4añosCasado2hijos cantidadDeHijos = 2 ].
	self assert: [ 
		emplPlanta4añosSolteroSinHijos cantidadDeHijos = 0 ].
	self assert: [ 
		emplPlantaTodoCero 				cantidadDeHijos = 0 ].
	self assert: [ 
		emplTemp40HorasCasado2Hijos 	cantidadDeHijos = 2 ].
	self assert: [ 
		emplTemp40HorasSolteroSinHijos cantidadDeHijos = 0 ].
	self assert: [ 
		emplTempTodoCero 					cantidadDeHijos = 0 ].
]

{ #category : #tests }
EmpleadoNoPasanteTests >> testModificadorCasado [
	self assert: [ 
		emplPlanta4añosCasado2hijos modificadorCasado = 1 ].
	self assert: [ 
		emplPlanta4añosSolteroSinHijos modificadorCasado = 0 ].
	self assert: [ 
		emplPlantaTodoCero 				modificadorCasado = 0 ].
	self assert: [ 
		emplTemp40HorasCasado2Hijos 	modificadorCasado = 1 ].
	self assert: [ 
		emplTemp40HorasSolteroSinHijos modificadorCasado = 0 ].
	self assert: [ 
		emplTempTodoCero 					modificadorCasado = 0 ].
]
