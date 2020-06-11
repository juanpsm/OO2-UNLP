Class {
	#name : #Pending,
	#superclass : #ToDoItemState,
	#category : #'OO2-TP5-1-ToDoList-Model'
}

{ #category : #adding }
Pending >> addComment: aComment [
	toDoItem addCommentPrivate: aComment
]

{ #category : #accessing }
Pending >> finish [
]

{ #category : #accessing }
Pending >> start [
	toDoItem changeState: (InProgress newWithContext: toDoItem)
]

{ #category : #accessing }
Pending >> tooglePause [
	self error: 'el objeto ToDoItem no se encuentra en pause o in-progress'
]

{ #category : #accessing }
Pending >> workedTime [
	self error: 'el objeto ToDoItem no se ha iniciado todavía'
]
