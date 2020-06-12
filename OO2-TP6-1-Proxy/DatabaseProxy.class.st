Class {
	#name : #DatabaseProxy,
	#superclass : #DatabaseAccess,
	#instVars : [
		'realDB',
		'userAuthenticated',
		'startedTime',
		'users'
	],
	#category : #'OO2-TP6-1-Proxy'
}

{ #category : #'instance creation' }
DatabaseProxy class >> newDB: aRealDatabase [
	^ (self new) realDB: aRealDatabase 
]

{ #category : #generation }
DatabaseProxy >> authenticate: aUser [
	self authenticate: aUser username pass: aUser password
]

{ #category : #generation }
DatabaseProxy >> authenticate: aUsername pass: aPassword [
	userAuthenticated := self checkCredentials: aUsername pass: aPassword.
	userAuthenticated
		ifTrue: [ self startTimer.
			^ true ]
		ifFalse: [ ^ false ]
]

{ #category : #generation }
DatabaseProxy >> checkCredentials: aUsername pass: aPassword [
	^ aPassword = (users at:aUsername ifAbsent: [self error: 'No existe ese usuario']).
]

{ #category : #'as yet unclassified' }
DatabaseProxy >> getSearchResults: queryString [
	self isOkToProceed
		ifTrue: [^ realDB getSearchResults: queryString]
]

{ #category : #initialization }
DatabaseProxy >> initialize [
	userAuthenticated := false.
	startedTime := DateAndTime now - (Duration minutes: 32).
	users := Dictionary new.
	users at: 'pepe' put: 'sapo'.
	users at: 'sapo' put: 'pepe'.
]

{ #category : #'as yet unclassified' }
DatabaseProxy >> insertNewRow: rowData [
	self isOkToProceed
		ifTrue: [ ^ realDB insertNewRow: rowData ]
]

{ #category : #'as yet unclassified' }
DatabaseProxy >> isOkToProceed [
	^ userAuthenticated and: self timeOut not
]

{ #category : #accessing }
DatabaseProxy >> realDB: aRealDataBase [
realDB := aRealDataBase
]

{ #category : #generation }
DatabaseProxy >> startTimer [
	startedTime:= DateAndTime now.
]

{ #category : #accessing }
DatabaseProxy >> startedTime [
	^ startedTime
]

{ #category : #'as yet unclassified' }
DatabaseProxy >> timeOut [
	userAuthenticated := DateAndTime now - startedTime
		< (Duration minutes: 30).
	userAuthenticated
		ifTrue: [ ^ false ]
		ifFalse: [ ^ true ]
]
