as yet unclassified
refreshStand: neighbors from: gridPos map: map
	| path |
	(stand notNil
		and: [ (neighbors includes: stand)
		and: [ (path := map findPathFrom: gridPos to: stand) notEmpty ] ])
		ifTrue: [ ^ self ].
	stand := self pickStand: neighbors from: gridPos map: map.
