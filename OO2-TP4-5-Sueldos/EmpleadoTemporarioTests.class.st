Class {
	#name : #EmpleadoTemporarioTests,
	#superclass : #EmpleadoNoPasanteTests,
	#category : #'OO2-TP4-5-Sueldos-Tests'
}

{ #category : #tests }
EmpleadoTemporarioTests >> testAdicional [
	self assert: [ 
		emplTemp40HorasCasado2Hijos 	adicional = ((100 * 2) + 500) ].
	self assert: [ 
		emplTemp40HorasSolteroSinHijos adicional = 0 ].
	self assert: [ 
		emplTempTodoCero 					adicional = 0 ].
]

{ #category : #tests }
EmpleadoTemporarioTests >> testBasico [
	self assert: [ 
		emplTemp40HorasCasado2Hijos 	basico = (4000 + (10 * 40)) ].
	self assert: [ 
		emplTemp40HorasSolteroSinHijos basico = (4000 + (10 * 40)) ].
	self assert: [ 
		emplTempTodoCero 					basico = 4000 ].
]

{ #category : #tests }
EmpleadoTemporarioTests >> testHorasTrabajadas [
	self assert: [ 
		emplTemp40HorasCasado2Hijos 	horasTrabajadas = 40 ].
	self assert: [ 
		emplTemp40HorasSolteroSinHijos horasTrabajadas = 40 ].
	self assert: [ 
		emplTempTodoCero 					horasTrabajadas = 0 ].
]
