as yet unclassified
update: deltaTime
	objects do: [ :object | 
		(object respondsTo: #game:) ifTrue: [ object game: game ].
		object update: deltaTime.
	]
