Class {
	#name : #ToDoItemTests,
	#superclass : #TestCase,
	#instVars : [
		'itemInProgress',
		'itemPaused',
		'itemFinished',
		'itemPending'
	],
	#category : #'OO2-TP5-1-ToDoList-Tests'
}

{ #category : #running }
ToDoItemTests >> setUp [
	super setUp.
	itemPending:= ToDoItem name: 'Pend'.
	
	itemInProgress:= ToDoItem name: 'InProgress'.
	itemInProgress start.
	
	itemPaused:= ToDoItem name: 'Paus'.
	"itemPaused changeState: (Paused newWithContext: itemPaused)."
	itemPaused start; tooglePause.
	
	itemFinished:= ToDoItem name: 'Finished'.
	"itemFinished changeState: (Finished newWithContext: itemFinished)."
	itemFinished start; finish.
]

{ #category : #tests }
ToDoItemTests >> testAddComment [
	itemPending addComment: 'Comentario'.
	itemInProgress addComment: 'Comentario'.
	itemPaused  addComment: 'Comentario'.
	itemFinished addComment: 'Comentario'.
	self assert: [ (itemPending comments at: 1) = 'Comentario' ].
	self deny: [ itemInProgress comments isEmpty ].
	self deny: [ itemPaused comments isEmpty ].
	self assert: [ itemFinished comments isEmpty ].
]

{ #category : #tests }
ToDoItemTests >> testFinish [
	itemPending finish.
	itemInProgress finish.
	itemPaused  finish.
	itemFinished finish.
	self assert: [ itemPending state class = Pending  ].
	self assert: [ itemInProgress state class = Finished ].
	self assert: [ itemPaused state class = Finished ].
	self assert: [ itemFinished state class = Finished ].
]

{ #category : #tests }
ToDoItemTests >> testStart [
	itemPending start.
	itemInProgress start.
	itemPaused  start.
	itemFinished start.
	self assert: [ itemPending state class = InProgress  ].
	self assert: [ itemInProgress state class = InProgress ].
	self assert: [ itemPaused state class = Paused ].
	self assert: [ itemFinished state class = Finished ].
]

{ #category : #tests }
ToDoItemTests >> testTooglePause [
	self should: [ itemPending tooglePause ] raise: Error.
	self assert: [ itemPending state class = Pending ].
	itemInProgress tooglePause.
	self assert: [ itemInProgress state class = Paused ].
	itemPaused tooglePause.
	self assert: [ itemPaused state class = InProgress ].
	self should: [ itemFinished tooglePause ] raise: Error.
	self assert: [ itemFinished state class = Finished ]
]

{ #category : #tests }
ToDoItemTests >> testWorkedTime [
	self should: [ itemPending workedTime ] raise: Error.

	self assert: [ itemInProgress workedTime = ((DateAndTime now) - (itemInProgress startedTime)) ].
	
	self assert: [ itemPaused workedTime = ((DateAndTime now) - (itemPaused startedTime)) ].
	
	self assert: [ itemFinished workedTime = ((itemFinished finishedTime) - (itemFinished startedTime)) ].
]
