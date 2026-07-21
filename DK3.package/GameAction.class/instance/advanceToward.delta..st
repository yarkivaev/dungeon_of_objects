as yet unclassified
advanceToward: aPoint delta: deltaTime
	| current offset distance step |
	current := actor position.
	offset := aPoint - current.
	distance := current dist: aPoint.
	distance = 0 ifTrue: [
		actor position: aPoint.
		^ self ].
	step := self pace * deltaTime.
	distance <= step
		ifTrue: [ actor position: aPoint ]
		ifFalse: [ actor position: current + (offset * (step / distance)) ].
