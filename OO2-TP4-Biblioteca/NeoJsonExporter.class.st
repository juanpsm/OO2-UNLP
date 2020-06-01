Class {
	#name : #NeoJsonExporter,
	#superclass : #Decorator,
	#category : #'OO2-TP4-Biblioteca-Model'
}

{ #category : #exporting }
NeoJsonExporter >> export: socios [ 
	
	| col |
	
	col:= socios collect: [ :socio | Dictionary new at: #nombre put: (socio nombre);
																	at: #email put: (socio email);
																	at: #legajo put: (socio legajo);
																	yourself ].
	^NeoJSONWriter toStringPretty: col.

]
