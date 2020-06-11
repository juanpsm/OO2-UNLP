Class {
	#name : #ToDoItem,
	#superclass : #Object,
	#instVars : [
		'name',
		'state',
		'startedTime',
		'comments',
		'finishedTime'
	],
	#category : #'OO2-TP5-1-ToDoList-Model'
}

{ #category : #accessing }
ToDoItem class >> name: aName [
	^ self new name: aName; yourself.
]

{ #category : #accessing }
ToDoItem >> addComment: aComment [
	state addComment: aComment
]

{ #category : #accessing }
ToDoItem >> addCommentPrivate: aComment [
	comments add: aComment
]

{ #category : #'as yet unclassified' }
ToDoItem >> changeState: aState [
	state := aState
]

{ #category : #accessing }
ToDoItem >> comments [
	^ comments
]

{ #category : #accessing }
ToDoItem >> finish [
	finishedTime := DateAndTime now.
	state finish
]

{ #category : #accessing }
ToDoItem >> finishedTime [
	^ finishedTime
]

{ #category : #initialization }
ToDoItem >> initialize [
	state:= Pending newWithContext: self.
	comments := OrderedCollection new.
	startedTime:= nil.
]

{ #category : #accessing }
ToDoItem >> name: aName [
	name := aName
]

{ #category : #accessing }
ToDoItem >> start [
	startedTime := DateAndTime now.
	state start
]

{ #category : #accessing }
ToDoItem >> startedTime [
	^ startedTime
]

{ #category : #accessing }
ToDoItem >> state [
	^ state
]

{ #category : #accessing }
ToDoItem >> tooglePause [
	state tooglePause
]

{ #category : #accessing }
ToDoItem >> workedTime [
	^state workedTime
]
