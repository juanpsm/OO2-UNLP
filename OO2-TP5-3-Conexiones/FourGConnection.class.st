Class {
	#name : #FourGConnection,
	#superclass : #Connection,
	#instVars : [
		'symb'
	],
	#category : #'OO2-TP5-3-Conexiones-Model'
}

{ #category : #initialization }
FourGConnection >> initialize [
	symb := Morph new color: Color yellow. 
	Transcript
		show: self printString;
		show: ' se instancia con symb: ';
		show: symb;
		show: '.';
		cr;
		flush
]

{ #category : #accessing }
FourGConnection >> pict [
	^ self symb
]

{ #category : #'as yet unclassified' }
FourGConnection >> sendData: aString Crc: aNumber [
	self tansmit: aString Crc: aNumber.
	Transcript
		show: self printString;
		show: ' recibe el mensaje sendData: "';
		show: aString;
		show: '" Crc: "';
		show: aNumber;
		show: '".';
		cr;
		flush
]

{ #category : #accessing }
FourGConnection >> symb [
	^ symb
]

{ #category : #'as yet unclassified' }
FourGConnection >> tansmit: aString Crc: aNumber [
Transcript
		show: self printString;
		show: ' recibe el mensaje transmit: "';
		show: aString;
		show: '" Crc: "';
		show: aNumber;
		show: '".';
		cr;
		flush
]
