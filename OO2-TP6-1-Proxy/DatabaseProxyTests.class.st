Class {
	#name : #DatabaseProxyTests,
	#superclass : #DatabaseRealAccessTestCase,
	#instVars : [
		'proxy'
	],
	#category : #'OO2-TP6-1-Proxy'
}

{ #category : #running }
DatabaseProxyTests >> setUp [
	super setUp.
	proxy := (DatabaseProxy newDB: database).
	database:= proxy.
]

{ #category : #tests }
DatabaseProxyTests >> testAuthenticatePass [
	self assert: [ proxy authenticate: 'pepe' pass: 'sapo' ].
	self should: [ proxy authenticate: 'asd' pass: 'asd' ] raise: Error description:'No existe ese usuario'.
]

{ #category : #tests }
DatabaseProxyTests >> testCheckCredentialsPass [
	self assert: [ database checkCredentials: 'pepe' pass: 'sapo' ].
	self should: [ database authenticate: 'asd' pass: 'asd' ] raise: Error description:'No existe ese usuario'.
]

{ #category : #tests }
DatabaseProxyTests >> testGetSearchResults [
	database authenticate: 'pepe' pass: 'sapo'.
	super testGetSearchResults
]

{ #category : #tests }
DatabaseProxyTests >> testInsertNewRow [
	database authenticate: 'pepe' pass: 'sapo'.
	super testInsertNewRow
]

{ #category : #tests }
DatabaseProxyTests >> testIsOkToProceed [
	self deny: [database isOkToProceed ].
	database authenticate: 'pepe' pass: 'sapo'.
	self assert: [ database isOkToProceed ].
]

{ #category : #tests }
DatabaseProxyTests >> testTimeOut [
	self assert: [ database timeOut ].
	database authenticate: 'pepe' pass: 'sapo'.
	self deny: [database timeOut].
]
