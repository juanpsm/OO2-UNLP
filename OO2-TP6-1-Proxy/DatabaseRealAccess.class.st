Class {
	#name : #DatabaseRealAccess,
	#superclass : #DatabaseAccess,
	#instVars : [
		'data',
		'currentId'
	],
	#category : #'OO2-TP6-1-Proxy'
}

{ #category : #'as yet unclassified' }
DatabaseRealAccess >> getSearchResults: queryString [
	"returns a dataTable with the results of the strings. This is a mock implementation just for the exercise."
	
	
  ^ data at:queryString ifAbsent: #().
	
]

{ #category : #initialization }
DatabaseRealAccess >> initialize [
	|spiderman batman|
	data:= Dictionary new.
	spiderman:= #('Spiderman' 'Marvel').
	batman:= #('Batman' 'DC comics').
	currentId:= 3.
	data at:'select * from comics where id=1'  put: spiderman.
	data at:'select * from comics where id=2'  put: batman.
]

{ #category : #'as yet unclassified' }
DatabaseRealAccess >> insertNewRow: rowData [
	"Inserts in the database the row data"

	data
		at: 'select * from comics where id=' , currentId printString
		put: rowData.
	currentId := currentId + 1.
	^ currentId - 1
]
