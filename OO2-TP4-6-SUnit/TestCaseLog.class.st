Class {
	#name : #TestCaseLog,
	#superclass : #TestCase,
	#category : #'OO2-TP4-6-SUnit'
}

{ #category : #accessing }
TestCaseLog >> log [
	^ self subclassResponsibility
]

{ #category : #running }
TestCaseLog >> tearDown [ 
	super tearDown .
	self log.
]
