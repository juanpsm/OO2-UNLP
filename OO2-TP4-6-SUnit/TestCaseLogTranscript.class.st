Class {
	#name : #TestCaseLogTranscript,
	#superclass : #TestCaseLog,
	#category : #'OO2-TP4-6-SUnit'
}

{ #category : #running }
TestCaseLogTranscript >> log [
	Transcript 
		show: self printString;
		cr;
		flush 
]
