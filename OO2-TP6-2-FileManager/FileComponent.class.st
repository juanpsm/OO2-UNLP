Class {
	#name : #FileComponent,
	#superclass : #Object,
	#category : #'OO2-TP6-2-FileManager'
}

{ #category : #accessing }
FileComponent >> extension [
	^ self subclassResponsibility
]

{ #category : #accessing }
FileComponent >> fcreacion [
	^ self subclassResponsibility
]

{ #category : #accessing }
FileComponent >> fmodif [
	^ self subclassResponsibility
]

{ #category : #accessing }
FileComponent >> nombre [
	^ self subclassResponsibility
]

{ #category : #accessing }
FileComponent >> permisos [
	^ self subclassResponsibility
]

{ #category : #accessing }
FileComponent >> tamaño [
	^ self subclassResponsibility
]
