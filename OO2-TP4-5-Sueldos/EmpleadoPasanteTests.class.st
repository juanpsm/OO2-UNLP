Class {
	#name : #EmpleadoPasanteTests,
	#superclass : #EmpleadoTests,
	#category : #'OO2-TP4-5-Sueldos-Tests'
}

{ #category : #tests }
EmpleadoPasanteTests >> testAdicional [
	self assert: [ 
		emplPas4Exam 						adicional = (100 * 4) ].
	self assert: [ 
		emplPasSinExamenes 				adicional = 0 ].
]

{ #category : #tests }
EmpleadoPasanteTests >> testBasico [
	self assert: [ 
		emplPas4Exam 						basico = 2000 ].
	self assert: [ 
		emplPasSinExamenes 				basico = 2000 ].
]

{ #category : #tests }
EmpleadoPasanteTests >> testCantidadDeExamenes [
	self assert: [ 
		emplPas4Exam				cantidadDeExamenes = 4 ].
	self assert: [ 
		emplPasSinExamenes 	cantidadDeExamenes = 0 ].
]
