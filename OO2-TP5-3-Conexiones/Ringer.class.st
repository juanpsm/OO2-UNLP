Class {
	#name : #Ringer,
	#superclass : #Object,
	#category : #'OO2-TP5-3-Conexiones-Model'
}

{ #category : #'as yet unclassified' }
Ringer >> ring [
SampledSound beep.
"(FMSound lowMajorScaleOn: FMSound clarinet) play"
Transcript 
		show: self printString;
		show: ' recibe el mensaje ring.';
		cr;
		flush 
]
