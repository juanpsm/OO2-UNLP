Class {
	#name : #'CRC32_Calculator',
	#superclass : #CRCStrategy,
	#category : #'OO2-TP5-3-Conexiones-Model'
}

{ #category : #'as yet unclassified' }
CRC32_Calculator >> crcFor: aString [
	Transcript
		show: self printString;
		show: ' recibe el mensaje crcFor: String "';
		show: aString;
		show: '.';
		cr;
		flush.
	^ CRC crc32FromCollection: aString.
]
