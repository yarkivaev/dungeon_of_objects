as yet unclassified
pickStand: neighbors from: gridPos map: map
	| best bestSize path |
	best := nil.
	bestSize := nil.
	neighbors do: [ :point |
		path := map findPathFrom: gridPos to: point.
		path isEmpty ifFalse: [
			(best isNil
				or: [ path size < bestSize
				or: [ path size = bestSize and: [ (point x < best x)
					or: [ point x = best x and: [ point y < best y ] ] ] ] ])
				ifTrue: [
					best := point.
					bestSize := path size ] ] ].
	^ best
