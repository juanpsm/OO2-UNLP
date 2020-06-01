Class {
	#name : #TwString,
	#superclass : #String,
	#category : #'OO2-TP2-Tweets-Model'
}

{ #category : #'as yet unclassified' }
TwString class >> randomOfSize: anInteger [
	^ self
		streamContents: [ :s | 
			anInteger
				timesRepeat: [ s nextPut: (Character codePoint: (97 to: 122) atRandom) ] ]
			"no anda"
]
