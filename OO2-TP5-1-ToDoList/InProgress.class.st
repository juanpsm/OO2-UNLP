Class {
	#name : #InProgress,
	#superclass : #ToDoItemState,
	#category : #'OO2-TP5-1-ToDoList-Model'
}

{ #category : #adding }
InProgress >> addComment: aComment [
	toDoItem addCommentPrivate: aComment
]

{ #category : #accessing }
InProgress >> finish [
	toDoItem changeState: (Finished newWithContext: toDoItem ).
]

{ #category : #accessing }
InProgress >> start [
]

{ #category : #accessing }
InProgress >> tooglePause [
	toDoItem changeState: (Paused newWithContext: toDoItem ).
]

{ #category : #accessing }
InProgress >> workedTime [ 
	^ (Timespan starting: (toDoItem startedTime) ending: (DateAndTime now)) duration.
]
