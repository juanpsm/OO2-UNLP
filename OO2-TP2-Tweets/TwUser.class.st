Class {
	#name : #TwUser,
	#superclass : #Object,
	#instVars : [
		'name',
		'tweets',
		'gender'
	],
	#category : #'OO2-TP2-Tweets-Model'
}

{ #category : #initialization }
TwUser >> gender [
	^ gender
]

{ #category : #accessing }
TwUser >> generateRandomTweetsAt: aTweetBase [
	| tweet randomText |
	randomText := UUID new printString.
	tweet := Tweet newContent: randomText From: self.
	tweets add: tweet.
	aTweetBase addTweet: tweet
]

{ #category : #initialization }
TwUser >> initialize [
	tweets := OrderedCollection new.
	name := UUID new printString readStream upTo: $-.
	gender := #('F' 'M' 'Other') atRandom
]

{ #category : #initialization }
TwUser >> name [
^name
]

{ #category : #initialization }
TwUser >> name: aName [
name:= aName
]

{ #category : #initialization }
TwUser >> tweetText: text [ 
tweets add: (Tweet newContent: text From: self)
]

{ #category : #initialization }
TwUser >> tweets [
^tweets
]
