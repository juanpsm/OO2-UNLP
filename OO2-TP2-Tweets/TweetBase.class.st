Class {
	#name : #TweetBase,
	#superclass : #Object,
	#instVars : [
		'tweets',
		'users'
	],
	#classInstVars : [
		'users',
		'tweets'
	],
	#category : #'OO2-TP2-Tweets-Model'
}

{ #category : #adding }
TweetBase >> addTweet: aTweet [
tweets add: aTweet.
]

{ #category : #adding }
TweetBase >> addUserWithRandomTweets [
	| user |
	user := TwUser new.
	(1 to: (1 to: 1000) atRandom)
		do: [ :each | user generateRandomTweetsAt: self ].
	users add: user
]

{ #category : #'as yet unclassified' }
TweetBase >> generateUsers [
	(1 to: (1 to: 1000) atRandom)
		do: [ :each | self addUserWithRandomTweets ]
]

{ #category : #'as yet unclassified' }
TweetBase >> getCounterOfTweetsByGender [
|dicc d|
dicc := Dictionary new.
d := Dictionary new.
dicc fillFrom: tweets with: [ :t | t userGender ].

^dicc asBag sortedElements.
]

{ #category : #'as yet unclassified' }
TweetBase >> getCounterOfTweetsByQuantity [
|dicc d|
dicc := Dictionary new.
d := Dictionary new.
dicc fillFrom: tweets with: [ :t | t userName ].

d addAll: (dicc asBag sortedCounts) .

^d
]

{ #category : #'as yet unclassified' }
TweetBase >> getCounterOfTweetsByUsername [
|dicc d|
dicc := Dictionary new.
d := Dictionary new.
dicc fillFrom: tweets with: [ :t | t user ].

" Asi te los da ordenados, pero como no sabe compara users, 
habria que poner userName, pero si se repite el nombre los junta."
^dicc asBag sortedElements.
]

{ #category : #initialization }
TweetBase >> initialize [ 
tweets:= OrderedCollection new.
 users:= OrderedCollection new.
]

{ #category : #'as yet unclassified' }
TweetBase >> tweetCountByUser [
	"returns a dictionary with the number of tweets per user in this tweet base"
	| result |
	result := Dictionary new.
	tweets do: [ :tweet | 
					| user |
					user := tweet user.
					result at: user ifAbsentPut: 0.
					result at: user put: (result at: user) + 1 ].
	^ result
]

{ #category : #'as yet unclassified' }
TweetBase >> tweetCountByUserGender [
	"returns a dictionary with the number of tweets per user in this tweet base"
	| result |
	result := Dictionary new.
	tweets do: [ :tweet | 
					| g |
					g := tweet user gender.
					result at: g ifAbsentPut: 0.
					result at: g put: (result at: g) + 1 ].
	^ result
]
