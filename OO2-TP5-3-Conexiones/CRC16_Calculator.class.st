Class {
	#name : #'CRC16_Calculator',
	#superclass : #CRCStrategy,
	#category : #'OO2-TP5-3-Conexiones-Model'
}

{ #category : #'as yet unclassified' }
CRC16_Calculator >> crcFor: aString [
	Transcript
		show: self printString;
		show: ' recibe el mensaje crcFor: String "';
		show: aString;
		show: '.';
		cr;
		flush.
	^ CRC crc16FromCollection: aString
]
