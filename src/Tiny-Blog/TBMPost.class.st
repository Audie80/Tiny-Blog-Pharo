Class {
	#name : #TBMPost,
	#superclass : #Object,
	#instVars : [
		'title',
		'text',
		'date',
		'category',
		'visible'
	],
	#category : #'Tiny-Blog'
}

{ #category : #'instance creation' }
TBMPost class >> title: aTitle text: aText [
^ self new
title: aTitle;
text: aText;
yourself
]

{ #category : #'instance creation' }
TBMPost class >> title: aTitle text: aText category: aCategory [
^ (self title: aTitle text: aText)
category: aCategory;
yourself
]

{ #category : #constants }
TBMPost class >> unclassifiedTag [
^ 'unclassified'
]

{ #category : #actions }
TBMPost >> beVisible [
self visible: true
]

{ #category : #accessing }
TBMPost >> category [ 
^ category
]

{ #category : #accessing }
TBMPost >> category: anObject [ 
category:= anObject 
]

{ #category : #accessing }
TBMPost >> date [ 
^ date
]

{ #category : #accessing }
TBMPost >> date: aDate [
date:= aDate
]

{ #category : #initialization }
TBMPost >> initialize [ 
super initialize .
self date: Date today.
self category: (self unclassifiedTag) .
self notVisible 
]

{ #category : #testing }
TBMPost >> isUnclassified [
^ self category = TBMPost unclassifiedTag
]

{ #category : #testing }
TBMPost >> isVisible [
^ self visible
]

{ #category : #actions }
TBMPost >> notVisible [
self visible: false
]

{ #category : #accessing }
TBMPost >> text [ 
^ text
]

{ #category : #accessing }
TBMPost >> text: aString [ 
text:= aString
]

{ #category : #accessing }
TBMPost >> title [ 
^ title
]

{ #category : #accessing }
TBMPost >> title: aString [ 
title:= aString
]

{ #category : #accessing }
TBMPost >> visible [ 
^ visible
]

{ #category : #accessing }
TBMPost >> visible: aBoolean [  
visible := aBoolean  
]
