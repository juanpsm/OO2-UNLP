Class {
	#name : #WiFiConn,
	#superclass : #Connection,
	#instVars : [
		'pict'
	],
	#category : #'OO2-TP5-3-Conexiones-Model'
}

{ #category : #accessing }
WiFiConn >> initialize [
	pict := Morph new color: Color red
]

{ #category : #accessing }
WiFiConn >> pict [
	^ pict
]

{ #category : #'as yet unclassified' }
WiFiConn >> sendData: aString Crc: aNumber [
Transcript 
		show: self printString;
		show: ' recibe el mensaje sendData: String "';
		show: aString;
		show: '" y CRC "';
		show: aNumber;
		show: '"';
		cr;
		flush 
]
