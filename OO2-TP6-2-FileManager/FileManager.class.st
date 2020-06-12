"
file:= FileOO2 nombre: 'archivo' extension: 'png' fcreacion: '12/02/2020' fmodif: '13/03/2020' permisos: '666' tamaño: '14 kb'.

dec:= PermDecorator newSource: (FModDecorator newSource: (FCreacDecorator newSource: (SizeDecorator newSource: (ExtDecorator newSource: (NameDecorator newSource: (file)))))).

dec prettyPrint contents.

dec feoPrint.
"
Class {
	#name : #FileManager,
	#superclass : #Object,
	#category : #'OO2-TP6-2-FileManager'
}
