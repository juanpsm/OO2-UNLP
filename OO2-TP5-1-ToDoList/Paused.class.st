Class {
	#name : #Paused,
	#superclass : #ToDoItemState,
	#category : #'OO2-TP5-1-ToDoList-Model'
}

{ #category : #adding }
Paused >> addComment: aComment [
	toDoItem addCommentPrivate: aComment
]

{ #category : #accessing }
Paused >> finish [
	toDoItem changeState: (Finished newWithContext: toDoItem ).
]

{ #category : #accessing }
Paused >> start [
]

{ #category : #accessing }
Paused >> tooglePause [
	toDoItem changeState: (InProgress newWithContext: toDoItem ).
]

{ #category : #accessing }
Paused >> workedTime [ 
	^ (Timespan starting: (toDoItem startedTime) ending: (DateAndTime now)) duration.
]
