Class {
	#name : #TBMPostTest,
	#superclass : #TestCase,
	#category : #'TinyBlog-Tests'
}

{ #category : #tests }
TBMPostTest >> testPostIsCreatedCorrectly [
| post |
post := TBMPost
title: 'Welcome to TinyBlog'
text: 'TinyBlog is a small blog engine made with Pharo.'
category: 'TinyBlog'.
self assert: post title equals: 'Welcome to TinyBlog' .
self assert: post text equals: 'TinyBlog is a small blog engine
made with Pharo.' .
]

{ #category : #tests }
TBMPostTest >> testWithoutCategoryIsUnclassified [
| post |
post := TBMPost
title: 'Welcome to TinyBlog'
text: 'TinyBlog is a small blog engine made with Pharo.'.
self assert: post title equals: 'Welcome to TinyBlog' .
self assert: post isUnclassified.
self deny: post isVisible
]
