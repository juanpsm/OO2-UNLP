Class {
	#name : #ToDoItemState,
	#superclass : #Object,
	#instVars : [
		'toDoItem'
	],
	#classInstVars : [
		'toDoList'
	],
	#category : #'OO2-TP5-1-ToDoList-Model'
}

{ #category : #'instance creation' }
ToDoItemState class >> newWithContext: aContext [
	^ self new context: aContext
]

{ #category : #accessing }
ToDoItemState >> addComment: aComment [
	self subclassResponsibility 
]

{ #category : #adding }
ToDoItemState >> context: aTodoList [ 
	toDoItem := aTodoList
]

{ #category : #accessing }
ToDoItemState >> finish [
	self subclassResponsibility 
]

{ #category : #accessing }
ToDoItemState >> start [
	self subclassResponsibility 
]

{ #category : #accessing }
ToDoItemState >> tooglePause [
	self subclassResponsibility 
]

{ #category : #accessing }
ToDoItemState >> workedTime [
	self subclassResponsibility 
]
