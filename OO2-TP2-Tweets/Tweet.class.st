Class {
	#name : #Tweet,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'content',
		'user'
	],
	#category : #'OO2-TP2-Tweets-Model'
}

{ #category : #'instance creation' }
Tweet class >> newContent: text From: aUser [
^(self new) content: text From: aUser
]

{ #category : #'as yet unclassified' }
Tweet >> content: text From: aUser [
	content := text.
	user := aUser
]

{ #category : #initialization }
Tweet >> initialize [ 

timestamp := DateAndTime now.
]

{ #category : #accessing }
Tweet >> user [
^user
]

{ #category : #accessing }
Tweet >> userGender [
 ^ user gender
]

{ #category : #accessing }
Tweet >> userName [ 
 ^ user name
]
