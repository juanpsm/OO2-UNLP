Class {
	#name : #BibliotecaTest,
	#superclass : #TestCase,
	#instVars : [
		'bib',
		's1',
		's2',
		's3'
	],
	#category : #'OO2-TP4-1-Biblioteca-Tests'
}

{ #category : #running }
BibliotecaTest >> setUp [
	super setUp.
	
	bib := Biblioteca new.
	s1 := Socio nombre: 'Socio1' email: 'socio1@smalltalk.com' legajo: '1111/1'.
	s2 := Socio nombre: 'Socio2' email: 'socio2@smalltalk.com' legajo: '2222/2'.
	s3 := Socio nombre: 'Socio3' email: 'socio3@smalltalk.com' legajo: '3333/3'.
	
	bib agregarSocio: s1; agregarSocio: s2; agregarSocio: s3.
	
	

]

{ #category : #tests }
BibliotecaTest >> testExportarConNeoJson [
	bib exporter: NeoJsonExporter new.
	
	self testExportarSociosDefault.
]

{ #category : #tests }
BibliotecaTest >> testExportarConVoorhees [
	bib exporter: VoorheesExporter new.
	
	self testExportarSociosDefault.
]

{ #category : #tests }
BibliotecaTest >> testExportarSociosDefault [
	"Ya que Dictionary agrega en un orden que no entiendo las keys, para usar el mismo metodo de test tengo que comparar los campos en distinto orden con un or:"
	self assert: [ bib exportarSocios = '[
	{
		"nombre" : "Socio1",
		"email" : "socio1@smalltalk.com",
		"legajo" : "1111/1"
	},
	{
		"nombre" : "Socio2",
		"email" : "socio2@smalltalk.com",
		"legajo" : "2222/2"
	},
	{
		"nombre" : "Socio3",
		"email" : "socio3@smalltalk.com",
		"legajo" : "3333/3"
	}
]' or: bib exportarSocios = '[
	{
		"legajo" : "1111/1",
		"email" : "socio1@smalltalk.com",
		"nombre" : "Socio1"
	},
	{
		"legajo" : "2222/2",
		"email" : "socio2@smalltalk.com",
		"nombre" : "Socio2"
	},
	{
		"legajo" : "3333/3",
		"email" : "socio3@smalltalk.com",
		"nombre" : "Socio3"
	}
]']
]
