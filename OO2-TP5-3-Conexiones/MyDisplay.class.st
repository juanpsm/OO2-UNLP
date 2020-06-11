Class {
	#name : #MyDisplay,
	#superclass : #Object,
	#category : #'OO2-TP5-3-Conexiones-Model'
}

{ #category : #'as yet unclassified' }
MyDisplay >> showBanner: img [
	| canvas label|
	canvas := Morph new
		color: (Color black alpha: 0.1);
		height: 420;
		width: 420.
	canvas
		addMorph: img.
	label := String new writeStream.
	label nextPutAll: 'MyDisplay'.
	canvas openInWindowLabeled: label contents withBlanksCondensed.
	Transcript 
		show: self printString;
		show: ' recibe el mensaje showBanner: "';
		show: img;
		cr;
		flush 
]
