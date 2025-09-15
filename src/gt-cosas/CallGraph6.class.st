Class {
	#name : #CallGraph6,
	#superclass : #Object,
	#category : #'gt-cosas-Model'
}

{ #category : #accessing }
CallGraph6 class >> fromFile [
]

{ #category : #accessing }
CallGraph6 class >> fromFile: fileName [
	^ self new from: fileName asFileReference contents
]

{ #category : #accessing }
CallGraph6 >> from: aString [
	| calls |
	calls := Character cr split: aString.
	
	^ calls
]
