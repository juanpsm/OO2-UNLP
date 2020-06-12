Class {
	#name : #DatabaseAccess,
	#superclass : #Object,
	#category : #'OO2-TP6-1-Proxy'
}

{ #category : #'as yet unclassified' }
DatabaseAccess >> getSearchResults: queryString [
	"returns a dataTable with the results of the strings."
	
self subclassResponsibility .
]

{ #category : #'as yet unclassified' }
DatabaseAccess >> insertNewRow: rowData [
	"Inserts in the database the row data"
	self subclassResponsibility .
]
