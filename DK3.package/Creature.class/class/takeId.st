as yet unclassified
takeId
	| nextId |
	globalId ifNil: [ globalId := 0 ].
	creaturesDict ifNil: [ creaturesDict := Creatures new ].
	nextId := globalId.
	globalId := globalId + 1.
	^ nextId
