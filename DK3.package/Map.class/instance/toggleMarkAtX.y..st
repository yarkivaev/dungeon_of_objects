as yet unclassified
toggleMarkAtX: x y: y
	| point tile |
	(self isValidX: x y: y) ifFalse: [ ^ self ].
	tile := self atX: x y: y.
	tile isDiggable ifFalse: [ ^ self ].
	point := x @ y.
	(marks includes: point)
		ifTrue: [ marks remove: point ]
		ifFalse: [ marks add: point ].
