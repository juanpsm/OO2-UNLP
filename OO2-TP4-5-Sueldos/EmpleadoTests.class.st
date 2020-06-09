Class {
	#name : #EmpleadoTests,
	#superclass : #TestCase,
	#instVars : [
		'emplPlanta4añosCasado2hijos',
		'emplTemp40HorasCasado2Hijos',
		'emplTemp40HorasSolteroSinHijos',
		'emplTempTodoCero',
		'emplPlantaTodoCero',
		'emplPas4Exam',
		'emplPasSinExamenes',
		'emplPlanta4añosSolteroSinHijos',
		'descuentoBasico',
		'descuentoAdicional'
	],
	#category : #'OO2-TP4-5-Sueldos-Tests'
}

{ #category : #running }
EmpleadoTests >> setUp [
	super setUp.
	descuentoBasico := 0.13.
	descuentoAdicional := 0.05.
	emplPlanta4añosCasado2hijos := EmpleadoPlanta
		newWithAntiguedad: 4
		cantidadDeHijos: 2
		esCasado: true.
	emplPlanta4añosSolteroSinHijos := EmpleadoPlanta
		newWithAntiguedad: 4
		cantidadDeHijos: 0
		esCasado: false.
	emplPlantaTodoCero := EmpleadoPlanta
		newWithAntiguedad: 0
		cantidadDeHijos: 0
		esCasado: false.
	emplTemp40HorasCasado2Hijos := EmpleadoTemporario
		newWithCantidadDeHoras: 40
		cantidadDeHijos: 2
		esCasado: true.
	emplTemp40HorasSolteroSinHijos := EmpleadoTemporario
		newWithCantidadDeHoras: 40
		cantidadDeHijos: 0
		esCasado: false.
	emplTempTodoCero := EmpleadoTemporario
		newWithCantidadDeHoras: 0
		cantidadDeHijos: 0
		esCasado: false.
	emplPas4Exam := EmpleadoPasante newWithCantidadDeExamenes: 4.
	emplPasSinExamenes := EmpleadoPasante
		newWithCantidadDeExamenes: 0
]

{ #category : #tests }
EmpleadoTests >> testDescuento [
	self assert: [ 
		emplPlanta4añosCasado2hijos 	descuento = ((3000 * descuentoBasico) + (1100 * descuentoAdicional)) ].
	self assert: [ 
		emplPlanta4añosSolteroSinHijos descuento = ((3000 * descuentoBasico) + (400 * descuentoAdicional)) ].
	self assert: [ 
		emplPlantaTodoCero 				descuento = ((3000 * descuentoBasico) + (0 * descuentoAdicional))].
	self assert: [ 
		emplTemp40HorasCasado2Hijos 	descuento = ((4400 * descuentoBasico) + (700 * descuentoAdicional)) ].
	self assert: [ 
		emplTemp40HorasSolteroSinHijos descuento = ((4400 * descuentoBasico) + (0 * descuentoAdicional)) ].
	self assert: [ 
		emplTempTodoCero 					descuento = ((4000 * descuentoBasico) + (0 * descuentoAdicional)) ].
	self assert: [ 
		emplPas4Exam 						descuento = ((2000 * descuentoBasico) + (400 * descuentoAdicional)) ].
	self assert: [ 
		emplPasSinExamenes 				descuento = ((2000 * descuentoBasico) + (0 * descuentoAdicional)) ].
]

{ #category : #tests }
EmpleadoTests >> testSueldo [
	self assert: [ 
		emplPlanta4añosCasado2hijos
			sueldo = ((3000 * (1-descuentoBasico)) + (1100 * (1-descuentoAdicional))) ].
	self assert: [ 
		emplPlanta4añosSolteroSinHijos 
			sueldo = ((3000 * (1-descuentoBasico)) + ( 400 * (1-descuentoAdicional))) ].
	self assert: [ 
		emplPlantaTodoCero
			sueldo = ((3000 * (1-descuentoBasico)) + (   0 * (1-descuentoAdicional ))) ].
	self assert: [ 
		emplTemp40HorasCasado2Hijos 	
			sueldo = ((4400 * (1-descuentoBasico)) + ( 700 * (1-descuentoAdicional))) ].
	self assert: [ 
		emplTemp40HorasSolteroSinHijos 
			sueldo = ((4400 * (1-descuentoBasico)) + (   0 * (1-descuentoAdicional))) ].
	self assert: [ 
		emplTempTodoCero 					
			sueldo = ((4000 * (1-descuentoBasico)) + (   0 * (1-descuentoAdicional))) ].
	self assert: [ 
		emplPas4Exam 						
			sueldo = ((2000 * (1-descuentoBasico)) + (400 * (1-descuentoAdicional ))) ].
	self assert: [ 
		emplPasSinExamenes
			sueldo = ((2000 * (1-descuentoBasico)) + (0 * (1-descuentoAdicional ))) ].
]
