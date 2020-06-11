Class {
	#name : #Finished,
	#superclass : #ToDoItemState,
	#category : #'OO2-TP5-1-ToDoList-Model'
}

{ #category : #accessing }
Finished >> addComment: aComment [
]

{ #category : #accessing }
Finished >> finish [
]

{ #category : #accessing }
Finished >> start [
]

{ #category : #accessing }
Finished >> tooglePause [
	self error: 'el objeto ToDoItem no se encuentra en pause o in-progress'
]

{ #category : #accessing }
Finished >> workedTime [ 
	^ (Timespan starting: (toDoItem startedTime) ending: (toDoItem finishedTime)) duration.
]
