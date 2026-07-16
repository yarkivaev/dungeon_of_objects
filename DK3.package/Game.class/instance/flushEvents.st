as yet unclassified
flushEvents

	| currentEvents |
	currentEvents := events copy.
	events := OrderedCollection new.
	^ currentEvents